(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1771037606)
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
      (let ((_%flags144544%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties144545%_ '((direct-slots:) (system: . #t)))
            (_%slot-table144546%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags144544%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table144546%_
           _%properties144545%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots144501%_
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
             (_%slot-vector144503%_ (list->vector (cons '#f _%slots144501%_)))
             (_%slot-table144529%_
              (let ((_%slot-table144505%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp147571
                       (lambda (_%slot144507%_ _%field144508%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table144505%_
                            _%slot144507%_
                            _%field144508%_))
                         (let ((__tmp147572
                                (let ((_%sym144510%_ _%slot144507%_))
                                  (if (symbol? _%sym144510%_)
                                      (let ((_%sym144515%_ _%sym144510%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym144515%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym144510%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table144505%_
                            __tmp147572
                            _%field144508%_))))
                      (__tmp147569
                       (let ((__tmp147570
                              (let ()
                                (declare (not safe))
                                (##length _%slots144501%_))))
                         (declare (not safe))
                         (##iota __tmp147570 '1))))
                  (declare (not safe))
                  (##for-each __tmp147571 _%slots144501%_ __tmp147569))
                _%slot-table144505%_))
             (_%flags144531%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields144537%_
              (list->vector
               (let ((__tmp147573
                      (map (lambda (_%g144532144534%_)
                             (list _%g144532144534%_ '5 '#f))
                           (drop _%slots144501%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp147573))))
             (_%properties144539%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots144501%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t144541%_
              (let ((__tmp147574 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags144531%_
                 ##type-type
                 _%fields144537%_
                 __tmp147574
                 _%slot-vector144503%_
                 _%slot-table144529%_
                 _%properties144539%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t144541%_ _%t144541%_))
        _%t144541%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags144497%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties144498%_ '((direct-slots:) (system: . #t)))
            (_%slot-table144499%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp147575 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags144497%_
           '#f
           '#()
           __tmp147575
           '#(#f)
           _%slot-table144499%_
           _%properties144498%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass144485%_)
        (let ((_%klass144488%_ _%klass144485%_))
          (declare (not safe))
          (##structure-type _%klass144488%_))))
    (define class-type
      (lambda (_%klass130188%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130188%_ 'class))
            (let ((_%klass130192%_ _%klass130188%_))
              (__class-type _%klass130192%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass130188%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj144483%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj144483%_ 'class))))
    (define __class-type=?
      (lambda (_%x144462%_ _%y144463%_)
        (let* ((_%x144466%_ _%x144462%_) (_%y144474%_ _%y144463%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x144466%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y144474%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x130322%_ _%y130323%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x130322%_ 'class))
            (let ((_%x130327%_ _%x130322%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y130323%_ 'class))
                  (let ((_%y130337%_ _%y130323%_))
                    (__class-type=? _%x130327%_ _%y130337%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y130323%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x130322%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type144450%_)
        (let* ((_%type144453%_ _%type144450%_)
               (__tmp147576
                (let ((__tmp147577
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type144453%_))))
                  (declare (not safe))
                  (##fxand __tmp147577 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp147576 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type130769%_)
        (if (let () (declare (not safe)) (##type? _%type130769%_))
            (let ((_%type130773%_ _%type130769%_))
              (__type-opaque? _%type130773%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type130769%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass144438%_)
        (let* ((_%klass144441%_ _%klass144438%_)
               (__tmp147578
                (let ((__tmp147579
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144441%_))))
                  (declare (not safe))
                  (##fxand __tmp147579 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp147578 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass130903%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130903%_ 'class))
            (let ((_%klass130907%_ _%klass130903%_))
              (__class-type-opaque? _%klass130907%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass130903%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type144426%_)
        (let* ((_%type144429%_ _%type144426%_)
               (__tmp147580
                (let ((__tmp147581
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type144429%_))))
                  (declare (not safe))
                  (##fxand __tmp147581 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp147580 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type131037%_)
        (if (let () (declare (not safe)) (##type? _%type131037%_))
            (let ((_%type131041%_ _%type131037%_))
              (__type-extensible? _%type131041%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type131037%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type144414%_)
        (let* ((_%type144417%_ _%type144414%_)
               (__tmp147582
                (let ((__tmp147583
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type144417%_))))
                  (declare (not safe))
                  (##fxand __tmp147583 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp147582 '0))))
    (define class-type-final?
      (lambda (_%type131171%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type131171%_ 'class))
            (let ((_%type131175%_ _%type131171%_))
              (__class-type-final? _%type131175%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type131171%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass144402%_)
        (let* ((_%klass144405%_ _%klass144402%_)
               (__tmp147584
                (let ((__tmp147585
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144405%_))))
                  (declare (not safe))
                  (##fxand __tmp147585 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp147584 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass131305%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131305%_ 'class))
            (let ((_%klass131309%_ _%klass131305%_))
              (__class-type-struct? _%klass131309%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass131305%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass144390%_)
        (let* ((_%klass144393%_ _%klass144390%_)
               (__tmp147586
                (let ((__tmp147587
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144393%_))))
                  (declare (not safe))
                  (##fxand __tmp147587 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp147586 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass131439%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131439%_ 'class))
            (let ((_%klass131443%_ _%klass131439%_))
              (__class-type-sealed? _%klass131443%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass131439%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass144378%_)
        (let* ((_%klass144381%_ _%klass144378%_)
               (__tmp147588
                (let ((__tmp147589
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144381%_))))
                  (declare (not safe))
                  (##fxand __tmp147589 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp147588 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass131573%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131573%_ 'class))
            (let ((_%klass131577%_ _%klass131573%_))
              (__class-type-metaclass? _%klass131577%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass131573%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass144366%_)
        (let* ((_%klass144369%_ _%klass144366%_)
               (__tmp147590
                (let ((__tmp147591
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144369%_))))
                  (declare (not safe))
                  (##fxand __tmp147591 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp147590 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass131707%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131707%_ 'class))
            (let ((_%klass131711%_ _%klass131707%_))
              (__class-type-system? _%klass131711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass131707%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass144354%_)
        (let* ((_%klass144357%_ _%klass144354%_)
               (__tmp147592
                (let ((__tmp147593
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144357%_))))
                  (declare (not safe))
                  (##fxand __tmp147593 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp147592 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass131841%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131841%_ 'class))
            (let ((_%klass131845%_ _%klass131841%_))
              (__class-type-acyclic? _%klass131845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass131841%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id144161%_
               _%type-name144162%_
               _%type-super144163%_
               _%precedence-list144164%_
               _%slot-vector144165%_
               _%properties144166%_
               _%constructor144167%_
               _%slot-table144168%_
               _%methods144169%_)
        (letrec ((_%make-props!144172%_
                  (lambda (_%key144304%_)
                    (letrec* ((_%ht144306%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!144307%_
                               (lambda (_%ht144347%_ _%slots144348%_)
                                 (for-each
                                  (lambda (_%g144349144351%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht144347%_
                                       _%g144349144351%_
                                       '#t)))
                                  _%slots144348%_)))
                              (_%put-alist!144308%_
                               (lambda (_%ht144336%_
                                        _%key144337%_
                                        _%alist144338%_)
                                 (let ((_%$e144340%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key144337%_
                                           _%alist144338%_))))
                                   (if _%$e144340%_
                                       ((lambda (_%g144342144344%_)
                                          (_%put-slots!144307%_
                                           _%ht144336%_
                                           _%g144342144344%_))
                                        _%$e144340%_)
                                       '#!void)))))
                      (_%put-alist!144308%_
                       _%ht144306%_
                       _%key144304%_
                       _%properties144166%_)
                      (for-each
                       (lambda (_%mixin144310%_)
                         (let ((_%alist144312%_
                                (##structure-ref
                                 _%mixin144310%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist144312%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key144304%_
                                           _%alist144312%_))))
                               (_%put-slots!144307%_
                                _%ht144306%_
                                (let ((_%klass144317%_ _%mixin144310%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass144317%_
                                         'class))
                                      (let ((_%klass144322%_ _%klass144317%_))
                                        (__class-type-slot-list
                                         _%klass144322%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass144317%_)
                                        '#!void))))
                               (_%put-alist!144308%_
                                _%ht144306%_
                                _%key144304%_
                                _%alist144312%_))))
                       _%precedence-list144164%_)
                      _%ht144306%_))))
          (let* ((_%transparent?144174%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties144166%_)))
                 (_%all-slots-printable?144179%_
                  (let ((_%$e144176%_ _%transparent?144174%_))
                    (if _%$e144176%_
                        _%$e144176%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties144166%_))))))
                 (_%printable144181%_
                  (if (not _%all-slots-printable?144179%_)
                      (_%make-props!144172%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?144186%_
                  (let ((_%$e144183%_ _%transparent?144174%_))
                    (if _%$e144183%_
                        _%$e144183%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties144166%_))))))
                 (_%equalable144188%_
                  (if (not _%all-slots-equalable?144186%_)
                      (_%make-props!144172%_ 'equal:)
                      '#f))
                 (_%first-new-field144190%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super144163%_ 'class))
                      (let ((__tmp147594
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super144163%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp147594))
                      '1))
                 (_%field-info-length144192%_
                  (let ((__tmp147595
                         (let ((__tmp147596
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector144165%_))))
                           (declare (not safe))
                           (##fx- __tmp147596 _%first-new-field144190%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp147595)))
                 (_%field-info144194%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length144192%_ '#f)))
                 (_%struct?144196%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties144166%_)))
                 (_%final?144198%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties144166%_)))
                 (_%metaclass144205%_
                  (let ((_%metaclass144199144201%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties144166%_))))
                    (if _%metaclass144199144201%_
                        (let ((_%metaclass144203%_ _%metaclass144199144201%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass144203%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id144161%_
                                     'metaclass:
                                     _%metaclass144203%_))
                          _%metaclass144203%_)
                        '#f)))
                 (_%system?144207%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties144166%_)))
                 (_%opaque?144246%_
                  (if (or _%transparent?144174%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties144166%_)))
                      '#f
                      (let ((_%$e144212%_ (not _%type-super144163%_)))
                        (if _%$e144212%_
                            _%$e144212%_
                            (let ((_%type144215%_ _%type-super144163%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type144215%_))
                                  (let ((_%type144220%_ _%type144215%_))
                                    (__type-opaque? _%type144220%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type144215%_)
                                    '#!void)))))))
                 (_%acyclic?144248%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties144166%_)))
                 (_%type-flags144250%_
                  (let ((__tmp147602
                         (if _%final?144198%_ '0 type-flag-extensible))
                        (__tmp147601
                         (if _%opaque?144246%_ type-flag-opaque '0))
                        (__tmp147600
                         (if _%struct?144196%_ class-type-flag-struct '0))
                        (__tmp147599
                         (if _%metaclass144205%_ class-type-flag-metaclass '0))
                        (__tmp147598
                         (if _%system?144207%_ class-type-flag-system '0))
                        (__tmp147597
                         (if _%acyclic?144248%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp147602
                             __tmp147601
                             __tmp147600
                             __tmp147599
                             __tmp147598
                             __tmp147597)))
                 (_%precedence-list144258%_
                  (let ((_%$e144252%_ (memq t::t _%precedence-list144164%_)))
                    (if _%$e144252%_
                        ((lambda (_%tail144255%_)
                           (if (null? (cdr _%tail144255%_))
                               _%precedence-list144164%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list144164%_)))
                         _%$e144252%_)
                        (let ((__tmp147603 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list144164%_ __tmp147603))))))
            (let _%loop144261%_ ((_%i144263%_ _%first-new-field144190%_)
                                 (_%j144264%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j144264%_ _%field-info-length144192%_))
                  (let* ((_%slot144266%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector144165%_ _%i144263%_)))
                         (_%flags144274%_
                          (if _%transparent?144174%_
                              '0
                              (let ((__tmp147605
                                     (if (or _%all-slots-printable?144179%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable144181%_
                                                _%slot144266%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp147604
                                     (if (or _%all-slots-equalable?144186%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable144188%_
                                                _%slot144266%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp147605 __tmp147604)))))
                    (vector-set!
                     _%field-info144194%_
                     _%j144264%_
                     _%slot144266%_)
                    (vector-set!
                     _%field-info144194%_
                     (let () (declare (not safe)) (##fx+ _%j144264%_ '1))
                     _%flags144274%_)
                    (_%loop144261%_
                     (let () (declare (not safe)) (##fx+ _%i144263%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j144264%_ '3))))
                  '#!void))
            (if _%metaclass144205%_
                (let ((_%val144301%_
                       (let* ((_%klass144277%_ _%metaclass144205%_)
                              (_%args144280%_
                               (list _%type-id144161%_
                                     _%type-name144162%_
                                     _%type-flags144250%_
                                     _%type-super144163%_
                                     _%field-info144194%_
                                     _%precedence-list144258%_
                                     _%slot-vector144165%_
                                     _%slot-table144168%_
                                     _%properties144166%_
                                     _%constructor144167%_
                                     _%methods144169%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass144277%_
                                'class))
                             (let ((_%klass144285%_ _%klass144277%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass144285%_
                                        _%args144280%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass144277%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val144301%_ 'class))
                      _%val144301%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val144301%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id144161%_
                   _%type-name144162%_
                   _%type-flags144250%_
                   _%type-super144163%_
                   _%field-info144194%_
                   _%precedence-list144258%_
                   _%slot-vector144165%_
                   _%slot-table144168%_
                   _%properties144166%_
                   _%constructor144167%_
                   _%methods144169%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass144159%_)
        (##structure-ref _%klass144159%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass144157%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144157%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass144154%_ _%val144155%_)
        (##structure-set! _%klass144154%_ _%val144155%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass144149%_ _%val144151%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144149%_
           _%val144151%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass144147%_)
        (##structure-ref _%klass144147%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass144145%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144145%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass144142%_ _%val144143%_)
        (##structure-set! _%klass144142%_ _%val144143%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass144137%_ _%val144139%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144137%_
           _%val144139%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass144135%_)
        (##structure-ref _%klass144135%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass144133%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144133%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass144130%_ _%val144131%_)
        (##structure-set! _%klass144130%_ _%val144131%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass144125%_ _%val144127%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144125%_
           _%val144127%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass144123%_)
        (##structure-ref _%klass144123%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass144121%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144121%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass144118%_ _%val144119%_)
        (##structure-set! _%klass144118%_ _%val144119%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass144113%_ _%val144115%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144113%_
           _%val144115%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass144111%_)
        (##structure-ref _%klass144111%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass144109%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144109%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass144106%_ _%val144107%_)
        (##structure-set! _%klass144106%_ _%val144107%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass144101%_ _%val144103%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144101%_
           _%val144103%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass144099%_)
        (##structure-ref _%klass144099%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass144097%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144097%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass144094%_ _%val144095%_)
        (##structure-set!
         _%klass144094%_
         _%val144095%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass144089%_ _%val144091%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144089%_
           _%val144091%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass144087%_)
        (##structure-ref _%klass144087%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass144085%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144085%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass144082%_ _%val144083%_)
        (##structure-set!
         _%klass144082%_
         _%val144083%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass144077%_ _%val144079%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144077%_
           _%val144079%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass144075%_)
        (##structure-ref _%klass144075%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass144073%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144073%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass144070%_ _%val144071%_)
        (##structure-set!
         _%klass144070%_
         _%val144071%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass144065%_ _%val144067%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144065%_
           _%val144067%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass144063%_)
        (##structure-ref _%klass144063%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass144061%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144061%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass144058%_ _%val144059%_)
        (##structure-set!
         _%klass144058%_
         _%val144059%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass144053%_ _%val144055%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144053%_
           _%val144055%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass144051%_)
        (##structure-ref _%klass144051%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass144049%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144049%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass144046%_ _%val144047%_)
        (##structure-set!
         _%klass144046%_
         _%val144047%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass144041%_ _%val144043%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144041%_
           _%val144043%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass144039%_)
        (##structure-ref _%klass144039%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass144037%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144037%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass144034%_ _%val144035%_)
        (##structure-set!
         _%klass144034%_
         _%val144035%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass144029%_ _%val144031%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144029%_
           _%val144031%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass144027%_)
        (##structure-ref _%klass144027%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass144025%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144025%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass144022%_ _%val144023%_)
        (##structure-set!
         _%klass144022%_
         _%val144023%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass144017%_ _%val144019%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144017%_
           _%val144019%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass144015%_)
        (##structure-ref _%klass144015%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass144013%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144013%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass144010%_ _%val144011%_)
        (##structure-set!
         _%klass144010%_
         _%val144011%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass144005%_ _%val144007%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144005%_
           _%val144007%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type143716%_)
        (letrec ((_%__fields->list143846%_
                  (lambda (_%fields143954%_ _%r143955%_)
                    (let* ((_%fields143958%_ _%fields143954%_)
                           (_%r143966%_ _%r143955%_)
                           (_%fields-len143975%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields143958%_))))
                      (let _%loop143977%_ ((_%i143979%_ '0)
                                           (_%r143980%_ _%r143966%_))
                        (let* ((_%i143983%_ _%i143979%_)
                               (_%r143996%_ _%r143980%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i143983%_ _%fields-len143975%_))
                              (_%loop143977%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i143983%_ '3))
                               (cons (vector-ref _%fields143958%_ _%i143983%_)
                                     _%r143996%_))
                              _%r143996%_))))))
                 (_%fields->list143847%_
                  (lambda (_%fields143933%_ _%r143934%_)
                    (let* ((_%fields143937%_ _%fields143933%_)
                           (_%r143945%_ _%r143934%_))
                      (_%__fields->list143846%_
                       _%fields143937%_
                       _%r143945%_)))))
          (let _%loop143849%_ ((_%type143851%_ _%type143716%_)
                               (_%r143852%_ '()))
            (let ((_%r143855%_ _%r143852%_))
              (if (let () (declare (not safe)) (##type? _%type143851%_))
                  (if (eq? _%type143851%_ ##type-type)
                      (reverse! _%r143855%_)
                      (let ((_%$e143867%_
                             (let ()
                               (declare (not safe))
                               (##type-super _%type143851%_))))
                        (if _%$e143867%_
                            ((lambda (_%super143870%_)
                               (_%loop143849%_
                                _%super143870%_
                                (let* ((_%fields143873%_
                                        (let ()
                                          (declare (not safe))
                                          (##type-fields _%type143851%_)))
                                       (_%r143876%_ _%r143855%_)
                                       (_%fields143880%_ _%fields143873%_)
                                       (_%r143896%_ _%r143876%_))
                                  (_%__fields->list143846%_
                                   _%fields143880%_
                                   _%r143896%_))))
                             _%$e143867%_)
                            (reverse!
                             (let* ((_%fields143906%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-fields _%type143851%_)))
                                    (_%r143909%_ _%r143855%_)
                                    (_%fields143913%_ _%fields143906%_)
                                    (_%r143923%_ _%r143909%_))
                               (_%__fields->list143846%_
                                _%fields143913%_
                                _%r143923%_))))))
                  (reverse! _%r143855%_)))))))
    (define __class-type-slot-list
      (lambda (_%klass143704%_)
        (let ((_%klass143707%_ _%klass143704%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass143707%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass132365%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132365%_ 'class))
            (let ((_%klass132369%_ _%klass132365%_))
              (__class-type-slot-list _%klass132369%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@370.29-370.34"
               'contract:
               'class-type?
               'value:
               _%klass132365%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass143692%_)
        (let* ((_%klass143695%_ _%klass143692%_)
               (__tmp147606
                (let ((__tmp147607
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143695%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp147607))))
          (declare (not safe))
          (##fx- __tmp147606 '1))))
    (define class-type-field-count
      (lambda (_%klass132499%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132499%_ 'class))
            (let ((_%klass132503%_ _%klass132499%_))
              (__class-type-field-count _%klass132503%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@372.31-372.36"
               'contract:
               'class-type?
               'value:
               _%klass132499%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass143680%_)
        (let ((_%klass143683%_ _%klass143680%_))
          (let ((__tmp147608
                 (let ((__tmp147609
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass143683%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp147609))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass143683%_
             __tmp147608
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass132633%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132633%_ 'class))
            (let ((_%klass132637%_ _%klass132633%_))
              (__class-type-seal! _%klass132637%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@375.25-375.30"
               'contract:
               'class-type?
               'value:
               _%klass132633%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass143613%_)
        (let ((_%klass143616%_ _%klass143613%_))
          (letrec ((_%get-field-vector143625%_
                    (lambda (_%type143664%_)
                      (let _%loop143666%_ ((_%type143668%_ _%type143664%_))
                        (let* ((_%fields143670%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type143668%_)))
                               (_%$e143672%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type143668%_))))
                          (if _%$e143672%_
                              ((lambda (_%super143675%_)
                                 (let ((_%super-fields143677%_
                                        (_%loop143666%_ _%super143675%_)))
                                   (vector-append
                                    _%super-fields143677%_
                                    _%fields143670%_)))
                               _%$e143672%_)
                              _%fields143670%_)))))
                   (_%get-printable-slot-alist143626%_
                    (lambda (_%type143647%_)
                      (let* ((_%fields143649%_
                              (_%get-field-vector143625%_ _%type143647%_))
                             (_%count143651%_
                              (vector-length _%fields143649%_)))
                        (let _%loop143654%_ ((_%i143656%_ '3)
                                             (_%offset143657%_ '1)
                                             (_%r143658%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i143656%_ _%count143651%_))
                              (let ((_%slot-name143660%_
                                     (vector-ref _%fields143649%_ _%i143656%_))
                                    (_%slot-flags143661%_
                                     (vector-ref
                                      _%fields143649%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i143656%_ '1))))
                                    (_%next-i143662%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i143656%_ '2))))
                                (if (let ((__tmp147610
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags143661%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp147610 '0))
                                    (_%loop143654%_
                                     _%next-i143662%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset143657%_ '1))
                                     _%r143658%_)
                                    (_%loop143654%_
                                     _%next-i143662%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset143657%_ '1))
                                     (cons (cons _%slot-name143660%_
                                                 _%offset143657%_)
                                           _%r143658%_))))
                              (reverse! _%r143658%_))))))
                   (_%get-printable-slots!143627%_
                    (lambda (_%klass143642%_ _%type143643%_)
                      (let ((_%printable143645%_
                             (_%get-printable-slot-alist143626%_
                              _%type143643%_)))
                        (##structure-set!
                         _%klass143642%_
                         (cons (cons 'printable-slots: _%printable143645%_)
                               (##structure-ref
                                _%klass143642%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable143645%_))))
            (let* ((_%props143629%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass143616%_ '9 '#f '#f)))
                   (_%$e143631%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props143629%_))))
              (if _%$e143631%_
                  _%$e143631%_
                  (let ((_%$e143634%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props143629%_))))
                    (if _%$e143634%_
                        ((lambda (_%g143636143638%_)
                           (_%get-printable-slots!143627%_
                            _%klass143616%_
                            _%g143636143638%_))
                         _%$e143634%_)
                        (_%get-printable-slots!143627%_
                         _%klass143616%_
                         _%klass143616%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass132767%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132767%_ 'class))
            (let ((_%klass132771%_ _%klass132767%_))
              (__class-type-printable-slots _%klass132771%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@382.35-382.40"
               'contract:
               'class-type?
               'value:
               _%klass132767%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct143582%_ _%maybe-super-struct143583%_)
        (let* ((_%maybe-sub-struct143586%_ _%maybe-sub-struct143582%_)
               (_%maybe-super-struct143594%_ _%maybe-super-struct143583%_)
               (_%maybe-super-struct-id143603%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct143594%_))))
          (let _%lp143605%_ ((_%super-struct143607%_
                              _%maybe-sub-struct143586%_))
            (if (not _%super-struct143607%_)
                '#f
                (if (eq? _%maybe-super-struct-id143603%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct143607%_)))
                    '#t
                    (_%lp143605%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct143607%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct132901%_ _%maybe-super-struct132902%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct132901%_ 'class))
            (let ((_%maybe-sub-struct132906%_ _%maybe-sub-struct132901%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct132902%_
                     'class))
                  (let ((_%maybe-super-struct132916%_
                         _%maybe-super-struct132902%_))
                    (__substruct?
                     _%maybe-sub-struct132906%_
                     _%maybe-super-struct132916%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@428.47-428.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct132902%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@428.19-428.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct132901%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass143560%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143560%_ 'class))
            (if (let* ((_%klass143563%_ _%klass143560%_)
                       (_%klass143568%_ _%klass143563%_))
                  (__class-type-struct? _%klass143568%_))
                _%klass143560%_
                (let () (declare (not safe)) (##type-super _%klass143560%_)))
            (if (not _%klass143560%_)
                '#f
                (error '"not a class or false" _%klass143560%_)))))
    (define base-struct/2
      (lambda (_%klass1143483%_ _%klass2143484%_)
        (let ((_%s1143486%_ (base-struct/1 _%klass1143483%_))
              (_%s2143487%_ (base-struct/1 _%klass2143484%_)))
          (if (or (not _%s1143486%_)
                  (and _%s2143487%_
                       (let* ((_%maybe-sub-struct143492%_ _%s1143486%_)
                              (_%maybe-super-struct143495%_ _%s2143487%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct143492%_
                                'class))
                             (let ((_%maybe-sub-struct143500%_
                                    _%maybe-sub-struct143492%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct143495%_
                                      'class))
                                   (let ((_%maybe-super-struct143514%_
                                          _%maybe-super-struct143495%_))
                                     (__substruct?
                                      _%maybe-sub-struct143500%_
                                      _%maybe-super-struct143514%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct143495%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct143492%_)
                               '#!void)))))
              _%s2143487%_
              (if (or (not _%s2143487%_)
                      (and _%s1143486%_
                           (let* ((_%maybe-sub-struct143528%_ _%s2143487%_)
                                  (_%maybe-super-struct143531%_ _%s1143486%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct143528%_
                                    'class))
                                 (let ((_%maybe-sub-struct143536%_
                                        _%maybe-sub-struct143528%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct143531%_
                                          'class))
                                       (let ((_%maybe-super-struct143548%_
                                              _%maybe-super-struct143531%_))
                                         (__substruct?
                                          _%maybe-sub-struct143536%_
                                          _%maybe-super-struct143548%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct143531%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct143528%_)
                                   '#!void)))))
                  _%s1143486%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1143483%_
                         _%klass2143484%_
                         _%s1143486%_
                         _%s2143487%_))))))
    (define base-struct/list
      (lambda (_%all-supers143368%_)
        (let* ((_%all-supers143369143394%_ _%all-supers143368%_)
               (_%E143374143398%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers143369143394%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K143392143480%_ (lambda () '#f))
                (_%K143389143466%_
                 (lambda (_%x143464%_) (base-struct/1 _%x143464%_)))
                (_%K143384143443%_
                 (lambda (_%y143440%_ _%x143441%_)
                   (base-struct/2 _%x143441%_ _%y143440%_)))
                (_%K143375143405%_
                 (lambda (_%y143402%_ _%x143403%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x143403%_ _%y143402%_)))))
            (let* ((_%__match146383146384%_
                    (lambda (_%hd143376143408%_ _%tl143377143410%_)
                      (let ((_%x143413%_ _%hd143376143408%_))
                        (letrec ((_%splice-rest143379143415%_
                                  (lambda (_%rest143383143422%_ _%y143424%_)
                                    (if (null? _%rest143383143422%_)
                                        (_%K143375143405%_
                                         _%y143424%_
                                         _%x143413%_)
                                        (_%E143374143398%_))))
                                 (_%splice-try143381143417%_
                                  (lambda (_%hd143382143426%_
                                           _%rest143383143428%_
                                           _%y143378143429%_)
                                    (let ((_%y143431%_ _%hd143382143426%_))
                                      (_%splice-loop143380143419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143383143428%_))
                                       (cons _%y143431%_ _%y143378143429%_)))))
                                 (_%splice-loop143380143419%_
                                  (lambda (_%rest143383143433%_
                                           _%y143378143434%_)
                                    (if (pair? _%rest143383143433%_)
                                        (_%splice-try143381143417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest143383143433%_))
                                         _%rest143383143433%_
                                         _%y143378143434%_)
                                        (_%splice-rest143379143415%_
                                         _%rest143383143433%_
                                         (reverse _%y143378143434%_))))))
                          (_%splice-loop143380143419%_
                           _%tl143377143410%_
                           '())))))
                   (_%try-match143371143476%_
                    (lambda ()
                      (if (pair? _%all-supers143369143394%_)
                          (let ((_%tl143391143471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers143369143394%_)))
                                (_%hd143390143469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers143369143394%_))))
                            (if (null? _%tl143391143471%_)
                                (let ((_%x143474%_ _%hd143390143469%_))
                                  (base-struct/1 _%x143474%_))
                                (if (pair? _%tl143391143471%_)
                                    (let ((_%tl143388143455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143391143471%_)))
                                          (_%hd143387143453%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143391143471%_))))
                                      (if (null? _%tl143388143455%_)
                                          (let ((_%x143451%_
                                                 _%hd143390143469%_)
                                                (_%y143458%_
                                                 _%hd143387143453%_))
                                            (_%K143384143443%_
                                             _%y143458%_
                                             _%x143451%_))
                                          (_%__match146383146384%_
                                           _%hd143390143469%_
                                           _%tl143391143471%_)))
                                    (_%__match146383146384%_
                                     _%hd143390143469%_
                                     _%tl143391143471%_))))
                          (_%E143374143398%_)))))
              (if (null? _%all-supers143369143394%_)
                  (_%K143392143480%_)
                  (_%try-match143371143476%_)))))))
    (define base-struct
      (lambda _%all-supers143366%_ (base-struct/list _%all-supers143366%_)))
    (define find-super-constructor
      (lambda (_%super143317%_)
        (let _%lp143319%_ ((_%rest143321%_ _%super143317%_)
                           (_%constructor143322%_ '#f))
          (let* ((_%rest143323143331%_ _%rest143321%_)
                 (_%else143325143339%_ (lambda () _%constructor143322%_))
                 (_%K143327143354%_
                  (lambda (_%rest143342%_ _%hd143343%_)
                    (let ((_%$e143345%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd143343%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e143345%_
                          ((lambda (_%xconstructor143348%_)
                             (if (or (not _%constructor143322%_)
                                     (eq? _%constructor143322%_
                                          _%xconstructor143348%_))
                                 (_%lp143319%_
                                  _%rest143342%_
                                  _%xconstructor143348%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor143322%_
                                        _%xconstructor143348%_)))
                           _%$e143345%_)
                          (_%lp143319%_
                           _%rest143342%_
                           _%constructor143322%_))))))
            (if (pair? _%rest143323143331%_)
                (let ((_%hd143328143357%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest143323143331%_)))
                      (_%tl143329143359%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest143323143331%_))))
                  (let* ((_%hd143362%_ _%hd143328143357%_)
                         (_%rest143364%_ _%tl143329143359%_))
                    (_%K143327143354%_ _%rest143364%_ _%hd143362%_)))
                (_%else143325143339%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list143273%_ _%direct-slots143274%_)
        (let* ((_%next-slot143276%_ '1)
               (_%slot-table143278%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots143280%_ '(__class))
               (_%process-slot143304%_
                (lambda (_%slot143282%_)
                  (if (symbol? _%slot143282%_)
                      '#!void
                      (error '"invalid slot name" _%slot143282%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table143278%_
                              _%slot143282%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table143278%_
                           _%slot143282%_
                           _%next-slot143276%_))
                        (let ((__tmp147611
                               (let ((_%sym143284%_ _%slot143282%_))
                                 (if (symbol? _%sym143284%_)
                                     (let ((_%sym143289%_ _%sym143284%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym143289%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym143284%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table143278%_
                           __tmp147611
                           _%next-slot143276%_))
                        (set! _%r-slots143280%_
                              (cons _%slot143282%_ _%r-slots143280%_))
                        (set! _%next-slot143276%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot143276%_ '1))))
                      '#!void)))
               (_%process-slots143310%_
                (lambda (_%g143305143307%_)
                  (for-each _%process-slot143304%_ _%g143305143307%_))))
          (let ((__tmp147613
                 (lambda (_%mixin143313%_)
                   (_%process-slots143310%_
                    (let ((__tmp147614
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin143313%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp147614 '())))))
                (__tmp147612 (reverse _%class-precedence-list143273%_)))
            (declare (not safe))
            (##for-each __tmp147613 __tmp147612))
          (_%process-slots143310%_ _%direct-slots143274%_)
          (let ((_%slot-vector143315%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots143280%_)))))
            (values _%slot-vector143315%_ _%slot-table143278%_)))))
    (define __make-class-type
      (lambda (_%id143100%_
               _%name143101%_
               _%direct-supers143102%_
               _%direct-slots143103%_
               _%properties143104%_
               _%constructor143105%_)
        (let* ((_%id143108%_ _%id143100%_)
               (_%name143116%_ _%name143101%_)
               (_%direct-supers143124%_ _%direct-supers143102%_)
               (_%direct-slots143132%_ _%direct-slots143103%_)
               (_%properties143140%_ _%properties143104%_)
               (_%constructor143148%_ _%constructor143105%_))
          (let ((_%$e143182%_
                 (let* ((_%pred143160%_
                         (lambda (_%$obj143157%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj143157%_
                                   'class)))))
                        (_%lst143163%_ _%direct-supers143124%_)
                        (_%pred143168%_ _%pred143160%_))
                   (declare (not safe))
                   (__find _%pred143168%_ _%lst143163%_))))
            (if _%$e143182%_
                ((lambda (_%g143184143186%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g143184143186%_))
                 _%$e143182%_)
                (let ((_%$e143209%_
                       (let* ((_%pred143189%_ __class-type-final?)
                              (_%lst143192%_ _%direct-supers143124%_)
                              (_%pred143197%_ _%pred143189%_))
                         (declare (not safe))
                         (__find _%pred143197%_ _%lst143192%_))))
                  (if _%$e143209%_
                      ((lambda (_%g143211143213%_)
                         (error '"Cannot extend final class"
                                _%g143211143213%_))
                       _%$e143209%_)
                      '#!void))))
          (let ((_g147615_ (compute-precedence-list _%direct-supers143124%_)))
            (begin
              (let ((_g147616_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g147615_)
                           (##values-length _g147615_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g147616_ 2)))
                    (error "Context expects 2 values" _g147616_)))
              (let ((_%precedence-list143216%_
                     (let () (declare (not safe)) (##values-ref _g147615_ 0)))
                    (_%struct-super143217%_
                     (let () (declare (not safe)) (##values-ref _g147615_ 1))))
                (let ((_g147617_
                       (compute-class-slots
                        _%precedence-list143216%_
                        _%direct-slots143132%_)))
                  (begin
                    (let ((_g147618_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g147617_)
                                 (##values-length _g147617_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g147618_ 2)))
                          (error "Context expects 2 values" _g147618_)))
                    (let ((_%slot-vector143219%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g147617_ 0)))
                          (_%slot-table143220%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g147617_ 1))))
                      (let* ((_%properties143222%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots143132%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers143124%_)
                                          _%properties143140%_)))
                             (_%constructor*143227%_
                              (let ((_%$e143224%_ _%constructor143148%_))
                                (if _%$e143224%_
                                    _%$e143224%_
                                    (find-super-constructor
                                     _%direct-supers143124%_))))
                             (_%precedence-list143270%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties143222%_))
                                      (memq object::t
                                            _%precedence-list143216%_))
                                  _%precedence-list143216%_
                                  (let _%loop143232%_ ((_%tail143234%_
                                                        _%precedence-list143216%_)
                                                       (_%head143235%_ '()))
                                    (let* ((_%tail143236143244%_
                                            _%tail143234%_)
                                           (_%else143238143252%_
                                            (lambda ()
                                              (let ((__tmp147619
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp147619
                                                 _%head143235%_))))
                                           (_%K143240143258%_
                                            (lambda (_%rest143255%_
                                                     _%hd143256%_)
                                              (if (eq? _%hd143256%_ t::t)
                                                  (let ((__tmp147620
                                                         (cons object::t
                                                               _%tail143234%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp147620
                                                     _%head143235%_))
                                                  (_%loop143232%_
                                                   _%rest143255%_
                                                   (cons _%hd143256%_
                                                         _%head143235%_))))))
                                      (if (pair? _%tail143236143244%_)
                                          (let ((_%hd143241143261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail143236143244%_)))
                                                (_%tl143242143263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail143236143244%_))))
                                            (let* ((_%hd143266%_
                                                    _%hd143241143261%_)
                                                   (_%rest143268%_
                                                    _%tl143242143263%_))
                                              (_%K143240143258%_
                                               _%rest143268%_
                                               _%hd143266%_)))
                                          (_%else143238143252%_)))))))
                        (make-class-type-descriptor
                         _%id143108%_
                         _%name143116%_
                         _%struct-super143217%_
                         _%precedence-list143270%_
                         _%slot-vector143219%_
                         _%properties143222%_
                         _%constructor*143227%_
                         _%slot-table143220%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id133046%_
               _%name133047%_
               _%direct-supers133048%_
               _%direct-slots133049%_
               _%properties133050%_
               _%constructor133051%_)
        (if (symbol? _%id133046%_)
            (let ((_%id133055%_ _%id133046%_))
              (if (symbol? _%name133047%_)
                  (let ((_%name133065%_ _%name133047%_))
                    (if (list? _%direct-supers133048%_)
                        (let ((_%direct-supers133075%_
                               _%direct-supers133048%_))
                          (if (list? _%direct-slots133049%_)
                              (let ((_%direct-slots133085%_
                                     _%direct-slots133049%_))
                                (if (list? _%properties133050%_)
                                    (let ((_%properties133095%_
                                           _%properties133050%_))
                                      (if ((lambda (_%$obj133104%_)
                                             (or (not _%$obj133104%_)
                                                 (symbol? _%$obj133104%_)))
                                           _%constructor133051%_)
                                          (let ((_%constructor133111%_
                                                 _%constructor133051%_))
                                            (__make-class-type
                                             _%id133055%_
                                             _%name133065%_
                                             _%direct-supers133075%_
                                             _%direct-slots133085%_
                                             _%properties133095%_
                                             _%constructor133111%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@525.24-525.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor133051%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@524.24-524.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties133050%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@523.24-523.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots133049%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@522.24-522.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers133048%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@521.24-521.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name133047%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@520.24-520.26"
               'contract:
               'symbol?
               'value:
               _%id133046%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass143088%_)
        (let ((_%klass143091%_ _%klass143088%_))
          (cons _%klass143091%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass143091%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass133241%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133241%_ 'class))
            (let ((_%klass133245%_ _%klass133241%_))
              (__class-precedence-list _%klass133245%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@558.30-558.35"
               'contract:
               'class-type?
               'value:
               _%klass133241%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers143085%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers143085%_))))
    (define __make-class-predicate
      (lambda (_%klass143001%_)
        (let* ((_%klass143004%_ _%klass143001%_)
               (_%tid143013%_
                (let () (declare (not safe)) (##type-id _%klass143004%_))))
          (if (let* ((_%type143015%_ _%klass143004%_)
                     (_%type143020%_ _%type143015%_))
                (__class-type-final? _%type143020%_))
              (lambda (_%g143034143036%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g143034143036%_
                   _%tid143013%_)))
              (if (let* ((_%klass143039%_ _%klass143004%_)
                         (_%klass143044%_ _%klass143039%_))
                    (__class-type-struct? _%klass143044%_))
                  (lambda (_%g143054143056%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g143054143056%_
                       _%tid143013%_)))
                  (lambda (_%g143059143061%_)
                    (let* ((_%klass143064%_ _%klass143004%_)
                           (_%obj143067%_ _%g143059143061%_)
                           (_%klass143072%_ _%klass143064%_))
                      (__class-instance? _%klass143072%_ _%obj143067%_))))))))
    (define make-class-predicate
      (lambda (_%klass133375%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133375%_ 'class))
            (let ((_%klass133379%_ _%klass133375%_))
              (__make-class-predicate _%klass133379%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@570.29-570.34"
               'contract:
               'class-type?
               'value:
               _%klass133375%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass142935%_ _%slot142936%_)
        (let* ((_%klass142939%_ _%klass142935%_)
               (_%slot142947%_ _%slot142936%_)
               (_%field142956%_
                (let ((__tmp147621
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142939%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp147621 _%slot142947%_ '#f))))
          (if (not _%field142956%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass142939%_
                       'slot:
                       _%slot142947%_)
                '#!void)
              (if (let* ((_%type142960%_ _%klass142939%_)
                         (_%type142965%_ _%type142960%_))
                    (__class-type-final? _%type142965%_))
                  (make-final-slot-accessor
                   _%klass142939%_
                   _%slot142947%_
                   _%field142956%_)
                  (if (let* ((_%klass142980%_ _%klass142939%_)
                             (_%klass142985%_ _%klass142980%_))
                        (__class-type-struct? _%klass142985%_))
                      (make-struct-slot-accessor
                       _%klass142939%_
                       _%slot142947%_
                       _%field142956%_)
                      (if (let ((_%strukt142996%_
                                 (base-struct/1 _%klass142939%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt142996%_
                                    'class))
                                 (let ((__tmp147622
                                        (let ((__tmp147623
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt142996%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp147623))))
                                   (declare (not safe))
                                   (##fx< _%field142956%_ __tmp147622))))
                          (make-struct-subclass-slot-accessor
                           _%klass142939%_
                           _%slot142947%_
                           _%field142956%_)
                          (make-class-cached-slot-accessor
                           _%klass142939%_
                           _%slot142947%_
                           _%field142956%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass133662%_ _%slot133663%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133662%_ 'class))
            (let ((_%klass133667%_ _%klass133662%_))
              (if (symbol? _%slot133663%_)
                  (let ((_%slot133677%_ _%slot133663%_))
                    (__make-class-slot-accessor
                     _%klass133667%_
                     _%slot133677%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@601.50-601.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot133663%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@601.33-601.38"
               'contract:
               'class-type?
               'value:
               _%klass133662%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass142869%_ _%slot142870%_)
        (let* ((_%klass142873%_ _%klass142869%_)
               (_%slot142881%_ _%slot142870%_)
               (_%field142890%_
                (let ((__tmp147624
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142873%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp147624 _%slot142881%_ '#f))))
          (if (not _%field142890%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass142873%_
                       'slot:
                       _%slot142881%_)
                '#!void)
              (if (let* ((_%type142894%_ _%klass142873%_)
                         (_%type142899%_ _%type142894%_))
                    (__class-type-final? _%type142899%_))
                  (make-final-slot-mutator
                   _%klass142873%_
                   _%slot142881%_
                   _%field142890%_)
                  (if (let* ((_%klass142914%_ _%klass142873%_)
                             (_%klass142919%_ _%klass142914%_))
                        (__class-type-struct? _%klass142919%_))
                      (make-struct-slot-mutator
                       _%klass142873%_
                       _%slot142881%_
                       _%field142890%_)
                      (if (let ((_%strukt142930%_
                                 (base-struct/1 _%klass142873%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt142930%_
                                    'class))
                                 (let ((__tmp147625
                                        (let ((__tmp147626
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt142930%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp147626))))
                                   (declare (not safe))
                                   (##fx< _%field142890%_ __tmp147625))))
                          (make-struct-subclass-slot-mutator
                           _%klass142873%_
                           _%slot142881%_
                           _%field142890%_)
                          (make-class-cached-slot-mutator
                           _%klass142873%_
                           _%slot142881%_
                           _%field142890%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass133807%_ _%slot133808%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133807%_ 'class))
            (let ((_%klass133812%_ _%klass133807%_))
              (if (symbol? _%slot133808%_)
                  (let ((_%slot133822%_ _%slot133808%_))
                    (__make-class-slot-mutator _%klass133812%_ _%slot133822%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@609.49-609.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot133808%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@609.32-609.37"
               'contract:
               'class-type?
               'value:
               _%klass133807%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass142803%_ _%slot142804%_)
        (let* ((_%klass142807%_ _%klass142803%_)
               (_%slot142815%_ _%slot142804%_)
               (_%field142824%_
                (let ((__tmp147627
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142807%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp147627 _%slot142815%_ '#f))))
          (if (not _%field142824%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass142807%_
                       'slot:
                       _%slot142815%_)
                '#!void)
              (if (let* ((_%type142828%_ _%klass142807%_)
                         (_%type142833%_ _%type142828%_))
                    (__class-type-final? _%type142833%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass142807%_
                   _%slot142815%_
                   _%field142824%_)
                  (if (let* ((_%klass142848%_ _%klass142807%_)
                             (_%klass142853%_ _%klass142848%_))
                        (__class-type-struct? _%klass142853%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass142807%_
                       _%slot142815%_
                       _%field142824%_)
                      (if (let ((_%strukt142864%_
                                 (base-struct/1 _%klass142807%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt142864%_
                                    'class))
                                 (let ((__tmp147628
                                        (let ((__tmp147629
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt142864%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp147629))))
                                   (declare (not safe))
                                   (##fx< _%field142824%_ __tmp147628))))
                          (make-struct-slot-unchecked-accessor
                           _%klass142807%_
                           _%slot142815%_
                           _%field142824%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass142807%_
                           _%slot142815%_
                           _%field142824%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass133952%_ _%slot133953%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133952%_ 'class))
            (let ((_%klass133957%_ _%klass133952%_))
              (if (symbol? _%slot133953%_)
                  (let ((_%slot133967%_ _%slot133953%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass133957%_
                     _%slot133967%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@617.60-617.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot133953%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.43-617.48"
               'contract:
               'class-type?
               'value:
               _%klass133952%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass142737%_ _%slot142738%_)
        (let* ((_%klass142741%_ _%klass142737%_)
               (_%slot142749%_ _%slot142738%_)
               (_%field142758%_
                (let ((__tmp147630
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142741%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp147630 _%slot142749%_ '#f))))
          (if (not _%field142758%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass142741%_
                       'slot:
                       _%slot142749%_)
                '#!void)
              (if (let* ((_%type142762%_ _%klass142741%_)
                         (_%type142767%_ _%type142762%_))
                    (__class-type-final? _%type142767%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass142741%_
                   _%slot142749%_
                   _%field142758%_)
                  (if (let* ((_%klass142782%_ _%klass142741%_)
                             (_%klass142787%_ _%klass142782%_))
                        (__class-type-struct? _%klass142787%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass142741%_
                       _%slot142749%_
                       _%field142758%_)
                      (if (let ((_%strukt142798%_
                                 (base-struct/1 _%klass142741%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt142798%_
                                    'class))
                                 (let ((__tmp147631
                                        (let ((__tmp147632
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt142798%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp147632))))
                                   (declare (not safe))
                                   (##fx< _%field142758%_ __tmp147631))))
                          (make-struct-slot-unchecked-mutator
                           _%klass142741%_
                           _%slot142749%_
                           _%field142758%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass142741%_
                           _%slot142749%_
                           _%field142758%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass134097%_ _%slot134098%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134097%_ 'class))
            (let ((_%klass134102%_ _%klass134097%_))
              (if (symbol? _%slot134098%_)
                  (let ((_%slot134112%_ _%slot134098%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass134102%_
                     _%slot134112%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@625.59-625.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot134098%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@625.42-625.47"
               'contract:
               'class-type?
               'value:
               _%klass134097%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object142721%_ _%class142722%_ _%slot142723%_)
        (apply error
               '"not an instance"
               'object:
               _%object142721%_
               'class:
               _%class142722%_
               (if _%slot142723%_
                   (cons 'slot: (cons _%slot142723%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object142728%_ _%class142729%_)
        (let ((_%slot142731%_ '#f))
          (not-an-instance__%
           _%object142728%_
           _%class142729%_
           _%slot142731%_))))
    (define not-an-instance
      (lambda _g147633_
        (let ((_g147634_ (let () (declare (not safe)) (##length _g147633_))))
          (cond ((let () (declare (not safe)) (##fx= _g147634_ 2))
                 (apply not-an-instance__0 _g147633_))
                ((let () (declare (not safe)) (##fx= _g147634_ 3))
                 (apply not-an-instance__% _g147633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g147633_))))))
    (define make-final-slot-accessor
      (lambda (_%klass142714%_ _%slot142715%_ _%field142716%_)
        (lambda (_%obj142718%_)
          (##direct-structure-ref
           _%obj142718%_
           _%field142716%_
           _%klass142714%_
           _%slot142715%_))))
    (define make-final-slot-mutator
      (lambda (_%klass142707%_ _%slot142708%_ _%field142709%_)
        (lambda (_%obj142711%_ _%val142712%_)
          (##direct-structure-set!
           _%obj142711%_
           _%val142712%_
           _%field142709%_
           _%klass142707%_
           _%slot142708%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass142701%_ _%slot142702%_ _%field142703%_)
        (lambda (_%obj142705%_)
          (##structure-ref
           _%obj142705%_
           _%field142703%_
           _%klass142701%_
           _%slot142702%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass142694%_ _%slot142695%_ _%field142696%_)
        (lambda (_%obj142698%_ _%val142699%_)
          (##structure-set!
           _%obj142698%_
           _%val142699%_
           _%field142696%_
           _%klass142694%_
           _%slot142695%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass142688%_ _%slot142689%_ _%field142690%_)
        (lambda (_%obj142692%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj142692%_
             _%field142690%_
             _%klass142688%_
             _%slot142689%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass142681%_ _%slot142682%_ _%field142683%_)
        (lambda (_%obj142685%_ _%val142686%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj142685%_
             _%val142686%_
             _%field142683%_
             _%klass142681%_
             _%slot142682%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass142654%_ _%slot142655%_ _%field142656%_)
        (lambda (_%obj142658%_)
          (if (let* ((_%klass142660%_ _%klass142654%_)
                     (_%obj142663%_ _%obj142658%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142660%_ 'class))
                    (let ((_%klass142668%_ _%klass142660%_))
                      (__class-instance? _%klass142668%_ _%obj142663%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142660%_)
                      '#!void)))
              (unchecked-slot-ref _%obj142658%_ _%field142656%_)
              (not-an-instance__%
               _%obj142658%_
               _%klass142654%_
               _%slot142655%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass142626%_ _%slot142627%_ _%field142628%_)
        (lambda (_%obj142630%_ _%val142631%_)
          (if (let* ((_%klass142633%_ _%klass142626%_)
                     (_%obj142636%_ _%obj142630%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142633%_ 'class))
                    (let ((_%klass142641%_ _%klass142633%_))
                      (__class-instance? _%klass142641%_ _%obj142636%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142633%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142630%_
               _%field142628%_
               _%val142631%_)
              (not-an-instance__%
               _%obj142630%_
               _%klass142626%_
               _%slot142627%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass142577%_ _%slot142578%_ _%field142579%_)
        (lambda (_%obj142581%_)
          (if (let* ((_%klass142583%_ _%klass142577%_)
                     (_%obj142586%_ _%obj142581%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142583%_ 'class))
                    (let ((_%klass142591%_ _%klass142583%_))
                      (__direct-instance? _%klass142591%_ _%obj142586%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142583%_)
                      '#!void)))
              (unchecked-field-ref _%obj142581%_ _%field142579%_)
              (if (let* ((_%klass142605%_ _%klass142577%_)
                         (_%obj142608%_ _%obj142581%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass142605%_ 'class))
                        (let ((_%klass142613%_ _%klass142605%_))
                          (__class-instance? _%klass142613%_ _%obj142608%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass142605%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj142581%_ _%slot142578%_)
                  (not-an-instance__%
                   _%obj142581%_
                   _%klass142577%_
                   _%slot142578%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass142527%_ _%slot142528%_ _%field142529%_)
        (lambda (_%obj142531%_ _%val142532%_)
          (if (let* ((_%klass142534%_ _%klass142527%_)
                     (_%obj142537%_ _%obj142531%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142534%_ 'class))
                    (let ((_%klass142542%_ _%klass142534%_))
                      (__direct-instance? _%klass142542%_ _%obj142537%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142534%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142531%_
               _%field142529%_
               _%val142532%_)
              (if (let* ((_%klass142556%_ _%klass142527%_)
                         (_%obj142559%_ _%obj142531%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass142556%_ 'class))
                        (let ((_%klass142564%_ _%klass142556%_))
                          (__class-instance? _%klass142564%_ _%obj142559%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass142556%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj142531%_
                   _%slot142528%_
                   _%val142532%_)
                  (not-an-instance__%
                   _%obj142531%_
                   _%klass142527%_
                   _%slot142528%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass142500%_ _%slot142501%_ _%field142502%_)
        (lambda (_%obj142504%_)
          (if (let* ((_%klass142506%_ _%klass142500%_)
                     (_%obj142509%_ _%obj142504%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142506%_ 'class))
                    (let ((_%klass142514%_ _%klass142506%_))
                      (__direct-instance? _%klass142514%_ _%obj142509%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142506%_)
                      '#!void)))
              (unchecked-field-ref _%obj142504%_ _%field142502%_)
              (unchecked-slot-ref _%obj142504%_ _%slot142501%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass142472%_ _%slot142473%_ _%field142474%_)
        (lambda (_%obj142476%_ _%val142477%_)
          (if (let* ((_%klass142479%_ _%klass142472%_)
                     (_%obj142482%_ _%obj142476%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142479%_ 'class))
                    (let ((_%klass142487%_ _%klass142479%_))
                      (__direct-instance? _%klass142487%_ _%obj142482%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142479%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142476%_
               _%field142474%_
               _%val142477%_)
              (unchecked-slot-set!
               _%obj142476%_
               _%slot142473%_
               _%val142477%_)))))
    (define __class-slot-offset
      (lambda (_%klass142451%_ _%slot142452%_)
        (let* ((_%klass142455%_ _%klass142451%_)
               (_%slot142463%_ _%slot142452%_)
               (__tmp147635
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass142455%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp147635 _%slot142463%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass134242%_ _%slot134243%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134242%_ 'class))
            (let ((_%klass134247%_ _%klass134242%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134243%_))
                  (let ((_%slot134257%_ _%slot134243%_))
                    (__class-slot-offset _%klass134247%_ _%slot134257%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@687.43-687.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134243%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@687.26-687.31"
               'contract:
               'class-type?
               'value:
               _%klass134242%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass142376%_ _%obj142377%_ _%slot142378%_)
        (let* ((_%klass142381%_ _%klass142376%_)
               (_%slot142389%_ _%slot142378%_))
          (if (let* ((_%klass142398%_ _%klass142381%_)
                     (_%obj142401%_ _%obj142377%_)
                     (_%klass142406%_ _%klass142398%_))
                (__class-instance? _%klass142406%_ _%obj142401%_))
              (let ((_%off142449%_
                     (let* ((_%klass142420%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj142377%_)))
                            (_%slot142423%_ _%slot142389%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass142420%_ 'class))
                           (let ((_%klass142428%_ _%klass142420%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot142423%_))
                                 (let ((_%slot142439%_ _%slot142423%_))
                                   (__class-slot-offset
                                    _%klass142428%_
                                    _%slot142439%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot142423%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass142420%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj142377%_
                 _%off142449%_
                 _%klass142381%_
                 _%slot142389%_))
              (not-an-instance__0 _%obj142377%_ _%klass142381%_)))))
    (define class-slot-ref
      (lambda (_%klass134387%_ _%obj134388%_ _%slot134389%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134387%_ 'class))
            (let ((_%klass134393%_ _%klass134387%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134389%_))
                  (let ((_%slot134403%_ _%slot134389%_))
                    (__class-slot-ref
                     _%klass134393%_
                     _%obj134388%_
                     _%slot134403%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.44-690.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134389%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.23-690.28"
               'contract:
               'class-type?
               'value:
               _%klass134387%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass142300%_ _%obj142301%_ _%slot142302%_ _%val142303%_)
        (let* ((_%klass142306%_ _%klass142300%_)
               (_%slot142314%_ _%slot142302%_))
          (if (let* ((_%klass142323%_ _%klass142306%_)
                     (_%obj142326%_ _%obj142301%_)
                     (_%klass142331%_ _%klass142323%_))
                (__class-instance? _%klass142331%_ _%obj142326%_))
              (let ((_%off142374%_
                     (let* ((_%klass142345%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj142301%_)))
                            (_%slot142348%_ _%slot142314%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass142345%_ 'class))
                           (let ((_%klass142353%_ _%klass142345%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot142348%_))
                                 (let ((_%slot142364%_ _%slot142348%_))
                                   (__class-slot-offset
                                    _%klass142353%_
                                    _%slot142364%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot142348%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass142345%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj142301%_
                 _%val142303%_
                 _%off142374%_
                 _%klass142306%_
                 _%slot142314%_))
              (not-an-instance__0 _%obj142301%_ _%klass142306%_)))))
    (define class-slot-set!
      (lambda (_%klass134533%_ _%obj134534%_ _%slot134535%_ _%val134536%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134533%_ 'class))
            (let ((_%klass134540%_ _%klass134533%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134535%_))
                  (let ((_%slot134550%_ _%slot134535%_))
                    (__class-slot-set!
                     _%klass134540%_
                     _%obj134534%_
                     _%slot134550%_
                     _%val134536%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.45-696.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134535%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.24-696.29"
               'contract:
               'class-type?
               'value:
               _%klass134533%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj142297%_ _%off142298%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj142297%_ _%off142298%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj142293%_ _%off142294%_ _%val142295%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj142293%_
           _%val142295%_
           _%off142294%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj142290%_ _%slot142291%_)
        (unchecked-field-ref
         _%obj142290%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj142290%_))
          _%slot142291%_))))
    (define unchecked-slot-set!
      (lambda (_%obj142286%_ _%slot142287%_ _%val142288%_)
        (unchecked-field-set!
         _%obj142286%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj142286%_))
          _%slot142287%_)
         _%val142288%_)))
    (define __slot-error
      (lambda (_%obj142283%_ _%slot142284%_)
        (error '"Cannot find slot"
               'object:
               _%obj142283%_
               'slot:
               _%slot142284%_)))
    (define __slot-ref__%
      (lambda (_%obj142207%_ _%slot142208%_ _%E142209%_)
        (let* ((_%slot142212%_ _%slot142208%_)
               (_%E142220%_ _%E142209%_)
               (_%klass142229%_ (class-of _%obj142207%_))
               (_%$e142265%_
                (let* ((_%klass142232%_ _%klass142229%_)
                       (_%slot142235%_ _%slot142212%_)
                       (_%klass142240%_ _%klass142232%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot142235%_))
                      (let ((_%slot142255%_ _%slot142235%_))
                        (__class-slot-offset _%klass142240%_ _%slot142255%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot142235%_)
                        '#!void)))))
          (if _%$e142265%_
              ((lambda (_%off142268%_)
                 (unchecked-field-ref _%obj142207%_ _%off142268%_))
               _%$e142265%_)
              (let ()
                (declare (not safe))
                (_%E142220%_ _%obj142207%_ _%slot142212%_))))))
    (define __slot-ref__0
      (lambda (_%obj142274%_ _%slot142275%_)
        (let ((_%E142277%_ __slot-error))
          (__slot-ref__% _%obj142274%_ _%slot142275%_ _%E142277%_))))
    (define __slot-ref
      (lambda _g147636_
        (let ((_g147637_ (let () (declare (not safe)) (##length _g147636_))))
          (cond ((let () (declare (not safe)) (##fx= _g147637_ 2))
                 (apply __slot-ref__0 _g147636_))
                ((let () (declare (not safe)) (##fx= _g147637_ 3))
                 (apply __slot-ref__% _g147636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g147636_))))))
    (define slot-ref__%
      (lambda (_%obj134798%_ _%slot134799%_ _%E134800%_)
        (if (symbol? _%slot134799%_)
            (let ((_%slot134804%_ _%slot134799%_))
              (if (procedure? _%E134800%_)
                  (let ((_%E134814%_ _%E134800%_))
                    (__slot-ref__% _%obj134798%_ _%slot134804%_ _%E134814%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@722.38-722.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E134800%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@722.21-722.25"
               'contract:
               'symbol?
               'value:
               _%slot134799%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj134827%_ _%slot134828%_)
        (let ((_%E134830%_ __slot-error))
          (slot-ref__% _%obj134827%_ _%slot134828%_ _%E134830%_))))
    (define slot-ref
      (lambda _g147638_
        (let ((_g147639_ (let () (declare (not safe)) (##length _g147638_))))
          (cond ((let () (declare (not safe)) (##fx= _g147639_ 2))
                 (apply slot-ref__0 _g147638_))
                ((let () (declare (not safe)) (##fx= _g147639_ 3))
                 (apply slot-ref__% _g147638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g147638_))))))
    (define __slot-set!__%
      (lambda (_%obj142127%_ _%slot142128%_ _%val142129%_ _%E142130%_)
        (let* ((_%slot142133%_ _%slot142128%_)
               (_%E142141%_ _%E142130%_)
               (_%klass142150%_ (class-of _%obj142127%_))
               (_%$e142186%_
                (let* ((_%klass142153%_ _%klass142150%_)
                       (_%slot142156%_ _%slot142133%_)
                       (_%klass142161%_ _%klass142153%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot142156%_))
                      (let ((_%slot142176%_ _%slot142156%_))
                        (__class-slot-offset _%klass142161%_ _%slot142176%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot142156%_)
                        '#!void)))))
          (if _%$e142186%_
              ((lambda (_%off142189%_)
                 (unchecked-field-set!
                  _%obj142127%_
                  _%off142189%_
                  _%val142129%_))
               _%$e142186%_)
              (let ()
                (declare (not safe))
                (_%E142141%_ _%obj142127%_ _%slot142133%_))))))
    (define __slot-set!__0
      (lambda (_%obj142195%_ _%slot142196%_ _%val142197%_)
        (let ((_%E142199%_ __slot-error))
          (__slot-set!__%
           _%obj142195%_
           _%slot142196%_
           _%val142197%_
           _%E142199%_))))
    (define __slot-set!
      (lambda _g147640_
        (let ((_g147641_ (let () (declare (not safe)) (##length _g147640_))))
          (cond ((let () (declare (not safe)) (##fx= _g147641_ 3))
                 (apply __slot-set!__0 _g147640_))
                ((let () (declare (not safe)) (##fx= _g147641_ 4))
                 (apply __slot-set!__% _g147640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g147640_))))))
    (define slot-set!__%
      (lambda (_%obj134957%_ _%slot134958%_ _%val134959%_ _%E134960%_)
        (if (symbol? _%slot134958%_)
            (let ((_%slot134964%_ _%slot134958%_))
              (if (procedure? _%E134960%_)
                  (let ((_%E134974%_ _%E134960%_))
                    (__slot-set!__%
                     _%obj134957%_
                     _%slot134964%_
                     _%val134959%_
                     _%E134974%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@724.43-724.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E134960%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@724.22-724.26"
               'contract:
               'symbol?
               'value:
               _%slot134958%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj134987%_ _%slot134988%_ _%val134989%_)
        (let ((_%E134991%_ __slot-error))
          (slot-set!__%
           _%obj134987%_
           _%slot134988%_
           _%val134989%_
           _%E134991%_))))
    (define slot-set!
      (lambda _g147642_
        (let ((_g147643_ (let () (declare (not safe)) (##length _g147642_))))
          (cond ((let () (declare (not safe)) (##fx= _g147643_ 3))
                 (apply slot-set!__0 _g147642_))
                ((let () (declare (not safe)) (##fx= _g147643_ 4))
                 (apply slot-set!__% _g147642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g147642_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class142098%_ _%maybe-super-class142099%_)
        (let* ((_%maybe-sub-class142102%_ _%maybe-sub-class142098%_)
               (_%maybe-super-class142110%_ _%maybe-super-class142099%_)
               (_%maybe-super-class-id142119%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class142110%_)))
               (_%$e142121%_
                (eq? _%maybe-super-class-id142119%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class142102%_)))))
          (if _%$e142121%_
              _%$e142121%_
              (let ((__tmp147645
                     (lambda (_%super-class142124%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class142124%_))
                            _%maybe-super-class-id142119%_)))
                    (__tmp147644
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class142102%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp147645 __tmp147644))))))
    (define subclass?
      (lambda (_%maybe-sub-class135118%_ _%maybe-super-class135119%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class135118%_ 'class))
            (let ((_%maybe-sub-class135123%_ _%maybe-sub-class135118%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class135119%_
                     'class))
                  (let ((_%maybe-super-class135133%_
                         _%maybe-super-class135119%_))
                    (__subclass?
                     _%maybe-sub-class135123%_
                     _%maybe-super-class135133%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@730.45-730.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class135119%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@730.18-730.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class135118%_)
              '#!void))))
    (define object?
      (lambda (_%o142095%_)
        (if (let () (declare (not safe)) (##structure? _%o142095%_))
            (let ((__tmp147646
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o142095%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp147646 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass142082%_ _%obj142083%_)
        (let* ((_%klass142086%_ _%klass142082%_)
               (__tmp147647
                (let () (declare (not safe)) (##type-id _%klass142086%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj142083%_ __tmp147647))))
    (define direct-instance?
      (lambda (_%klass135263%_ _%obj135264%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135263%_ 'class))
            (let ((_%klass135268%_ _%klass135263%_))
              (__direct-instance? _%klass135268%_ _%obj135264%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@744.25-744.30"
               'contract:
               'class-type?
               'value:
               _%klass135263%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass142078%_ _%obj142079%_)
        (if (let () (declare (not safe)) (##structure? _%obj142079%_))
            (eq? _%klass142078%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj142079%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass142065%_ _%obj142066%_)
        (let* ((_%klass142069%_ _%klass142065%_)
               (__tmp147648
                (let () (declare (not safe)) (##type-id _%klass142069%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj142066%_ __tmp147648))))
    (define struct-instance?
      (lambda (_%klass135398%_ _%obj135399%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135398%_ 'class))
            (let ((_%klass135403%_ _%klass135398%_))
              (__struct-instance? _%klass135403%_ _%obj135399%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@773.25-773.30"
               'contract:
               'class-type?
               'value:
               _%klass135398%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass142017%_ _%obj142018%_)
        (let* ((_%klass142021%_ _%klass142017%_)
               (_%type142030%_ (class-of _%obj142018%_))
               (_%maybe-sub-class142032%_ _%type142030%_)
               (_%maybe-super-class142035%_ _%klass142021%_)
               (_%maybe-sub-class142040%_ _%maybe-sub-class142032%_)
               (_%maybe-super-class142055%_ _%maybe-super-class142035%_))
          (__subclass?
           _%maybe-sub-class142040%_
           _%maybe-super-class142055%_))))
    (define class-instance?
      (lambda (_%klass135533%_ _%obj135534%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135533%_ 'class))
            (let ((_%klass135538%_ _%klass135533%_))
              (__class-instance? _%klass135538%_ _%obj135534%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.24-778.29"
               'contract:
               'class-type?
               'value:
               _%klass135533%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass141976%_ _%k141977%_)
        (let* ((_%klass141980%_ _%klass141976%_) (_%k141988%_ _%k141977%_))
          (if (let* ((_%klass141997%_ _%klass141980%_)
                     (_%klass142002%_ _%klass141997%_))
                (__class-type-system? _%klass142002%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass141980%_)
                '#!void)
              (let ((_%obj142015%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass141980%_ _%k141988%_))))
                (__object-fill! _%obj142015%_ '#f))))))
    (define make-object
      (lambda (_%klass135668%_ _%k135669%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135668%_ 'class))
            (let ((_%klass135673%_ _%klass135668%_))
              (if (fixnum? _%k135669%_)
                  (let ((_%k135683%_ _%k135669%_))
                    (__make-object _%klass135673%_ _%k135683%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@783.37-783.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k135669%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.20-783.25"
               'contract:
               'class-type?
               'value:
               _%klass135668%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj141964%_)
        (let ((_%obj141967%_ _%obj141964%_))
          (declare (not safe))
          (##structure-type _%obj141967%_))))
    (define object-class
      (lambda (_%obj135813%_)
        (if (object? _%obj135813%_)
            (let ((_%obj135817%_ _%obj135813%_))
              (__object-class _%obj135817%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.21-803.24"
               'contract:
               'object?
               'value:
               _%obj135813%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj141946%_ _%fill141947%_)
        (let ((_%obj141950%_ _%obj141946%_))
          (let _%loop141959%_ ((_%i141961%_
                                (let ((__tmp147649
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj141950%_))))
                                  (declare (not safe))
                                  (##fx- __tmp147649 '1))))
            (if (let () (declare (not safe)) (##fx> _%i141961%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj141950%_
                     _%fill141947%_
                     _%i141961%_
                     '#f
                     '#f))
                  (_%loop141959%_
                   (let () (declare (not safe)) (##fx- _%i141961%_ '1))))
                _%obj141950%_)))))
    (define object-fill!
      (lambda (_%obj135947%_ _%fill135948%_)
        (if (object? _%obj135947%_)
            (let ((_%obj135952%_ _%obj135947%_))
              (__object-fill! _%obj135952%_ _%fill135948%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@808.21-808.24"
               'contract:
               'object?
               'value:
               _%obj135947%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass141902%_)
        (let* ((_%klass141905%_ _%klass141902%_)
               (_%klass141914%_ _%klass141905%_)
               (_%k141917%_
                (let ((__tmp147650
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass141905%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp147650)))
               (_%klass141922%_ _%klass141914%_)
               (_%k141936%_ _%k141917%_))
          (__make-object _%klass141922%_ _%k141936%_))))
    (define new-instance
      (lambda (_%klass136082%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136082%_ 'class))
            (let ((_%klass136086%_ _%klass136082%_))
              (__new-instance _%klass136086%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@819.21-819.26"
               'contract:
               'class-type?
               'value:
               _%klass136082%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass141761%_ . _%args141762%_)
        (let* ((_%klass141765%_ _%klass141761%_)
               (_%$e141774%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141765%_ '10 '#f '#f))))
          (if _%$e141774%_
              ((lambda (_%kons-id141777%_)
                 (let ((_%obj141799%_
                        (let* ((_%klass141779%_ _%klass141765%_)
                               (_%klass141784%_ _%klass141779%_))
                          (__new-instance _%klass141784%_))))
                   (___constructor-init!
                    _%klass141765%_
                    _%kons-id141777%_
                    _%obj141799%_
                    _%args141762%_)
                   _%obj141799%_))
               _%$e141774%_)
              (if (let* ((_%klass141801%_ _%klass141765%_)
                         (_%klass141806%_ _%klass141801%_))
                    (__class-type-metaclass? _%klass141806%_))
                  (let ((_%obj141833%_
                         (let* ((_%klass141817%_ _%klass141765%_)
                                (_%klass141822%_ _%klass141817%_))
                           (__new-instance _%klass141822%_))))
                    (__metaclass-instance-init!
                     _%klass141765%_
                     _%obj141833%_
                     _%args141762%_)
                    _%obj141833%_)
                  (if (let* ((_%klass141835%_ _%klass141765%_)
                             (_%klass141840%_ _%klass141835%_))
                        (__class-type-struct? _%klass141840%_))
                      (if (let ((__tmp147652
                                 (let* ((_%klass141869%_ _%klass141765%_)
                                        (_%klass141874%_ _%klass141869%_))
                                   (__class-type-field-count _%klass141874%_)))
                                (__tmp147651
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args141762%_))))
                            (declare (not safe))
                            (##fx= __tmp147652 __tmp147651))
                          (apply ##structure _%klass141765%_ _%args141762%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass141765%_
                                   'slots:
                                   (let* ((_%klass141886%_ _%klass141765%_)
                                          (_%klass141891%_ _%klass141886%_))
                                     (__class-type-slot-list _%klass141891%_))
                                   'args:
                                   _%args141762%_)
                            '#!void))
                      (let ((_%obj141867%_
                             (let* ((_%klass141851%_ _%klass141765%_)
                                    (_%klass141856%_ _%klass141851%_))
                               (__new-instance _%klass141856%_))))
                        (___class-instance-init!
                         _%klass141765%_
                         _%obj141867%_
                         _%args141762%_)
                        _%obj141867%_)))))))
    (define make-instance
      (lambda (_%klass136216%_ . _%args136217%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136216%_ 'class))
            (let ((_%klass136221%_ _%klass136216%_))
              (declare (not safe))
              (##apply __make-instance _%klass136221%_ _%args136217%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.22-822.27"
               'contract:
               'class-type?
               'value:
               _%klass136216%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj141748%_ . _%args141749%_)
        (let ((_%obj141752%_ _%obj141748%_))
          (if (let ((__tmp147654
                     (let () (declare (not safe)) (##length _%args141749%_)))
                    (__tmp147653
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj141752%_))))
                (declare (not safe))
                (##fx< __tmp147654 __tmp147653))
              (___struct-instance-init! _%obj141752%_ _%args141749%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj141752%_
                     'args:
                     _%args141749%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj136351%_ . _%args136352%_)
        (if (object? _%obj136351%_)
            (let ((_%obj136356%_ _%obj136351%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj136356%_ _%args136352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@847.30-847.33"
               'contract:
               'object?
               'value:
               _%obj136351%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj141707%_ _%args141708%_)
        (let _%lp141710%_ ((_%k141712%_ '1) (_%rest141713%_ _%args141708%_))
          (let* ((_%rest141714141722%_ _%rest141713%_)
                 (_%else141716141730%_ (lambda () _%obj141707%_))
                 (_%K141718141736%_
                  (lambda (_%rest141733%_ _%hd141734%_)
                    (unchecked-field-set!
                     _%obj141707%_
                     _%k141712%_
                     _%hd141734%_)
                    (_%lp141710%_
                     (let () (declare (not safe)) (##fx+ _%k141712%_ '1))
                     _%rest141733%_))))
            (if (pair? _%rest141714141722%_)
                (let ((_%hd141719141739%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest141714141722%_)))
                      (_%tl141720141741%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest141714141722%_))))
                  (let* ((_%hd141744%_ _%hd141719141739%_)
                         (_%rest141746%_ _%tl141720141741%_))
                    (_%K141718141736%_ _%rest141746%_ _%hd141744%_)))
                (_%else141716141730%_))))))
    (define __class-instance-init!
      (lambda (_%obj141694%_ . _%args141695%_)
        (let ((_%obj141698%_ _%obj141694%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj141698%_))
           _%obj141698%_
           _%args141695%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj136486%_ . _%args136487%_)
        (if (object? _%obj136486%_)
            (let ((_%obj136491%_ _%obj136486%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj136491%_ _%args136487%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.32"
               'contract:
               'object?
               'value:
               _%obj136486%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass141636%_ _%obj141637%_ _%args141638%_)
        (let _%lp141640%_ ((_%rest141642%_ _%args141638%_))
          (let* ((_%rest141643141653%_ _%rest141642%_)
                 (_%else141645141661%_
                  (lambda ()
                    (if (null? _%rest141642%_)
                        _%obj141637%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass141636%_
                               'rest:
                               _%rest141642%_))))
                 (_%K141647141675%_
                  (lambda (_%rest141664%_ _%val141665%_ _%key141666%_)
                    (if (keyword? _%key141666%_)
                        (let ((_%$e141669%_
                               (__class-slot-offset
                                _%klass141636%_
                                _%key141666%_)))
                          (if _%$e141669%_
                              ((lambda (_%off141672%_)
                                 (unchecked-field-set!
                                  _%obj141637%_
                                  _%off141672%_
                                  _%val141665%_)
                                 (_%lp141640%_ _%rest141664%_))
                               _%$e141669%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass141636%_
                                     'slot:
                                     _%key141666%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key141666%_)))))
            (if (pair? _%rest141643141653%_)
                (let ((_%hd141648141678%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest141643141653%_)))
                      (_%tl141649141680%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest141643141653%_))))
                  (let ((_%key141683%_ _%hd141648141678%_))
                    (if (pair? _%tl141649141680%_)
                        (let ((_%hd141650141685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl141649141680%_)))
                              (_%tl141651141687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl141649141680%_))))
                          (let* ((_%val141690%_ _%hd141650141685%_)
                                 (_%rest141692%_ _%tl141651141687%_))
                            (_%K141647141675%_
                             _%rest141692%_
                             _%val141690%_
                             _%key141683%_)))
                        (_%else141645141661%_))))
                (_%else141645141661%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass141632%_ _%obj141633%_ _%args141634%_)
        (apply call-method
               _%klass141632%_
               'instance-init!
               _%obj141633%_
               _%args141634%_)))
    (define __constructor-init!
      (lambda (_%klass141601%_
               _%kons-id141602%_
               _%obj141603%_
               .
               _%args141604%_)
        (let* ((_%klass141607%_ _%klass141601%_)
               (_%kons-id141615%_ _%kons-id141602%_)
               (_%obj141623%_ _%obj141603%_))
          (___constructor-init!
           _%klass141607%_
           _%kons-id141615%_
           _%obj141623%_
           _%args141604%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass136621%_
               _%kons-id136622%_
               _%obj136623%_
               .
               _%args136624%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136621%_ 'class))
            (let ((_%klass136628%_ _%klass136621%_))
              (if (symbol? _%kons-id136622%_)
                  (let ((_%kons-id136638%_ _%kons-id136622%_))
                    (if (object? _%obj136623%_)
                        (let ((_%obj136648%_ _%obj136623%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass136628%_
                                   _%kons-id136638%_
                                   _%obj136648%_
                                   _%args136624%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@911.63-911.66"
                           'contract:
                           'object?
                           'value:
                           _%obj136623%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@911.43-911.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id136622%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.26-911.31"
               'contract:
               'class-type?
               'value:
               _%klass136621%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass141590%_ _%kons-id141591%_ _%obj141592%_ _%args141593%_)
        (let ((_%$e141595%_
               (__find-method
                _%klass141590%_
                _%obj141592%_
                _%kons-id141591%_)))
          (if _%$e141595%_
              ((lambda (_%kons141598%_)
                 (apply _%kons141598%_ _%obj141592%_ _%args141593%_)
                 _%obj141592%_)
               _%$e141595%_)
              (error '"missing constructor"
                     'class:
                     _%klass141590%_
                     'method:
                     _%kons-id141591%_)))))
    (define __struct-copy
      (lambda (_%struct141578%_)
        (let ((_%struct141581%_ _%struct141578%_))
          (declare (not safe))
          (##structure-copy _%struct141581%_))))
    (define struct-copy
      (lambda (_%struct136778%_)
        (if (object? _%struct136778%_)
            (let ((_%struct136782%_ _%struct136778%_))
              (__struct-copy _%struct136782%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.20-925.26"
               'contract:
               'object?
               'value:
               _%struct136778%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj141559%_)
        (let* ((_%obj141562%_ _%obj141559%_)
               (_%len141571%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj141562%_))))
          (let _%recur141573%_ ((_%i141575%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i141575%_ _%len141571%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj141562%_
                         _%i141575%_
                         '#f
                         '#f))
                      (_%recur141573%_
                       (let () (declare (not safe)) (##fx+ _%i141575%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj136912%_)
        (if (object? _%obj136912%_)
            (let ((_%obj136916%_ _%obj136912%_))
              (__struct->list _%obj136916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@928.21-928.24"
               'contract:
               'object?
               'value:
               _%obj136912%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj141511%_)
        (let* ((_%obj141514%_ _%obj141511%_)
               (_%klass141523%_
                (let () (declare (not safe)) (##structure-type _%obj141514%_)))
               (_%slot-vector141525%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141523%_ '7 '#f '#f))))
          (let _%loop141527%_ ((_%index141529%_
                                (let ((__tmp147655
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector141525%_))))
                                  (declare (not safe))
                                  (##fx- __tmp147655 '1)))
                               (_%plist141530%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index141529%_ '1))
                (cons _%klass141523%_ _%plist141530%_)
                (let ((_%slot141533%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector141525%_
                          _%index141529%_))))
                  (_%loop141527%_
                   (let () (declare (not safe)) (##fx- _%index141529%_ '1))
                   (cons (let ((_%sym141535%_ _%slot141533%_))
                           (if (symbol? _%sym141535%_)
                               (let ((_%sym141540%_ _%sym141535%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym141540%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym141535%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj141514%_
                                _%index141529%_)
                               _%plist141530%_)))))))))
    (define class->list
      (lambda (_%obj137046%_)
        (if (object? _%obj137046%_)
            (let ((_%obj137050%_ _%obj137046%_)) (__class->list _%obj137050%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.20-936.23"
               'contract:
               'object?
               'value:
               _%obj137046%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj141461%_ _%id141462%_ . _%args141463%_)
        (let* ((_%id141466%_ _%id141462%_)
               (_%$e141497%_
                (let* ((_%obj141475%_ _%obj141461%_)
                       (_%id141478%_ _%id141466%_)
                       (_%id141483%_ _%id141478%_))
                  (__method-ref _%obj141475%_ _%id141483%_))))
          (if _%$e141497%_
              ((lambda (_%method141500%_)
                 (let ((_%method141502%_ _%method141500%_))
                   (apply _%method141502%_ _%obj141461%_ _%args141463%_)))
               _%$e141497%_)
              (error '"cannot find method"
                     'object:
                     _%obj141461%_
                     'method:
                     _%id141466%_)))))
    (define call-method
      (lambda (_%obj137180%_ _%id137181%_ . _%args137182%_)
        (if (symbol? _%id137181%_)
            (let ((_%id137186%_ _%id137181%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj137180%_
                       _%id137186%_
                       _%args137182%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@951.24-951.26"
               'contract:
               'symbol?
               'value:
               _%id137181%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj141412%_ _%id141413%_)
        (let* ((_%id141416%_ _%id141413%_)
               (_%klass141425%_ (class-of _%obj141412%_))
               (_%obj141428%_ _%obj141412%_)
               (_%id141431%_ _%id141416%_)
               (_%klass141436%_ _%klass141425%_)
               (_%id141451%_ _%id141431%_))
          (__find-method _%klass141436%_ _%obj141428%_ _%id141451%_))))
    (define method-ref
      (lambda (_%obj137316%_ _%id137317%_)
        (if (symbol? _%id137317%_)
            (let ((_%id137321%_ _%id137317%_))
              (__method-ref _%obj137316%_ _%id137321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.23-978.25"
               'contract:
               'symbol?
               'value:
               _%id137317%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj141384%_ _%id141385%_)
        (let ((_%$e141409%_
               (let* ((_%obj141388%_ _%obj141384%_)
                      (_%id141391%_ _%id141385%_))
                 (if (symbol? _%id141391%_)
                     (let ((_%id141396%_ _%id141391%_))
                       (__method-ref _%obj141388%_ _%id141396%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id141391%_)
                       '#!void)))))
          (if _%$e141409%_
              _%$e141409%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj141384%_
                       'method:
                       _%id141385%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj141333%_ _%id141334%_)
        (let* ((_%id141337%_ _%id141334%_)
               (_%$e141368%_
                (let* ((_%obj141346%_ _%obj141333%_)
                       (_%id141349%_ _%id141337%_)
                       (_%id141354%_ _%id141349%_))
                  (__method-ref _%obj141346%_ _%id141354%_))))
          (if _%$e141368%_
              ((lambda (_%method141371%_)
                 (let ((_%method141373%_ _%method141371%_))
                   (lambda _%args141381%_
                     (apply _%method141373%_ _%obj141333%_ _%args141381%_))))
               _%$e141368%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj137451%_ _%id137452%_)
        (if (symbol? _%id137452%_)
            (let ((_%id137456%_ _%id137452%_))
              (__bound-method-ref _%obj137451%_ _%id137456%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.29-986.31"
               'contract:
               'symbol?
               'value:
               _%id137452%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj141316%_ _%id141317%_)
        (let* ((_%id141320%_ _%id141317%_)
               (_%method141329%_
                (checked-method-ref _%obj141316%_ _%id141320%_)))
          (lambda _%args141331%_
            (apply _%method141329%_ _%obj141316%_ _%args141331%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj137586%_ _%id137587%_)
        (if (symbol? _%id137587%_)
            (let ((_%id137591%_ _%id137587%_))
              (__checked-bound-method-ref _%obj137586%_ _%id137591%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.37-995.39"
               'contract:
               'symbol?
               'value:
               _%id137587%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass141185%_ _%obj141186%_ _%id141187%_)
        (let* ((_%klass141190%_ _%klass141185%_) (_%id141198%_ _%id141187%_))
          (if (let* ((_%klass141207%_ _%klass141190%_)
                     (_%klass141212%_ _%klass141207%_))
                (__class-type-sealed? _%klass141212%_))
              (let ((_%tab141242%_
                     (let* ((_%klass141226%_ _%klass141190%_)
                            (_%klass141231%_ _%klass141226%_))
                       (__specialize-class _%klass141231%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab141242%_ _%id141198%_ '#f))
              (let ((_%$e141277%_
                     (let* ((_%klass141244%_ _%klass141190%_)
                            (_%obj141247%_ _%obj141186%_)
                            (_%id141250%_ _%id141198%_)
                            (_%klass141255%_ _%klass141244%_)
                            (_%id141267%_ _%id141250%_))
                       (__direct-method-ref
                        _%klass141255%_
                        _%obj141247%_
                        _%id141267%_))))
                (if _%$e141277%_
                    _%$e141277%_
                    (let* ((_%klass141281%_ _%klass141190%_)
                           (_%obj141284%_ _%obj141186%_)
                           (_%id141287%_ _%id141198%_)
                           (_%klass141292%_ _%klass141281%_)
                           (_%id141306%_ _%id141287%_))
                      (__mixin-method-ref
                       _%klass141292%_
                       _%obj141284%_
                       _%id141306%_))))))))
    (define find-method
      (lambda (_%klass137721%_ _%obj137722%_ _%id137723%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137721%_ 'class))
            (let ((_%klass137727%_ _%klass137721%_))
              (if (symbol? _%id137723%_)
                  (let ((_%id137737%_ _%id137723%_))
                    (__find-method _%klass137727%_ _%obj137722%_ _%id137737%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1000.41-1000.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id137723%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1000.20-1000.25"
               'contract:
               'class-type?
               'value:
               _%klass137721%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins141130%_ _%obj141131%_ _%id141132%_)
        (let* ((_%id141135%_ _%id141132%_)
               (__tmp147656
                (lambda (_%g141143141145%_)
                  (let* ((_%klass141148%_ _%g141143141145%_)
                         (_%obj141151%_ _%obj141131%_)
                         (_%id141154%_ _%id141135%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass141148%_ 'class))
                        (let* ((_%klass141159%_ _%klass141148%_)
                               (_%id141175%_ _%id141154%_))
                          (__direct-method-ref
                           _%klass141159%_
                           _%obj141151%_
                           _%id141175%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass141148%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp147656 _%mixins141130%_))))
    (define mixin-find-method
      (lambda (_%mixins137867%_ _%obj137868%_ _%id137869%_)
        (if (symbol? _%id137869%_)
            (let ((_%id137873%_ _%id137869%_))
              (__mixin-find-method
               _%mixins137867%_
               _%obj137868%_
               _%id137873%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1009.37-1009.39"
               'contract:
               'symbol?
               'value:
               _%id137869%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass141023%_ _%obj141024%_ _%id141025%_)
        (let* ((_%klass141028%_ _%klass141023%_) (_%id141036%_ _%id141025%_))
          (letrec ((_%metaclass-resolve-method141045%_
                    (lambda ()
                      (let* ((_%obj141106%_ _%klass141028%_)
                             (_%id141109%_ 'direct-method-ref)
                             (_%args141112%_ (list _%obj141024%_ _%id141036%_))
                             (_%id141117%_ _%id141109%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj141106%_
                                 _%id141117%_
                                 _%args141112%_))))
                   (_%metaclass-resolve-method!141046%_
                    (lambda ()
                      (let ((_%method141103%_
                             (_%metaclass-resolve-method141045%_)))
                        (let ((__tmp147658
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass141028%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp147657
                               (if _%method141103%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp147658
                           _%id141036%_
                           __tmp147657))
                        _%method141103%_))))
            (let ((_%$e141048%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass141028%_ '11 '#f '#f))))
              (if _%$e141048%_
                  ((lambda (_%ht141051%_)
                     (let ((_%method141053%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht141051%_
                               _%id141036%_
                               '#f))))
                       (if (procedure? _%method141053%_)
                           _%method141053%_
                           (if (let* ((_%klass141056%_ _%klass141028%_)
                                      (_%klass141061%_ _%klass141056%_))
                                 (__class-type-metaclass? _%klass141061%_))
                               (let ((_%$e141079%_ _%method141053%_))
                                 (if (eq? 'resolved _%$e141079%_)
                                     (_%metaclass-resolve-method141045%_)
                                     (if (eq? 'unknown _%$e141079%_)
                                         '#f
                                         (_%metaclass-resolve-method!141046%_))))
                               '#f))))
                   _%$e141048%_)
                  (if (let* ((_%klass141083%_ _%klass141028%_)
                             (_%klass141088%_ _%klass141083%_))
                        (__class-type-metaclass? _%klass141088%_))
                      (let ((_%tab141099%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass141028%_
                           _%tab141099%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!141046%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass138003%_ _%obj138004%_ _%id138005%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138003%_ 'class))
            (let ((_%klass138009%_ _%klass138003%_))
              (if (symbol? _%id138005%_)
                  (let ((_%id138019%_ _%id138005%_))
                    (__direct-method-ref
                     _%klass138009%_
                     _%obj138004%_
                     _%id138019%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1012.47-1012.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id138005%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1012.26-1012.31"
               'contract:
               'class-type?
               'value:
               _%klass138003%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass140975%_ _%obj140976%_ _%id140977%_)
        (let* ((_%klass140980%_ _%klass140975%_)
               (_%id140988%_ _%id140977%_)
               (_%mixins140997%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140980%_ '6 '#f '#f)))
               (_%obj141000%_ _%obj140976%_)
               (_%id141003%_ _%id140988%_)
               (_%id141008%_ _%id141003%_))
          (__mixin-find-method _%mixins140997%_ _%obj141000%_ _%id141008%_))))
    (define mixin-method-ref
      (lambda (_%klass138149%_ _%obj138150%_ _%id138151%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138149%_ 'class))
            (let ((_%klass138155%_ _%klass138149%_))
              (if (symbol? _%id138151%_)
                  (let ((_%id138165%_ _%id138151%_))
                    (__mixin-method-ref
                     _%klass138155%_
                     _%obj138150%_
                     _%id138165%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1042.46-1042.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id138151%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.25-1042.30"
               'contract:
               'class-type?
               'value:
               _%klass138149%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass140885%_ _%id140886%_ _%proc140887%_ _%rebind?140888%_)
        (let* ((_%id140891%_ _%id140886%_) (_%proc140899%_ _%proc140887%_))
          (letrec ((_%bind!140908%_
                    (lambda (_%ht140959%_)
                      (if (and (not _%rebind?140888%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht140959%_
                                  _%id140891%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass140885%_
                                 'method:
                                 _%id140891%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht140959%_
                               _%id140891%_
                               _%proc140899%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass140885%_ 'class))
                (let ((_%ht140911%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140885%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht140911%_
                      (_%bind!140908%_ _%ht140911%_)
                      (let ((_%ht140913%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass140885%_
                           _%ht140913%_
                           '11
                           '#f
                           '#f))
                        (_%bind!140908%_ _%ht140913%_))))
                (if (let () (declare (not safe)) (##type? _%klass140885%_))
                    (let* ((_%klass140916%_
                            (__shadow-class__0 _%klass140885%_))
                           (_%id140919%_ _%id140891%_)
                           (_%proc140922%_ _%proc140899%_)
                           (_%rebind?140925%_ _%rebind?140888%_)
                           (_%id140930%_ _%id140919%_)
                           (_%proc140948%_ _%proc140922%_))
                      (__bind-method!__%
                       _%klass140916%_
                       _%id140930%_
                       _%proc140948%_
                       _%rebind?140925%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass140885%_)))))))
    (define __bind-method!__0
      (lambda (_%klass140964%_ _%id140965%_ _%proc140966%_)
        (let ((_%rebind?140968%_ '#f))
          (__bind-method!__%
           _%klass140964%_
           _%id140965%_
           _%proc140966%_
           _%rebind?140968%_))))
    (define __bind-method!
      (lambda _g147659_
        (let ((_g147660_ (let () (declare (not safe)) (##length _g147659_))))
          (cond ((let () (declare (not safe)) (##fx= _g147660_ 3))
                 (apply __bind-method!__0 _g147659_))
                ((let () (declare (not safe)) (##fx= _g147660_ 4))
                 (apply __bind-method!__% _g147659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g147659_))))))
    (define bind-method!__%
      (lambda (_%klass138296%_ _%id138297%_ _%proc138298%_ _%rebind?138299%_)
        (if (symbol? _%id138297%_)
            (let ((_%id138303%_ _%id138297%_))
              (if (procedure? _%proc138298%_)
                  (let ((_%proc138313%_ _%proc138298%_))
                    (__bind-method!__%
                     _%klass138296%_
                     _%id138303%_
                     _%proc138313%_
                     _%rebind?138299%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.42-1045.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc138298%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.27-1045.29"
               'contract:
               'symbol?
               'value:
               _%id138297%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass138326%_ _%id138327%_ _%proc138328%_)
        (let ((_%rebind?138330%_ '#f))
          (bind-method!__%
           _%klass138326%_
           _%id138327%_
           _%proc138328%_
           _%rebind?138330%_))))
    (define bind-method!
      (lambda _g147661_
        (let ((_g147662_ (let () (declare (not safe)) (##length _g147661_))))
          (cond ((let () (declare (not safe)) (##fx= _g147662_ 3))
                 (apply bind-method!__0 _g147661_))
                ((let () (declare (not safe)) (##fx= _g147662_ 4))
                 (apply bind-method!__% _g147661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g147661_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint140866%_ _%seed140867%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint140866%_
           procedure-hash
           eq?
           _%seed140867%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint140873%_ '#f) (_%seed140875%_ '0))
          (make-method-specializer-table__%
           _%size-hint140873%_
           _%seed140875%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint140877%_)
        (let ((_%seed140879%_ '0))
          (make-method-specializer-table__%
           _%size-hint140877%_
           _%seed140879%_))))
    (define make-method-specializer-table
      (lambda _g147663_
        (let ((_g147664_ (let () (declare (not safe)) (##length _g147663_))))
          (cond ((let () (declare (not safe)) (##fx= _g147664_ 0))
                 (apply make-method-specializer-table__0 _g147663_))
                ((let () (declare (not safe)) (##fx= _g147664_ 1))
                 (apply make-method-specializer-table__1 _g147663_))
                ((let () (declare (not safe)) (##fx= _g147664_ 2))
                 (apply make-method-specializer-table__% _g147663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g147663_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint140846%_ _%seed140848%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint140846%_
           procedure-hash
           eq?
           _%seed140848%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint140854%_ '#f) (_%seed140856%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint140854%_
           _%seed140856%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint140858%_)
        (let ((_%seed140860%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint140858%_
           _%seed140860%_))))
    (define make-method-specializer-table/lock
      (lambda _g147665_
        (let ((_g147666_ (let () (declare (not safe)) (##length _g147665_))))
          (cond ((let () (declare (not safe)) (##fx= _g147666_ 0))
                 (apply make-method-specializer-table/lock__0 _g147665_))
                ((let () (declare (not safe)) (##fx= _g147666_ 1))
                 (apply make-method-specializer-table/lock__1 _g147665_))
                ((let () (declare (not safe)) (##fx= _g147666_ 2))
                 (apply make-method-specializer-table/lock__% _g147665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g147665_))))))
    (define method-specializer-table-ref
      (lambda (_%tab140799%_ _%key140800%_ _%default140801%_)
        (let ((_%table140803%_
               (let () (declare (not safe)) (&raw-table-table _%tab140799%_)))
              (_%seed140804%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140799%_))))
          (let* ((_%h140806%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140800%_))
                         _%seed140804%_))
                 (_%size140809%_ (vector-length _%table140803%_))
                 (_%entries140812%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140809%_ '2)))
                 (_%start140815%_
                  (let ((__tmp147667
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140806%_ _%entries140812%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp147667 '1))))
            (let _%loop140819%_ ((_%probe140822%_ _%start140815%_)
                                 (_%i140824%_ '1)
                                 (_%deleted140826%_ '#f))
              (let ((_%k140829%_ (vector-ref _%table140803%_ _%probe140822%_)))
                (if (eq? _%k140829%_ (macro-unused-obj))
                    _%default140801%_
                    (if (eq? _%k140829%_ (macro-deleted-obj))
                        (_%loop140819%_
                         (let ((_%next-probe140834%_
                                (fx+ _%start140815%_
                                     _%i140824%_
                                     (fx* _%i140824%_ _%i140824%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140834%_ _%size140809%_))
                         (let () (declare (not safe)) (##fx+ _%i140824%_ '1))
                         (let ((_%$e140837%_ _%deleted140826%_))
                           (if _%$e140837%_ _%$e140837%_ _%probe140822%_)))
                        (if (eq? _%key140800%_ _%k140829%_)
                            (vector-ref
                             _%table140803%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe140822%_ '1)))
                            (_%loop140819%_
                             (let ((_%next-probe140842%_
                                    (fx+ _%start140815%_
                                         _%i140824%_
                                         (fx* _%i140824%_ _%i140824%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140842%_
                                _%size140809%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140824%_ '1))
                             _%deleted140826%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab140770%_ _%key140771%_ _%default140772%_)
        (let ((_%lock140774%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140770%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140779%_ ((_%spin140782%_ '0))
              (if (let ((__tmp147668
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140774%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp147668 '0))
                  (let ((__tmp147669 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140774%_ '1 __tmp147669))
                  (if (let () (declare (not safe)) (##fx< _%spin140782%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140779%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140782%_ '1))))
                      (let ((_%owner140788%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140774%_ '1))))
                        (if (eq? _%owner140788%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140788%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140779%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140794%_
                 (method-specializer-table-ref
                  _%tab140770%_
                  _%key140771%_
                  _%default140772%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140774%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140774%_ '0 '0 '1))))
            _%$r140794%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab140722%_ _%key140723%_ _%value140724%_)
        (let ((_%table140726%_
               (let () (declare (not safe)) (&raw-table-table _%tab140722%_)))
              (_%seed140727%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140722%_))))
          (let* ((_%h140729%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140723%_))
                         _%seed140727%_))
                 (_%size140732%_ (vector-length _%table140726%_))
                 (_%entries140735%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140732%_ '2)))
                 (_%start140738%_
                  (let ((__tmp147670
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140729%_ _%entries140735%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp147670 '1))))
            (let _%loop140742%_ ((_%probe140745%_ _%start140738%_)
                                 (_%i140747%_ '1)
                                 (_%deleted140749%_ '#f))
              (let ((_%k140752%_ (vector-ref _%table140726%_ _%probe140745%_)))
                (if (eq? _%k140752%_ (macro-unused-obj))
                    (if _%deleted140749%_
                        (begin
                          (vector-set!
                           _%table140726%_
                           _%deleted140749%_
                           _%key140723%_)
                          (vector-set!
                           _%table140726%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted140749%_ '1))
                           _%value140724%_)
                          ((lambda ()
                             (let ((__tmp147671
                                    (let ((__tmp147672
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab140722%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp147672 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab140722%_
                                __tmp147671)))))
                        (begin
                          (vector-set!
                           _%table140726%_
                           _%probe140745%_
                           _%key140723%_)
                          (vector-set!
                           _%table140726%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe140745%_ '1))
                           _%value140724%_)
                          ((lambda ()
                             (let ((__tmp147673
                                    (let ((__tmp147674
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab140722%_))))
                                      (declare (not safe))
                                      (##fx- __tmp147674 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab140722%_
                                __tmp147673))
                             (let ((__tmp147675
                                    (let ((__tmp147676
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab140722%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp147676 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab140722%_
                                __tmp147675))))))
                    (if (eq? _%k140752%_ (macro-deleted-obj))
                        (_%loop140742%_
                         (let ((_%next-probe140759%_
                                (fx+ _%start140738%_
                                     _%i140747%_
                                     (fx* _%i140747%_ _%i140747%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140759%_ _%size140732%_))
                         (let () (declare (not safe)) (##fx+ _%i140747%_ '1))
                         (let ((_%$e140762%_ _%deleted140749%_))
                           (if _%$e140762%_ _%$e140762%_ _%probe140745%_)))
                        (if (eq? _%key140723%_ _%k140752%_)
                            (let ()
                              (vector-set!
                               _%table140726%_
                               _%probe140745%_
                               _%key140723%_)
                              (vector-set!
                               _%table140726%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140745%_ '1))
                               _%value140724%_))
                            (_%loop140742%_
                             (let ((_%next-probe140767%_
                                    (fx+ _%start140738%_
                                         _%i140747%_
                                         (fx* _%i140747%_ _%i140747%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140767%_
                                _%size140732%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140747%_ '1))
                             _%deleted140749%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab140718%_ _%key140719%_ _%value140720%_)
        (if (let ((__tmp147679
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab140718%_)))
                  (__tmp147677
                   (let ((__tmp147678
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab140718%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp147678 '4))))
              (declare (not safe))
              (##fx< __tmp147679 __tmp147677))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab140718%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab140718%_
         _%key140719%_
         _%value140720%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab140688%_ _%key140689%_ _%value140690%_)
        (let ((_%lock140693%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140688%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140698%_ ((_%spin140701%_ '0))
              (if (let ((__tmp147680
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140693%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp147680 '0))
                  (let ((__tmp147681 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140693%_ '1 __tmp147681))
                  (if (let () (declare (not safe)) (##fx< _%spin140701%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140698%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140701%_ '1))))
                      (let ((_%owner140707%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140693%_ '1))))
                        (if (eq? _%owner140707%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140707%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140698%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140713%_
                 (method-specializer-table-set!
                  _%tab140688%_
                  _%key140689%_
                  _%value140690%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140693%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140693%_ '0 '0 '1))))
            _%$r140713%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab140639%_
               _%key140640%_
               _%method-specializer-table-update!140641%_
               _%default140642%_)
        (let ((_%table140644%_
               (let () (declare (not safe)) (&raw-table-table _%tab140639%_)))
              (_%seed140645%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140639%_))))
          (let* ((_%h140647%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140640%_))
                         _%seed140645%_))
                 (_%size140650%_ (vector-length _%table140644%_))
                 (_%entries140653%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140650%_ '2)))
                 (_%start140656%_
                  (let ((__tmp147682
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140647%_ _%entries140653%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp147682 '1))))
            (let _%loop140660%_ ((_%probe140663%_ _%start140656%_)
                                 (_%i140665%_ '1)
                                 (_%deleted140667%_ '#f))
              (let ((_%k140670%_ (vector-ref _%table140644%_ _%probe140663%_)))
                (if (eq? _%k140670%_ (macro-unused-obj))
                    (if _%deleted140667%_
                        (begin
                          (vector-set!
                           _%table140644%_
                           _%deleted140667%_
                           _%key140640%_)
                          (vector-set!
                           _%table140644%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted140667%_ '1))
                           (_%method-specializer-table-update!140641%_
                            _%default140642%_))
                          ((lambda ()
                             (let ((__tmp147683
                                    (let ((__tmp147684
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab140639%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp147684 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab140639%_
                                __tmp147683)))))
                        (begin
                          (vector-set!
                           _%table140644%_
                           _%probe140663%_
                           _%key140640%_)
                          (vector-set!
                           _%table140644%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe140663%_ '1))
                           (_%method-specializer-table-update!140641%_
                            _%default140642%_))
                          ((lambda ()
                             (let ((__tmp147685
                                    (let ((__tmp147686
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab140639%_))))
                                      (declare (not safe))
                                      (##fx- __tmp147686 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab140639%_
                                __tmp147685))
                             (let ((__tmp147687
                                    (let ((__tmp147688
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab140639%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp147688 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab140639%_
                                __tmp147687))))))
                    (if (eq? _%k140670%_ (macro-deleted-obj))
                        (_%loop140660%_
                         (let ((_%next-probe140677%_
                                (fx+ _%start140656%_
                                     _%i140665%_
                                     (fx* _%i140665%_ _%i140665%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140677%_ _%size140650%_))
                         (let () (declare (not safe)) (##fx+ _%i140665%_ '1))
                         (let ((_%$e140680%_ _%deleted140667%_))
                           (if _%$e140680%_ _%$e140680%_ _%probe140663%_)))
                        (if (eq? _%key140640%_ _%k140670%_)
                            (let ()
                              (vector-set!
                               _%table140644%_
                               _%probe140663%_
                               _%key140640%_)
                              (vector-set!
                               _%table140644%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140663%_ '1))
                               (_%method-specializer-table-update!140641%_
                                (vector-ref
                                 _%table140644%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe140663%_ '1))))))
                            (_%loop140660%_
                             (let ((_%next-probe140685%_
                                    (fx+ _%start140656%_
                                         _%i140665%_
                                         (fx* _%i140665%_ _%i140665%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140685%_
                                _%size140650%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140665%_ '1))
                             _%deleted140667%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab140634%_
               _%key140635%_
               _%method-specializer-table-update!140636%_
               _%default140637%_)
        (if (let ((__tmp147691
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab140634%_)))
                  (__tmp147689
                   (let ((__tmp147690
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab140634%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp147690 '4))))
              (declare (not safe))
              (##fx< __tmp147691 __tmp147689))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab140634%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab140634%_
         _%key140635%_
         _%method-specializer-table-update!140636%_
         _%default140637%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab140603%_
               _%key140604%_
               _%method-specializer-table-update!140605%_
               _%default140606%_)
        (let ((_%lock140609%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140603%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140614%_ ((_%spin140617%_ '0))
              (if (let ((__tmp147692
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140609%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp147692 '0))
                  (let ((__tmp147693 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140609%_ '1 __tmp147693))
                  (if (let () (declare (not safe)) (##fx< _%spin140617%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140614%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140617%_ '1))))
                      (let ((_%owner140623%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140609%_ '1))))
                        (if (eq? _%owner140623%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140623%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140614%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140629%_
                 (_%method-specializer-table-update!140605%_
                  _%tab140603%_
                  _%key140604%_
                  _%method-specializer-table-update!140605%_
                  _%default140606%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140609%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140609%_ '0 '0 '1))))
            _%$r140629%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab140560%_ _%key140561%_)
        (let ((_%table140563%_
               (let () (declare (not safe)) (&raw-table-table _%tab140560%_)))
              (_%seed140565%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140560%_))))
          (let* ((_%h140568%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140561%_))
                         _%seed140565%_))
                 (_%size140571%_ (vector-length _%table140563%_))
                 (_%entries140574%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140571%_ '2)))
                 (_%start140577%_
                  (let ((__tmp147694
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140568%_ _%entries140574%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp147694 '1))))
            (let _%loop140581%_ ((_%probe140584%_ _%start140577%_)
                                 (_%i140586%_ '1))
              (let ((_%k140589%_ (vector-ref _%table140563%_ _%probe140584%_)))
                (if (eq? _%k140589%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k140589%_ (macro-deleted-obj))
                        (_%loop140581%_
                         (let ((_%next-probe140594%_
                                (fx+ _%start140577%_
                                     _%i140586%_
                                     (fx* _%i140586%_ _%i140586%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140594%_ _%size140571%_))
                         (let () (declare (not safe)) (##fx+ _%i140586%_ '1)))
                        (if (eq? _%key140561%_ _%k140589%_)
                            (let ()
                              (vector-set!
                               _%table140563%_
                               _%probe140584%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table140563%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140584%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp147695
                                        (let ((__tmp147696
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab140560%_))))
                                          (declare (not safe))
                                          (##fx- __tmp147696 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab140560%_
                                    __tmp147695)))))
                            (_%loop140581%_
                             (let ((_%next-probe140600%_
                                    (fx+ _%start140577%_
                                         _%i140586%_
                                         (fx* _%i140586%_ _%i140586%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140600%_
                                _%size140571%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140586%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab140530%_ _%key140532%_)
        (let ((_%lock140535%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140530%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140540%_ ((_%spin140543%_ '0))
              (if (let ((__tmp147697
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140535%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp147697 '0))
                  (let ((__tmp147698 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140535%_ '1 __tmp147698))
                  (if (let () (declare (not safe)) (##fx< _%spin140543%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140540%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140543%_ '1))))
                      (let ((_%owner140549%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140535%_ '1))))
                        (if (eq? _%owner140549%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140549%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140540%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140555%_
                 (method-specializer-table-delete!
                  _%tab140530%_
                  _%key140532%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140535%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140535%_ '0 '0 '1))))
            _%$r140555%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc140527%_ _%specializer140528%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc140527%_
         _%specializer140528%_)))
    (define __lookup-method-specializer
      (lambda (_%proc140525%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc140525%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass140507%_)
        (let* ((_%klass140510%_ _%klass140507%_)
               (_%$e140519%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140510%_ '12 '#f '#f))))
          (if _%$e140519%_
              _%$e140519%_
              (let ((_%method-table140523%_
                     (___specialize-class _%klass140510%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass140510%_
                   _%method-table140523%_
                   '12
                   '#f
                   '#f))
                _%method-table140523%_)))))
    (define specialize-class
      (lambda (_%klass138457%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138457%_ 'class))
            (let ((_%klass138461%_ _%klass138457%_))
              (__specialize-class _%klass138461%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1095.25-1095.30"
               'contract:
               'class-type?
               'value:
               _%klass138457%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass140491%_
               _%method-table140492%_
               _%method140493%_
               _%proc140494%_)
        (let ((_%$e140496%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table140492%_
                  _%method140493%_
                  '#f))))
          (if _%$e140496%_
              _%$e140496%_
              (let ((_%$e140499%_
                     (__lookup-method-specializer _%proc140494%_)))
                (if _%$e140499%_
                    ((lambda (_%specialize140502%_)
                       (let ((_%specialized-proc140504%_
                              (_%specialize140502%_
                               _%klass140491%_
                               _%method-table140492%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table140492%_
                          _%method140493%_
                          _%specialized-proc140504%_)))
                     _%$e140499%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table140492%_
                       _%method140493%_
                       _%proc140494%_))))))))
    (define ___specialize-class
      (lambda (_%klass140358%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140358%_ 'class))
            (if (let* ((_%klass140361%_ _%klass140358%_)
                       (_%klass140366%_ _%klass140361%_))
                  (__class-type-metaclass? _%klass140366%_))
                (let* ((_%obj140378%_ _%klass140358%_)
                       (_%id140381%_ 'specialize-class)
                       (_%args140384%_ '())
                       (_%id140389%_ _%id140381%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj140378%_
                           _%id140389%_
                           _%args140384%_))
                (if (let* ((_%pred140402%_ class-type-metaclass?)
                           (_%lst140405%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass140358%_
                               '6
                               '#f
                               '#f)))
                           (_%pred140410%_ _%pred140402%_))
                      (declare (not safe))
                      (__find _%pred140410%_ _%lst140405%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass140358%_)
                    (let ((_%method-table140423%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop140425%_ ((_%rest140427%_
                                            (let* ((_%klass140474%_
                                                    _%klass140358%_)
                                                   (_%klass140479%_
                                                    _%klass140474%_))
                                              (__class-precedence-list
                                               _%klass140479%_))))
                        (let* ((_%rest140428140436%_ _%rest140427%_)
                               (_%else140430140444%_
                                (lambda () _%method-table140423%_))
                               (_%K140432140462%_
                                (lambda (_%rest140447%_ _%xklass140448%_)
                                  (let ((_%xmethod-table140449140451%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass140448%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table140449140451%_
                                        (let* ((_%xmethod-table140453%_
                                                _%xmethod-table140449140451%_)
                                               (__tmp147699
                                                (lambda (_%g140454140457%_
                                                         _%g140455140459%_)
                                                  (__specialize-method
                                                   _%klass140358%_
                                                   _%method-table140423%_
                                                   _%g140454140457%_
                                                   _%g140455140459%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table140453%_
                                           __tmp147699))
                                        '#f))
                                  (_%loop140425%_ _%rest140447%_))))
                          (if (pair? _%rest140428140436%_)
                              (let ((_%hd140433140465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140428140436%_)))
                                    (_%tl140434140467%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140428140436%_))))
                                (let* ((_%xklass140470%_ _%hd140433140465%_)
                                       (_%rest140472%_ _%tl140434140467%_))
                                  (_%K140432140462%_
                                   _%rest140472%_
                                   _%xklass140470%_)))
                              (_%else140430140444%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass140358%_))
                (__specialize-class (__shadow-class__0 _%klass140358%_))
                (error '"bad class; cannot specialize" _%klass140358%_)))))
    (define __seal-class!
      (lambda (_%klass140221%_)
        (let ((_%klass140224%_ _%klass140221%_))
          (if (let* ((_%klass140233%_ _%klass140224%_)
                     (_%klass140238%_ _%klass140233%_))
                (__class-type-sealed? _%klass140238%_))
              '#!void
              (begin
                (if (let* ((_%klass140251%_ _%klass140224%_)
                           (_%klass140256%_ _%klass140251%_))
                      (__class-type-metaclass? _%klass140256%_))
                    (let ()
                      (let* ((_%obj140267%_ _%klass140224%_)
                             (_%id140270%_ 'seal-class!)
                             (_%args140273%_ '())
                             (_%id140278%_ _%id140270%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj140267%_
                                 _%id140278%_
                                 _%args140273%_))
                      (let* ((_%klass140291%_ _%klass140224%_)
                             (_%klass140296%_ _%klass140291%_))
                        (__specialize-class _%klass140296%_)))
                    (if (let* ((_%pred140306%_ class-type-metaclass?)
                               (_%lst140309%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass140224%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred140314%_ _%pred140306%_))
                          (declare (not safe))
                          (__find _%pred140314%_ _%lst140309%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass140224%_)
                        (let* ((_%klass140327%_ _%klass140224%_)
                               (_%klass140332%_ _%klass140327%_))
                          (__specialize-class _%klass140332%_))))
                (let* ((_%klass140343%_ _%klass140224%_)
                       (_%klass140348%_ _%klass140343%_))
                  (__class-type-seal! _%klass140348%_)))))))
    (define seal-class!
      (lambda (_%klass138591%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138591%_ 'class))
            (let ((_%klass138595%_ _%klass138591%_))
              (__seal-class! _%klass138595%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1141.20-1141.25"
               'contract:
               'class-type?
               'value:
               _%klass138591%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass140109%_ _%obj140110%_ _%id140111%_)
        (let* ((_%subklass140114%_ _%subklass140109%_)
               (_%id140122%_ _%id140111%_))
          (letrec ((_%find-next-method140131%_
                    (lambda (_%klass140133%_)
                      (let _%lp140135%_ ((_%rest140137%_
                                          (let ((_%klass140206%_
                                                 _%klass140133%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass140206%_
                                                   'class))
                                                (let ((_%klass140211%_
                                                       _%klass140206%_))
                                                  (__class-precedence-list
                                                   _%klass140211%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass140206%_)
                                                  '#!void)))))
                        (let* ((_%rest140138140146%_ _%rest140137%_)
                               (_%else140140140154%_ (lambda () '#f))
                               (_%K140142140194%_
                                (lambda (_%rest140157%_ _%klass140158%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass140114%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass140158%_)))
                                      (let* ((_%mixins140160%_ _%rest140157%_)
                                             (_%obj140163%_ _%obj140110%_)
                                             (_%id140166%_ _%id140122%_)
                                             (_%id140171%_ _%id140166%_))
                                        (__mixin-find-method
                                         _%mixins140160%_
                                         _%obj140163%_
                                         _%id140171%_))
                                      (_%lp140135%_ _%rest140157%_)))))
                          (if (pair? _%rest140138140146%_)
                              (let ((_%hd140143140197%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140138140146%_)))
                                    (_%tl140144140199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140138140146%_))))
                                (let* ((_%klass140202%_ _%hd140143140197%_)
                                       (_%rest140204%_ _%tl140144140199%_))
                                  (_%K140142140194%_
                                   _%rest140204%_
                                   _%klass140202%_)))
                              (_%else140140140154%_)))))))
            (_%find-next-method140131%_ (class-of _%obj140110%_))))))
    (define next-method
      (lambda (_%subklass138725%_ _%obj138726%_ _%id138727%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass138725%_ 'class))
            (let ((_%subklass138731%_ _%subklass138725%_))
              (if (symbol? _%id138727%_)
                  (let ((_%id138741%_ _%id138727%_))
                    (__next-method
                     _%subklass138731%_
                     _%obj138726%_
                     _%id138741%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1163.44-1163.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id138727%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1163.20-1163.28"
               'contract:
               'class-type?
               'value:
               _%subklass138725%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass140044%_ _%obj140045%_ _%id140046%_ . _%args140047%_)
        (let* ((_%subklass140050%_ _%subklass140044%_)
               (_%id140058%_ _%id140046%_)
               (_%$e140103%_
                (let* ((_%subklass140067%_ _%subklass140050%_)
                       (_%obj140070%_ _%obj140045%_)
                       (_%id140073%_ _%id140058%_)
                       (_%subklass140078%_ _%subklass140067%_)
                       (_%id140093%_ _%id140073%_))
                  (__next-method
                   _%subklass140078%_
                   _%obj140070%_
                   _%id140093%_))))
          (if _%$e140103%_
              ((lambda (_%methodf140106%_)
                 (apply _%methodf140106%_ _%obj140045%_ _%args140047%_))
               _%$e140103%_)
              (error '"cannot find next method"
                     'object:
                     _%obj140045%_
                     'method:
                     _%id140058%_)))))
    (define call-next-method
      (lambda (_%subklass138871%_ _%obj138872%_ _%id138873%_ . _%args138874%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass138871%_ 'class))
            (let ((_%subklass138878%_ _%subklass138871%_))
              (if (symbol? _%id138873%_)
                  (let ((_%id138888%_ _%id138873%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass138878%_
                             _%obj138872%_
                             _%id138888%_
                             _%args138874%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1174.49-1174.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id138873%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.33"
               'contract:
               'class-type?
               'value:
               _%subklass138871%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type139823%_ _%properties139824%_)
        (letrec ((_%shadow-type-id139826%_
                  (lambda (_%type140032%_)
                    (let ((__tmp147700
                           (let ()
                             (declare (not safe))
                             (##type-name _%type140032%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp147700 '"::t"))))
                 (_%shadow-type-name139827%_
                  (lambda (_%type140030%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type140030%_))))
                 (_%make-shadow-class139828%_
                  (lambda (_%type139912%_ _%precedence-list139913%_)
                    (let* ((_%super139915%_
                            (if (pair? _%precedence-list139913%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list139913%_))
                                      '())
                                '()))
                           (_%klass140027%_
                            (let* ((_%id139917%_
                                    (_%shadow-type-id139826%_ _%type139912%_))
                                   (_%name139920%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type139912%_)))
                                   (_%direct-supers139923%_ _%super139915%_)
                                   (_%direct-slots139926%_ '())
                                   (_%properties139952%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type139912%_)
                                                      (let ((__tmp147701
                                                             (if (let ((_%type139929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type139912%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type139929%_))
                               (let ((_%type139934%_ _%type139929%_))
                                 (__type-extensible? _%type139934%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type139929%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties139824%_ __tmp147701))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor139955%_ '#f)
                                   (_%id139960%_ _%id139917%_))
                              (if (symbol? _%name139920%_)
                                  (let* ((_%name139971%_ _%name139920%_)
                                         (_%direct-supers139981%_
                                          _%direct-supers139923%_)
                                         (_%direct-slots139991%_
                                          _%direct-slots139926%_)
                                         (_%properties140001%_
                                          _%properties139952%_))
                                    (if ((lambda (_%$obj140010%_)
                                           (or (not _%$obj140010%_)
                                               (symbol? _%$obj140010%_)))
                                         _%constructor139955%_)
                                        (let ((_%constructor140017%_
                                               _%constructor139955%_))
                                          (__make-class-type
                                           _%id139960%_
                                           _%name139971%_
                                           _%direct-supers139981%_
                                           _%direct-slots139991%_
                                           _%properties140001%_
                                           _%constructor140017%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor139955%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name139920%_)
                                    '#!void)))))
                      (let ((__tmp147702
                             (let ()
                               (declare (not safe))
                               (##type-id _%type139912%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp147702
                         _%klass140027%_))
                      _%klass140027%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again139832%_ ((_%spin139835%_ '0))
              (if (let ((__tmp147703
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp147703 '0))
                  (let ((__tmp147704 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp147704))
                  (if (let () (declare (not safe)) (##fx< _%spin139835%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again139832%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin139835%_ '1))))
                      (let ((_%owner139841%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner139841%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner139841%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again139832%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e139847%_
                 (let ((__tmp147705
                        (let ()
                          (declare (not safe))
                          (##type-id _%type139823%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp147705 '#f))))
            (if _%$e139847%_
                ((lambda (_%klass139850%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass139850%_)
                 _%$e139847%_)
                (let _%loop139855%_ ((_%super139857%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type139823%_)))
                                     (_%hierarchy139858%_ '()))
                  (if (not _%super139857%_)
                      (let _%loop139861%_ ((_%rest139863%_ _%hierarchy139858%_)
                                           (_%precedence-list139864%_ '()))
                        (let* ((_%rest139865139873%_ _%rest139863%_)
                               (_%else139867139885%_
                                (lambda ()
                                  (let ((_%klass139881%_
                                         (_%make-shadow-class139828%_
                                          _%type139823%_
                                          _%precedence-list139864%_)))
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
                                    _%klass139881%_)))
                               (_%K139869139899%_
                                (lambda (_%rest139888%_ _%type139889%_)
                                  (let ((_%$e139891%_
                                         (let ((__tmp147706
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type139889%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp147706
                                            '#f))))
                                    (if _%$e139891%_
                                        ((lambda (_%klass139894%_)
                                           (_%loop139861%_
                                            _%rest139888%_
                                            (cons _%klass139894%_
                                                  _%precedence-list139864%_)))
                                         _%$e139891%_)
                                        (let ((_%klass139897%_
                                               (_%make-shadow-class139828%_
                                                _%type139889%_
                                                _%precedence-list139864%_)))
                                          (_%loop139861%_
                                           _%rest139888%_
                                           (cons _%klass139897%_
                                                 _%precedence-list139864%_))))))))
                          (if (pair? _%rest139865139873%_)
                              (let ((_%hd139870139902%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest139865139873%_)))
                                    (_%tl139871139904%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest139865139873%_))))
                                (let* ((_%type139907%_ _%hd139870139902%_)
                                       (_%rest139909%_ _%tl139871139904%_))
                                  (_%K139869139899%_
                                   _%rest139909%_
                                   _%type139907%_)))
                              (_%else139867139885%_))))
                      (_%loop139855%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super139857%_))
                       (cons _%super139857%_ _%hierarchy139858%_)))))))))
    (define __shadow-class__0
      (lambda (_%type140037%_)
        (let ((_%properties140039%_ '()))
          (__shadow-class__% _%type140037%_ _%properties140039%_))))
    (define __shadow-class
      (lambda _g147707_
        (let ((_g147708_ (let () (declare (not safe)) (##length _g147707_))))
          (cond ((let () (declare (not safe)) (##fx= _g147708_ 1))
                 (apply __shadow-class__0 _g147707_))
                ((let () (declare (not safe)) (##fx= _g147708_ 2))
                 (apply __shadow-class__% _g147707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g147707_))))))
    (define __type
      (let* ((_%tb139811%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e139813%_ _%tb139811%_))
        (if (eq? '2 _%$e139813%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e139813%_)
                (let ((_%flonum-self-tagging-tags139816%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits139817%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e139819%_ _%flonum-self-tagging-tags139816%_))
                    (if (eq? '0 _%$e139819%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits139817%_ '2))
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
                        (if (eq? '1 _%$e139819%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits139817%_ '2))
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
                            (if (eq? '2 _%$e139819%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e139819%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e139819%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags139816%_))))))))
                (error '"unexpected tag width" _%tb139811%_)))))
    (define __class
      (let* ((_%len139759%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv139761%_
              (let () (declare (not safe)) (##make-vector _%len139759%_ '#f))))
        (let _%loop139764%_ ((_%i139766%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i139766%_ _%len139759%_))
              (let* ((_%t139768%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i139766%_)))
                     (_%f139808%_
                      (if (eq? _%t139768%_ 'undefined)
                          (lambda (_%obj139771%_)
                            (error '"object type is undefined" _%obj139771%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t139768%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj139774%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t139768%_))
                              (if (eq? _%t139768%_ 'subtyped)
                                  (lambda (_%obj139778%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st139781%_
                                           (##subtype _%obj139778%_)))
                                      (if (##fx= _%st139781%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass139784%_
                                                 (##structure-type
                                                  _%obj139778%_)))
                                            (if (##structure-instance-of?
                                                 _%klass139784%_
                                                 'class)
                                                _%klass139784%_
                                                (__shadow-class__0
                                                 _%klass139784%_)))
                                          (if (##fx= _%st139781%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj139778%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e139787%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st139781%_)))
                                                (if _%$e139787%_
                                                    (__system-class
                                                     _%$e139787%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st139781%_
                                                           'object:
                                                           _%obj139778%_)))))))
                                  (if (eq? _%t139768%_ 'special)
                                      (lambda (_%obj139792%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj139792%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj139792%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj139792%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj139792%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj139792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj139792%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj139792%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj139792%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj139792%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj139792%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj139792%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t139768%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv139761%_ _%i139766%_ _%f139808%_))
                (_%loop139764%_
                 (let () (declare (not safe)) (##fx+ _%i139766%_ '1))))
              _%cv139761%_))))
    (define type-of
      (lambda (_%obj139755%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj139755%_)))))
    (define class-of
      (lambda (_%obj139746%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t139750%_ (##type _%obj139746%_))
                 (_%f139752%_ (##vector-ref __class _%t139750%_)))
            (_%f139752%_ _%obj139746%_)))))
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
      (lambda (_%id139740%_)
        (let ((_%$e139742%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id139740%_ '#f))))
          (if _%$e139742%_
              _%$e139742%_
              (error '"unknown system class" _%id139740%_)))))
    (define __make-system-class
      (lambda (_%id139642%_ _%super139643%_ _%properties139644%_)
        (let ((_%klass139738%_
               (let* ((_%id139646%_ _%id139642%_)
                      (_%name139649%_ _%id139642%_)
                      (_%direct-supers139652%_ _%super139643%_)
                      (_%direct-slots139655%_ '())
                      (_%properties139658%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties139644%_))))
                      (_%constructor139661%_ '#f))
                 (if (symbol? _%id139646%_)
                     (let ((_%id139666%_ _%id139646%_))
                       (if (symbol? _%name139649%_)
                           (let ((_%name139682%_ _%name139649%_))
                             (if (list? _%direct-supers139652%_)
                                 (let* ((_%direct-supers139692%_
                                         _%direct-supers139652%_)
                                        (_%direct-slots139702%_
                                         _%direct-slots139655%_)
                                        (_%properties139712%_
                                         _%properties139658%_))
                                   (if ((lambda (_%$obj139721%_)
                                          (or (not _%$obj139721%_)
                                              (symbol? _%$obj139721%_)))
                                        _%constructor139661%_)
                                       (let ((_%constructor139728%_
                                              _%constructor139661%_))
                                         (__make-class-type
                                          _%id139666%_
                                          _%name139682%_
                                          _%direct-supers139692%_
                                          _%direct-slots139702%_
                                          _%properties139712%_
                                          _%constructor139728%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor139661%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers139652%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name139649%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id139646%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id139642%_
             _%klass139738%_))
          _%klass139738%_)))))
