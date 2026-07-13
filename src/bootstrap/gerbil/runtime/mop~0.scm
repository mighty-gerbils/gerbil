(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1783939345)
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
      (let ((_%flags140466%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties140467%_ '((direct-slots:) (system: . #t)))
            (_%slot-table140468%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags140466%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table140468%_
           _%properties140467%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots140423%_
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
             (_%slot-vector140425%_ (list->vector (cons '#f _%slots140423%_)))
             (_%slot-table140451%_
              (let ((_%slot-table140427%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp143424
                       (lambda (_%slot140429%_ _%field140430%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table140427%_
                            _%slot140429%_
                            _%field140430%_))
                         (let ((__tmp143425
                                (let ((_%sym140432%_ _%slot140429%_))
                                  (if (symbol? _%sym140432%_)
                                      (let ((_%sym140437%_ _%sym140432%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym140437%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym140432%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table140427%_
                            __tmp143425
                            _%field140430%_))))
                      (__tmp143422
                       (let ((__tmp143423
                              (let ()
                                (declare (not safe))
                                (##length _%slots140423%_))))
                         (declare (not safe))
                         (##iota __tmp143423 '1))))
                  (declare (not safe))
                  (##for-each __tmp143424 _%slots140423%_ __tmp143422))
                _%slot-table140427%_))
             (_%flags140453%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields140459%_
              (list->vector
               (let ((__tmp143426
                      (map (lambda (_%$%g140454140456%_)
                             (list _%$%g140454140456%_ '5 '#f))
                           (drop _%slots140423%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp143426))))
             (_%properties140461%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots140423%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t140463%_
              (let ((__tmp143427 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags140453%_
                 ##type-type
                 _%fields140459%_
                 __tmp143427
                 _%slot-vector140425%_
                 _%slot-table140451%_
                 _%properties140461%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t140463%_ _%t140463%_))
        _%t140463%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags140419%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties140420%_ '((direct-slots:) (system: . #t)))
            (_%slot-table140421%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp143428 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags140419%_
           '#f
           '#()
           __tmp143428
           '#(#f)
           _%slot-table140421%_
           _%properties140420%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass140407%_)
        (let ((_%klass140410%_ _%klass140407%_))
          (declare (not safe))
          (##structure-type _%klass140410%_))))
    (define class-type
      (lambda (_%klass140393%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140393%_ 'class))
            (let ((_%klass140397%_ _%klass140393%_))
              (__class-type _%klass140397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass140393%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj140391%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj140391%_ 'class))))
    (define __class-type=?
      (lambda (_%x140370%_ _%y140371%_)
        (let* ((_%x140374%_ _%x140370%_) (_%y140382%_ _%y140371%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x140374%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y140382%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x140345%_ _%y140346%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x140345%_ 'class))
            (let ((_%x140350%_ _%x140345%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y140346%_ 'class))
                  (let ((_%y140360%_ _%y140346%_))
                    (__class-type=? _%x140350%_ _%y140360%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y140346%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x140345%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type140333%_)
        (let* ((_%type140336%_ _%type140333%_)
               (__tmp143429
                (let ((__tmp143430
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type140336%_))))
                  (declare (not safe))
                  (##fxand __tmp143430 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp143429 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type140319%_)
        (if (let () (declare (not safe)) (##type? _%type140319%_))
            (let ((_%type140323%_ _%type140319%_))
              (__type-opaque? _%type140323%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type140319%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass140307%_)
        (let* ((_%klass140310%_ _%klass140307%_)
               (__tmp143431
                (let ((__tmp143432
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140310%_))))
                  (declare (not safe))
                  (##fxand __tmp143432 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp143431 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass140293%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140293%_ 'class))
            (let ((_%klass140297%_ _%klass140293%_))
              (__class-type-opaque? _%klass140297%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass140293%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type140281%_)
        (let* ((_%type140284%_ _%type140281%_)
               (__tmp143433
                (let ((__tmp143434
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type140284%_))))
                  (declare (not safe))
                  (##fxand __tmp143434 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp143433 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type140267%_)
        (if (let () (declare (not safe)) (##type? _%type140267%_))
            (let ((_%type140271%_ _%type140267%_))
              (__type-extensible? _%type140271%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type140267%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type140255%_)
        (let* ((_%type140258%_ _%type140255%_)
               (__tmp143435
                (let ((__tmp143436
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type140258%_))))
                  (declare (not safe))
                  (##fxand __tmp143436 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp143435 '0))))
    (define class-type-final?
      (lambda (_%type140241%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type140241%_ 'class))
            (let ((_%type140245%_ _%type140241%_))
              (__class-type-final? _%type140245%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type140241%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass140229%_)
        (let* ((_%klass140232%_ _%klass140229%_)
               (__tmp143437
                (let ((__tmp143438
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140232%_))))
                  (declare (not safe))
                  (##fxand __tmp143438 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp143437 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass140215%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140215%_ 'class))
            (let ((_%klass140219%_ _%klass140215%_))
              (__class-type-struct? _%klass140219%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass140215%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass140203%_)
        (let* ((_%klass140206%_ _%klass140203%_)
               (__tmp143439
                (let ((__tmp143440
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140206%_))))
                  (declare (not safe))
                  (##fxand __tmp143440 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp143439 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass140189%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140189%_ 'class))
            (let ((_%klass140193%_ _%klass140189%_))
              (__class-type-sealed? _%klass140193%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass140189%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass140177%_)
        (let* ((_%klass140180%_ _%klass140177%_)
               (__tmp143441
                (let ((__tmp143442
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140180%_))))
                  (declare (not safe))
                  (##fxand __tmp143442 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp143441 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass140163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140163%_ 'class))
            (let ((_%klass140167%_ _%klass140163%_))
              (__class-type-metaclass? _%klass140167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass140163%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass140151%_)
        (let* ((_%klass140154%_ _%klass140151%_)
               (__tmp143443
                (let ((__tmp143444
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140154%_))))
                  (declare (not safe))
                  (##fxand __tmp143444 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp143443 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass140137%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140137%_ 'class))
            (let ((_%klass140141%_ _%klass140137%_))
              (__class-type-system? _%klass140141%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass140137%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass140125%_)
        (let* ((_%klass140128%_ _%klass140125%_)
               (__tmp143445
                (let ((__tmp143446
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140128%_))))
                  (declare (not safe))
                  (##fxand __tmp143446 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp143445 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass140111%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140111%_ 'class))
            (let ((_%klass140115%_ _%klass140111%_))
              (__class-type-acyclic? _%klass140115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass140111%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id139886%_
               _%type-name139887%_
               _%type-super139888%_
               _%precedence-list139889%_
               _%slot-vector139890%_
               _%properties139891%_
               _%constructor139892%_
               _%slot-table139893%_
               _%methods139894%_)
        (letrec ((_%make-props!139897%_
                  (lambda (_%key140056%_ _%transparent?140057%_)
                    (letrec* ((_%ht140059%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!140060%_
                               (lambda (_%ht140104%_ _%slots140105%_)
                                 (for-each
                                  (lambda (_%$%g140106140108%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht140104%_
                                       _%$%g140106140108%_
                                       '#t)))
                                  _%slots140105%_)))
                              (_%put-all-new-slots!140061%_
                               (lambda (_%ht140096%_)
                                 (let ((_%first140098%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-super139888%_
                                               'class))
                                            (let ((__tmp143447
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%type-super139888%_
                                                      '7
                                                      '#f
                                                      '#f))))
                                              (declare (not safe))
                                              (##vector-length __tmp143447))
                                            '1)))
                                   (let _%lp140100%_ ((_%i140102%_
                                                       _%first140098%_))
                                     (if (let ((__tmp143448
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-length
                                                   _%slot-vector139890%_))))
                                           (declare (not safe))
                                           (##fx< _%i140102%_ __tmp143448))
                                         (begin
                                           (let ((__tmp143449
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _%slot-vector139890%_
                                                     _%i140102%_))))
                                             (declare (not safe))
                                             (symbolic-table-set!
                                              _%ht140096%_
                                              __tmp143449
                                              '#t))
                                           (_%lp140100%_
                                            (let ()
                                              (declare (not safe))
                                              (##fx+ _%i140102%_ '1))))
                                         '#!void)))))
                              (_%put-alist!140062%_
                               (lambda (_%ht140087%_
                                        _%key140088%_
                                        _%alist140089%_)
                                 (let ((_%$e140091%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__%
                                           _%key140088%_
                                           _%alist140089%_
                                           _%transparent?140057%_))))
                                   (if _%$e140091%_
                                       (if (eq? _%$e140091%_ '#t)
                                           (_%put-all-new-slots!140061%_
                                            _%ht140087%_)
                                           (_%put-slots!140060%_
                                            _%ht140087%_
                                            _%$e140091%_))
                                       '#!void)))))
                      (_%put-alist!140062%_
                       _%ht140059%_
                       _%key140056%_
                       _%properties139891%_)
                      (for-each
                       (lambda (_%mixin140064%_)
                         (let ((_%alist140066%_
                                (##structure-ref
                                 _%mixin140064%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (eq? '#t
                                    (let ()
                                      (declare (not safe))
                                      (agetq__%
                                       _%key140056%_
                                       _%alist140066%_
                                       _%transparent?140057%_)))
                               (_%put-slots!140060%_
                                _%ht140059%_
                                (let ((_%klass140068%_ _%mixin140064%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass140068%_
                                         'class))
                                      (let ((_%klass140073%_ _%klass140068%_))
                                        (__class-type-slot-list
                                         _%klass140073%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass140068%_)
                                        '#!void))))
                               (_%put-alist!140062%_
                                _%ht140059%_
                                _%key140056%_
                                _%alist140066%_))))
                       _%precedence-list139889%_)
                      _%ht140059%_)))
                 (_%all-slots-property?139898%_
                  (lambda (_%key140051%_ _%transparent?140052%_)
                    (let ((_%entry140054%_
                           (assq _%key140051%_ _%properties139891%_)))
                      (if _%entry140054%_
                          (eq? (cdr _%entry140054%_) '#t)
                          _%transparent?140052%_)))))
          (let* ((_%transparent?139918%_
                  (let ((__tmp143450
                         (if _%type-super139888%_
                             (not (let ((_%type139900%_ _%type-super139888%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type139900%_))
                                        (let ((_%type139905%_ _%type139900%_))
                                          (__type-opaque? _%type139905%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type139900%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties139891%_ __tmp143450)))
                 (_%all-slots-printable?139920%_
                  (_%all-slots-property?139898%_
                   'print:
                   _%transparent?139918%_))
                 (_%printable139922%_
                  (if (not _%all-slots-printable?139920%_)
                      (_%make-props!139897%_ 'print: _%transparent?139918%_)
                      '#f))
                 (_%all-slots-equalable?139924%_
                  (_%all-slots-property?139898%_
                   'equal:
                   _%transparent?139918%_))
                 (_%equalable139926%_
                  (if (not _%all-slots-equalable?139924%_)
                      (_%make-props!139897%_ 'equal: _%transparent?139918%_)
                      '#f))
                 (_%first-new-field139928%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super139888%_ 'class))
                      (let ((__tmp143451
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super139888%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp143451))
                      '1))
                 (_%field-info-length139930%_
                  (let ((__tmp143452
                         (let ((__tmp143453
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector139890%_))))
                           (declare (not safe))
                           (##fx- __tmp143453 _%first-new-field139928%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp143452)))
                 (_%field-info139932%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length139930%_ '#f)))
                 (_%struct?139934%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties139891%_)))
                 (_%final?139936%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties139891%_)))
                 (_%metaclass139943%_
                  (let ((_%$%metaclass139937139939%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties139891%_))))
                    (if _%$%metaclass139937139939%_
                        (let ((_%metaclass139941%_
                               _%$%metaclass139937139939%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass139941%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id139886%_
                                     'metaclass:
                                     _%metaclass139941%_))
                          _%metaclass139941%_)
                        '#f)))
                 (_%system?139945%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties139891%_)))
                 (_%opaque?139947%_ (not _%transparent?139918%_))
                 (_%acyclic?139949%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties139891%_)))
                 (_%type-flags139951%_
                  (let ((__tmp143459
                         (if _%final?139936%_ '0 type-flag-extensible))
                        (__tmp143458
                         (if (and _%opaque?139947%_
                                  (not (let ()
                                         (declare (not safe))
                                         (agetq__0
                                          'equal:
                                          _%properties139891%_))))
                             type-flag-opaque
                             '0))
                        (__tmp143457
                         (if _%struct?139934%_ class-type-flag-struct '0))
                        (__tmp143456
                         (if _%metaclass139943%_ class-type-flag-metaclass '0))
                        (__tmp143455
                         (if _%system?139945%_ class-type-flag-system '0))
                        (__tmp143454
                         (if _%acyclic?139949%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp143459
                             __tmp143458
                             __tmp143457
                             __tmp143456
                             __tmp143455
                             __tmp143454)))
                 (_%precedence-list139959%_
                  (let ((_%$e139953%_ (memq t::t _%precedence-list139889%_)))
                    (if _%$e139953%_
                        (if (null? (cdr _%$e139953%_))
                            _%precedence-list139889%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list139889%_))
                        (let ((__tmp143460 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list139889%_ __tmp143460))))))
            (let _%loop139962%_ ((_%i139964%_ _%first-new-field139928%_)
                                 (_%j139965%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j139965%_ _%field-info-length139930%_))
                  (let* ((_%slot139967%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector139890%_ _%i139964%_)))
                         (_%flags139975%_
                          (let ((__tmp143462
                                 (if (or _%all-slots-printable?139920%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable139922%_
                                            _%slot139967%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp143461
                                 (if (or _%all-slots-equalable?139924%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable139926%_
                                            _%slot139967%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp143462 __tmp143461))))
                    (vector-set!
                     _%field-info139932%_
                     _%j139965%_
                     _%slot139967%_)
                    (vector-set!
                     _%field-info139932%_
                     (let () (declare (not safe)) (##fx+ _%j139965%_ '1))
                     _%flags139975%_)
                    (_%loop139962%_
                     (let () (declare (not safe)) (##fx+ _%i139964%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j139965%_ '3))))
                  '#!void))
            (if _%metaclass139943%_
                (let ((_%val140014%_
                       (let* ((_%klass139978%_ _%metaclass139943%_)
                              (_%args139981%_
                               (list _%type-id139886%_
                                     _%type-name139887%_
                                     _%type-flags139951%_
                                     _%type-super139888%_
                                     _%field-info139932%_
                                     _%precedence-list139959%_
                                     _%slot-vector139890%_
                                     _%slot-table139893%_
                                     _%properties139891%_
                                     _%constructor139892%_
                                     _%methods139894%_
                                     '#f
                                     '#f)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass139978%_
                                'class))
                             (let ((_%klass139986%_ _%klass139978%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass139986%_
                                        _%args139981%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass139978%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@305.10-311.31"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val140014%_)
                  '#!void)
                (let ((_%klass140017%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id139886%_
                          _%type-name139887%_
                          _%type-flags139951%_
                          _%type-super139888%_
                          _%field-info139932%_
                          _%precedence-list139959%_
                          _%slot-vector139890%_
                          _%slot-table139893%_
                          _%properties139891%_
                          _%constructor139892%_
                          _%methods139894%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super140019%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again140023%_ ((_%spin140026%_ '0))
                         (if (let ((__tmp143463
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp143463 '0))
                             (let ((__tmp143464 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp143464))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin140026%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again140023%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin140026%_ '1))))
                                 (let ((_%owner140032%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner140032%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner140032%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again140023%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r140046%_
                            (let* ((_%props140038%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super140019%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e140040%_
                                    (assq 'subclasses: _%props140038%_)))
                              (if _%$e140040%_
                                  (set-cdr!
                                   _%$e140040%_
                                   (cons _%klass140017%_ (cdr _%$e140040%_)))
                                  (let ((__tmp143465
                                         (cons (cons 'subclasses:
                                                     (cons _%klass140017%_
                                                           '()))
                                               _%props140038%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super140019%_
                                     __tmp143465
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
                       _%$r140046%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties139891%_ '())))
                  _%klass140017%_))))))
    (define class-type-id
      (lambda (_%klass139884%_)
        (##structure-ref _%klass139884%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass139882%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139882%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass139879%_ _%val139880%_)
        (##structure-set! _%klass139879%_ _%val139880%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass139874%_ _%val139876%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139874%_
           _%val139876%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass139872%_)
        (##structure-ref _%klass139872%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass139870%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139870%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass139867%_ _%val139868%_)
        (##structure-set! _%klass139867%_ _%val139868%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass139862%_ _%val139864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139862%_
           _%val139864%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass139860%_)
        (##structure-ref _%klass139860%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass139858%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139858%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass139855%_ _%val139856%_)
        (##structure-set! _%klass139855%_ _%val139856%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass139850%_ _%val139852%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139850%_
           _%val139852%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass139848%_)
        (##structure-ref _%klass139848%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass139846%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139846%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass139843%_ _%val139844%_)
        (##structure-set! _%klass139843%_ _%val139844%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass139838%_ _%val139840%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139838%_
           _%val139840%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass139836%_)
        (##structure-ref _%klass139836%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass139834%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139834%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass139831%_ _%val139832%_)
        (##structure-set! _%klass139831%_ _%val139832%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass139826%_ _%val139828%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139826%_
           _%val139828%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass139824%_)
        (##structure-ref _%klass139824%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass139822%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139822%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass139819%_ _%val139820%_)
        (##structure-set!
         _%klass139819%_
         _%val139820%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass139814%_ _%val139816%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139814%_
           _%val139816%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass139812%_)
        (##structure-ref _%klass139812%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass139810%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139810%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass139807%_ _%val139808%_)
        (##structure-set!
         _%klass139807%_
         _%val139808%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass139802%_ _%val139804%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139802%_
           _%val139804%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass139800%_)
        (##structure-ref _%klass139800%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass139798%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139798%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass139795%_ _%val139796%_)
        (##structure-set!
         _%klass139795%_
         _%val139796%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass139790%_ _%val139792%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139790%_
           _%val139792%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass139788%_)
        (##structure-ref _%klass139788%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass139786%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139786%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass139783%_ _%val139784%_)
        (##structure-set!
         _%klass139783%_
         _%val139784%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass139778%_ _%val139780%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139778%_
           _%val139780%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass139776%_)
        (##structure-ref _%klass139776%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass139774%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139774%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass139771%_ _%val139772%_)
        (##structure-set!
         _%klass139771%_
         _%val139772%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass139766%_ _%val139768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139766%_
           _%val139768%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass139764%_)
        (##structure-ref _%klass139764%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass139762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139762%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass139759%_ _%val139760%_)
        (##structure-set!
         _%klass139759%_
         _%val139760%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass139754%_ _%val139756%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139754%_
           _%val139756%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass139752%_)
        (##structure-ref _%klass139752%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass139750%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139750%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass139747%_ _%val139748%_)
        (##structure-set!
         _%klass139747%_
         _%val139748%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass139742%_ _%val139744%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139742%_
           _%val139744%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass139740%_)
        (##structure-ref _%klass139740%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass139738%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139738%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass139735%_ _%val139736%_)
        (##structure-set!
         _%klass139735%_
         _%val139736%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass139730%_ _%val139732%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139730%_
           _%val139732%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type139494%_)
        (letrec ((_%__fields->list139624%_
                  (lambda (_%fields139688%_)
                    (let* ((_%fields139691%_ _%fields139688%_)
                           (_%fields-len139700%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields139691%_))))
                      (let _%loop139702%_ ((_%i139704%_ '0) (_%r139705%_ '()))
                        (let* ((_%i139708%_ _%i139704%_)
                               (_%r139721%_ _%r139705%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i139708%_ _%fields-len139700%_))
                              (_%loop139702%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i139708%_ '3))
                               (cons (vector-ref _%fields139691%_ _%i139708%_)
                                     _%r139721%_))
                              (reverse! _%r139721%_)))))))
                 (_%fields->list139625%_
                  (lambda (_%fields139676%_)
                    (let ((_%fields139679%_ _%fields139676%_))
                      (_%__fields->list139624%_ _%fields139679%_)))))
          (let _%loop139627%_ ((_%type139629%_ _%type139494%_))
            (if (let () (declare (not safe)) (##type? _%type139629%_))
                (if (eq? _%type139629%_ ##type-type)
                    '()
                    (let ((_%$e139634%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type139629%_))))
                      (if _%$e139634%_
                          (let ((__tmp143467 (_%loop139627%_ _%$e139634%_))
                                (__tmp143466
                                 (let* ((_%fields139640%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type139629%_)))
                                        (_%fields139644%_ _%fields139640%_))
                                   (_%__fields->list139624%_
                                    _%fields139644%_))))
                            (declare (not safe))
                            (##append __tmp143467 __tmp143466))
                          (let* ((_%fields139661%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type139629%_)))
                                 (_%fields139665%_ _%fields139661%_))
                            (_%__fields->list139624%_ _%fields139665%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass139462%_)
        (let ((_%klass139465%_ _%klass139462%_))
          (letrec ((_%get-fields!139474%_
                    (lambda (_%klass139489%_ _%type139490%_)
                      (let ((_%fields139492%_
                             (type-field-list _%type139490%_)))
                        (##structure-set!
                         _%klass139489%_
                         (cons (cons 'fields: _%fields139492%_)
                               (##structure-ref
                                _%klass139489%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields139492%_))))
            (let* ((_%props139476%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass139465%_ '9 '#f '#f)))
                   (_%$e139478%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props139476%_))))
              (if _%$e139478%_
                  _%$e139478%_
                  (let ((_%$e139481%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props139476%_))))
                    (if _%$e139481%_
                        (_%get-fields!139474%_ _%klass139465%_ _%$e139481%_)
                        (_%get-fields!139474%_
                         _%klass139465%_
                         _%klass139465%_)))))))))
    (define class-type-field-list
      (lambda (_%klass139448%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139448%_ 'class))
            (let ((_%klass139452%_ _%klass139448%_))
              (__class-type-field-list _%klass139452%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@409.30-409.35"
               'contract:
               'class-type?
               'value:
               _%klass139448%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass139436%_)
        (let ((_%klass139439%_ _%klass139436%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass139439%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass139422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139422%_ 'class))
            (let ((_%klass139426%_ _%klass139422%_))
              (__class-type-slot-list _%klass139426%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@425.29-425.34"
               'contract:
               'class-type?
               'value:
               _%klass139422%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass139410%_)
        (let* ((_%klass139413%_ _%klass139410%_)
               (__tmp143468
                (let ((__tmp143469
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass139413%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp143469))))
          (declare (not safe))
          (##fx- __tmp143468 '1))))
    (define class-type-field-count
      (lambda (_%klass139396%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139396%_ 'class))
            (let ((_%klass139400%_ _%klass139396%_))
              (__class-type-field-count _%klass139400%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.31-427.36"
               'contract:
               'class-type?
               'value:
               _%klass139396%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass139384%_)
        (let ((_%klass139387%_ _%klass139384%_))
          (let ((__tmp143470
                 (let ((__tmp143471
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass139387%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp143471))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass139387%_
             __tmp143470
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass139370%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139370%_ 'class))
            (let ((_%klass139374%_ _%klass139370%_))
              (__class-type-seal! _%klass139374%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@430.25-430.30"
               'contract:
               'class-type?
               'value:
               _%klass139370%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass139324%_ _%key139325%_ _%val139326%_)
        (let* ((_%klass139329%_ _%klass139324%_) (_%key139337%_ _%key139325%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again139348%_ ((_%spin139351%_ '0))
              (if (let ((__tmp143472
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp143472 '0))
                  (let ((__tmp143473 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp143473))
                  (if (let () (declare (not safe)) (##fx< _%spin139351%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again139348%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin139351%_ '1))))
                      (let ((_%owner139357%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner139357%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner139357%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again139348%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r139365%_
                 (let ((_%props139363%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass139329%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key139337%_ _%props139363%_)
                       '#!void
                       (let ((__tmp143474
                              (cons (cons _%key139337%_ _%val139326%_)
                                    _%props139363%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass139329%_
                          __tmp143474
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
            _%$r139365%_))))
    (define class-type-properties-put!
      (lambda (_%klass139298%_ _%key139299%_ _%val139300%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139298%_ 'class))
            (let ((_%klass139304%_ _%klass139298%_))
              (if (keyword? _%key139299%_)
                  (let ((_%key139314%_ _%key139299%_))
                    (__class-type-properties-put!
                     _%klass139304%_
                     _%key139314%_
                     _%val139300%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@438.52-438.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key139299%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@438.35-438.40"
               'contract:
               'class-type?
               'value:
               _%klass139298%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass139192%_)
        (let ((_%klass139195%_ _%klass139192%_))
          (letrec ((_%get-field-vector139204%_
                    (lambda (_%type139282%_)
                      (let _%loop139284%_ ((_%type139286%_ _%type139282%_))
                        (let* ((_%fields139288%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type139286%_)))
                               (_%$e139290%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type139286%_))))
                          (if _%$e139290%_
                              (let ((_%super-fields139295%_
                                     (_%loop139284%_ _%$e139290%_)))
                                (vector-append
                                 _%super-fields139295%_
                                 _%fields139288%_))
                              _%fields139288%_)))))
                   (_%get-printable-slot-alist139205%_
                    (lambda (_%type139265%_)
                      (let* ((_%fields139267%_
                              (_%get-field-vector139204%_ _%type139265%_))
                             (_%count139269%_
                              (vector-length _%fields139267%_)))
                        (let _%loop139272%_ ((_%i139274%_ '0)
                                             (_%offset139275%_ '1)
                                             (_%r139276%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i139274%_ _%count139269%_))
                              (let ((_%slot-name139278%_
                                     (vector-ref _%fields139267%_ _%i139274%_))
                                    (_%slot-flags139279%_
                                     (vector-ref
                                      _%fields139267%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i139274%_ '1))))
                                    (_%next-i139280%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i139274%_ '3))))
                                (if (let ((__tmp143475
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags139279%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp143475 '0))
                                    (_%loop139272%_
                                     _%next-i139280%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset139275%_ '1))
                                     (cons (cons _%slot-name139278%_
                                                 _%offset139275%_)
                                           _%r139276%_))
                                    (_%loop139272%_
                                     _%next-i139280%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset139275%_ '1))
                                     _%r139276%_)))
                              (reverse! _%r139276%_))))))
                   (_%get-printable-slots!139206%_
                    (lambda (_%klass139221%_ _%type139222%_)
                      (let ((_%printable139224%_
                             (_%get-printable-slot-alist139205%_
                              _%type139222%_)))
                        (let* ((_%klass139226%_ _%klass139221%_)
                               (_%key139229%_ 'printable-slots:)
                               (_%val139232%_ _%printable139224%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass139226%_
                                 'class))
                              (let* ((_%klass139237%_ _%klass139226%_)
                                     (_%key139255%_ _%key139229%_))
                                (__class-type-properties-put!
                                 _%klass139237%_
                                 _%key139255%_
                                 _%val139232%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass139226%_)
                                '#!void)))
                        _%printable139224%_))))
            (let* ((_%props139208%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass139195%_ '9 '#f '#f)))
                   (_%$e139210%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props139208%_))))
              (if _%$e139210%_
                  _%$e139210%_
                  (let ((_%$e139213%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props139208%_))))
                    (if _%$e139213%_
                        (_%get-printable-slots!139206%_
                         _%klass139195%_
                         _%$e139213%_)
                        (_%get-printable-slots!139206%_
                         _%klass139195%_
                         _%klass139195%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass139178%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139178%_ 'class))
            (let ((_%klass139182%_ _%klass139178%_))
              (__class-type-printable-slots _%klass139182%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@447.35-447.40"
               'contract:
               'class-type?
               'value:
               _%klass139178%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct139147%_ _%maybe-super-struct139148%_)
        (let* ((_%maybe-sub-struct139151%_ _%maybe-sub-struct139147%_)
               (_%maybe-super-struct139159%_ _%maybe-super-struct139148%_)
               (_%maybe-super-struct-id139168%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct139159%_))))
          (let _%lp139170%_ ((_%super-struct139172%_
                              _%maybe-sub-struct139151%_))
            (if (not _%super-struct139172%_)
                '#f
                (if (eq? _%maybe-super-struct-id139168%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct139172%_)))
                    '#t
                    (_%lp139170%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct139172%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct139122%_ _%maybe-super-struct139123%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct139122%_ 'class))
            (let ((_%maybe-sub-struct139127%_ _%maybe-sub-struct139122%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct139123%_
                     'class))
                  (let ((_%maybe-super-struct139137%_
                         _%maybe-super-struct139123%_))
                    (__substruct?
                     _%maybe-sub-struct139127%_
                     _%maybe-super-struct139137%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@491.47-491.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct139123%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@491.19-491.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct139122%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass139100%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139100%_ 'class))
            (if (let* ((_%klass139103%_ _%klass139100%_)
                       (_%klass139108%_ _%klass139103%_))
                  (__class-type-struct? _%klass139108%_))
                _%klass139100%_
                (let () (declare (not safe)) (##type-super _%klass139100%_)))
            (if (not _%klass139100%_)
                '#f
                (error '"not a class or false" _%klass139100%_)))))
    (define base-struct/2
      (lambda (_%klass1139023%_ _%klass2139024%_)
        (let ((_%s1139026%_ (base-struct/1 _%klass1139023%_))
              (_%s2139027%_ (base-struct/1 _%klass2139024%_)))
          (if (or (not _%s1139026%_)
                  (and _%s2139027%_
                       (let* ((_%maybe-sub-struct139032%_ _%s1139026%_)
                              (_%maybe-super-struct139035%_ _%s2139027%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct139032%_
                                'class))
                             (let ((_%maybe-sub-struct139040%_
                                    _%maybe-sub-struct139032%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct139035%_
                                      'class))
                                   (let ((_%maybe-super-struct139054%_
                                          _%maybe-super-struct139035%_))
                                     (__substruct?
                                      _%maybe-sub-struct139040%_
                                      _%maybe-super-struct139054%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct139035%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct139032%_)
                               '#!void)))))
              _%s2139027%_
              (if (or (not _%s2139027%_)
                      (and _%s1139026%_
                           (let* ((_%maybe-sub-struct139068%_ _%s2139027%_)
                                  (_%maybe-super-struct139071%_ _%s1139026%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct139068%_
                                    'class))
                                 (let ((_%maybe-sub-struct139076%_
                                        _%maybe-sub-struct139068%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct139071%_
                                          'class))
                                       (let ((_%maybe-super-struct139088%_
                                              _%maybe-super-struct139071%_))
                                         (__substruct?
                                          _%maybe-sub-struct139076%_
                                          _%maybe-super-struct139088%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct139071%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct139068%_)
                                   '#!void)))))
                  _%s1139026%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1139023%_
                         _%klass2139024%_
                         _%s1139026%_
                         _%s2139027%_))))))
    (define base-struct/list
      (lambda (_%all-supers138908%_)
        (let* ((_%$%all-supers138909138934%_ _%all-supers138908%_)
               (_%$%E138914138938%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers138909138934%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K138932139020%_ (lambda () '#f))
                (_%$%K138929139006%_
                 (lambda (_%x139004%_) (base-struct/1 _%x139004%_)))
                (_%$%K138924138983%_
                 (lambda (_%y138980%_ _%x138981%_)
                   (base-struct/2 _%x138981%_ _%y138980%_)))
                (_%$%K138915138945%_
                 (lambda (_%y138942%_ _%x138943%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x138943%_ _%y138942%_)))))
            (let* ((_%__match142236142237%_
                    (lambda (_%$%hd138916138948%_ _%$%tl138917138950%_)
                      (let ((_%x138953%_ _%$%hd138916138948%_))
                        (letrec ((_%$%splice-rest138919138955%_
                                  (lambda (_%$%rest138923138962%_ _%y138964%_)
                                    (if (null? _%$%rest138923138962%_)
                                        (_%$%K138915138945%_
                                         _%y138964%_
                                         _%x138953%_)
                                        (_%$%E138914138938%_))))
                                 (_%$%splice-try138921138957%_
                                  (lambda (_%$%hd138922138966%_
                                           _%$%rest138923138968%_
                                           _%$%y138918138969%_)
                                    (let ((_%y138971%_ _%$%hd138922138966%_))
                                      (_%$%splice-loop138920138959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest138923138968%_))
                                       (cons _%y138971%_
                                             _%$%y138918138969%_)))))
                                 (_%$%splice-loop138920138959%_
                                  (lambda (_%$%rest138923138973%_
                                           _%$%y138918138974%_)
                                    (if (pair? _%$%rest138923138973%_)
                                        (_%$%splice-try138921138957%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest138923138973%_))
                                         _%$%rest138923138973%_
                                         _%$%y138918138974%_)
                                        (_%$%splice-rest138919138955%_
                                         _%$%rest138923138973%_
                                         (reverse _%$%y138918138974%_))))))
                          (_%$%splice-loop138920138959%_
                           _%$%tl138917138950%_
                           '())))))
                   (_%$%try-match138911139016%_
                    (lambda ()
                      (if (pair? _%$%all-supers138909138934%_)
                          (let ((_%$%tl138931139011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers138909138934%_)))
                                (_%$%hd138930139009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers138909138934%_))))
                            (if (null? _%$%tl138931139011%_)
                                (let ((_%x139014%_ _%$%hd138930139009%_))
                                  (base-struct/1 _%x139014%_))
                                (if (pair? _%$%tl138931139011%_)
                                    (let ((_%$%tl138928138995%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl138931139011%_)))
                                          (_%$%hd138927138993%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl138931139011%_))))
                                      (if (null? _%$%tl138928138995%_)
                                          (let ((_%x138991%_
                                                 _%$%hd138930139009%_)
                                                (_%y138998%_
                                                 _%$%hd138927138993%_))
                                            (_%$%K138924138983%_
                                             _%y138998%_
                                             _%x138991%_))
                                          (_%__match142236142237%_
                                           _%$%hd138930139009%_
                                           _%$%tl138931139011%_)))
                                    (_%__match142236142237%_
                                     _%$%hd138930139009%_
                                     _%$%tl138931139011%_))))
                          (_%$%E138914138938%_)))))
              (if (null? _%$%all-supers138909138934%_)
                  (_%$%K138932139020%_)
                  (_%$%try-match138911139016%_)))))))
    (define base-struct
      (lambda _%all-supers138906%_ (base-struct/list _%all-supers138906%_)))
    (define find-super-constructor
      (lambda (_%super138857%_)
        (let _%lp138859%_ ((_%rest138861%_ _%super138857%_)
                           (_%constructor138862%_ '#f))
          (let* ((_%$%rest138863138871%_ _%rest138861%_)
                 (_%$%else138865138879%_ (lambda () _%constructor138862%_))
                 (_%$%K138867138894%_
                  (lambda (_%rest138882%_ _%hd138883%_)
                    (let ((_%$e138885%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd138883%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e138885%_
                          (if (or (not _%constructor138862%_)
                                  (eq? _%constructor138862%_ _%$e138885%_))
                              (_%lp138859%_ _%rest138882%_ _%$e138885%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor138862%_
                                     _%$e138885%_))
                          (_%lp138859%_
                           _%rest138882%_
                           _%constructor138862%_))))))
            (if (pair? _%$%rest138863138871%_)
                (let ((_%$%hd138868138897%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest138863138871%_)))
                      (_%$%tl138869138899%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest138863138871%_))))
                  (let* ((_%hd138902%_ _%$%hd138868138897%_)
                         (_%rest138904%_ _%$%tl138869138899%_))
                    (_%$%K138867138894%_ _%rest138904%_ _%hd138902%_)))
                (_%$%else138865138879%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list138849%_ _%direct-slots138850%_)
        (let ((__tmp143477
               (lambda (_%mixin138852%_)
                 (let ((__tmp143478
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin138852%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp143478 '()))))
              (__tmp143476
               (lambda (_%slot-list138854%_ _%slot-table138855%_)
                 (values (list->vector _%slot-list138854%_)
                         _%slot-table138855%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list138849%_
           _%direct-slots138850%_
           __tmp143477
           __tmp143476))))
    (define __make-class-type
      (lambda (_%id138676%_
               _%name138677%_
               _%direct-supers138678%_
               _%direct-slots138679%_
               _%properties138680%_
               _%constructor138681%_)
        (let* ((_%id138684%_ _%id138676%_)
               (_%name138692%_ _%name138677%_)
               (_%direct-supers138700%_ _%direct-supers138678%_)
               (_%direct-slots138708%_ _%direct-slots138679%_)
               (_%properties138716%_ _%properties138680%_)
               (_%constructor138724%_ _%constructor138681%_))
          (let ((_%$e138758%_
                 (let* ((_%pred138736%_
                         (lambda (_%$obj138733%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj138733%_
                                   'class)))))
                        (_%lst138739%_ _%direct-supers138700%_)
                        (_%pred138744%_ _%pred138736%_))
                   (declare (not safe))
                   (__find _%pred138744%_ _%lst138739%_))))
            (if _%$e138758%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e138758%_)
                (let ((_%$e138785%_
                       (let* ((_%pred138765%_ __class-type-final?)
                              (_%lst138768%_ _%direct-supers138700%_)
                              (_%pred138773%_ _%pred138765%_))
                         (declare (not safe))
                         (__find _%pred138773%_ _%lst138768%_))))
                  (if _%$e138785%_
                      (error '"Cannot extend final class" _%$e138785%_)
                      '#!void))))
          (let ((_g143479_ (compute-precedence-list _%direct-supers138700%_)))
            (begin
              (let ((_g143480_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g143479_)
                           (##values-length _g143479_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g143480_ 2)))
                    (error "Context expects 2 values" _g143480_)))
              (let ((_%precedence-list138792%_
                     (let () (declare (not safe)) (##values-ref _g143479_ 0)))
                    (_%struct-super138793%_
                     (let () (declare (not safe)) (##values-ref _g143479_ 1))))
                (let ((_g143481_
                       (compute-class-slots
                        _%precedence-list138792%_
                        _%direct-slots138708%_)))
                  (begin
                    (let ((_g143482_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g143481_)
                                 (##values-length _g143481_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g143482_ 2)))
                          (error "Context expects 2 values" _g143482_)))
                    (let ((_%slot-vector138795%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g143481_ 0)))
                          (_%slot-table138796%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g143481_ 1))))
                      (let* ((_%properties138798%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots138708%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers138700%_)
                                          _%properties138716%_)))
                             (_%constructor*138803%_
                              (let ((_%$e138800%_ _%constructor138724%_))
                                (if _%$e138800%_
                                    _%$e138800%_
                                    (find-super-constructor
                                     _%direct-supers138700%_))))
                             (_%precedence-list138846%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties138798%_))
                                      (memq object::t
                                            _%precedence-list138792%_))
                                  _%precedence-list138792%_
                                  (let _%loop138808%_ ((_%tail138810%_
                                                        _%precedence-list138792%_)
                                                       (_%head138811%_ '()))
                                    (let* ((_%$%tail138812138820%_
                                            _%tail138810%_)
                                           (_%$%else138814138828%_
                                            (lambda ()
                                              (let ((__tmp143483
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp143483
                                                 _%head138811%_))))
                                           (_%$%K138816138834%_
                                            (lambda (_%rest138831%_
                                                     _%hd138832%_)
                                              (if (eq? _%hd138832%_ t::t)
                                                  (let ((__tmp143484
                                                         (cons object::t
                                                               _%tail138810%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp143484
                                                     _%head138811%_))
                                                  (_%loop138808%_
                                                   _%rest138831%_
                                                   (cons _%hd138832%_
                                                         _%head138811%_))))))
                                      (if (pair? _%$%tail138812138820%_)
                                          (let ((_%$%hd138817138837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail138812138820%_)))
                                                (_%$%tl138818138839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail138812138820%_))))
                                            (let* ((_%hd138842%_
                                                    _%$%hd138817138837%_)
                                                   (_%rest138844%_
                                                    _%$%tl138818138839%_))
                                              (_%$%K138816138834%_
                                               _%rest138844%_
                                               _%hd138842%_)))
                                          (_%$%else138814138828%_)))))))
                        (make-class-type-descriptor
                         _%id138684%_
                         _%name138692%_
                         _%struct-super138793%_
                         _%precedence-list138846%_
                         _%slot-vector138795%_
                         _%properties138798%_
                         _%constructor*138803%_
                         _%slot-table138796%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id138601%_
               _%name138602%_
               _%direct-supers138603%_
               _%direct-slots138604%_
               _%properties138605%_
               _%constructor138606%_)
        (if (symbol? _%id138601%_)
            (let ((_%id138610%_ _%id138601%_))
              (if (symbol? _%name138602%_)
                  (let ((_%name138620%_ _%name138602%_))
                    (if (list? _%direct-supers138603%_)
                        (let ((_%direct-supers138630%_
                               _%direct-supers138603%_))
                          (if (list? _%direct-slots138604%_)
                              (let ((_%direct-slots138640%_
                                     _%direct-slots138604%_))
                                (if (list? _%properties138605%_)
                                    (let ((_%properties138650%_
                                           _%properties138605%_))
                                      (if (or (not _%constructor138606%_)
                                              (symbol? _%constructor138606%_))
                                          (let ((_%constructor138666%_
                                                 _%constructor138606%_))
                                            (__make-class-type
                                             _%id138610%_
                                             _%name138620%_
                                             _%direct-supers138630%_
                                             _%direct-slots138640%_
                                             _%properties138650%_
                                             _%constructor138666%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@572.24-572.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor138606%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@571.24-571.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties138605%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@570.24-570.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots138604%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@569.24-569.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers138603%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@568.24-568.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name138602%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@567.24-567.26"
               'contract:
               'symbol?
               'value:
               _%id138601%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass138589%_)
        (let ((_%klass138592%_ _%klass138589%_))
          (cons _%klass138592%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass138592%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass138575%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138575%_ 'class))
            (let ((_%klass138579%_ _%klass138575%_))
              (__class-precedence-list _%klass138579%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@605.30-605.35"
               'contract:
               'class-type?
               'value:
               _%klass138575%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers138572%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers138572%_))))
    (define __make-class-predicate
      (lambda (_%klass138488%_)
        (let* ((_%klass138491%_ _%klass138488%_)
               (_%tid138500%_
                (let () (declare (not safe)) (##type-id _%klass138491%_))))
          (if (let* ((_%type138502%_ _%klass138491%_)
                     (_%type138507%_ _%type138502%_))
                (__class-type-final? _%type138507%_))
              (lambda (_%$%g138521138523%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g138521138523%_
                   _%tid138500%_)))
              (if (let* ((_%klass138526%_ _%klass138491%_)
                         (_%klass138531%_ _%klass138526%_))
                    (__class-type-struct? _%klass138531%_))
                  (lambda (_%$%g138541138543%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g138541138543%_
                       _%tid138500%_)))
                  (lambda (_%$%g138546138548%_)
                    (let* ((_%klass138551%_ _%klass138491%_)
                           (_%obj138554%_ _%$%g138546138548%_)
                           (_%klass138559%_ _%klass138551%_))
                      (__class-instance? _%klass138559%_ _%obj138554%_))))))))
    (define make-class-predicate
      (lambda (_%klass138474%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138474%_ 'class))
            (let ((_%klass138478%_ _%klass138474%_))
              (__make-class-predicate _%klass138478%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.29-617.34"
               'contract:
               'class-type?
               'value:
               _%klass138474%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass138408%_ _%slot138409%_)
        (let* ((_%klass138412%_ _%klass138408%_)
               (_%slot138420%_ _%slot138409%_)
               (_%field138429%_
                (let ((__tmp143485
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138412%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143485 _%slot138420%_ '#f))))
          (if (not _%field138429%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138412%_
                       'slot:
                       _%slot138420%_)
                '#!void)
              (if (let* ((_%type138433%_ _%klass138412%_)
                         (_%type138438%_ _%type138433%_))
                    (__class-type-final? _%type138438%_))
                  (make-final-slot-accessor
                   _%klass138412%_
                   _%slot138420%_
                   _%field138429%_)
                  (if (let* ((_%klass138453%_ _%klass138412%_)
                             (_%klass138458%_ _%klass138453%_))
                        (__class-type-struct? _%klass138458%_))
                      (make-struct-slot-accessor
                       _%klass138412%_
                       _%slot138420%_
                       _%field138429%_)
                      (if (let ((_%strukt138469%_
                                 (base-struct/1 _%klass138412%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138469%_
                                    'class))
                                 (let ((__tmp143486
                                        (let ((__tmp143487
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138469%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143487))))
                                   (declare (not safe))
                                   (##fx< _%field138429%_ __tmp143486))))
                          (make-struct-subclass-slot-accessor
                           _%klass138412%_
                           _%slot138420%_
                           _%field138429%_)
                          (make-class-cached-slot-accessor
                           _%klass138412%_
                           _%slot138420%_
                           _%field138429%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass138383%_ _%slot138384%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138383%_ 'class))
            (let ((_%klass138388%_ _%klass138383%_))
              (if (symbol? _%slot138384%_)
                  (let ((_%slot138398%_ _%slot138384%_))
                    (__make-class-slot-accessor
                     _%klass138388%_
                     _%slot138398%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@648.50-648.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138384%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@648.33-648.38"
               'contract:
               'class-type?
               'value:
               _%klass138383%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass138317%_ _%slot138318%_)
        (let* ((_%klass138321%_ _%klass138317%_)
               (_%slot138329%_ _%slot138318%_)
               (_%field138338%_
                (let ((__tmp143488
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138321%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143488 _%slot138329%_ '#f))))
          (if (not _%field138338%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138321%_
                       'slot:
                       _%slot138329%_)
                '#!void)
              (if (let* ((_%type138342%_ _%klass138321%_)
                         (_%type138347%_ _%type138342%_))
                    (__class-type-final? _%type138347%_))
                  (make-final-slot-mutator
                   _%klass138321%_
                   _%slot138329%_
                   _%field138338%_)
                  (if (let* ((_%klass138362%_ _%klass138321%_)
                             (_%klass138367%_ _%klass138362%_))
                        (__class-type-struct? _%klass138367%_))
                      (make-struct-slot-mutator
                       _%klass138321%_
                       _%slot138329%_
                       _%field138338%_)
                      (if (let ((_%strukt138378%_
                                 (base-struct/1 _%klass138321%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138378%_
                                    'class))
                                 (let ((__tmp143489
                                        (let ((__tmp143490
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138378%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143490))))
                                   (declare (not safe))
                                   (##fx< _%field138338%_ __tmp143489))))
                          (make-struct-subclass-slot-mutator
                           _%klass138321%_
                           _%slot138329%_
                           _%field138338%_)
                          (make-class-cached-slot-mutator
                           _%klass138321%_
                           _%slot138329%_
                           _%field138338%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass138292%_ _%slot138293%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138292%_ 'class))
            (let ((_%klass138297%_ _%klass138292%_))
              (if (symbol? _%slot138293%_)
                  (let ((_%slot138307%_ _%slot138293%_))
                    (__make-class-slot-mutator _%klass138297%_ _%slot138307%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@656.49-656.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138293%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@656.32-656.37"
               'contract:
               'class-type?
               'value:
               _%klass138292%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass138226%_ _%slot138227%_)
        (let* ((_%klass138230%_ _%klass138226%_)
               (_%slot138238%_ _%slot138227%_)
               (_%field138247%_
                (let ((__tmp143491
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138230%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143491 _%slot138238%_ '#f))))
          (if (not _%field138247%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138230%_
                       'slot:
                       _%slot138238%_)
                '#!void)
              (if (let* ((_%type138251%_ _%klass138230%_)
                         (_%type138256%_ _%type138251%_))
                    (__class-type-final? _%type138256%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass138230%_
                   _%slot138238%_
                   _%field138247%_)
                  (if (let* ((_%klass138271%_ _%klass138230%_)
                             (_%klass138276%_ _%klass138271%_))
                        (__class-type-struct? _%klass138276%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass138230%_
                       _%slot138238%_
                       _%field138247%_)
                      (if (let ((_%strukt138287%_
                                 (base-struct/1 _%klass138230%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138287%_
                                    'class))
                                 (let ((__tmp143492
                                        (let ((__tmp143493
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138287%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143493))))
                                   (declare (not safe))
                                   (##fx< _%field138247%_ __tmp143492))))
                          (make-struct-slot-unchecked-accessor
                           _%klass138230%_
                           _%slot138238%_
                           _%field138247%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass138230%_
                           _%slot138238%_
                           _%field138247%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass138201%_ _%slot138202%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138201%_ 'class))
            (let ((_%klass138206%_ _%klass138201%_))
              (if (symbol? _%slot138202%_)
                  (let ((_%slot138216%_ _%slot138202%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass138206%_
                     _%slot138216%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@664.60-664.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138202%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@664.43-664.48"
               'contract:
               'class-type?
               'value:
               _%klass138201%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass138135%_ _%slot138136%_)
        (let* ((_%klass138139%_ _%klass138135%_)
               (_%slot138147%_ _%slot138136%_)
               (_%field138156%_
                (let ((__tmp143494
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138139%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143494 _%slot138147%_ '#f))))
          (if (not _%field138156%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138139%_
                       'slot:
                       _%slot138147%_)
                '#!void)
              (if (let* ((_%type138160%_ _%klass138139%_)
                         (_%type138165%_ _%type138160%_))
                    (__class-type-final? _%type138165%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass138139%_
                   _%slot138147%_
                   _%field138156%_)
                  (if (let* ((_%klass138180%_ _%klass138139%_)
                             (_%klass138185%_ _%klass138180%_))
                        (__class-type-struct? _%klass138185%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass138139%_
                       _%slot138147%_
                       _%field138156%_)
                      (if (let ((_%strukt138196%_
                                 (base-struct/1 _%klass138139%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138196%_
                                    'class))
                                 (let ((__tmp143495
                                        (let ((__tmp143496
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138196%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143496))))
                                   (declare (not safe))
                                   (##fx< _%field138156%_ __tmp143495))))
                          (make-struct-slot-unchecked-mutator
                           _%klass138139%_
                           _%slot138147%_
                           _%field138156%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass138139%_
                           _%slot138147%_
                           _%field138156%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass138110%_ _%slot138111%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138110%_ 'class))
            (let ((_%klass138115%_ _%klass138110%_))
              (if (symbol? _%slot138111%_)
                  (let ((_%slot138125%_ _%slot138111%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass138115%_
                     _%slot138125%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@672.59-672.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138111%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@672.42-672.47"
               'contract:
               'class-type?
               'value:
               _%klass138110%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object138094%_ _%class138095%_ _%slot138096%_)
        (apply error
               '"not an instance"
               'object:
               _%object138094%_
               'class:
               _%class138095%_
               (if _%slot138096%_
                   (cons 'slot: (cons _%slot138096%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object138101%_ _%class138102%_)
        (let ((_%slot138104%_ '#f))
          (not-an-instance__%
           _%object138101%_
           _%class138102%_
           _%slot138104%_))))
    (define not-an-instance
      (lambda _g143497_
        (let ((_g143498_ (let () (declare (not safe)) (##length _g143497_))))
          (cond ((let () (declare (not safe)) (##fx= _g143498_ 2))
                 (apply not-an-instance__0 _g143497_))
                ((let () (declare (not safe)) (##fx= _g143498_ 3))
                 (apply not-an-instance__% _g143497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g143497_))))))
    (define make-final-slot-accessor
      (lambda (_%klass138087%_ _%slot138088%_ _%field138089%_)
        (lambda (_%obj138091%_)
          (##direct-structure-ref
           _%obj138091%_
           _%field138089%_
           _%klass138087%_
           _%slot138088%_))))
    (define make-final-slot-mutator
      (lambda (_%klass138080%_ _%slot138081%_ _%field138082%_)
        (lambda (_%obj138084%_ _%val138085%_)
          (##direct-structure-set!
           _%obj138084%_
           _%val138085%_
           _%field138082%_
           _%klass138080%_
           _%slot138081%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass138074%_ _%slot138075%_ _%field138076%_)
        (lambda (_%obj138078%_)
          (##structure-ref
           _%obj138078%_
           _%field138076%_
           _%klass138074%_
           _%slot138075%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass138067%_ _%slot138068%_ _%field138069%_)
        (lambda (_%obj138071%_ _%val138072%_)
          (##structure-set!
           _%obj138071%_
           _%val138072%_
           _%field138069%_
           _%klass138067%_
           _%slot138068%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass138061%_ _%slot138062%_ _%field138063%_)
        (lambda (_%obj138065%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj138065%_
             _%field138063%_
             _%klass138061%_
             _%slot138062%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass138054%_ _%slot138055%_ _%field138056%_)
        (lambda (_%obj138058%_ _%val138059%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj138058%_
             _%val138059%_
             _%field138056%_
             _%klass138054%_
             _%slot138055%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass138027%_ _%slot138028%_ _%field138029%_)
        (lambda (_%obj138031%_)
          (if (let* ((_%klass138033%_ _%klass138027%_)
                     (_%obj138036%_ _%obj138031%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass138033%_ 'class))
                    (let ((_%klass138041%_ _%klass138033%_))
                      (__class-instance? _%klass138041%_ _%obj138036%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass138033%_)
                      '#!void)))
              (unchecked-slot-ref _%obj138031%_ _%field138029%_)
              (not-an-instance__%
               _%obj138031%_
               _%klass138027%_
               _%slot138028%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass137999%_ _%slot138000%_ _%field138001%_)
        (lambda (_%obj138003%_ _%val138004%_)
          (if (let* ((_%klass138006%_ _%klass137999%_)
                     (_%obj138009%_ _%obj138003%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass138006%_ 'class))
                    (let ((_%klass138014%_ _%klass138006%_))
                      (__class-instance? _%klass138014%_ _%obj138009%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass138006%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj138003%_
               _%field138001%_
               _%val138004%_)
              (not-an-instance__%
               _%obj138003%_
               _%klass137999%_
               _%slot138000%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass137950%_ _%slot137951%_ _%field137952%_)
        (lambda (_%obj137954%_)
          (if (let* ((_%klass137956%_ _%klass137950%_)
                     (_%obj137959%_ _%obj137954%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137956%_ 'class))
                    (let ((_%klass137964%_ _%klass137956%_))
                      (__direct-instance? _%klass137964%_ _%obj137959%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137956%_)
                      '#!void)))
              (unchecked-field-ref _%obj137954%_ _%field137952%_)
              (if (let* ((_%klass137978%_ _%klass137950%_)
                         (_%obj137981%_ _%obj137954%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass137978%_ 'class))
                        (let ((_%klass137986%_ _%klass137978%_))
                          (__class-instance? _%klass137986%_ _%obj137981%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass137978%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj137954%_ _%slot137951%_)
                  (not-an-instance__%
                   _%obj137954%_
                   _%klass137950%_
                   _%slot137951%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass137900%_ _%slot137901%_ _%field137902%_)
        (lambda (_%obj137904%_ _%val137905%_)
          (if (let* ((_%klass137907%_ _%klass137900%_)
                     (_%obj137910%_ _%obj137904%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137907%_ 'class))
                    (let ((_%klass137915%_ _%klass137907%_))
                      (__direct-instance? _%klass137915%_ _%obj137910%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137907%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj137904%_
               _%field137902%_
               _%val137905%_)
              (if (let* ((_%klass137929%_ _%klass137900%_)
                         (_%obj137932%_ _%obj137904%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass137929%_ 'class))
                        (let ((_%klass137937%_ _%klass137929%_))
                          (__class-instance? _%klass137937%_ _%obj137932%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass137929%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj137904%_
                   _%slot137901%_
                   _%val137905%_)
                  (not-an-instance__%
                   _%obj137904%_
                   _%klass137900%_
                   _%slot137901%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass137873%_ _%slot137874%_ _%field137875%_)
        (lambda (_%obj137877%_)
          (if (let* ((_%klass137879%_ _%klass137873%_)
                     (_%obj137882%_ _%obj137877%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137879%_ 'class))
                    (let ((_%klass137887%_ _%klass137879%_))
                      (__direct-instance? _%klass137887%_ _%obj137882%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137879%_)
                      '#!void)))
              (unchecked-field-ref _%obj137877%_ _%field137875%_)
              (unchecked-slot-ref _%obj137877%_ _%slot137874%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass137845%_ _%slot137846%_ _%field137847%_)
        (lambda (_%obj137849%_ _%val137850%_)
          (if (let* ((_%klass137852%_ _%klass137845%_)
                     (_%obj137855%_ _%obj137849%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137852%_ 'class))
                    (let ((_%klass137860%_ _%klass137852%_))
                      (__direct-instance? _%klass137860%_ _%obj137855%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137852%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj137849%_
               _%field137847%_
               _%val137850%_)
              (unchecked-slot-set!
               _%obj137849%_
               _%slot137846%_
               _%val137850%_)))))
    (define __class-slot-offset
      (lambda (_%klass137824%_ _%slot137825%_)
        (let* ((_%klass137828%_ _%klass137824%_)
               (_%slot137836%_ _%slot137825%_)
               (__tmp143499
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass137828%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp143499 _%slot137836%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass137799%_ _%slot137800%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137799%_ 'class))
            (let ((_%klass137804%_ _%klass137799%_))
              (if (let () (declare (not safe)) (symbolic? _%slot137800%_))
                  (let ((_%slot137814%_ _%slot137800%_))
                    (__class-slot-offset _%klass137804%_ _%slot137814%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@734.43-734.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot137800%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@734.26-734.31"
               'contract:
               'class-type?
               'value:
               _%klass137799%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass137724%_ _%obj137725%_ _%slot137726%_)
        (let* ((_%klass137729%_ _%klass137724%_)
               (_%slot137737%_ _%slot137726%_))
          (if (let* ((_%klass137746%_ _%klass137729%_)
                     (_%obj137749%_ _%obj137725%_)
                     (_%klass137754%_ _%klass137746%_))
                (__class-instance? _%klass137754%_ _%obj137749%_))
              (let ((_%off137797%_
                     (let* ((_%klass137768%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj137725%_)))
                            (_%slot137771%_ _%slot137737%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass137768%_ 'class))
                           (let ((_%klass137776%_ _%klass137768%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot137771%_))
                                 (let ((_%slot137787%_ _%slot137771%_))
                                   (__class-slot-offset
                                    _%klass137776%_
                                    _%slot137787%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot137771%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass137768%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj137725%_
                 _%off137797%_
                 _%klass137729%_
                 _%slot137737%_))
              (not-an-instance__0 _%obj137725%_ _%klass137729%_)))))
    (define class-slot-ref
      (lambda (_%klass137698%_ _%obj137699%_ _%slot137700%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137698%_ 'class))
            (let ((_%klass137704%_ _%klass137698%_))
              (if (let () (declare (not safe)) (symbolic? _%slot137700%_))
                  (let ((_%slot137714%_ _%slot137700%_))
                    (__class-slot-ref
                     _%klass137704%_
                     _%obj137699%_
                     _%slot137714%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@737.44-737.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot137700%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@737.23-737.28"
               'contract:
               'class-type?
               'value:
               _%klass137698%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass137622%_ _%obj137623%_ _%slot137624%_ _%val137625%_)
        (let* ((_%klass137628%_ _%klass137622%_)
               (_%slot137636%_ _%slot137624%_))
          (if (let* ((_%klass137645%_ _%klass137628%_)
                     (_%obj137648%_ _%obj137623%_)
                     (_%klass137653%_ _%klass137645%_))
                (__class-instance? _%klass137653%_ _%obj137648%_))
              (let ((_%off137696%_
                     (let* ((_%klass137667%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj137623%_)))
                            (_%slot137670%_ _%slot137636%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass137667%_ 'class))
                           (let ((_%klass137675%_ _%klass137667%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot137670%_))
                                 (let ((_%slot137686%_ _%slot137670%_))
                                   (__class-slot-offset
                                    _%klass137675%_
                                    _%slot137686%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot137670%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass137667%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj137623%_
                 _%val137625%_
                 _%off137696%_
                 _%klass137628%_
                 _%slot137636%_))
              (not-an-instance__0 _%obj137623%_ _%klass137628%_)))))
    (define class-slot-set!
      (lambda (_%klass137595%_ _%obj137596%_ _%slot137597%_ _%val137598%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137595%_ 'class))
            (let ((_%klass137602%_ _%klass137595%_))
              (if (let () (declare (not safe)) (symbolic? _%slot137597%_))
                  (let ((_%slot137612%_ _%slot137597%_))
                    (__class-slot-set!
                     _%klass137602%_
                     _%obj137596%_
                     _%slot137612%_
                     _%val137598%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@743.45-743.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot137597%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.24-743.29"
               'contract:
               'class-type?
               'value:
               _%klass137595%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj137592%_ _%off137593%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj137592%_ _%off137593%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj137588%_ _%off137589%_ _%val137590%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj137588%_
           _%val137590%_
           _%off137589%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj137585%_ _%slot137586%_)
        (unchecked-field-ref
         _%obj137585%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj137585%_))
          _%slot137586%_))))
    (define unchecked-slot-set!
      (lambda (_%obj137581%_ _%slot137582%_ _%val137583%_)
        (unchecked-field-set!
         _%obj137581%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj137581%_))
          _%slot137582%_)
         _%val137583%_)))
    (define __slot-error
      (lambda (_%obj137578%_ _%slot137579%_)
        (error '"Cannot find slot"
               'object:
               _%obj137578%_
               'slot:
               _%slot137579%_)))
    (define __slot-ref__%
      (lambda (_%obj137502%_ _%slot137503%_ _%E137504%_)
        (let* ((_%slot137507%_ _%slot137503%_)
               (_%E137515%_ _%E137504%_)
               (_%klass137524%_ (class-of _%obj137502%_))
               (_%$e137560%_
                (let* ((_%klass137527%_ _%klass137524%_)
                       (_%slot137530%_ _%slot137507%_)
                       (_%klass137535%_ _%klass137527%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot137530%_))
                      (let ((_%slot137550%_ _%slot137530%_))
                        (__class-slot-offset _%klass137535%_ _%slot137550%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot137530%_)
                        '#!void)))))
          (if _%$e137560%_
              (unchecked-field-ref _%obj137502%_ _%$e137560%_)
              (let ()
                (declare (not safe))
                (_%E137515%_ _%obj137502%_ _%slot137507%_))))))
    (define __slot-ref__0
      (lambda (_%obj137569%_ _%slot137570%_)
        (let ((_%E137572%_ __slot-error))
          (__slot-ref__% _%obj137569%_ _%slot137570%_ _%E137572%_))))
    (define __slot-ref
      (lambda _g143500_
        (let ((_g143501_ (let () (declare (not safe)) (##length _g143500_))))
          (cond ((let () (declare (not safe)) (##fx= _g143501_ 2))
                 (apply __slot-ref__0 _g143500_))
                ((let () (declare (not safe)) (##fx= _g143501_ 3))
                 (apply __slot-ref__% _g143500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g143500_))))))
    (define slot-ref__%
      (lambda (_%obj137463%_ _%slot137464%_ _%E137465%_)
        (if (symbol? _%slot137464%_)
            (let ((_%slot137469%_ _%slot137464%_))
              (if (procedure? _%E137465%_)
                  (let ((_%E137479%_ _%E137465%_))
                    (__slot-ref__% _%obj137463%_ _%slot137469%_ _%E137479%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@769.38-769.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E137465%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@769.21-769.25"
               'contract:
               'symbol?
               'value:
               _%slot137464%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj137492%_ _%slot137493%_)
        (let ((_%E137495%_ __slot-error))
          (slot-ref__% _%obj137492%_ _%slot137493%_ _%E137495%_))))
    (define slot-ref
      (lambda _g143502_
        (let ((_g143503_ (let () (declare (not safe)) (##length _g143502_))))
          (cond ((let () (declare (not safe)) (##fx= _g143503_ 2))
                 (apply slot-ref__0 _g143502_))
                ((let () (declare (not safe)) (##fx= _g143503_ 3))
                 (apply slot-ref__% _g143502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g143502_))))))
    (define __slot-set!__%
      (lambda (_%obj137383%_ _%slot137384%_ _%val137385%_ _%E137386%_)
        (let* ((_%slot137389%_ _%slot137384%_)
               (_%E137397%_ _%E137386%_)
               (_%klass137406%_ (class-of _%obj137383%_))
               (_%$e137442%_
                (let* ((_%klass137409%_ _%klass137406%_)
                       (_%slot137412%_ _%slot137389%_)
                       (_%klass137417%_ _%klass137409%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot137412%_))
                      (let ((_%slot137432%_ _%slot137412%_))
                        (__class-slot-offset _%klass137417%_ _%slot137432%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot137412%_)
                        '#!void)))))
          (if _%$e137442%_
              (unchecked-field-set! _%obj137383%_ _%$e137442%_ _%val137385%_)
              (let ()
                (declare (not safe))
                (_%E137397%_ _%obj137383%_ _%slot137389%_))))))
    (define __slot-set!__0
      (lambda (_%obj137451%_ _%slot137452%_ _%val137453%_)
        (let ((_%E137455%_ __slot-error))
          (__slot-set!__%
           _%obj137451%_
           _%slot137452%_
           _%val137453%_
           _%E137455%_))))
    (define __slot-set!
      (lambda _g143504_
        (let ((_g143505_ (let () (declare (not safe)) (##length _g143504_))))
          (cond ((let () (declare (not safe)) (##fx= _g143505_ 3))
                 (apply __slot-set!__0 _g143504_))
                ((let () (declare (not safe)) (##fx= _g143505_ 4))
                 (apply __slot-set!__% _g143504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g143504_))))))
    (define slot-set!__%
      (lambda (_%obj137341%_ _%slot137342%_ _%val137343%_ _%E137344%_)
        (if (symbol? _%slot137342%_)
            (let ((_%slot137348%_ _%slot137342%_))
              (if (procedure? _%E137344%_)
                  (let ((_%E137358%_ _%E137344%_))
                    (__slot-set!__%
                     _%obj137341%_
                     _%slot137348%_
                     _%val137343%_
                     _%E137358%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@771.43-771.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E137344%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@771.22-771.26"
               'contract:
               'symbol?
               'value:
               _%slot137342%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj137371%_ _%slot137372%_ _%val137373%_)
        (let ((_%E137375%_ __slot-error))
          (slot-set!__%
           _%obj137371%_
           _%slot137372%_
           _%val137373%_
           _%E137375%_))))
    (define slot-set!
      (lambda _g143506_
        (let ((_g143507_ (let () (declare (not safe)) (##length _g143506_))))
          (cond ((let () (declare (not safe)) (##fx= _g143507_ 3))
                 (apply slot-set!__0 _g143506_))
                ((let () (declare (not safe)) (##fx= _g143507_ 4))
                 (apply slot-set!__% _g143506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g143506_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class137312%_ _%maybe-super-class137313%_)
        (let* ((_%maybe-sub-class137316%_ _%maybe-sub-class137312%_)
               (_%maybe-super-class137324%_ _%maybe-super-class137313%_)
               (_%maybe-super-class-id137333%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class137324%_)))
               (_%$e137335%_
                (eq? _%maybe-super-class-id137333%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class137316%_)))))
          (if _%$e137335%_
              _%$e137335%_
              (let ((__tmp143509
                     (lambda (_%super-class137338%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class137338%_))
                            _%maybe-super-class-id137333%_)))
                    (__tmp143508
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class137316%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp143509 __tmp143508))))))
    (define subclass?
      (lambda (_%maybe-sub-class137287%_ _%maybe-super-class137288%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class137287%_ 'class))
            (let ((_%maybe-sub-class137292%_ _%maybe-sub-class137287%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class137288%_
                     'class))
                  (let ((_%maybe-super-class137302%_
                         _%maybe-super-class137288%_))
                    (__subclass?
                     _%maybe-sub-class137292%_
                     _%maybe-super-class137302%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@777.45-777.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class137288%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.18-777.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class137287%_)
              '#!void))))
    (define object?
      (lambda (_%o137284%_)
        (if (let () (declare (not safe)) (##structure? _%o137284%_))
            (let ((__tmp143510
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o137284%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp143510 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass137271%_ _%obj137272%_)
        (let* ((_%klass137275%_ _%klass137271%_)
               (__tmp143511
                (let () (declare (not safe)) (##type-id _%klass137275%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj137272%_ __tmp143511))))
    (define direct-instance?
      (lambda (_%klass137256%_ _%obj137257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137256%_ 'class))
            (let ((_%klass137261%_ _%klass137256%_))
              (__direct-instance? _%klass137261%_ _%obj137257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@791.25-791.30"
               'contract:
               'class-type?
               'value:
               _%klass137256%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass137243%_ _%obj137244%_)
        (let* ((_%klass137247%_ _%klass137243%_)
               (__tmp143512
                (let () (declare (not safe)) (##type-id _%klass137247%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj137244%_ __tmp143512))))
    (define struct-instance?
      (lambda (_%klass137228%_ _%obj137229%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137228%_ 'class))
            (let ((_%klass137233%_ _%klass137228%_))
              (__struct-instance? _%klass137233%_ _%obj137229%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.25-803.30"
               'contract:
               'class-type?
               'value:
               _%klass137228%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass137180%_ _%obj137181%_)
        (let* ((_%klass137184%_ _%klass137180%_)
               (_%type137193%_ (class-of _%obj137181%_))
               (_%maybe-sub-class137195%_ _%type137193%_)
               (_%maybe-super-class137198%_ _%klass137184%_)
               (_%maybe-sub-class137203%_ _%maybe-sub-class137195%_)
               (_%maybe-super-class137218%_ _%maybe-super-class137198%_))
          (__subclass?
           _%maybe-sub-class137203%_
           _%maybe-super-class137218%_))))
    (define class-instance?
      (lambda (_%klass137165%_ _%obj137166%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137165%_ 'class))
            (let ((_%klass137170%_ _%klass137165%_))
              (__class-instance? _%klass137170%_ _%obj137166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@815.24-815.29"
               'contract:
               'class-type?
               'value:
               _%klass137165%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass137124%_ _%k137125%_)
        (let* ((_%klass137128%_ _%klass137124%_) (_%k137136%_ _%k137125%_))
          (if (let* ((_%klass137145%_ _%klass137128%_)
                     (_%klass137150%_ _%klass137145%_))
                (__class-type-system? _%klass137150%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass137128%_)
                '#!void)
              (let ((_%obj137163%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass137128%_ _%k137136%_))))
                (__object-fill! _%obj137163%_ '#f))))))
    (define make-object
      (lambda (_%klass137099%_ _%k137100%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137099%_ 'class))
            (let ((_%klass137104%_ _%klass137099%_))
              (if (fixnum? _%k137100%_)
                  (let ((_%k137114%_ _%k137100%_))
                    (__make-object _%klass137104%_ _%k137114%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@820.37-820.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k137100%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@820.20-820.25"
               'contract:
               'class-type?
               'value:
               _%klass137099%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj137087%_)
        (let ((_%obj137090%_ _%obj137087%_))
          (declare (not safe))
          (##structure-type _%obj137090%_))))
    (define object-class
      (lambda (_%obj137073%_)
        (if (object? _%obj137073%_)
            (let ((_%obj137077%_ _%obj137073%_))
              (__object-class _%obj137077%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@840.21-840.24"
               'contract:
               'object?
               'value:
               _%obj137073%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj137055%_ _%fill137056%_)
        (let ((_%obj137059%_ _%obj137055%_))
          (let _%loop137068%_ ((_%i137070%_
                                (let ((__tmp143513
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj137059%_))))
                                  (declare (not safe))
                                  (##fx- __tmp143513 '1))))
            (if (let () (declare (not safe)) (##fx> _%i137070%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj137059%_
                     _%fill137056%_
                     _%i137070%_
                     '#f
                     '#f))
                  (_%loop137068%_
                   (let () (declare (not safe)) (##fx- _%i137070%_ '1))))
                _%obj137059%_)))))
    (define object-fill!
      (lambda (_%obj137040%_ _%fill137041%_)
        (if (object? _%obj137040%_)
            (let ((_%obj137045%_ _%obj137040%_))
              (__object-fill! _%obj137045%_ _%fill137041%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@845.21-845.24"
               'contract:
               'object?
               'value:
               _%obj137040%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass136996%_)
        (let* ((_%klass136999%_ _%klass136996%_)
               (_%klass137008%_ _%klass136999%_)
               (_%k137011%_
                (let ((__tmp143514
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136999%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp143514)))
               (_%klass137016%_ _%klass137008%_)
               (_%k137030%_ _%k137011%_))
          (__make-object _%klass137016%_ _%k137030%_))))
    (define new-instance
      (lambda (_%klass136982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136982%_ 'class))
            (let ((_%klass136986%_ _%klass136982%_))
              (__new-instance _%klass136986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@856.21-856.26"
               'contract:
               'class-type?
               'value:
               _%klass136982%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass136841%_ . _%args136842%_)
        (let* ((_%klass136845%_ _%klass136841%_)
               (_%$e136854%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass136845%_ '10 '#f '#f))))
          (if _%$e136854%_
              (let ((_%obj136879%_
                     (let* ((_%klass136859%_ _%klass136845%_)
                            (_%klass136864%_ _%klass136859%_))
                       (__new-instance _%klass136864%_))))
                (___constructor-init!
                 _%klass136845%_
                 _%$e136854%_
                 _%obj136879%_
                 _%args136842%_)
                _%obj136879%_)
              (if (let* ((_%klass136881%_ _%klass136845%_)
                         (_%klass136886%_ _%klass136881%_))
                    (__class-type-metaclass? _%klass136886%_))
                  (let ((_%obj136913%_
                         (let* ((_%klass136897%_ _%klass136845%_)
                                (_%klass136902%_ _%klass136897%_))
                           (__new-instance _%klass136902%_))))
                    (__metaclass-instance-init!
                     _%klass136845%_
                     _%obj136913%_
                     _%args136842%_)
                    _%obj136913%_)
                  (if (let* ((_%klass136915%_ _%klass136845%_)
                             (_%klass136920%_ _%klass136915%_))
                        (__class-type-struct? _%klass136920%_))
                      (if (let ((__tmp143516
                                 (let* ((_%klass136949%_ _%klass136845%_)
                                        (_%klass136954%_ _%klass136949%_))
                                   (__class-type-field-count _%klass136954%_)))
                                (__tmp143515
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args136842%_))))
                            (declare (not safe))
                            (##fx= __tmp143516 __tmp143515))
                          (apply ##structure _%klass136845%_ _%args136842%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass136845%_
                                   'slots:
                                   (let* ((_%klass136966%_ _%klass136845%_)
                                          (_%klass136971%_ _%klass136966%_))
                                     (__class-type-slot-list _%klass136971%_))
                                   'args:
                                   _%args136842%_)
                            '#!void))
                      (let ((_%obj136947%_
                             (let* ((_%klass136931%_ _%klass136845%_)
                                    (_%klass136936%_ _%klass136931%_))
                               (__new-instance _%klass136936%_))))
                        (___class-instance-init!
                         _%klass136845%_
                         _%obj136947%_
                         _%args136842%_)
                        _%obj136947%_)))))))
    (define make-instance
      (lambda (_%klass136826%_ . _%args136827%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136826%_ 'class))
            (let ((_%klass136831%_ _%klass136826%_))
              (declare (not safe))
              (##apply __make-instance _%klass136831%_ _%args136827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@859.22-859.27"
               'contract:
               'class-type?
               'value:
               _%klass136826%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj136813%_ . _%args136814%_)
        (let ((_%obj136817%_ _%obj136813%_))
          (if (let ((__tmp143518
                     (let () (declare (not safe)) (##length _%args136814%_)))
                    (__tmp143517
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj136817%_))))
                (declare (not safe))
                (##fx< __tmp143518 __tmp143517))
              (___struct-instance-init! _%obj136817%_ _%args136814%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj136817%_
                     'args:
                     _%args136814%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj136798%_ . _%args136799%_)
        (if (object? _%obj136798%_)
            (let ((_%obj136803%_ _%obj136798%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj136803%_ _%args136799%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.30-884.33"
               'contract:
               'object?
               'value:
               _%obj136798%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj136757%_ _%args136758%_)
        (let _%lp136760%_ ((_%k136762%_ '1) (_%rest136763%_ _%args136758%_))
          (let* ((_%$%rest136764136772%_ _%rest136763%_)
                 (_%$%else136766136780%_ (lambda () _%obj136757%_))
                 (_%$%K136768136786%_
                  (lambda (_%rest136783%_ _%hd136784%_)
                    (unchecked-field-set!
                     _%obj136757%_
                     _%k136762%_
                     _%hd136784%_)
                    (_%lp136760%_
                     (let () (declare (not safe)) (##fx+ _%k136762%_ '1))
                     _%rest136783%_))))
            (if (pair? _%$%rest136764136772%_)
                (let ((_%$%hd136769136789%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest136764136772%_)))
                      (_%$%tl136770136791%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest136764136772%_))))
                  (let* ((_%hd136794%_ _%$%hd136769136789%_)
                         (_%rest136796%_ _%$%tl136770136791%_))
                    (_%$%K136768136786%_ _%rest136796%_ _%hd136794%_)))
                (_%$%else136766136780%_))))))
    (define __class-instance-init!
      (lambda (_%obj136744%_ . _%args136745%_)
        (let ((_%obj136748%_ _%obj136744%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj136748%_))
           _%obj136748%_
           _%args136745%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj136729%_ . _%args136730%_)
        (if (object? _%obj136729%_)
            (let ((_%obj136734%_ _%obj136729%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj136734%_ _%args136730%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@924.29-924.32"
               'contract:
               'object?
               'value:
               _%obj136729%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass136671%_ _%obj136672%_ _%args136673%_)
        (let _%lp136675%_ ((_%rest136677%_ _%args136673%_))
          (let* ((_%$%rest136678136688%_ _%rest136677%_)
                 (_%$%else136680136696%_
                  (lambda ()
                    (if (null? _%rest136677%_)
                        _%obj136672%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass136671%_
                               'rest:
                               _%rest136677%_))))
                 (_%$%K136682136710%_
                  (lambda (_%rest136699%_ _%val136700%_ _%key136701%_)
                    (if (keyword? _%key136701%_)
                        (let ((_%$e136704%_
                               (__class-slot-offset
                                _%klass136671%_
                                _%key136701%_)))
                          (if _%$e136704%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj136672%_
                                 _%$e136704%_
                                 _%val136700%_)
                                (_%lp136675%_ _%rest136699%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass136671%_
                                     'slot:
                                     _%key136701%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key136701%_)))))
            (if (pair? _%$%rest136678136688%_)
                (let ((_%$%hd136683136713%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest136678136688%_)))
                      (_%$%tl136684136715%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest136678136688%_))))
                  (let ((_%key136718%_ _%$%hd136683136713%_))
                    (if (pair? _%$%tl136684136715%_)
                        (let ((_%$%hd136685136720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl136684136715%_)))
                              (_%$%tl136686136722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl136684136715%_))))
                          (let* ((_%val136725%_ _%$%hd136685136720%_)
                                 (_%rest136727%_ _%$%tl136686136722%_))
                            (_%$%K136682136710%_
                             _%rest136727%_
                             _%val136725%_
                             _%key136718%_)))
                        (_%$%else136680136696%_))))
                (_%$%else136680136696%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass136667%_ _%obj136668%_ _%args136669%_)
        (apply call-method
               _%klass136667%_
               'instance-init!
               _%obj136668%_
               _%args136669%_)))
    (define __constructor-init!
      (lambda (_%klass136636%_
               _%kons-id136637%_
               _%obj136638%_
               .
               _%args136639%_)
        (let* ((_%klass136642%_ _%klass136636%_)
               (_%kons-id136650%_ _%kons-id136637%_)
               (_%obj136658%_ _%obj136638%_))
          (___constructor-init!
           _%klass136642%_
           _%kons-id136650%_
           _%obj136658%_
           _%args136639%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass136599%_
               _%kons-id136600%_
               _%obj136601%_
               .
               _%args136602%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136599%_ 'class))
            (let ((_%klass136606%_ _%klass136599%_))
              (if (symbol? _%kons-id136600%_)
                  (let ((_%kons-id136616%_ _%kons-id136600%_))
                    (if (object? _%obj136601%_)
                        (let ((_%obj136626%_ _%obj136601%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass136606%_
                                   _%kons-id136616%_
                                   _%obj136626%_
                                   _%args136602%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@948.63-948.66"
                           'contract:
                           'object?
                           'value:
                           _%obj136601%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@948.43-948.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id136600%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@948.26-948.31"
               'contract:
               'class-type?
               'value:
               _%klass136599%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass136588%_ _%kons-id136589%_ _%obj136590%_ _%args136591%_)
        (let ((_%$e136593%_
               (__find-method
                _%klass136588%_
                _%obj136590%_
                _%kons-id136589%_)))
          (if _%$e136593%_
              (let ()
                (apply _%$e136593%_ _%obj136590%_ _%args136591%_)
                _%obj136590%_)
              (error '"missing constructor"
                     'class:
                     _%klass136588%_
                     'method:
                     _%kons-id136589%_)))))
    (define __struct-copy
      (lambda (_%struct136576%_)
        (let ((_%struct136579%_ _%struct136576%_))
          (declare (not safe))
          (##structure-copy _%struct136579%_))))
    (define struct-copy
      (lambda (_%struct136562%_)
        (if (object? _%struct136562%_)
            (let ((_%struct136566%_ _%struct136562%_))
              (__struct-copy _%struct136566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@962.20-962.26"
               'contract:
               'object?
               'value:
               _%struct136562%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj136543%_)
        (let* ((_%obj136546%_ _%obj136543%_)
               (_%len136555%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj136546%_))))
          (let _%recur136557%_ ((_%i136559%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i136559%_ _%len136555%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj136546%_
                         _%i136559%_
                         '#f
                         '#f))
                      (_%recur136557%_
                       (let () (declare (not safe)) (##fx+ _%i136559%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj136529%_)
        (if (object? _%obj136529%_)
            (let ((_%obj136533%_ _%obj136529%_))
              (__struct->list _%obj136533%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@965.21-965.24"
               'contract:
               'object?
               'value:
               _%obj136529%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj136481%_)
        (let* ((_%obj136484%_ _%obj136481%_)
               (_%klass136493%_
                (let () (declare (not safe)) (##structure-type _%obj136484%_)))
               (_%slot-vector136495%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass136493%_ '7 '#f '#f))))
          (let _%loop136497%_ ((_%index136499%_
                                (let ((__tmp143519
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector136495%_))))
                                  (declare (not safe))
                                  (##fx- __tmp143519 '1)))
                               (_%plist136500%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index136499%_ '1))
                (cons _%klass136493%_ _%plist136500%_)
                (let ((_%slot136503%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector136495%_
                          _%index136499%_))))
                  (_%loop136497%_
                   (let () (declare (not safe)) (##fx- _%index136499%_ '1))
                   (cons (let ((_%sym136505%_ _%slot136503%_))
                           (if (symbol? _%sym136505%_)
                               (let ((_%sym136510%_ _%sym136505%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym136510%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym136505%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj136484%_
                                _%index136499%_)
                               _%plist136500%_)))))))))
    (define class->list
      (lambda (_%obj136467%_)
        (if (object? _%obj136467%_)
            (let ((_%obj136471%_ _%obj136467%_)) (__class->list _%obj136471%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@973.20-973.23"
               'contract:
               'object?
               'value:
               _%obj136467%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj136417%_ _%id136418%_ . _%args136419%_)
        (let* ((_%id136422%_ _%id136418%_)
               (_%$e136453%_
                (let* ((_%obj136431%_ _%obj136417%_)
                       (_%id136434%_ _%id136422%_)
                       (_%id136439%_ _%id136434%_))
                  (__method-ref _%obj136431%_ _%id136439%_))))
          (if _%$e136453%_
              (let ((_%method136458%_ _%$e136453%_))
                (apply _%method136458%_ _%obj136417%_ _%args136419%_))
              (error '"cannot find method"
                     'object:
                     _%obj136417%_
                     'method:
                     _%id136422%_)))))
    (define call-method
      (lambda (_%obj136401%_ _%id136402%_ . _%args136403%_)
        (if (symbol? _%id136402%_)
            (let ((_%id136407%_ _%id136402%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj136401%_
                       _%id136407%_
                       _%args136403%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@988.24-988.26"
               'contract:
               'symbol?
               'value:
               _%id136402%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj136352%_ _%id136353%_)
        (let* ((_%id136356%_ _%id136353%_)
               (_%klass136365%_ (class-of _%obj136352%_))
               (_%obj136368%_ _%obj136352%_)
               (_%id136371%_ _%id136356%_)
               (_%klass136376%_ _%klass136365%_)
               (_%id136391%_ _%id136371%_))
          (__find-method _%klass136376%_ _%obj136368%_ _%id136391%_))))
    (define method-ref
      (lambda (_%obj136337%_ _%id136338%_)
        (if (symbol? _%id136338%_)
            (let ((_%id136342%_ _%id136338%_))
              (__method-ref _%obj136337%_ _%id136342%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1015.23-1015.25"
               'contract:
               'symbol?
               'value:
               _%id136338%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj136309%_ _%id136310%_)
        (let ((_%$e136334%_
               (let* ((_%obj136313%_ _%obj136309%_)
                      (_%id136316%_ _%id136310%_))
                 (if (symbol? _%id136316%_)
                     (let ((_%id136321%_ _%id136316%_))
                       (__method-ref _%obj136313%_ _%id136321%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id136316%_)
                       '#!void)))))
          (if _%$e136334%_
              _%$e136334%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj136309%_
                       'method:
                       _%id136310%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj136258%_ _%id136259%_)
        (let* ((_%id136262%_ _%id136259%_)
               (_%$e136293%_
                (let* ((_%obj136271%_ _%obj136258%_)
                       (_%id136274%_ _%id136262%_)
                       (_%id136279%_ _%id136274%_))
                  (__method-ref _%obj136271%_ _%id136279%_))))
          (if _%$e136293%_
              (let ((_%method136298%_ _%$e136293%_))
                (lambda _%args136306%_
                  (apply _%method136298%_ _%obj136258%_ _%args136306%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj136243%_ _%id136244%_)
        (if (symbol? _%id136244%_)
            (let ((_%id136248%_ _%id136244%_))
              (__bound-method-ref _%obj136243%_ _%id136248%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1023.29-1023.31"
               'contract:
               'symbol?
               'value:
               _%id136244%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj136226%_ _%id136227%_)
        (let* ((_%id136230%_ _%id136227%_)
               (_%method136239%_
                (checked-method-ref _%obj136226%_ _%id136230%_)))
          (lambda _%args136241%_
            (apply _%method136239%_ _%obj136226%_ _%args136241%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj136211%_ _%id136212%_)
        (if (symbol? _%id136212%_)
            (let ((_%id136216%_ _%id136212%_))
              (__checked-bound-method-ref _%obj136211%_ _%id136216%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1032.37-1032.39"
               'contract:
               'symbol?
               'value:
               _%id136212%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass136080%_ _%obj136081%_ _%id136082%_)
        (let* ((_%klass136085%_ _%klass136080%_) (_%id136093%_ _%id136082%_))
          (if (let* ((_%klass136102%_ _%klass136085%_)
                     (_%klass136107%_ _%klass136102%_))
                (__class-type-sealed? _%klass136107%_))
              (let ((_%tab136137%_
                     (let* ((_%klass136121%_ _%klass136085%_)
                            (_%klass136126%_ _%klass136121%_))
                       (__specialize-class _%klass136126%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab136137%_ _%id136093%_ '#f))
              (let ((_%$e136172%_
                     (let* ((_%klass136139%_ _%klass136085%_)
                            (_%obj136142%_ _%obj136081%_)
                            (_%id136145%_ _%id136093%_)
                            (_%klass136150%_ _%klass136139%_)
                            (_%id136162%_ _%id136145%_))
                       (__direct-method-ref
                        _%klass136150%_
                        _%obj136142%_
                        _%id136162%_))))
                (if _%$e136172%_
                    _%$e136172%_
                    (let* ((_%klass136176%_ _%klass136085%_)
                           (_%obj136179%_ _%obj136081%_)
                           (_%id136182%_ _%id136093%_)
                           (_%klass136187%_ _%klass136176%_)
                           (_%id136201%_ _%id136182%_))
                      (__mixin-method-ref
                       _%klass136187%_
                       _%obj136179%_
                       _%id136201%_))))))))
    (define find-method
      (lambda (_%klass136054%_ _%obj136055%_ _%id136056%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136054%_ 'class))
            (let ((_%klass136060%_ _%klass136054%_))
              (if (symbol? _%id136056%_)
                  (let ((_%id136070%_ _%id136056%_))
                    (__find-method _%klass136060%_ _%obj136055%_ _%id136070%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1037.41-1037.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id136056%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1037.20-1037.25"
               'contract:
               'class-type?
               'value:
               _%klass136054%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins135999%_ _%obj136000%_ _%id136001%_)
        (let* ((_%id136004%_ _%id136001%_)
               (__tmp143520
                (lambda (_%$%g136012136014%_)
                  (let* ((_%klass136017%_ _%$%g136012136014%_)
                         (_%obj136020%_ _%obj136000%_)
                         (_%id136023%_ _%id136004%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass136017%_ 'class))
                        (let* ((_%klass136028%_ _%klass136017%_)
                               (_%id136044%_ _%id136023%_))
                          (__direct-method-ref
                           _%klass136028%_
                           _%obj136020%_
                           _%id136044%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass136017%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp143520 _%mixins135999%_))))
    (define mixin-find-method
      (lambda (_%mixins135983%_ _%obj135984%_ _%id135985%_)
        (if (symbol? _%id135985%_)
            (let ((_%id135989%_ _%id135985%_))
              (__mixin-find-method
               _%mixins135983%_
               _%obj135984%_
               _%id135989%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1046.37-1046.39"
               'contract:
               'symbol?
               'value:
               _%id135985%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass135876%_ _%obj135877%_ _%id135878%_)
        (let* ((_%klass135881%_ _%klass135876%_) (_%id135889%_ _%id135878%_))
          (letrec ((_%metaclass-resolve-method135898%_
                    (lambda ()
                      (let* ((_%obj135959%_ _%klass135881%_)
                             (_%id135962%_ 'direct-method-ref)
                             (_%args135965%_ (list _%obj135877%_ _%id135889%_))
                             (_%id135970%_ _%id135962%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj135959%_
                                 _%id135970%_
                                 _%args135965%_))))
                   (_%metaclass-resolve-method!135899%_
                    (lambda ()
                      (let ((_%method135956%_
                             (_%metaclass-resolve-method135898%_)))
                        (let ((__tmp143522
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass135881%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp143521
                               (if _%method135956%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp143522
                           _%id135889%_
                           __tmp143521))
                        _%method135956%_))))
            (let ((_%$e135901%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass135881%_ '11 '#f '#f))))
              (if _%$e135901%_
                  (let ((_%method135906%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e135901%_
                            _%id135889%_
                            '#f))))
                    (if (procedure? _%method135906%_)
                        _%method135906%_
                        (if (let* ((_%klass135909%_ _%klass135881%_)
                                   (_%klass135914%_ _%klass135909%_))
                              (__class-type-metaclass? _%klass135914%_))
                            (let ((_%$e135932%_ _%method135906%_))
                              (if (eq? 'resolved _%$e135932%_)
                                  (_%metaclass-resolve-method135898%_)
                                  (if (eq? 'unknown _%$e135932%_)
                                      '#f
                                      (_%metaclass-resolve-method!135899%_))))
                            '#f)))
                  (if (let* ((_%klass135936%_ _%klass135881%_)
                             (_%klass135941%_ _%klass135936%_))
                        (__class-type-metaclass? _%klass135941%_))
                      (let ((_%tab135952%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass135881%_
                           _%tab135952%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!135899%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass135850%_ _%obj135851%_ _%id135852%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135850%_ 'class))
            (let ((_%klass135856%_ _%klass135850%_))
              (if (symbol? _%id135852%_)
                  (let ((_%id135866%_ _%id135852%_))
                    (__direct-method-ref
                     _%klass135856%_
                     _%obj135851%_
                     _%id135866%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1049.47-1049.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id135852%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1049.26-1049.31"
               'contract:
               'class-type?
               'value:
               _%klass135850%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass135802%_ _%obj135803%_ _%id135804%_)
        (let* ((_%klass135807%_ _%klass135802%_)
               (_%id135815%_ _%id135804%_)
               (_%mixins135824%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135807%_ '6 '#f '#f)))
               (_%obj135827%_ _%obj135803%_)
               (_%id135830%_ _%id135815%_)
               (_%id135835%_ _%id135830%_))
          (__mixin-find-method _%mixins135824%_ _%obj135827%_ _%id135835%_))))
    (define mixin-method-ref
      (lambda (_%klass135776%_ _%obj135777%_ _%id135778%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135776%_ 'class))
            (let ((_%klass135782%_ _%klass135776%_))
              (if (symbol? _%id135778%_)
                  (let ((_%id135792%_ _%id135778%_))
                    (__mixin-method-ref
                     _%klass135782%_
                     _%obj135777%_
                     _%id135792%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1079.46-1079.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id135778%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1079.25-1079.30"
               'contract:
               'class-type?
               'value:
               _%klass135776%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass135657%_ _%id135658%_ _%proc135659%_ _%rebind?135660%_)
        (let* ((_%id135663%_ _%id135658%_) (_%proc135671%_ _%proc135659%_))
          (letrec ((_%flush-caches!135680%_
                    (lambda (_%klass135734%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass135734%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass135734%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass135736%_ _%klass135734%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass135736%_
                                         'class))
                                      (let ((_%klass135741%_ _%klass135736%_))
                                        (__class-type-sealed? _%klass135741%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass135736%_)
                                        '#!void)))
                                (let ((__tmp143523
                                       (let ((__tmp143525
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp143524
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass135734%_))))
                                         (declare (not safe))
                                         (##fxand __tmp143525 __tmp143524))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass135734%_
                                   __tmp143523
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?135660%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass135734%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass135734%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e135752%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass135734%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e135752%_
                            (let ((_%$e135757%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e135752%_))))
                              (if _%$e135757%_
                                  (for-each
                                   _%flush-caches!135680%_
                                   _%$e135757%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!135681%_
                    (lambda (_%ht135732%_)
                      (if (and (not _%rebind?135660%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht135732%_
                                  _%id135663%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass135657%_
                                 'method:
                                 _%id135663%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht135732%_
                               _%id135663%_
                               _%proc135671%_))
                            (_%flush-caches!135680%_ _%klass135657%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass135657%_ 'class))
                (let ((_%ht135684%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135657%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht135684%_
                      (_%bind!135681%_ _%ht135684%_)
                      (let ((_%ht135686%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass135657%_
                           _%ht135686%_
                           '11
                           '#f
                           '#f))
                        (_%bind!135681%_ _%ht135686%_))))
                (if (let () (declare (not safe)) (##type? _%klass135657%_))
                    (let* ((_%klass135689%_
                            (__shadow-class__0 _%klass135657%_))
                           (_%id135692%_ _%id135663%_)
                           (_%proc135695%_ _%proc135671%_)
                           (_%rebind?135698%_ _%rebind?135660%_)
                           (_%id135703%_ _%id135692%_)
                           (_%proc135721%_ _%proc135695%_))
                      (__bind-method!__%
                       _%klass135689%_
                       _%id135703%_
                       _%proc135721%_
                       _%rebind?135698%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass135657%_)))))))
    (define __bind-method!__0
      (lambda (_%klass135765%_ _%id135766%_ _%proc135767%_)
        (let ((_%rebind?135769%_ '#f))
          (__bind-method!__%
           _%klass135765%_
           _%id135766%_
           _%proc135767%_
           _%rebind?135769%_))))
    (define __bind-method!
      (lambda _g143526_
        (let ((_g143527_ (let () (declare (not safe)) (##length _g143526_))))
          (cond ((let () (declare (not safe)) (##fx= _g143527_ 3))
                 (apply __bind-method!__0 _g143526_))
                ((let () (declare (not safe)) (##fx= _g143527_ 4))
                 (apply __bind-method!__% _g143526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g143526_))))))
    (define bind-method!__%
      (lambda (_%klass135615%_ _%id135616%_ _%proc135617%_ _%rebind?135618%_)
        (if (symbol? _%id135616%_)
            (let ((_%id135622%_ _%id135616%_))
              (if (procedure? _%proc135617%_)
                  (let ((_%proc135632%_ _%proc135617%_))
                    (__bind-method!__%
                     _%klass135615%_
                     _%id135622%_
                     _%proc135632%_
                     _%rebind?135618%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1082.42-1082.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc135617%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.27-1082.29"
               'contract:
               'symbol?
               'value:
               _%id135616%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass135645%_ _%id135646%_ _%proc135647%_)
        (let ((_%rebind?135649%_ '#f))
          (bind-method!__%
           _%klass135645%_
           _%id135646%_
           _%proc135647%_
           _%rebind?135649%_))))
    (define bind-method!
      (lambda _g143528_
        (let ((_g143529_ (let () (declare (not safe)) (##length _g143528_))))
          (cond ((let () (declare (not safe)) (##fx= _g143529_ 3))
                 (apply bind-method!__0 _g143528_))
                ((let () (declare (not safe)) (##fx= _g143529_ 4))
                 (apply bind-method!__% _g143528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g143528_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint135596%_ _%seed135597%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint135596%_
           procedure-hash
           eq?
           _%seed135597%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint135603%_ '#f) (_%seed135605%_ '0))
          (make-method-specializer-table__%
           _%size-hint135603%_
           _%seed135605%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint135607%_)
        (let ((_%seed135609%_ '0))
          (make-method-specializer-table__%
           _%size-hint135607%_
           _%seed135609%_))))
    (define make-method-specializer-table
      (lambda _g143530_
        (let ((_g143531_ (let () (declare (not safe)) (##length _g143530_))))
          (cond ((let () (declare (not safe)) (##fx= _g143531_ 0))
                 (apply make-method-specializer-table__0 _g143530_))
                ((let () (declare (not safe)) (##fx= _g143531_ 1))
                 (apply make-method-specializer-table__1 _g143530_))
                ((let () (declare (not safe)) (##fx= _g143531_ 2))
                 (apply make-method-specializer-table__% _g143530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g143530_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint135576%_ _%seed135578%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint135576%_
           procedure-hash
           eq?
           _%seed135578%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint135584%_ '#f) (_%seed135586%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint135584%_
           _%seed135586%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint135588%_)
        (let ((_%seed135590%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint135588%_
           _%seed135590%_))))
    (define make-method-specializer-table/lock
      (lambda _g143532_
        (let ((_g143533_ (let () (declare (not safe)) (##length _g143532_))))
          (cond ((let () (declare (not safe)) (##fx= _g143533_ 0))
                 (apply make-method-specializer-table/lock__0 _g143532_))
                ((let () (declare (not safe)) (##fx= _g143533_ 1))
                 (apply make-method-specializer-table/lock__1 _g143532_))
                ((let () (declare (not safe)) (##fx= _g143533_ 2))
                 (apply make-method-specializer-table/lock__% _g143532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g143532_))))))
    (define method-specializer-table-ref
      (lambda (_%tab135529%_ _%key135530%_ _%default135531%_)
        (let ((_%table135533%_
               (let () (declare (not safe)) (&raw-table-table _%tab135529%_)))
              (_%seed135534%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135529%_))))
          (let* ((_%h135536%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135530%_))
                         _%seed135534%_))
                 (_%size135539%_ (vector-length _%table135533%_))
                 (_%entries135542%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135539%_ '2)))
                 (_%start135545%_
                  (let ((__tmp143534
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135536%_ _%entries135542%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143534 '1))))
            (let _%loop135549%_ ((_%probe135552%_ _%start135545%_)
                                 (_%i135554%_ '1)
                                 (_%deleted135556%_ '#f))
              (let ((_%k135559%_ (vector-ref _%table135533%_ _%probe135552%_)))
                (if (eq? _%k135559%_ (macro-unused-obj))
                    _%default135531%_
                    (if (eq? _%k135559%_ (macro-deleted-obj))
                        (_%loop135549%_
                         (let ((_%next-probe135564%_
                                (fx+ _%start135545%_
                                     _%i135554%_
                                     (fx* _%i135554%_ _%i135554%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135564%_ _%size135539%_))
                         (let () (declare (not safe)) (##fx+ _%i135554%_ '1))
                         (let ((_%$e135567%_ _%deleted135556%_))
                           (if _%$e135567%_ _%$e135567%_ _%probe135552%_)))
                        (if (eq? _%key135530%_ _%k135559%_)
                            (vector-ref
                             _%table135533%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe135552%_ '1)))
                            (_%loop135549%_
                             (let ((_%next-probe135572%_
                                    (fx+ _%start135545%_
                                         _%i135554%_
                                         (fx* _%i135554%_ _%i135554%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135572%_
                                _%size135539%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135554%_ '1))
                             _%deleted135556%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab135500%_ _%key135501%_ _%default135502%_)
        (let ((_%lock135504%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135500%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135509%_ ((_%spin135512%_ '0))
              (if (let ((__tmp143535
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135504%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143535 '0))
                  (let ((__tmp143536 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135504%_ '1 __tmp143536))
                  (if (let () (declare (not safe)) (##fx< _%spin135512%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135509%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135512%_ '1))))
                      (let ((_%owner135518%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135504%_ '1))))
                        (if (eq? _%owner135518%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135518%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135509%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135524%_
                 (method-specializer-table-ref
                  _%tab135500%_
                  _%key135501%_
                  _%default135502%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135504%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135504%_ '0 '0 '1))))
            _%$r135524%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab135452%_ _%key135453%_ _%value135454%_)
        (let ((_%table135456%_
               (let () (declare (not safe)) (&raw-table-table _%tab135452%_)))
              (_%seed135457%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135452%_))))
          (let* ((_%h135459%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135453%_))
                         _%seed135457%_))
                 (_%size135462%_ (vector-length _%table135456%_))
                 (_%entries135465%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135462%_ '2)))
                 (_%start135468%_
                  (let ((__tmp143537
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135459%_ _%entries135465%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143537 '1))))
            (let _%loop135472%_ ((_%probe135475%_ _%start135468%_)
                                 (_%i135477%_ '1)
                                 (_%deleted135479%_ '#f))
              (let ((_%k135482%_ (vector-ref _%table135456%_ _%probe135475%_)))
                (if (eq? _%k135482%_ (macro-unused-obj))
                    (if _%deleted135479%_
                        (begin
                          (vector-set!
                           _%table135456%_
                           _%deleted135479%_
                           _%key135453%_)
                          (vector-set!
                           _%table135456%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted135479%_ '1))
                           _%value135454%_)
                          (let ((__tmp143538
                                 (let ((__tmp143539
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab135452%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp143539 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab135452%_ __tmp143538)))
                        (begin
                          (vector-set!
                           _%table135456%_
                           _%probe135475%_
                           _%key135453%_)
                          (vector-set!
                           _%table135456%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe135475%_ '1))
                           _%value135454%_)
                          (let ()
                            (let ((__tmp143540
                                   (let ((__tmp143541
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab135452%_))))
                                     (declare (not safe))
                                     (##fx- __tmp143541 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab135452%_ __tmp143540))
                            (let ((__tmp143542
                                   (let ((__tmp143543
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab135452%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp143543 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab135452%_
                               __tmp143542)))))
                    (if (eq? _%k135482%_ (macro-deleted-obj))
                        (_%loop135472%_
                         (let ((_%next-probe135489%_
                                (fx+ _%start135468%_
                                     _%i135477%_
                                     (fx* _%i135477%_ _%i135477%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135489%_ _%size135462%_))
                         (let () (declare (not safe)) (##fx+ _%i135477%_ '1))
                         (let ((_%$e135492%_ _%deleted135479%_))
                           (if _%$e135492%_ _%$e135492%_ _%probe135475%_)))
                        (if (eq? _%key135453%_ _%k135482%_)
                            (let ()
                              (vector-set!
                               _%table135456%_
                               _%probe135475%_
                               _%key135453%_)
                              (vector-set!
                               _%table135456%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe135475%_ '1))
                               _%value135454%_))
                            (_%loop135472%_
                             (let ((_%next-probe135497%_
                                    (fx+ _%start135468%_
                                         _%i135477%_
                                         (fx* _%i135477%_ _%i135477%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135497%_
                                _%size135462%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135477%_ '1))
                             _%deleted135479%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab135448%_ _%key135449%_ _%value135450%_)
        (if (let ((__tmp143546
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab135448%_)))
                  (__tmp143544
                   (let ((__tmp143545
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab135448%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp143545 '4))))
              (declare (not safe))
              (##fx< __tmp143546 __tmp143544))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab135448%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab135448%_
         _%key135449%_
         _%value135450%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab135418%_ _%key135419%_ _%value135420%_)
        (let ((_%lock135423%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135418%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135428%_ ((_%spin135431%_ '0))
              (if (let ((__tmp143547
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135423%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143547 '0))
                  (let ((__tmp143548 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135423%_ '1 __tmp143548))
                  (if (let () (declare (not safe)) (##fx< _%spin135431%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135428%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135431%_ '1))))
                      (let ((_%owner135437%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135423%_ '1))))
                        (if (eq? _%owner135437%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135437%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135428%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135443%_
                 (method-specializer-table-set!
                  _%tab135418%_
                  _%key135419%_
                  _%value135420%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135423%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135423%_ '0 '0 '1))))
            _%$r135443%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab135369%_
               _%key135370%_
               _%method-specializer-table-update!135371%_
               _%default135372%_)
        (let ((_%table135374%_
               (let () (declare (not safe)) (&raw-table-table _%tab135369%_)))
              (_%seed135375%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135369%_))))
          (let* ((_%h135377%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135370%_))
                         _%seed135375%_))
                 (_%size135380%_ (vector-length _%table135374%_))
                 (_%entries135383%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135380%_ '2)))
                 (_%start135386%_
                  (let ((__tmp143549
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135377%_ _%entries135383%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143549 '1))))
            (let _%loop135390%_ ((_%probe135393%_ _%start135386%_)
                                 (_%i135395%_ '1)
                                 (_%deleted135397%_ '#f))
              (let ((_%k135400%_ (vector-ref _%table135374%_ _%probe135393%_)))
                (if (eq? _%k135400%_ (macro-unused-obj))
                    (if _%deleted135397%_
                        (begin
                          (vector-set!
                           _%table135374%_
                           _%deleted135397%_
                           _%key135370%_)
                          (vector-set!
                           _%table135374%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted135397%_ '1))
                           (_%method-specializer-table-update!135371%_
                            _%default135372%_))
                          (let ((__tmp143550
                                 (let ((__tmp143551
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab135369%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp143551 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab135369%_ __tmp143550)))
                        (begin
                          (vector-set!
                           _%table135374%_
                           _%probe135393%_
                           _%key135370%_)
                          (vector-set!
                           _%table135374%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe135393%_ '1))
                           (_%method-specializer-table-update!135371%_
                            _%default135372%_))
                          (let ()
                            (let ((__tmp143552
                                   (let ((__tmp143553
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab135369%_))))
                                     (declare (not safe))
                                     (##fx- __tmp143553 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab135369%_ __tmp143552))
                            (let ((__tmp143554
                                   (let ((__tmp143555
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab135369%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp143555 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab135369%_
                               __tmp143554)))))
                    (if (eq? _%k135400%_ (macro-deleted-obj))
                        (_%loop135390%_
                         (let ((_%next-probe135407%_
                                (fx+ _%start135386%_
                                     _%i135395%_
                                     (fx* _%i135395%_ _%i135395%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135407%_ _%size135380%_))
                         (let () (declare (not safe)) (##fx+ _%i135395%_ '1))
                         (let ((_%$e135410%_ _%deleted135397%_))
                           (if _%$e135410%_ _%$e135410%_ _%probe135393%_)))
                        (if (eq? _%key135370%_ _%k135400%_)
                            (let ()
                              (vector-set!
                               _%table135374%_
                               _%probe135393%_
                               _%key135370%_)
                              (vector-set!
                               _%table135374%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe135393%_ '1))
                               (_%method-specializer-table-update!135371%_
                                (vector-ref
                                 _%table135374%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe135393%_ '1))))))
                            (_%loop135390%_
                             (let ((_%next-probe135415%_
                                    (fx+ _%start135386%_
                                         _%i135395%_
                                         (fx* _%i135395%_ _%i135395%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135415%_
                                _%size135380%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135395%_ '1))
                             _%deleted135397%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab135364%_
               _%key135365%_
               _%method-specializer-table-update!135366%_
               _%default135367%_)
        (if (let ((__tmp143558
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab135364%_)))
                  (__tmp143556
                   (let ((__tmp143557
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab135364%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp143557 '4))))
              (declare (not safe))
              (##fx< __tmp143558 __tmp143556))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab135364%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab135364%_
         _%key135365%_
         _%method-specializer-table-update!135366%_
         _%default135367%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab135333%_
               _%key135334%_
               _%method-specializer-table-update!135335%_
               _%default135336%_)
        (let ((_%lock135339%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135333%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135344%_ ((_%spin135347%_ '0))
              (if (let ((__tmp143559
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135339%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143559 '0))
                  (let ((__tmp143560 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135339%_ '1 __tmp143560))
                  (if (let () (declare (not safe)) (##fx< _%spin135347%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135344%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135347%_ '1))))
                      (let ((_%owner135353%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135339%_ '1))))
                        (if (eq? _%owner135353%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135353%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135344%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135359%_
                 (_%method-specializer-table-update!135335%_
                  _%tab135333%_
                  _%key135334%_
                  _%method-specializer-table-update!135335%_
                  _%default135336%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135339%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135339%_ '0 '0 '1))))
            _%$r135359%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab135290%_ _%key135291%_)
        (let ((_%table135293%_
               (let () (declare (not safe)) (&raw-table-table _%tab135290%_)))
              (_%seed135295%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135290%_))))
          (let* ((_%h135298%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135291%_))
                         _%seed135295%_))
                 (_%size135301%_ (vector-length _%table135293%_))
                 (_%entries135304%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135301%_ '2)))
                 (_%start135307%_
                  (let ((__tmp143561
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135298%_ _%entries135304%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143561 '1))))
            (let _%loop135311%_ ((_%probe135314%_ _%start135307%_)
                                 (_%i135316%_ '1))
              (let ((_%k135319%_ (vector-ref _%table135293%_ _%probe135314%_)))
                (if (eq? _%k135319%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k135319%_ (macro-deleted-obj))
                        (_%loop135311%_
                         (let ((_%next-probe135324%_
                                (fx+ _%start135307%_
                                     _%i135316%_
                                     (fx* _%i135316%_ _%i135316%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135324%_ _%size135301%_))
                         (let () (declare (not safe)) (##fx+ _%i135316%_ '1)))
                        (if (eq? _%key135291%_ _%k135319%_)
                            (let ()
                              (vector-set!
                               _%table135293%_
                               _%probe135314%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table135293%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe135314%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp143562
                                     (let ((__tmp143563
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab135290%_))))
                                       (declare (not safe))
                                       (##fx- __tmp143563 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab135290%_
                                 __tmp143562)))
                            (_%loop135311%_
                             (let ((_%next-probe135330%_
                                    (fx+ _%start135307%_
                                         _%i135316%_
                                         (fx* _%i135316%_ _%i135316%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135330%_
                                _%size135301%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135316%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab135260%_ _%key135262%_)
        (let ((_%lock135265%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135260%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135270%_ ((_%spin135273%_ '0))
              (if (let ((__tmp143564
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135265%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143564 '0))
                  (let ((__tmp143565 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135265%_ '1 __tmp143565))
                  (if (let () (declare (not safe)) (##fx< _%spin135273%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135270%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135273%_ '1))))
                      (let ((_%owner135279%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135265%_ '1))))
                        (if (eq? _%owner135279%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135279%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135270%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135285%_
                 (method-specializer-table-delete!
                  _%tab135260%_
                  _%key135262%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135265%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135265%_ '0 '0 '1))))
            _%$r135285%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc135257%_ _%specializer135258%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc135257%_
         _%specializer135258%_)))
    (define __lookup-method-specializer
      (lambda (_%proc135255%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc135255%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass135237%_)
        (let* ((_%klass135240%_ _%klass135237%_)
               (_%$e135249%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135240%_ '12 '#f '#f))))
          (if _%$e135249%_
              _%$e135249%_
              (let ((_%method-table135253%_
                     (___specialize-class _%klass135240%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass135240%_
                   _%method-table135253%_
                   '12
                   '#f
                   '#f))
                _%method-table135253%_)))))
    (define specialize-class
      (lambda (_%klass135223%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135223%_ 'class))
            (let ((_%klass135227%_ _%klass135223%_))
              (__specialize-class _%klass135227%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1156.25-1156.30"
               'contract:
               'class-type?
               'value:
               _%klass135223%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass135207%_
               _%method-table135208%_
               _%method135209%_
               _%proc135210%_)
        (let ((_%$e135212%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table135208%_
                  _%method135209%_
                  '#f))))
          (if _%$e135212%_
              _%$e135212%_
              (let ((_%$e135215%_
                     (__lookup-method-specializer _%proc135210%_)))
                (if _%$e135215%_
                    (let ((_%specialized-proc135220%_
                           (_%$e135215%_
                            _%klass135207%_
                            _%method-table135208%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table135208%_
                       _%method135209%_
                       _%specialized-proc135220%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table135208%_
                       _%method135209%_
                       _%proc135210%_))))))))
    (define ___specialize-class
      (lambda (_%klass135074%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135074%_ 'class))
            (if (let* ((_%klass135077%_ _%klass135074%_)
                       (_%klass135082%_ _%klass135077%_))
                  (__class-type-metaclass? _%klass135082%_))
                (let* ((_%obj135094%_ _%klass135074%_)
                       (_%id135097%_ 'specialize-class)
                       (_%args135100%_ '())
                       (_%id135105%_ _%id135097%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj135094%_
                           _%id135105%_
                           _%args135100%_))
                (if (let* ((_%pred135118%_ class-type-metaclass?)
                           (_%lst135121%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass135074%_
                               '6
                               '#f
                               '#f)))
                           (_%pred135126%_ _%pred135118%_))
                      (declare (not safe))
                      (__find _%pred135126%_ _%lst135121%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass135074%_)
                    (let ((_%method-table135139%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop135141%_ ((_%rest135143%_
                                            (let* ((_%klass135190%_
                                                    _%klass135074%_)
                                                   (_%klass135195%_
                                                    _%klass135190%_))
                                              (__class-precedence-list
                                               _%klass135195%_))))
                        (let* ((_%$%rest135144135152%_ _%rest135143%_)
                               (_%$%else135146135160%_
                                (lambda () _%method-table135139%_))
                               (_%$%K135148135178%_
                                (lambda (_%rest135163%_ _%xklass135164%_)
                                  (let ((_%$%xmethod-table135165135167%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass135164%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table135165135167%_
                                        (let* ((_%xmethod-table135169%_
                                                _%$%xmethod-table135165135167%_)
                                               (__tmp143566
                                                (lambda (_%$%g135170135173%_
                                                         _%$%g135171135175%_)
                                                  (__specialize-method
                                                   _%klass135074%_
                                                   _%method-table135139%_
                                                   _%$%g135170135173%_
                                                   _%$%g135171135175%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table135169%_
                                           __tmp143566))
                                        '#f))
                                  (_%loop135141%_ _%rest135163%_))))
                          (if (pair? _%$%rest135144135152%_)
                              (let ((_%$%hd135149135181%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest135144135152%_)))
                                    (_%$%tl135150135183%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest135144135152%_))))
                                (let* ((_%xklass135186%_ _%$%hd135149135181%_)
                                       (_%rest135188%_ _%$%tl135150135183%_))
                                  (_%$%K135148135178%_
                                   _%rest135188%_
                                   _%xklass135186%_)))
                              (_%$%else135146135160%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass135074%_))
                (__specialize-class (__shadow-class__0 _%klass135074%_))
                (error '"bad class; cannot specialize" _%klass135074%_)))))
    (define __seal-class!
      (lambda (_%klass134937%_)
        (let ((_%klass134940%_ _%klass134937%_))
          (if (let* ((_%klass134949%_ _%klass134940%_)
                     (_%klass134954%_ _%klass134949%_))
                (__class-type-sealed? _%klass134954%_))
              '#!void
              (begin
                (if (let* ((_%klass134967%_ _%klass134940%_)
                           (_%klass134972%_ _%klass134967%_))
                      (__class-type-metaclass? _%klass134972%_))
                    (let ()
                      (let* ((_%obj134983%_ _%klass134940%_)
                             (_%id134986%_ 'seal-class!)
                             (_%args134989%_ '())
                             (_%id134994%_ _%id134986%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj134983%_
                                 _%id134994%_
                                 _%args134989%_))
                      (let* ((_%klass135007%_ _%klass134940%_)
                             (_%klass135012%_ _%klass135007%_))
                        (__specialize-class _%klass135012%_)))
                    (if (let* ((_%pred135022%_ class-type-metaclass?)
                               (_%lst135025%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass134940%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred135030%_ _%pred135022%_))
                          (declare (not safe))
                          (__find _%pred135030%_ _%lst135025%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass134940%_)
                        (let* ((_%klass135043%_ _%klass134940%_)
                               (_%klass135048%_ _%klass135043%_))
                          (__specialize-class _%klass135048%_))))
                (let* ((_%klass135059%_ _%klass134940%_)
                       (_%klass135064%_ _%klass135059%_))
                  (__class-type-seal! _%klass135064%_)))))))
    (define seal-class!
      (lambda (_%klass134923%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134923%_ 'class))
            (let ((_%klass134927%_ _%klass134923%_))
              (__seal-class! _%klass134927%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1202.20-1202.25"
               'contract:
               'class-type?
               'value:
               _%klass134923%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass134811%_ _%obj134812%_ _%id134813%_)
        (let* ((_%subklass134816%_ _%subklass134811%_)
               (_%id134824%_ _%id134813%_))
          (letrec ((_%find-next-method134833%_
                    (lambda (_%klass134835%_)
                      (let _%lp134837%_ ((_%rest134839%_
                                          (let ((_%klass134908%_
                                                 _%klass134835%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass134908%_
                                                   'class))
                                                (let ((_%klass134913%_
                                                       _%klass134908%_))
                                                  (__class-precedence-list
                                                   _%klass134913%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass134908%_)
                                                  '#!void)))))
                        (let* ((_%$%rest134840134848%_ _%rest134839%_)
                               (_%$%else134842134856%_ (lambda () '#f))
                               (_%$%K134844134896%_
                                (lambda (_%rest134859%_ _%klass134860%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass134816%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass134860%_)))
                                      (let* ((_%mixins134862%_ _%rest134859%_)
                                             (_%obj134865%_ _%obj134812%_)
                                             (_%id134868%_ _%id134824%_)
                                             (_%id134873%_ _%id134868%_))
                                        (__mixin-find-method
                                         _%mixins134862%_
                                         _%obj134865%_
                                         _%id134873%_))
                                      (_%lp134837%_ _%rest134859%_)))))
                          (if (pair? _%$%rest134840134848%_)
                              (let ((_%$%hd134845134899%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest134840134848%_)))
                                    (_%$%tl134846134901%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest134840134848%_))))
                                (let* ((_%klass134904%_ _%$%hd134845134899%_)
                                       (_%rest134906%_ _%$%tl134846134901%_))
                                  (_%$%K134844134896%_
                                   _%rest134906%_
                                   _%klass134904%_)))
                              (_%$%else134842134856%_)))))))
            (_%find-next-method134833%_ (class-of _%obj134812%_))))))
    (define next-method
      (lambda (_%subklass134785%_ _%obj134786%_ _%id134787%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass134785%_ 'class))
            (let ((_%subklass134791%_ _%subklass134785%_))
              (if (symbol? _%id134787%_)
                  (let ((_%id134801%_ _%id134787%_))
                    (__next-method
                     _%subklass134791%_
                     _%obj134786%_
                     _%id134801%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1224.44-1224.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id134787%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1224.20-1224.28"
               'contract:
               'class-type?
               'value:
               _%subklass134785%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass134720%_ _%obj134721%_ _%id134722%_ . _%args134723%_)
        (let* ((_%subklass134726%_ _%subklass134720%_)
               (_%id134734%_ _%id134722%_)
               (_%$e134779%_
                (let* ((_%subklass134743%_ _%subklass134726%_)
                       (_%obj134746%_ _%obj134721%_)
                       (_%id134749%_ _%id134734%_)
                       (_%subklass134754%_ _%subklass134743%_)
                       (_%id134769%_ _%id134749%_))
                  (__next-method
                   _%subklass134754%_
                   _%obj134746%_
                   _%id134769%_))))
          (if _%$e134779%_
              (apply _%$e134779%_ _%obj134721%_ _%args134723%_)
              (error '"cannot find next method"
                     'object:
                     _%obj134721%_
                     'method:
                     _%id134734%_)))))
    (define call-next-method
      (lambda (_%subklass134693%_ _%obj134694%_ _%id134695%_ . _%args134696%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass134693%_ 'class))
            (let ((_%subklass134700%_ _%subklass134693%_))
              (if (symbol? _%id134695%_)
                  (let ((_%id134710%_ _%id134695%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass134700%_
                             _%obj134694%_
                             _%id134710%_
                             _%args134696%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1235.49-1235.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id134695%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1235.25-1235.33"
               'contract:
               'class-type?
               'value:
               _%subklass134693%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type134472%_ _%properties134473%_)
        (letrec ((_%shadow-type-id134475%_
                  (lambda (_%type134681%_)
                    (let ((__tmp143567
                           (let ()
                             (declare (not safe))
                             (##type-name _%type134681%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp143567 '"::t"))))
                 (_%shadow-type-name134476%_
                  (lambda (_%type134679%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type134679%_))))
                 (_%make-shadow-class134477%_
                  (lambda (_%type134561%_ _%precedence-list134562%_)
                    (let* ((_%super134564%_
                            (if (pair? _%precedence-list134562%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list134562%_))
                                      '())
                                '()))
                           (_%klass134676%_
                            (let* ((_%id134566%_
                                    (_%shadow-type-id134475%_ _%type134561%_))
                                   (_%name134569%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type134561%_)))
                                   (_%direct-supers134572%_ _%super134564%_)
                                   (_%direct-slots134575%_ '())
                                   (_%properties134601%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type134561%_)
                                                      (let ((__tmp143568
                                                             (if (let ((_%type134578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type134561%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type134578%_))
                               (let ((_%type134583%_ _%type134578%_))
                                 (__type-extensible? _%type134583%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type134578%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties134473%_ __tmp143568))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor134604%_ '#f)
                                   (_%id134609%_ _%id134566%_))
                              (if (symbol? _%name134569%_)
                                  (let* ((_%name134620%_ _%name134569%_)
                                         (_%direct-supers134630%_
                                          _%direct-supers134572%_)
                                         (_%direct-slots134640%_
                                          _%direct-slots134575%_)
                                         (_%properties134650%_
                                          _%properties134601%_))
                                    (if (let ((_%$e134662%_ '#t))
                                          (and _%$e134662%_ _%$e134662%_))
                                        (let ((_%constructor134666%_
                                               _%constructor134604%_))
                                          (__make-class-type
                                           _%id134609%_
                                           _%name134620%_
                                           _%direct-supers134630%_
                                           _%direct-slots134640%_
                                           _%properties134650%_
                                           _%constructor134666%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor134604%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name134569%_)
                                    '#!void)))))
                      (let ((__tmp143569
                             (let ()
                               (declare (not safe))
                               (##type-id _%type134561%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp143569
                         _%klass134676%_))
                      _%klass134676%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again134481%_ ((_%spin134484%_ '0))
              (if (let ((__tmp143570
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143570 '0))
                  (let ((__tmp143571 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp143571))
                  (if (let () (declare (not safe)) (##fx< _%spin134484%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again134481%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin134484%_ '1))))
                      (let ((_%owner134490%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner134490%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner134490%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again134481%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e134496%_
                 (let ((__tmp143572
                        (let ()
                          (declare (not safe))
                          (##type-id _%type134472%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp143572 '#f))))
            (if _%$e134496%_
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
                  _%$e134496%_)
                (let _%loop134504%_ ((_%super134506%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type134472%_)))
                                     (_%hierarchy134507%_ '()))
                  (if (not _%super134506%_)
                      (let _%loop134510%_ ((_%rest134512%_ _%hierarchy134507%_)
                                           (_%precedence-list134513%_ '()))
                        (let* ((_%$%rest134514134522%_ _%rest134512%_)
                               (_%$%else134516134534%_
                                (lambda ()
                                  (let ((_%klass134530%_
                                         (_%make-shadow-class134477%_
                                          _%type134472%_
                                          _%precedence-list134513%_)))
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
                                    _%klass134530%_)))
                               (_%$%K134518134548%_
                                (lambda (_%rest134537%_ _%type134538%_)
                                  (let ((_%$e134540%_
                                         (let ((__tmp143573
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type134538%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp143573
                                            '#f))))
                                    (if _%$e134540%_
                                        (_%loop134510%_
                                         _%rest134537%_
                                         (cons _%$e134540%_
                                               _%precedence-list134513%_))
                                        (let ((_%klass134546%_
                                               (_%make-shadow-class134477%_
                                                _%type134538%_
                                                _%precedence-list134513%_)))
                                          (_%loop134510%_
                                           _%rest134537%_
                                           (cons _%klass134546%_
                                                 _%precedence-list134513%_))))))))
                          (if (pair? _%$%rest134514134522%_)
                              (let ((_%$%hd134519134551%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest134514134522%_)))
                                    (_%$%tl134520134553%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest134514134522%_))))
                                (let* ((_%type134556%_ _%$%hd134519134551%_)
                                       (_%rest134558%_ _%$%tl134520134553%_))
                                  (_%$%K134518134548%_
                                   _%rest134558%_
                                   _%type134556%_)))
                              (_%$%else134516134534%_))))
                      (_%loop134504%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super134506%_))
                       (cons _%super134506%_ _%hierarchy134507%_)))))))))
    (define __shadow-class__0
      (lambda (_%type134686%_)
        (let ((_%properties134688%_ '()))
          (__shadow-class__% _%type134686%_ _%properties134688%_))))
    (define __shadow-class
      (lambda _g143574_
        (let ((_g143575_ (let () (declare (not safe)) (##length _g143574_))))
          (cond ((let () (declare (not safe)) (##fx= _g143575_ 1))
                 (apply __shadow-class__0 _g143574_))
                ((let () (declare (not safe)) (##fx= _g143575_ 2))
                 (apply __shadow-class__% _g143574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g143574_))))))
    (define __type
      (let* ((_%tb134460%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e134462%_ _%tb134460%_))
        (if (eq? '2 _%$e134462%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e134462%_)
                (let ((_%flonum-self-tagging-tags134465%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits134466%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e134468%_ _%flonum-self-tagging-tags134465%_))
                    (if (eq? '0 _%$e134468%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits134466%_ '2))
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
                        (if (eq? '1 _%$e134468%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits134466%_ '2))
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
                            (if (eq? '2 _%$e134468%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e134468%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e134468%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags134465%_))))))))
                (error '"unexpected tag width" _%tb134460%_)))))
    (define __primitive-class
      (let ((__tmp143576 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp143576 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len134350%_ (vector-length __type))
             (_%cv134352%_
              (let () (declare (not safe)) (##make-vector _%len134350%_ '#f))))
        (let _%loop134355%_ ((_%i134357%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i134357%_ _%len134350%_))
              (let* ((_%t134359%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i134357%_)))
                     (_%f134457%_
                      (if (eq? _%t134359%_ 'undefined)
                          (lambda (_%obj134362%_)
                            (error '"object type is undefined" _%obj134362%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t134359%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj134365%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e134368%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i134357%_)))
                                  (if _%$e134368%_
                                      _%$e134368%_
                                      (let ((_%klass134372%_
                                             (__system-class _%t134359%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i134357%_
                                         _%klass134372%_)
                                        _%klass134372%_))))
                              (if (eq? _%t134359%_ 'subtyped)
                                  (lambda (_%obj134376%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st134379%_
                                           (##subtype _%obj134376%_)))
                                      (if (##fx= _%st134379%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass134382%_
                                                 (##structure-type
                                                  _%obj134376%_)))
                                            (if (##structure-instance-of?
                                                 _%klass134382%_
                                                 'class)
                                                _%klass134382%_
                                                (__shadow-class__0
                                                 _%klass134382%_)))
                                          (if (##fx= _%st134379%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj134376%_)
                                                         '1)
                                                  (let ((_%$e134385%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e134385%_
                                                        _%$e134385%_
                                                        (let ((_%klass134389%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass134389%_)
                                                          _%klass134389%_)))
                                                  (let ((_%$e134392%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e134392%_
                                                        _%$e134392%_
                                                        (let ((_%klass134396%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass134396%_)
                                                          _%klass134396%_))))
                                              (let ((_%$e134399%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st134379%_)))
                                                (if _%$e134399%_
                                                    _%$e134399%_
                                                    (let ((_%klass134416%_
                                                           (let ((_%$e134403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st134379%_)))
                     (if _%$e134403%_
                         (let ((_%$e134408%_
                                (##vector-ref __subtype-class _%st134379%_)))
                           (if _%$e134408%_
                               _%$e134408%_
                               (let ((_%klass134412%_
                                      (__system-class _%$e134403%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st134379%_
                                  _%klass134412%_)
                                 _%klass134412%_)))
                         (error '"unknown class"
                                'object:
                                _%obj134376%_
                                'subtype:
                                _%st134379%_)))))
              (##vector-set! __subtype-class _%st134379%_ _%klass134416%_)
              _%klass134416%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t134359%_ 'special)
                                      (lambda (_%obj134420%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x134423%_
                                               (##type-cast _%obj134420%_ '0)))
                                          (if (##fx> _%x134423%_ '0)
                                              (let ((_%$e134426%_
                                                     __char-class))
                                                (if _%$e134426%_
                                                    _%$e134426%_
                                                    (let ((_%klass134430%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass134430%_)
                                                      _%klass134430%_)))
                                              (let* ((_%t134433%_
                                                      (##fx- _%x134423%_))
                                                     (_%$e134436%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t134433%_)))
                                                (if _%$e134436%_
                                                    _%$e134436%_
                                                    (let ((_%klass134454%_
                                                           (if (eq? _%obj134420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj134420%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj134420%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj134420%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj134420%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj134420%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj134420%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj134420%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj134420%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj134420%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj134420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj134420%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj134420%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t134433%_ _%klass134454%_)
              _%klass134454%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t134359%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv134352%_ _%i134357%_ _%f134457%_))
                (_%loop134355%_
                 (let () (declare (not safe)) (##fx+ _%i134357%_ '1))))
              _%cv134352%_))))
    (define type-of
      (lambda (_%obj134346%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj134346%_)))))
    (define class-of
      (lambda (_%obj134337%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t134341%_ (##type _%obj134337%_))
                 (_%f134343%_ (##vector-ref __class-of _%t134341%_)))
            (_%f134343%_ _%obj134337%_)))))
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
      (lambda (_%id134331%_)
        (let ((_%$e134333%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id134331%_ '#f))))
          (if _%$e134333%_
              _%$e134333%_
              (error '"unknown system class" _%id134331%_)))))
    (define __make-system-class
      (lambda (_%id134233%_ _%super134234%_ _%properties134235%_)
        (let ((_%klass134329%_
               (let* ((_%id134237%_ _%id134233%_)
                      (_%name134240%_ _%id134233%_)
                      (_%direct-supers134243%_ _%super134234%_)
                      (_%direct-slots134246%_ '())
                      (_%properties134249%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties134235%_))))
                      (_%constructor134252%_ '#f))
                 (if (symbol? _%id134237%_)
                     (let ((_%id134257%_ _%id134237%_))
                       (if (symbol? _%name134240%_)
                           (let ((_%name134273%_ _%name134240%_))
                             (if (list? _%direct-supers134243%_)
                                 (let* ((_%direct-supers134283%_
                                         _%direct-supers134243%_)
                                        (_%direct-slots134293%_
                                         _%direct-slots134246%_)
                                        (_%properties134303%_
                                         _%properties134249%_))
                                   (if (let ((_%$e134315%_ '#t))
                                         (and _%$e134315%_ _%$e134315%_))
                                       (let ((_%constructor134319%_
                                              _%constructor134252%_))
                                         (__make-class-type
                                          _%id134257%_
                                          _%name134273%_
                                          _%direct-supers134283%_
                                          _%direct-slots134293%_
                                          _%properties134303%_
                                          _%constructor134319%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor134252%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers134243%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name134240%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id134237%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id134233%_
             _%klass134329%_))
          _%klass134329%_)))))
