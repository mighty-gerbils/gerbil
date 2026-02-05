(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1770334637)
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
      (let ((_%flags115335%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties115336%_ '((direct-slots:) (system: . #t)))
            (_%slot-table115337%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags115335%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table115337%_
           _%properties115336%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots115311%_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods
                   specializer
                   interface))
             (_%slot-vector115313%_ (list->vector (cons '#f _%slots115311%_)))
             (_%slot-table115320%_
              (let ((_%slot-table115315%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp116910
                       (lambda (_%slot115317%_ _%field115318%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table115315%_
                            _%slot115317%_
                            _%field115318%_))
                         (let ((__tmp116911
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot115317%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table115315%_
                            __tmp116911
                            _%field115318%_))))
                      (__tmp116908
                       (let ((__tmp116909
                              (let ()
                                (declare (not safe))
                                (##length _%slots115311%_))))
                         (declare (not safe))
                         (##iota __tmp116909 '1))))
                  (declare (not safe))
                  (##for-each __tmp116910 _%slots115311%_ __tmp116908))
                _%slot-table115315%_))
             (_%flags115322%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields115328%_
              (list->vector
               (let ((__tmp116912
                      (map (lambda (_%g115323115325%_)
                             (list _%g115323115325%_ '5 '#f))
                           (drop _%slots115311%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp116912))))
             (_%properties115330%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots115311%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t115332%_
              (let ((__tmp116913 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags115322%_
                 ##type-type
                 _%fields115328%_
                 __tmp116913
                 _%slot-vector115313%_
                 _%slot-table115320%_
                 _%properties115330%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t115332%_ _%t115332%_))
        _%t115332%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags115307%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties115308%_ '((direct-slots:) (system: . #t)))
            (_%slot-table115309%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp116914 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags115307%_
           '#f
           '#()
           __tmp116914
           '#(#f)
           _%slot-table115309%_
           _%properties115308%_
           '#f
           '#f
           '#f
           '#f))))
    (define class-type
      (lambda (_%klass115293%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115293%_ 'class))
            (let ((_%klass115297%_ _%klass115293%_))
              (__class-type _%klass115297%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass115293%_)
              '#!void))))
    (define __class-type
      (lambda (_%klass115281%_)
        (let ((_%klass115284%_ _%klass115281%_))
          (declare (not safe))
          (##structure-type _%klass115284%_))))
    (define class-type?
      (lambda (_%obj115279%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj115279%_ 'class))))
    (define class-type=?
      (lambda (_%x115254%_ _%y115255%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x115254%_ 'class))
            (let ((_%x115259%_ _%x115254%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y115255%_ 'class))
                  (let ((_%y115269%_ _%y115255%_))
                    (__class-type=? _%x115259%_ _%y115269%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y115255%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x115254%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x115233%_ _%y115234%_)
        (let* ((_%x115237%_ _%x115233%_) (_%y115245%_ _%y115234%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x115237%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y115245%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type115219%_)
        (if (let () (declare (not safe)) (##type? _%type115219%_))
            (let ((_%type115223%_ _%type115219%_))
              (__type-opaque? _%type115223%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type115219%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type115207%_)
        (let* ((_%type115210%_ _%type115207%_)
               (__tmp116915
                (let ((__tmp116916
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type115210%_))))
                  (declare (not safe))
                  (##fxand __tmp116916 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp116915 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass115193%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115193%_ 'class))
            (let ((_%klass115197%_ _%klass115193%_))
              (__class-type-opaque? _%klass115197%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass115193%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass115181%_)
        (let* ((_%klass115184%_ _%klass115181%_)
               (__tmp116917
                (let ((__tmp116918
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass115184%_))))
                  (declare (not safe))
                  (##fxand __tmp116918 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp116917 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type115167%_)
        (if (let () (declare (not safe)) (##type? _%type115167%_))
            (let ((_%type115171%_ _%type115167%_))
              (__type-extensible? _%type115171%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type115167%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type115155%_)
        (let* ((_%type115158%_ _%type115155%_)
               (__tmp116919
                (let ((__tmp116920
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type115158%_))))
                  (declare (not safe))
                  (##fxand __tmp116920 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp116919 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type115141%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type115141%_ 'class))
            (let ((_%type115145%_ _%type115141%_))
              (__class-type-final? _%type115145%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type115141%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type115129%_)
        (let* ((_%type115132%_ _%type115129%_)
               (__tmp116921
                (let ((__tmp116922
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type115132%_))))
                  (declare (not safe))
                  (##fxand __tmp116922 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp116921 '0))))
    (define class-type-struct?
      (lambda (_%klass115115%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115115%_ 'class))
            (let ((_%klass115119%_ _%klass115115%_))
              (__class-type-struct? _%klass115119%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass115115%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass115103%_)
        (let* ((_%klass115106%_ _%klass115103%_)
               (__tmp116923
                (let ((__tmp116924
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass115106%_))))
                  (declare (not safe))
                  (##fxand __tmp116924 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp116923 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass115089%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115089%_ 'class))
            (let ((_%klass115093%_ _%klass115089%_))
              (__class-type-sealed? _%klass115093%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass115089%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass115077%_)
        (let* ((_%klass115080%_ _%klass115077%_)
               (__tmp116925
                (let ((__tmp116926
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass115080%_))))
                  (declare (not safe))
                  (##fxand __tmp116926 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp116925 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass115063%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115063%_ 'class))
            (let ((_%klass115067%_ _%klass115063%_))
              (__class-type-metaclass? _%klass115067%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass115063%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass115051%_)
        (let* ((_%klass115054%_ _%klass115051%_)
               (__tmp116927
                (let ((__tmp116928
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass115054%_))))
                  (declare (not safe))
                  (##fxand __tmp116928 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp116927 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass115037%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115037%_ 'class))
            (let ((_%klass115041%_ _%klass115037%_))
              (__class-type-system? _%klass115041%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass115037%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass115025%_)
        (let* ((_%klass115028%_ _%klass115025%_)
               (__tmp116929
                (let ((__tmp116930
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass115028%_))))
                  (declare (not safe))
                  (##fxand __tmp116930 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp116929 class-type-flag-system))))
    (define class-type-acyclic?
      (lambda (_%klass115011%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass115011%_ 'class))
            (let ((_%klass115015%_ _%klass115011%_))
              (__class-type-acyclic? _%klass115015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass115011%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass114999%_)
        (let* ((_%klass115002%_ _%klass114999%_)
               (__tmp116931
                (let ((__tmp116932
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass115002%_))))
                  (declare (not safe))
                  (##fxand __tmp116932 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp116931 class-type-flag-acyclic))))
    (define make-class-type-descriptor
      (lambda (_%type-id114880%_
               _%type-name114881%_
               _%type-super114882%_
               _%precedence-list114883%_
               _%slot-vector114884%_
               _%properties114885%_
               _%constructor114886%_
               _%slot-table114887%_
               _%methods114888%_)
        (letrec ((_%make-props!114891%_
                  (lambda (_%key114968%_)
                    (letrec* ((_%ht114970%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!114971%_
                               (lambda (_%ht114992%_ _%slots114993%_)
                                 (for-each
                                  (lambda (_%g114994114996%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht114992%_
                                       _%g114994114996%_
                                       '#t)))
                                  _%slots114993%_)))
                              (_%put-alist!114972%_
                               (lambda (_%ht114981%_
                                        _%key114982%_
                                        _%alist114983%_)
                                 (let ((_%$e114985%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key114982%_
                                           _%alist114983%_))))
                                   (if _%$e114985%_
                                       ((lambda (_%g114987114989%_)
                                          (_%put-slots!114971%_
                                           _%ht114981%_
                                           _%g114987114989%_))
                                        _%$e114985%_)
                                       '#!void)))))
                      (_%put-alist!114972%_
                       _%ht114970%_
                       _%key114968%_
                       _%properties114885%_)
                      (for-each
                       (lambda (_%mixin114974%_)
                         (let ((_%alist114976%_
                                (##structure-ref
                                 _%mixin114974%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist114976%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key114968%_
                                           _%alist114976%_))))
                               (_%put-slots!114971%_
                                _%ht114970%_
                                (class-type-slot-list _%mixin114974%_))
                               (_%put-alist!114972%_
                                _%ht114970%_
                                _%key114968%_
                                _%alist114976%_))))
                       _%precedence-list114883%_)
                      _%ht114970%_))))
          (let* ((_%transparent?114893%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties114885%_)))
                 (_%all-slots-printable?114898%_
                  (let ((_%$e114895%_ _%transparent?114893%_))
                    (if _%$e114895%_
                        _%$e114895%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties114885%_))))))
                 (_%printable114900%_
                  (if (not _%all-slots-printable?114898%_)
                      (_%make-props!114891%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?114905%_
                  (let ((_%$e114902%_ _%transparent?114893%_))
                    (if _%$e114902%_
                        _%$e114902%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties114885%_))))))
                 (_%equalable114907%_
                  (if (not _%all-slots-equalable?114905%_)
                      (_%make-props!114891%_ 'equal:)
                      '#f))
                 (_%first-new-field114909%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super114882%_ 'class))
                      (let ((__tmp116933
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super114882%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp116933))
                      '1))
                 (_%field-info-length114911%_
                  (let ((__tmp116934
                         (let ((__tmp116935
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector114884%_))))
                           (declare (not safe))
                           (##fx- __tmp116935 _%first-new-field114909%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp116934)))
                 (_%field-info114913%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length114911%_ '#f)))
                 (_%struct?114915%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties114885%_)))
                 (_%final?114917%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties114885%_)))
                 (_%metaclass114924%_
                  (let ((_%metaclass114918114920%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties114885%_))))
                    (if _%metaclass114918114920%_
                        (let ((_%metaclass114922%_ _%metaclass114918114920%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass114922%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id114880%_
                                     'metaclass:
                                     _%metaclass114922%_))
                          _%metaclass114922%_)
                        '#f)))
                 (_%system?114926%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties114885%_)))
                 (_%opaque?114934%_
                  (if (or _%transparent?114893%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties114885%_)))
                      '#f
                      (let ((_%$e114931%_ (not _%type-super114882%_)))
                        (if _%$e114931%_
                            _%$e114931%_
                            (__type-opaque? _%type-super114882%_)))))
                 (_%acyclic?114936%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties114885%_)))
                 (_%type-flags114938%_
                  (let ((__tmp116941
                         (if _%final?114917%_ '0 type-flag-extensible))
                        (__tmp116940
                         (if _%opaque?114934%_ type-flag-opaque '0))
                        (__tmp116939
                         (if _%struct?114915%_ class-type-flag-struct '0))
                        (__tmp116938
                         (if _%metaclass114924%_ class-type-flag-metaclass '0))
                        (__tmp116937
                         (if _%system?114926%_ class-type-flag-system '0))
                        (__tmp116936
                         (if _%acyclic?114936%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp116941
                             __tmp116940
                             __tmp116939
                             __tmp116938
                             __tmp116937
                             __tmp116936)))
                 (_%precedence-list114946%_
                  (let ((_%$e114940%_ (memq t::t _%precedence-list114883%_)))
                    (if _%$e114940%_
                        ((lambda (_%tail114943%_)
                           (if (null? (cdr _%tail114943%_))
                               _%precedence-list114883%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list114883%_)))
                         _%$e114940%_)
                        (let ((__tmp116942 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list114883%_ __tmp116942))))))
            (let _%loop114949%_ ((_%i114951%_ _%first-new-field114909%_)
                                 (_%j114952%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j114952%_ _%field-info-length114911%_))
                  (let* ((_%slot114954%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector114884%_ _%i114951%_)))
                         (_%flags114962%_
                          (if _%transparent?114893%_
                              '0
                              (let ((__tmp116944
                                     (if (or _%all-slots-printable?114898%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable114900%_
                                                _%slot114954%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp116943
                                     (if (or _%all-slots-equalable?114905%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable114907%_
                                                _%slot114954%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp116944 __tmp116943)))))
                    (vector-set!
                     _%field-info114913%_
                     _%j114952%_
                     _%slot114954%_)
                    (vector-set!
                     _%field-info114913%_
                     (let () (declare (not safe)) (##fx+ _%j114952%_ '1))
                     _%flags114962%_)
                    (_%loop114949%_
                     (let () (declare (not safe)) (##fx+ _%i114951%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j114952%_ '3))))
                  '#!void))
            (if _%metaclass114924%_
                (let ((_%val114965%_
                       (make-instance
                        _%metaclass114924%_
                        _%type-id114880%_
                        _%type-name114881%_
                        _%type-flags114938%_
                        _%type-super114882%_
                        _%field-info114913%_
                        _%precedence-list114946%_
                        _%slot-vector114884%_
                        _%slot-table114887%_
                        _%properties114885%_
                        _%constructor114886%_
                        _%methods114888%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val114965%_ 'class))
                      _%val114965%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val114965%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id114880%_
                   _%type-name114881%_
                   _%type-flags114938%_
                   _%type-super114882%_
                   _%field-info114913%_
                   _%precedence-list114946%_
                   _%slot-vector114884%_
                   _%slot-table114887%_
                   _%properties114885%_
                   _%constructor114886%_
                   _%methods114888%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass114878%_)
        (##structure-ref _%klass114878%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass114876%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass114876%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass114873%_ _%val114874%_)
        (##structure-set! _%klass114873%_ _%val114874%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass114868%_ _%val114870%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114868%_
           _%val114870%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass114866%_)
        (##structure-ref _%klass114866%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass114864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass114864%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass114861%_ _%val114862%_)
        (##structure-set! _%klass114861%_ _%val114862%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass114856%_ _%val114858%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114856%_
           _%val114858%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass114854%_)
        (##structure-ref _%klass114854%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass114852%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass114852%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass114849%_ _%val114850%_)
        (##structure-set! _%klass114849%_ _%val114850%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass114844%_ _%val114846%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114844%_
           _%val114846%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass114842%_)
        (##structure-ref _%klass114842%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass114840%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass114840%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass114837%_ _%val114838%_)
        (##structure-set! _%klass114837%_ _%val114838%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass114832%_ _%val114834%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114832%_
           _%val114834%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass114830%_)
        (##structure-ref _%klass114830%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass114828%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass114828%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass114825%_ _%val114826%_)
        (##structure-set! _%klass114825%_ _%val114826%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass114820%_ _%val114822%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114820%_
           _%val114822%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass114818%_)
        (##structure-ref _%klass114818%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass114816%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114816%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass114813%_ _%val114814%_)
        (##structure-set!
         _%klass114813%_
         _%val114814%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass114808%_ _%val114810%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114808%_
           _%val114810%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass114806%_)
        (##structure-ref _%klass114806%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass114804%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114804%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass114801%_ _%val114802%_)
        (##structure-set!
         _%klass114801%_
         _%val114802%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass114796%_ _%val114798%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114796%_
           _%val114798%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass114794%_)
        (##structure-ref _%klass114794%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass114792%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114792%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass114789%_ _%val114790%_)
        (##structure-set!
         _%klass114789%_
         _%val114790%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass114784%_ _%val114786%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114784%_
           _%val114786%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass114782%_)
        (##structure-ref _%klass114782%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass114780%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114780%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass114777%_ _%val114778%_)
        (##structure-set!
         _%klass114777%_
         _%val114778%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass114772%_ _%val114774%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114772%_
           _%val114774%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass114770%_)
        (##structure-ref _%klass114770%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass114768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114768%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass114765%_ _%val114766%_)
        (##structure-set!
         _%klass114765%_
         _%val114766%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass114760%_ _%val114762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114760%_
           _%val114762%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass114758%_)
        (##structure-ref _%klass114758%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass114756%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass114756%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass114753%_ _%val114754%_)
        (##structure-set!
         _%klass114753%_
         _%val114754%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass114748%_ _%val114750%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114748%_
           _%val114750%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass114746%_)
        (##structure-ref _%klass114746%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass114744%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114744%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass114741%_ _%val114742%_)
        (##structure-set!
         _%klass114741%_
         _%val114742%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass114736%_ _%val114738%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114736%_
           _%val114738%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass114734%_)
        (##structure-ref _%klass114734%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass114732%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass114732%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass114729%_ _%val114730%_)
        (##structure-set!
         _%klass114729%_
         _%val114730%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass114724%_ _%val114726%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass114724%_
           _%val114726%_
           '13
           class::t
           'interface))))
    (define class-type-slot-list
      (lambda (_%klass114710%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114710%_ 'class))
            (let ((_%klass114714%_ _%klass114710%_))
              (__class-type-slot-list _%klass114714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass114710%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass114698%_)
        (let ((_%klass114701%_ _%klass114698%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass114701%_ '7 '#f '#f))
           '1))))
    (define class-type-field-count
      (lambda (_%klass114684%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114684%_ 'class))
            (let ((_%klass114688%_ _%klass114684%_))
              (__class-type-field-count _%klass114688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass114684%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass114672%_)
        (let* ((_%klass114675%_ _%klass114672%_)
               (__tmp116945
                (let ((__tmp116946
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass114675%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp116946))))
          (declare (not safe))
          (##fx- __tmp116945 '1))))
    (define class-type-seal!
      (lambda (_%klass114658%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114658%_ 'class))
            (let ((_%klass114662%_ _%klass114658%_))
              (__class-type-seal! _%klass114662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass114658%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass114646%_)
        (let ((_%klass114649%_ _%klass114646%_))
          (let ((__tmp116947
                 (let ((__tmp116948
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass114649%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp116948))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass114649%_
             __tmp116947
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-printable-slots
      (lambda (_%klass114632%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114632%_ 'class))
            (let ((_%klass114636%_ _%klass114632%_))
              (__class-type-printable-slots _%klass114636%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass114632%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass114565%_)
        (let ((_%klass114568%_ _%klass114565%_))
          (letrec ((_%get-field-vector114577%_
                    (lambda (_%type114616%_)
                      (let _%loop114618%_ ((_%type114620%_ _%type114616%_))
                        (let* ((_%fields114622%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type114620%_)))
                               (_%$e114624%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type114620%_))))
                          (if _%$e114624%_
                              ((lambda (_%super114627%_)
                                 (let ((_%super-fields114629%_
                                        (_%loop114618%_ _%super114627%_)))
                                   (vector-append
                                    _%super-fields114629%_
                                    _%fields114622%_)))
                               _%$e114624%_)
                              _%fields114622%_)))))
                   (_%get-printable-slot-alist114578%_
                    (lambda (_%type114599%_)
                      (let* ((_%fields114601%_
                              (_%get-field-vector114577%_ _%type114599%_))
                             (_%count114603%_
                              (vector-length _%fields114601%_)))
                        (let _%loop114606%_ ((_%i114608%_ '3)
                                             (_%offset114609%_ '1)
                                             (_%r114610%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i114608%_ _%count114603%_))
                              (let ((_%slot-name114612%_
                                     (vector-ref _%fields114601%_ _%i114608%_))
                                    (_%slot-flags114613%_
                                     (vector-ref
                                      _%fields114601%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i114608%_ '1))))
                                    (_%next-i114614%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i114608%_ '2))))
                                (if (let ((__tmp116949
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags114613%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp116949 '0))
                                    (_%loop114606%_
                                     _%next-i114614%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset114609%_ '1))
                                     _%r114610%_)
                                    (_%loop114606%_
                                     _%next-i114614%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset114609%_ '1))
                                     (cons (cons _%slot-name114612%_
                                                 _%offset114609%_)
                                           _%r114610%_))))
                              (reverse! _%r114610%_))))))
                   (_%get-printable-slots!114579%_
                    (lambda (_%klass114594%_ _%type114595%_)
                      (let ((_%printable114597%_
                             (_%get-printable-slot-alist114578%_
                              _%type114595%_)))
                        (##structure-set!
                         _%klass114594%_
                         (cons (cons 'printable-slots: _%printable114597%_)
                               (##structure-ref
                                _%klass114594%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable114597%_))))
            (let* ((_%props114581%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass114568%_ '9 '#f '#f)))
                   (_%$e114583%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props114581%_))))
              (if _%$e114583%_
                  _%$e114583%_
                  (let ((_%$e114586%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props114581%_))))
                    (if _%$e114586%_
                        ((lambda (_%g114588114590%_)
                           (_%get-printable-slots!114579%_
                            _%klass114568%_
                            _%g114588114590%_))
                         _%$e114586%_)
                        (_%get-printable-slots!114579%_
                         _%klass114568%_
                         _%klass114568%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct114540%_ _%maybe-super-struct114541%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct114540%_ 'class))
            (let ((_%maybe-sub-struct114545%_ _%maybe-sub-struct114540%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct114541%_
                     'class))
                  (let ((_%maybe-super-struct114555%_
                         _%maybe-super-struct114541%_))
                    (__substruct?
                     _%maybe-sub-struct114545%_
                     _%maybe-super-struct114555%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct114541%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct114540%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct114509%_ _%maybe-super-struct114510%_)
        (let* ((_%maybe-sub-struct114513%_ _%maybe-sub-struct114509%_)
               (_%maybe-super-struct114521%_ _%maybe-super-struct114510%_)
               (_%maybe-super-struct-id114530%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct114521%_))))
          (let _%lp114532%_ ((_%super-struct114534%_
                              _%maybe-sub-struct114513%_))
            (if (not _%super-struct114534%_)
                '#f
                (if (eq? _%maybe-super-struct-id114530%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct114534%_)))
                    '#t
                    (_%lp114532%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct114534%_)))))))))
    (define base-struct/1
      (lambda (_%klass114504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114504%_ 'class))
            (if (__class-type-struct? _%klass114504%_)
                _%klass114504%_
                (let () (declare (not safe)) (##type-super _%klass114504%_)))
            (if (not _%klass114504%_)
                '#f
                (error '"not a class or false" _%klass114504%_)))))
    (define base-struct/2
      (lambda (_%klass1114489%_ _%klass2114490%_)
        (let ((_%s1114492%_ (base-struct/1 _%klass1114489%_))
              (_%s2114493%_ (base-struct/1 _%klass2114490%_)))
          (if (or (not _%s1114492%_)
                  (and _%s2114493%_ (substruct? _%s1114492%_ _%s2114493%_)))
              _%s2114493%_
              (if (or (not _%s2114493%_)
                      (and _%s1114492%_
                           (substruct? _%s2114493%_ _%s1114492%_)))
                  _%s1114492%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1114489%_
                         _%klass2114490%_
                         _%s1114492%_
                         _%s2114493%_))))))
    (define base-struct/list
      (lambda (_%all-supers114374%_)
        (let* ((_%all-supers114375114400%_ _%all-supers114374%_)
               (_%E114380114404%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers114375114400%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K114398114486%_ (lambda () '#f))
                (_%K114395114472%_
                 (lambda (_%x114470%_) (base-struct/1 _%x114470%_)))
                (_%K114390114449%_
                 (lambda (_%y114446%_ _%x114447%_)
                   (base-struct/2 _%x114447%_ _%y114446%_)))
                (_%K114381114411%_
                 (lambda (_%y114408%_ _%x114409%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x114409%_ _%y114408%_)))))
            (let* ((_%__match116758116759%_
                    (lambda (_%hd114382114414%_ _%tl114383114416%_)
                      (let ((_%x114419%_ _%hd114382114414%_))
                        (letrec ((_%splice-rest114385114421%_
                                  (lambda (_%rest114389114428%_ _%y114430%_)
                                    (if (null? _%rest114389114428%_)
                                        (_%K114381114411%_
                                         _%y114430%_
                                         _%x114419%_)
                                        (_%E114380114404%_))))
                                 (_%splice-try114387114423%_
                                  (lambda (_%hd114388114432%_
                                           _%rest114389114434%_
                                           _%y114384114435%_)
                                    (let ((_%y114437%_ _%hd114388114432%_))
                                      (_%splice-loop114386114425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest114389114434%_))
                                       (cons _%y114437%_ _%y114384114435%_)))))
                                 (_%splice-loop114386114425%_
                                  (lambda (_%rest114389114439%_
                                           _%y114384114440%_)
                                    (if (pair? _%rest114389114439%_)
                                        (_%splice-try114387114423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest114389114439%_))
                                         _%rest114389114439%_
                                         _%y114384114440%_)
                                        (_%splice-rest114385114421%_
                                         _%rest114389114439%_
                                         (reverse _%y114384114440%_))))))
                          (_%splice-loop114386114425%_
                           _%tl114383114416%_
                           '())))))
                   (_%try-match114377114482%_
                    (lambda ()
                      (if (pair? _%all-supers114375114400%_)
                          (let ((_%tl114397114477%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers114375114400%_)))
                                (_%hd114396114475%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers114375114400%_))))
                            (if (null? _%tl114397114477%_)
                                (let ((_%x114480%_ _%hd114396114475%_))
                                  (base-struct/1 _%x114480%_))
                                (if (pair? _%tl114397114477%_)
                                    (let ((_%tl114394114461%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl114397114477%_)))
                                          (_%hd114393114459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl114397114477%_))))
                                      (if (null? _%tl114394114461%_)
                                          (let ((_%x114457%_
                                                 _%hd114396114475%_)
                                                (_%y114464%_
                                                 _%hd114393114459%_))
                                            (_%K114390114449%_
                                             _%y114464%_
                                             _%x114457%_))
                                          (_%__match116758116759%_
                                           _%hd114396114475%_
                                           _%tl114397114477%_)))
                                    (_%__match116758116759%_
                                     _%hd114396114475%_
                                     _%tl114397114477%_))))
                          (_%E114380114404%_)))))
              (if (null? _%all-supers114375114400%_)
                  (_%K114398114486%_)
                  (_%try-match114377114482%_)))))))
    (define base-struct
      (lambda _%all-supers114372%_ (base-struct/list _%all-supers114372%_)))
    (define find-super-constructor
      (lambda (_%super114323%_)
        (let _%lp114325%_ ((_%rest114327%_ _%super114323%_)
                           (_%constructor114328%_ '#f))
          (let* ((_%rest114329114337%_ _%rest114327%_)
                 (_%else114331114345%_ (lambda () _%constructor114328%_))
                 (_%K114333114360%_
                  (lambda (_%rest114348%_ _%hd114349%_)
                    (let ((_%$e114351%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd114349%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e114351%_
                          ((lambda (_%xconstructor114354%_)
                             (if (or (not _%constructor114328%_)
                                     (eq? _%constructor114328%_
                                          _%xconstructor114354%_))
                                 (_%lp114325%_
                                  _%rest114348%_
                                  _%xconstructor114354%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor114328%_
                                        _%xconstructor114354%_)))
                           _%$e114351%_)
                          (_%lp114325%_
                           _%rest114348%_
                           _%constructor114328%_))))))
            (if (pair? _%rest114329114337%_)
                (let ((_%hd114334114363%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest114329114337%_)))
                      (_%tl114335114365%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest114329114337%_))))
                  (let* ((_%hd114368%_ _%hd114334114363%_)
                         (_%rest114370%_ _%tl114335114365%_))
                    (_%K114333114360%_ _%rest114370%_ _%hd114368%_)))
                (_%else114331114345%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list114299%_ _%direct-slots114300%_)
        (let* ((_%next-slot114302%_ '1)
               (_%slot-table114304%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots114306%_ '(__class))
               (_%process-slot114310%_
                (lambda (_%slot114308%_)
                  (if (symbol? _%slot114308%_)
                      '#!void
                      (error '"invalid slot name" _%slot114308%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table114304%_
                              _%slot114308%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table114304%_
                           _%slot114308%_
                           _%next-slot114302%_))
                        (let ((__tmp116950
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot114308%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table114304%_
                           __tmp116950
                           _%next-slot114302%_))
                        (set! _%r-slots114306%_
                              (cons _%slot114308%_ _%r-slots114306%_))
                        (set! _%next-slot114302%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot114302%_ '1))))
                      '#!void)))
               (_%process-slots114316%_
                (lambda (_%g114311114313%_)
                  (for-each _%process-slot114310%_ _%g114311114313%_))))
          (let ((__tmp116952
                 (lambda (_%mixin114319%_)
                   (_%process-slots114316%_
                    (let ((__tmp116953
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin114319%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp116953 '())))))
                (__tmp116951 (reverse _%class-precedence-list114299%_)))
            (declare (not safe))
            (##for-each __tmp116952 __tmp116951))
          (_%process-slots114316%_ _%direct-slots114300%_)
          (let ((_%slot-vector114321%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots114306%_)))))
            (values _%slot-vector114321%_ _%slot-table114304%_)))))
    (define make-class-type
      (lambda (_%id114224%_
               _%name114225%_
               _%direct-supers114226%_
               _%direct-slots114227%_
               _%properties114228%_
               _%constructor114229%_)
        (if (symbol? _%id114224%_)
            (let ((_%id114233%_ _%id114224%_))
              (if (symbol? _%name114225%_)
                  (let ((_%name114243%_ _%name114225%_))
                    (if (list? _%direct-supers114226%_)
                        (let ((_%direct-supers114253%_
                               _%direct-supers114226%_))
                          (if (list? _%direct-slots114227%_)
                              (let ((_%direct-slots114263%_
                                     _%direct-slots114227%_))
                                (if (list? _%properties114228%_)
                                    (let ((_%properties114273%_
                                           _%properties114228%_))
                                      (if ((lambda (_%$obj114282%_)
                                             (or (not _%$obj114282%_)
                                                 (symbol? _%$obj114282%_)))
                                           _%constructor114229%_)
                                          (let ((_%constructor114289%_
                                                 _%constructor114229%_))
                                            (__make-class-type
                                             _%id114233%_
                                             _%name114243%_
                                             _%direct-supers114253%_
                                             _%direct-slots114263%_
                                             _%properties114273%_
                                             _%constructor114289%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor114229%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties114228%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots114227%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers114226%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name114225%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id114224%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id114093%_
               _%name114094%_
               _%direct-supers114095%_
               _%direct-slots114096%_
               _%properties114097%_
               _%constructor114098%_)
        (let* ((_%id114101%_ _%id114093%_)
               (_%name114109%_ _%name114094%_)
               (_%direct-supers114117%_ _%direct-supers114095%_)
               (_%direct-slots114125%_ _%direct-slots114096%_)
               (_%properties114133%_ _%properties114097%_)
               (_%constructor114141%_ _%constructor114098%_))
          (let ((_%$e114153%_
                 (let ((__tmp116954
                        (lambda (_%$obj114150%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj114150%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp116954 _%direct-supers114117%_))))
            (if _%$e114153%_
                ((lambda (_%g114155114157%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g114155114157%_))
                 _%$e114153%_)
                (let ((_%$e114160%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers114117%_))))
                  (if _%$e114160%_
                      ((lambda (_%g114162114164%_)
                         (error '"Cannot extend final class"
                                _%g114162114164%_))
                       _%$e114160%_)
                      '#!void))))
          (let ((_g116955_ (compute-precedence-list _%direct-supers114117%_)))
            (begin
              (let ((_g116956_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g116955_)
                           (##values-length _g116955_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g116956_ 2)))
                    (error "Context expects 2 values" _g116956_)))
              (let ((_%precedence-list114167%_
                     (let () (declare (not safe)) (##values-ref _g116955_ 0)))
                    (_%struct-super114168%_
                     (let () (declare (not safe)) (##values-ref _g116955_ 1))))
                (let ((_g116957_
                       (compute-class-slots
                        _%precedence-list114167%_
                        _%direct-slots114125%_)))
                  (begin
                    (let ((_g116958_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g116957_)
                                 (##values-length _g116957_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g116958_ 2)))
                          (error "Context expects 2 values" _g116958_)))
                    (let ((_%slot-vector114170%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g116957_ 0)))
                          (_%slot-table114171%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g116957_ 1))))
                      (let* ((_%properties114173%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots114125%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers114117%_)
                                          _%properties114133%_)))
                             (_%constructor*114178%_
                              (let ((_%$e114175%_ _%constructor114141%_))
                                (if _%$e114175%_
                                    _%$e114175%_
                                    (find-super-constructor
                                     _%direct-supers114117%_))))
                             (_%precedence-list114221%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties114173%_))
                                      (memq object::t
                                            _%precedence-list114167%_))
                                  _%precedence-list114167%_
                                  (let _%loop114183%_ ((_%tail114185%_
                                                        _%precedence-list114167%_)
                                                       (_%head114186%_ '()))
                                    (let* ((_%tail114187114195%_
                                            _%tail114185%_)
                                           (_%else114189114203%_
                                            (lambda ()
                                              (let ((__tmp116959
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp116959
                                                 _%head114186%_))))
                                           (_%K114191114209%_
                                            (lambda (_%rest114206%_
                                                     _%hd114207%_)
                                              (if (eq? _%hd114207%_ t::t)
                                                  (let ((__tmp116960
                                                         (cons object::t
                                                               _%tail114185%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp116960
                                                     _%head114186%_))
                                                  (_%loop114183%_
                                                   _%rest114206%_
                                                   (cons _%hd114207%_
                                                         _%head114186%_))))))
                                      (if (pair? _%tail114187114195%_)
                                          (let ((_%hd114192114212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail114187114195%_)))
                                                (_%tl114193114214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail114187114195%_))))
                                            (let* ((_%hd114217%_
                                                    _%hd114192114212%_)
                                                   (_%rest114219%_
                                                    _%tl114193114214%_))
                                              (_%K114191114209%_
                                               _%rest114219%_
                                               _%hd114217%_)))
                                          (_%else114189114203%_)))))))
                        (make-class-type-descriptor
                         _%id114101%_
                         _%name114109%_
                         _%struct-super114168%_
                         _%precedence-list114221%_
                         _%slot-vector114170%_
                         _%properties114173%_
                         _%constructor*114178%_
                         _%slot-table114171%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass114079%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114079%_ 'class))
            (let ((_%klass114083%_ _%klass114079%_))
              (__class-precedence-list _%klass114083%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass114079%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass114067%_)
        (let ((_%klass114070%_ _%klass114067%_))
          (cons _%klass114070%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass114070%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers114064%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers114064%_))))
    (define make-class-predicate
      (lambda (_%klass114050%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass114050%_ 'class))
            (let ((_%klass114054%_ _%klass114050%_))
              (__make-class-predicate _%klass114054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass114050%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass114021%_)
        (let* ((_%klass114024%_ _%klass114021%_)
               (_%tid114033%_
                (let () (declare (not safe)) (##type-id _%klass114024%_))))
          (if (__class-type-final? _%klass114024%_)
              (lambda (_%g114035114037%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g114035114037%_
                   _%tid114033%_)))
              (if (__class-type-struct? _%klass114024%_)
                  (lambda (_%g114040114042%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g114040114042%_
                       _%tid114033%_)))
                  (lambda (_%g114045114047%_)
                    (__class-instance? _%klass114024%_ _%g114045114047%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass113996%_ _%slot113997%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113996%_ 'class))
            (let ((_%klass114001%_ _%klass113996%_))
              (if (symbol? _%slot113997%_)
                  (let ((_%slot114011%_ _%slot113997%_))
                    (__make-class-slot-accessor
                     _%klass114001%_
                     _%slot114011%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot113997%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass113996%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass113964%_ _%slot113965%_)
        (let* ((_%klass113968%_ _%klass113964%_)
               (_%slot113976%_ _%slot113965%_)
               (_%field113985%_
                (let ((__tmp116961
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass113968%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp116961 _%slot113976%_ '#f))))
          (if (not _%field113985%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass113968%_
                       'slot:
                       _%slot113976%_)
                '#!void)
              (if (__class-type-final? _%klass113968%_)
                  (make-final-slot-accessor
                   _%klass113968%_
                   _%slot113976%_
                   _%field113985%_)
                  (if (__class-type-struct? _%klass113968%_)
                      (make-struct-slot-accessor
                       _%klass113968%_
                       _%slot113976%_
                       _%field113985%_)
                      (if (let ((_%strukt113991%_
                                 (base-struct/1 _%klass113968%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt113991%_
                                    'class))
                                 (let ((__tmp116962
                                        (let ((__tmp116963
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt113991%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp116963))))
                                   (declare (not safe))
                                   (##fx< _%field113985%_ __tmp116962))))
                          (make-struct-subclass-slot-accessor
                           _%klass113968%_
                           _%slot113976%_
                           _%field113985%_)
                          (make-class-cached-slot-accessor
                           _%klass113968%_
                           _%slot113976%_
                           _%field113985%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass113939%_ _%slot113940%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113939%_ 'class))
            (let ((_%klass113944%_ _%klass113939%_))
              (if (symbol? _%slot113940%_)
                  (let ((_%slot113954%_ _%slot113940%_))
                    (__make-class-slot-mutator _%klass113944%_ _%slot113954%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot113940%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass113939%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass113907%_ _%slot113908%_)
        (let* ((_%klass113911%_ _%klass113907%_)
               (_%slot113919%_ _%slot113908%_)
               (_%field113928%_
                (let ((__tmp116964
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass113911%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp116964 _%slot113919%_ '#f))))
          (if (not _%field113928%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass113911%_
                       'slot:
                       _%slot113919%_)
                '#!void)
              (if (__class-type-final? _%klass113911%_)
                  (make-final-slot-mutator
                   _%klass113911%_
                   _%slot113919%_
                   _%field113928%_)
                  (if (__class-type-struct? _%klass113911%_)
                      (make-struct-slot-mutator
                       _%klass113911%_
                       _%slot113919%_
                       _%field113928%_)
                      (if (let ((_%strukt113934%_
                                 (base-struct/1 _%klass113911%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt113934%_
                                    'class))
                                 (let ((__tmp116965
                                        (let ((__tmp116966
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt113934%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp116966))))
                                   (declare (not safe))
                                   (##fx< _%field113928%_ __tmp116965))))
                          (make-struct-subclass-slot-mutator
                           _%klass113911%_
                           _%slot113919%_
                           _%field113928%_)
                          (make-class-cached-slot-mutator
                           _%klass113911%_
                           _%slot113919%_
                           _%field113928%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass113882%_ _%slot113883%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113882%_ 'class))
            (let ((_%klass113887%_ _%klass113882%_))
              (if (symbol? _%slot113883%_)
                  (let ((_%slot113897%_ _%slot113883%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass113887%_
                     _%slot113897%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot113883%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass113882%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass113850%_ _%slot113851%_)
        (let* ((_%klass113854%_ _%klass113850%_)
               (_%slot113862%_ _%slot113851%_)
               (_%field113871%_
                (let ((__tmp116967
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass113854%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp116967 _%slot113862%_ '#f))))
          (if (not _%field113871%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass113854%_
                       'slot:
                       _%slot113862%_)
                '#!void)
              (if (__class-type-final? _%klass113854%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass113854%_
                   _%slot113862%_
                   _%field113871%_)
                  (if (__class-type-struct? _%klass113854%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass113854%_
                       _%slot113862%_
                       _%field113871%_)
                      (if (let ((_%strukt113877%_
                                 (base-struct/1 _%klass113854%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt113877%_
                                    'class))
                                 (let ((__tmp116968
                                        (let ((__tmp116969
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt113877%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp116969))))
                                   (declare (not safe))
                                   (##fx< _%field113871%_ __tmp116968))))
                          (make-struct-slot-unchecked-accessor
                           _%klass113854%_
                           _%slot113862%_
                           _%field113871%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass113854%_
                           _%slot113862%_
                           _%field113871%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass113825%_ _%slot113826%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113825%_ 'class))
            (let ((_%klass113830%_ _%klass113825%_))
              (if (symbol? _%slot113826%_)
                  (let ((_%slot113840%_ _%slot113826%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass113830%_
                     _%slot113840%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot113826%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass113825%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass113793%_ _%slot113794%_)
        (let* ((_%klass113797%_ _%klass113793%_)
               (_%slot113805%_ _%slot113794%_)
               (_%field113814%_
                (let ((__tmp116970
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass113797%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp116970 _%slot113805%_ '#f))))
          (if (not _%field113814%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass113797%_
                       'slot:
                       _%slot113805%_)
                '#!void)
              (if (__class-type-final? _%klass113797%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass113797%_
                   _%slot113805%_
                   _%field113814%_)
                  (if (__class-type-struct? _%klass113797%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass113797%_
                       _%slot113805%_
                       _%field113814%_)
                      (if (let ((_%strukt113820%_
                                 (base-struct/1 _%klass113797%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt113820%_
                                    'class))
                                 (let ((__tmp116971
                                        (let ((__tmp116972
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt113820%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp116972))))
                                   (declare (not safe))
                                   (##fx< _%field113814%_ __tmp116971))))
                          (make-struct-slot-unchecked-mutator
                           _%klass113797%_
                           _%slot113805%_
                           _%field113814%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass113797%_
                           _%slot113805%_
                           _%field113814%_))))))))
    (define not-an-instance__%
      (lambda (_%object113777%_ _%class113778%_ _%slot113779%_)
        (apply error
               '"not an instance"
               'object:
               _%object113777%_
               'class:
               _%class113778%_
               (if _%slot113779%_
                   (cons 'slot: (cons _%slot113779%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object113784%_ _%class113785%_)
        (let ((_%slot113787%_ '#f))
          (not-an-instance__%
           _%object113784%_
           _%class113785%_
           _%slot113787%_))))
    (define not-an-instance
      (lambda _g116973_
        (let ((_g116974_ (let () (declare (not safe)) (##length _g116973_))))
          (cond ((let () (declare (not safe)) (##fx= _g116974_ 2))
                 (apply not-an-instance__0 _g116973_))
                ((let () (declare (not safe)) (##fx= _g116974_ 3))
                 (apply not-an-instance__% _g116973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g116973_))))))
    (define make-final-slot-accessor
      (lambda (_%klass113770%_ _%slot113771%_ _%field113772%_)
        (lambda (_%obj113774%_)
          (##direct-structure-ref
           _%obj113774%_
           _%field113772%_
           _%klass113770%_
           _%slot113771%_))))
    (define make-final-slot-mutator
      (lambda (_%klass113763%_ _%slot113764%_ _%field113765%_)
        (lambda (_%obj113767%_ _%val113768%_)
          (##direct-structure-set!
           _%obj113767%_
           _%val113768%_
           _%field113765%_
           _%klass113763%_
           _%slot113764%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass113757%_ _%slot113758%_ _%field113759%_)
        (lambda (_%obj113761%_)
          (##structure-ref
           _%obj113761%_
           _%field113759%_
           _%klass113757%_
           _%slot113758%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass113750%_ _%slot113751%_ _%field113752%_)
        (lambda (_%obj113754%_ _%val113755%_)
          (##structure-set!
           _%obj113754%_
           _%val113755%_
           _%field113752%_
           _%klass113750%_
           _%slot113751%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass113744%_ _%slot113745%_ _%field113746%_)
        (lambda (_%obj113748%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj113748%_
             _%field113746%_
             _%klass113744%_
             _%slot113745%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass113737%_ _%slot113738%_ _%field113739%_)
        (lambda (_%obj113741%_ _%val113742%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj113741%_
             _%val113742%_
             _%field113739%_
             _%klass113737%_
             _%slot113738%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass113731%_ _%slot113732%_ _%field113733%_)
        (lambda (_%obj113735%_)
          (if (class-instance? _%klass113731%_ _%obj113735%_)
              (unchecked-slot-ref _%obj113735%_ _%field113733%_)
              (not-an-instance__%
               _%obj113735%_
               _%klass113731%_
               _%slot113732%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass113724%_ _%slot113725%_ _%field113726%_)
        (lambda (_%obj113728%_ _%val113729%_)
          (if (class-instance? _%klass113724%_ _%obj113728%_)
              (unchecked-field-set!
               _%obj113728%_
               _%field113726%_
               _%val113729%_)
              (not-an-instance__%
               _%obj113728%_
               _%klass113724%_
               _%slot113725%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass113715%_ _%slot113716%_ _%field113717%_)
        (lambda (_%obj113719%_)
          (if (let ((__tmp116975
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass113715%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj113719%_ __tmp116975))
              (unchecked-field-ref _%obj113719%_ _%field113717%_)
              (if (class-instance? _%klass113715%_ _%obj113719%_)
                  (unchecked-slot-ref _%obj113719%_ _%slot113716%_)
                  (not-an-instance__%
                   _%obj113719%_
                   _%klass113715%_
                   _%slot113716%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass113705%_ _%slot113706%_ _%field113707%_)
        (lambda (_%obj113709%_ _%val113710%_)
          (if (let ((__tmp116976
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass113705%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj113709%_ __tmp116976))
              (unchecked-field-set!
               _%obj113709%_
               _%field113707%_
               _%val113710%_)
              (if (class-instance? _%klass113705%_ _%obj113709%_)
                  (unchecked-slot-set!
                   _%obj113709%_
                   _%slot113706%_
                   _%val113710%_)
                  (not-an-instance__%
                   _%obj113709%_
                   _%klass113705%_
                   _%slot113706%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass113699%_ _%slot113700%_ _%field113701%_)
        (lambda (_%obj113703%_)
          (if (let ((__tmp116977
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass113699%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj113703%_ __tmp116977))
              (unchecked-field-ref _%obj113703%_ _%field113701%_)
              (unchecked-slot-ref _%obj113703%_ _%slot113700%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass113692%_ _%slot113693%_ _%field113694%_)
        (lambda (_%obj113696%_ _%val113697%_)
          (if (let ((__tmp116978
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass113692%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj113696%_ __tmp116978))
              (unchecked-field-set!
               _%obj113696%_
               _%field113694%_
               _%val113697%_)
              (unchecked-slot-set!
               _%obj113696%_
               _%slot113693%_
               _%val113697%_)))))
    (define class-slot-offset
      (lambda (_%klass113667%_ _%slot113668%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113667%_ 'class))
            (let ((_%klass113672%_ _%klass113667%_))
              (if (let () (declare (not safe)) (symbolic? _%slot113668%_))
                  (let ((_%slot113682%_ _%slot113668%_))
                    (__class-slot-offset _%klass113672%_ _%slot113682%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot113668%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass113667%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass113646%_ _%slot113647%_)
        (let* ((_%klass113650%_ _%klass113646%_)
               (_%slot113658%_ _%slot113647%_)
               (__tmp116979
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass113650%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp116979 _%slot113658%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass113620%_ _%obj113621%_ _%slot113622%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113620%_ 'class))
            (let ((_%klass113626%_ _%klass113620%_))
              (if (let () (declare (not safe)) (symbolic? _%slot113622%_))
                  (let ((_%slot113636%_ _%slot113622%_))
                    (__class-slot-ref
                     _%klass113626%_
                     _%obj113621%_
                     _%slot113636%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot113622%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass113620%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass113596%_ _%obj113597%_ _%slot113598%_)
        (let* ((_%klass113601%_ _%klass113596%_)
               (_%slot113609%_ _%slot113598%_))
          (if (__class-instance? _%klass113601%_ _%obj113597%_)
              (let ((_%off113618%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj113597%_))
                      _%slot113609%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj113597%_
                 _%off113618%_
                 _%klass113601%_
                 _%slot113609%_))
              (not-an-instance__0 _%obj113597%_ _%klass113601%_)))))
    (define class-slot-set!
      (lambda (_%klass113569%_ _%obj113570%_ _%slot113571%_ _%val113572%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113569%_ 'class))
            (let ((_%klass113576%_ _%klass113569%_))
              (if (let () (declare (not safe)) (symbolic? _%slot113571%_))
                  (let ((_%slot113586%_ _%slot113571%_))
                    (__class-slot-set!
                     _%klass113576%_
                     _%obj113570%_
                     _%slot113586%_
                     _%val113572%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot113571%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass113569%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass113544%_ _%obj113545%_ _%slot113546%_ _%val113547%_)
        (let* ((_%klass113550%_ _%klass113544%_)
               (_%slot113558%_ _%slot113546%_))
          (if (__class-instance? _%klass113550%_ _%obj113545%_)
              (let ((_%off113567%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj113545%_))
                      _%slot113558%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj113545%_
                 _%val113547%_
                 _%off113567%_
                 _%klass113550%_
                 _%slot113558%_))
              (not-an-instance__0 _%obj113545%_ _%klass113550%_)))))
    (define unchecked-field-ref
      (lambda (_%obj113541%_ _%off113542%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj113541%_ _%off113542%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj113537%_ _%off113538%_ _%val113539%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj113537%_
           _%val113539%_
           _%off113538%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj113534%_ _%slot113535%_)
        (unchecked-field-ref
         _%obj113534%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj113534%_))
          _%slot113535%_))))
    (define unchecked-slot-set!
      (lambda (_%obj113530%_ _%slot113531%_ _%val113532%_)
        (unchecked-field-set!
         _%obj113530%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj113530%_))
          _%slot113531%_)
         _%val113532%_)))
    (define __slot-error
      (lambda (_%obj113527%_ _%slot113528%_)
        (error '"Cannot find slot"
               'object:
               _%obj113527%_
               'slot:
               _%slot113528%_)))
    (define slot-ref__%
      (lambda (_%obj113489%_ _%slot113490%_ _%E113491%_)
        (if (symbol? _%slot113490%_)
            (let ((_%slot113495%_ _%slot113490%_))
              (if (procedure? _%E113491%_)
                  (let ((_%E113505%_ _%E113491%_))
                    (__slot-ref__% _%obj113489%_ _%slot113495%_ _%E113505%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@697.38-697.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E113491%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@697.21-697.25"
               'contract:
               'symbol?
               'value:
               _%slot113490%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj113518%_ _%slot113519%_)
        (let ((_%E113521%_ __slot-error))
          (slot-ref__% _%obj113518%_ _%slot113519%_ _%E113521%_))))
    (define slot-ref
      (lambda _g116980_
        (let ((_g116981_ (let () (declare (not safe)) (##length _g116980_))))
          (cond ((let () (declare (not safe)) (##fx= _g116981_ 2))
                 (apply slot-ref__0 _g116980_))
                ((let () (declare (not safe)) (##fx= _g116981_ 3))
                 (apply slot-ref__% _g116980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g116980_))))))
    (define __slot-ref__%
      (lambda (_%obj113445%_ _%slot113446%_ _%E113447%_)
        (let* ((_%slot113450%_ _%slot113446%_)
               (_%E113458%_ _%E113447%_)
               (_%klass113467%_ (class-of _%obj113445%_))
               (_%$e113470%_
                (__class-slot-offset _%klass113467%_ _%slot113450%_)))
          (if _%$e113470%_
              ((lambda (_%off113473%_)
                 (unchecked-field-ref _%obj113445%_ _%off113473%_))
               _%$e113470%_)
              (let ()
                (declare (not safe))
                (_%E113458%_ _%obj113445%_ _%slot113450%_))))))
    (define __slot-ref__0
      (lambda (_%obj113479%_ _%slot113480%_)
        (let ((_%E113482%_ __slot-error))
          (__slot-ref__% _%obj113479%_ _%slot113480%_ _%E113482%_))))
    (define __slot-ref
      (lambda _g116982_
        (let ((_g116983_ (let () (declare (not safe)) (##length _g116982_))))
          (cond ((let () (declare (not safe)) (##fx= _g116983_ 2))
                 (apply __slot-ref__0 _g116982_))
                ((let () (declare (not safe)) (##fx= _g116983_ 3))
                 (apply __slot-ref__% _g116982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g116982_))))))
    (define slot-set!__%
      (lambda (_%obj113403%_ _%slot113404%_ _%val113405%_ _%E113406%_)
        (if (symbol? _%slot113404%_)
            (let ((_%slot113410%_ _%slot113404%_))
              (if (procedure? _%E113406%_)
                  (let ((_%E113420%_ _%E113406%_))
                    (__slot-set!__%
                     _%obj113403%_
                     _%slot113410%_
                     _%val113405%_
                     _%E113420%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@699.43-699.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E113406%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@699.22-699.26"
               'contract:
               'symbol?
               'value:
               _%slot113404%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj113433%_ _%slot113434%_ _%val113435%_)
        (let ((_%E113437%_ __slot-error))
          (slot-set!__%
           _%obj113433%_
           _%slot113434%_
           _%val113435%_
           _%E113437%_))))
    (define slot-set!
      (lambda _g116984_
        (let ((_g116985_ (let () (declare (not safe)) (##length _g116984_))))
          (cond ((let () (declare (not safe)) (##fx= _g116985_ 3))
                 (apply slot-set!__0 _g116984_))
                ((let () (declare (not safe)) (##fx= _g116985_ 4))
                 (apply slot-set!__% _g116984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g116984_))))))
    (define __slot-set!__%
      (lambda (_%obj113356%_ _%slot113357%_ _%val113358%_ _%E113359%_)
        (let* ((_%slot113362%_ _%slot113357%_)
               (_%E113370%_ _%E113359%_)
               (_%klass113379%_ (class-of _%obj113356%_))
               (_%$e113382%_
                (__class-slot-offset _%klass113379%_ _%slot113362%_)))
          (if _%$e113382%_
              ((lambda (_%off113385%_)
                 (unchecked-field-set!
                  _%obj113356%_
                  _%off113385%_
                  _%val113358%_))
               _%$e113382%_)
              (let ()
                (declare (not safe))
                (_%E113370%_ _%obj113356%_ _%slot113362%_))))))
    (define __slot-set!__0
      (lambda (_%obj113391%_ _%slot113392%_ _%val113393%_)
        (let ((_%E113395%_ __slot-error))
          (__slot-set!__%
           _%obj113391%_
           _%slot113392%_
           _%val113393%_
           _%E113395%_))))
    (define __slot-set!
      (lambda _g116986_
        (let ((_g116987_ (let () (declare (not safe)) (##length _g116986_))))
          (cond ((let () (declare (not safe)) (##fx= _g116987_ 3))
                 (apply __slot-set!__0 _g116986_))
                ((let () (declare (not safe)) (##fx= _g116987_ 4))
                 (apply __slot-set!__% _g116986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g116986_))))))
    (define subclass?
      (lambda (_%maybe-sub-class113330%_ _%maybe-super-class113331%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class113330%_ 'class))
            (let ((_%maybe-sub-class113335%_ _%maybe-sub-class113330%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class113331%_
                     'class))
                  (let ((_%maybe-super-class113345%_
                         _%maybe-super-class113331%_))
                    (__subclass?
                     _%maybe-sub-class113335%_
                     _%maybe-super-class113345%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.45-705.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class113331%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.18-705.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class113330%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class113302%_ _%maybe-super-class113303%_)
        (let* ((_%maybe-sub-class113306%_ _%maybe-sub-class113302%_)
               (_%maybe-super-class113314%_ _%maybe-super-class113303%_)
               (_%maybe-super-class-id113323%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class113314%_)))
               (_%$e113325%_
                (eq? _%maybe-super-class-id113323%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class113306%_)))))
          (if _%$e113325%_
              _%$e113325%_
              (let ((__tmp116989
                     (lambda (_%super-class113328%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class113328%_))
                            _%maybe-super-class-id113323%_)))
                    (__tmp116988
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class113306%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp116989 __tmp116988))))))
    (define object?
      (lambda (_%o113299%_)
        (if (let () (declare (not safe)) (##structure? _%o113299%_))
            (let ((__tmp116990
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o113299%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp116990 'class))
            '#f)))
    (define direct-instance?
      (lambda (_%klass113284%_ _%obj113285%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113284%_ 'class))
            (let ((_%klass113289%_ _%klass113284%_))
              (__direct-instance? _%klass113289%_ _%obj113285%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@719.25-719.30"
               'contract:
               'class-type?
               'value:
               _%klass113284%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass113271%_ _%obj113272%_)
        (let* ((_%klass113275%_ _%klass113271%_)
               (__tmp116991
                (let () (declare (not safe)) (##type-id _%klass113275%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj113272%_ __tmp116991))))
    (define immediate-instance-of?
      (lambda (_%klass113267%_ _%obj113268%_)
        (if (let () (declare (not safe)) (##structure? _%obj113268%_))
            (eq? _%klass113267%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj113268%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass113252%_ _%obj113253%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113252%_ 'class))
            (let ((_%klass113257%_ _%klass113252%_))
              (__struct-instance? _%klass113257%_ _%obj113253%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@748.25-748.30"
               'contract:
               'class-type?
               'value:
               _%klass113252%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass113239%_ _%obj113240%_)
        (let* ((_%klass113243%_ _%klass113239%_)
               (__tmp116992
                (let () (declare (not safe)) (##type-id _%klass113243%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj113240%_ __tmp116992))))
    (define class-instance?
      (lambda (_%klass113224%_ _%obj113225%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113224%_ 'class))
            (let ((_%klass113229%_ _%klass113224%_))
              (__class-instance? _%klass113229%_ _%obj113225%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.24-753.29"
               'contract:
               'class-type?
               'value:
               _%klass113224%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass113209%_ _%obj113210%_)
        (let* ((_%klass113213%_ _%klass113209%_)
               (_%type113222%_ (class-of _%obj113210%_)))
          (__subclass? _%type113222%_ _%klass113213%_))))
    (define make-object
      (lambda (_%klass113184%_ _%k113185%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113184%_ 'class))
            (let ((_%klass113189%_ _%klass113184%_))
              (if (fixnum? _%k113185%_)
                  (let ((_%k113199%_ _%k113185%_))
                    (__make-object _%klass113189%_ _%k113199%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@758.37-758.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k113185%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@758.20-758.25"
               'contract:
               'class-type?
               'value:
               _%klass113184%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass113161%_ _%k113162%_)
        (let* ((_%klass113165%_ _%klass113161%_) (_%k113173%_ _%k113162%_))
          (if (__class-type-system? _%klass113165%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass113165%_)
                '#!void)
              (let ((_%obj113182%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass113165%_ _%k113173%_))))
                (__object-fill! _%obj113182%_ '#f))))))
    (define object-class
      (lambda (_%obj113147%_)
        (if (object? _%obj113147%_)
            (let ((_%obj113151%_ _%obj113147%_))
              (__object-class _%obj113151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.21-778.24"
               'contract:
               'object?
               'value:
               _%obj113147%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj113135%_)
        (let ((_%obj113138%_ _%obj113135%_))
          (declare (not safe))
          (##structure-type _%obj113138%_))))
    (define object-fill!
      (lambda (_%obj113120%_ _%fill113121%_)
        (if (object? _%obj113120%_)
            (let ((_%obj113125%_ _%obj113120%_))
              (__object-fill! _%obj113125%_ _%fill113121%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.21-783.24"
               'contract:
               'object?
               'value:
               _%obj113120%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj113102%_ _%fill113103%_)
        (let ((_%obj113106%_ _%obj113102%_))
          (let _%loop113115%_ ((_%i113117%_
                                (let ((__tmp116993
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj113106%_))))
                                  (declare (not safe))
                                  (##fx- __tmp116993 '1))))
            (if (let () (declare (not safe)) (##fx> _%i113117%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj113106%_
                     _%fill113103%_
                     _%i113117%_
                     '#f
                     '#f))
                  (_%loop113115%_
                   (let () (declare (not safe)) (##fx- _%i113117%_ '1))))
                _%obj113106%_)))))
    (define new-instance
      (lambda (_%klass113088%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113088%_ 'class))
            (let ((_%klass113092%_ _%klass113088%_))
              (__new-instance _%klass113092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@794.21-794.26"
               'contract:
               'class-type?
               'value:
               _%klass113088%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass113076%_)
        (let* ((_%klass113079%_ _%klass113076%_)
               (__obj116904
                (let ((__tmp116994
                       (let ((__tmp116995
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass113079%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp116995))))
                  (declare (not safe))
                  (##make-structure _%klass113079%_ __tmp116994))))
          (object-fill! __obj116904 '#f)
          __obj116904)))
    (define make-instance
      (lambda (_%klass113061%_ . _%args113062%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass113061%_ 'class))
            (let ((_%klass113066%_ _%klass113061%_))
              (declare (not safe))
              (##apply __make-instance _%klass113066%_ _%args113062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.22-797.27"
               'contract:
               'class-type?
               'value:
               _%klass113061%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass113033%_ . _%args113034%_)
        (let* ((_%klass113037%_ _%klass113033%_)
               (_%$e113046%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass113037%_ '10 '#f '#f))))
          (if _%$e113046%_
              ((lambda (_%kons-id113049%_)
                 (let ((_%obj113051%_ (__new-instance _%klass113037%_)))
                   (___constructor-init!
                    _%klass113037%_
                    _%kons-id113049%_
                    _%obj113051%_
                    _%args113034%_)
                   _%obj113051%_))
               _%$e113046%_)
              (if (__class-type-metaclass? _%klass113037%_)
                  (let ((_%obj113054%_ (__new-instance _%klass113037%_)))
                    (__metaclass-instance-init!
                     _%klass113037%_
                     _%obj113054%_
                     _%args113034%_)
                    _%obj113054%_)
                  (if (__class-type-struct? _%klass113037%_)
                      (if (let ((__tmp116997
                                 (__class-type-field-count _%klass113037%_))
                                (__tmp116996
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args113034%_))))
                            (declare (not safe))
                            (##fx= __tmp116997 __tmp116996))
                          (apply ##structure _%klass113037%_ _%args113034%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass113037%_
                                   'slots:
                                   (__class-type-slot-list _%klass113037%_)
                                   'args:
                                   _%args113034%_)
                            '#!void))
                      (let ((_%obj113057%_ (__new-instance _%klass113037%_)))
                        (___class-instance-init!
                         _%klass113037%_
                         _%obj113057%_
                         _%args113034%_)
                        _%obj113057%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj113018%_ . _%args113019%_)
        (if (object? _%obj113018%_)
            (let ((_%obj113023%_ _%obj113018%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj113023%_ _%args113019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.30-822.33"
               'contract:
               'object?
               'value:
               _%obj113018%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj113005%_ . _%args113006%_)
        (let ((_%obj113009%_ _%obj113005%_))
          (if (let ((__tmp116999
                     (let () (declare (not safe)) (##length _%args113006%_)))
                    (__tmp116998
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj113009%_))))
                (declare (not safe))
                (##fx< __tmp116999 __tmp116998))
              (___struct-instance-init! _%obj113009%_ _%args113006%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj113009%_
                     'args:
                     _%args113006%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj112964%_ _%args112965%_)
        (let _%lp112967%_ ((_%k112969%_ '1) (_%rest112970%_ _%args112965%_))
          (let* ((_%rest112971112979%_ _%rest112970%_)
                 (_%else112973112987%_ (lambda () _%obj112964%_))
                 (_%K112975112993%_
                  (lambda (_%rest112990%_ _%hd112991%_)
                    (unchecked-field-set!
                     _%obj112964%_
                     _%k112969%_
                     _%hd112991%_)
                    (_%lp112967%_
                     (let () (declare (not safe)) (##fx+ _%k112969%_ '1))
                     _%rest112990%_))))
            (if (pair? _%rest112971112979%_)
                (let ((_%hd112976112996%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest112971112979%_)))
                      (_%tl112977112998%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest112971112979%_))))
                  (let* ((_%hd113001%_ _%hd112976112996%_)
                         (_%rest113003%_ _%tl112977112998%_))
                    (_%K112975112993%_ _%rest113003%_ _%hd113001%_)))
                (_%else112973112987%_))))))
    (define class-instance-init!
      (lambda (_%obj112949%_ . _%args112950%_)
        (if (object? _%obj112949%_)
            (let ((_%obj112954%_ _%obj112949%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj112954%_ _%args112950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@862.29-862.32"
               'contract:
               'object?
               'value:
               _%obj112949%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj112936%_ . _%args112937%_)
        (let ((_%obj112940%_ _%obj112936%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj112940%_))
           _%obj112940%_
           _%args112937%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass112878%_ _%obj112879%_ _%args112880%_)
        (let _%lp112882%_ ((_%rest112884%_ _%args112880%_))
          (let* ((_%rest112885112895%_ _%rest112884%_)
                 (_%else112887112903%_
                  (lambda ()
                    (if (null? _%rest112884%_)
                        _%obj112879%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass112878%_
                               'rest:
                               _%rest112884%_))))
                 (_%K112889112917%_
                  (lambda (_%rest112906%_ _%val112907%_ _%key112908%_)
                    (if (keyword? _%key112908%_)
                        (let ((_%$e112911%_
                               (__class-slot-offset
                                _%klass112878%_
                                _%key112908%_)))
                          (if _%$e112911%_
                              ((lambda (_%off112914%_)
                                 (unchecked-field-set!
                                  _%obj112879%_
                                  _%off112914%_
                                  _%val112907%_)
                                 (_%lp112882%_ _%rest112906%_))
                               _%$e112911%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass112878%_
                                     'slot:
                                     _%key112908%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key112908%_)))))
            (if (pair? _%rest112885112895%_)
                (let ((_%hd112890112920%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest112885112895%_)))
                      (_%tl112891112922%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest112885112895%_))))
                  (let ((_%key112925%_ _%hd112890112920%_))
                    (if (pair? _%tl112891112922%_)
                        (let ((_%hd112892112927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl112891112922%_)))
                              (_%tl112893112929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl112891112922%_))))
                          (let* ((_%val112932%_ _%hd112892112927%_)
                                 (_%rest112934%_ _%tl112893112929%_))
                            (_%K112889112917%_
                             _%rest112934%_
                             _%val112932%_
                             _%key112925%_)))
                        (_%else112887112903%_))))
                (_%else112887112903%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass112874%_ _%obj112875%_ _%args112876%_)
        (apply call-method
               _%klass112874%_
               'instance-init!
               _%obj112875%_
               _%args112876%_)))
    (define constructor-init!
      (lambda (_%klass112837%_
               _%kons-id112838%_
               _%obj112839%_
               .
               _%args112840%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass112837%_ 'class))
            (let ((_%klass112844%_ _%klass112837%_))
              (if (symbol? _%kons-id112838%_)
                  (let ((_%kons-id112854%_ _%kons-id112838%_))
                    (if (object? _%obj112839%_)
                        (let ((_%obj112864%_ _%obj112839%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass112844%_
                                   _%kons-id112854%_
                                   _%obj112864%_
                                   _%args112840%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@886.63-886.66"
                           'contract:
                           'object?
                           'value:
                           _%obj112839%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@886.43-886.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id112838%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.26-886.31"
               'contract:
               'class-type?
               'value:
               _%klass112837%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass112806%_
               _%kons-id112807%_
               _%obj112808%_
               .
               _%args112809%_)
        (let* ((_%klass112812%_ _%klass112806%_)
               (_%kons-id112820%_ _%kons-id112807%_)
               (_%obj112828%_ _%obj112808%_))
          (___constructor-init!
           _%klass112812%_
           _%kons-id112820%_
           _%obj112828%_
           _%args112809%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass112795%_ _%kons-id112796%_ _%obj112797%_ _%args112798%_)
        (let ((_%$e112800%_
               (__find-method
                _%klass112795%_
                _%obj112797%_
                _%kons-id112796%_)))
          (if _%$e112800%_
              ((lambda (_%kons112803%_)
                 (apply _%kons112803%_ _%obj112797%_ _%args112798%_)
                 _%obj112797%_)
               _%$e112800%_)
              (error '"missing constructor"
                     'class:
                     _%klass112795%_
                     'method:
                     _%kons-id112796%_)))))
    (define struct-copy
      (lambda (_%struct112781%_)
        (if (object? _%struct112781%_)
            (let ((_%struct112785%_ _%struct112781%_))
              (__struct-copy _%struct112785%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@900.20-900.26"
               'contract:
               'object?
               'value:
               _%struct112781%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct112769%_)
        (let ((_%struct112772%_ _%struct112769%_))
          (declare (not safe))
          (##structure-copy _%struct112772%_))))
    (define struct->list
      (lambda (_%obj112755%_)
        (if (object? _%obj112755%_)
            (let ((_%obj112759%_ _%obj112755%_))
              (__struct->list _%obj112759%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@903.21-903.24"
               'contract:
               'object?
               'value:
               _%obj112755%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj112736%_)
        (let* ((_%obj112739%_ _%obj112736%_)
               (_%len112748%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj112739%_))))
          (let _%recur112750%_ ((_%i112752%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i112752%_ _%len112748%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj112739%_
                         _%i112752%_
                         '#f
                         '#f))
                      (_%recur112750%_
                       (let () (declare (not safe)) (##fx+ _%i112752%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj112722%_)
        (if (object? _%obj112722%_)
            (let ((_%obj112726%_ _%obj112722%_)) (__class->list _%obj112726%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.20-911.23"
               'contract:
               'object?
               'value:
               _%obj112722%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj112698%_)
        (let* ((_%obj112701%_ _%obj112698%_)
               (_%klass112710%_
                (let () (declare (not safe)) (##structure-type _%obj112701%_)))
               (_%slot-vector112712%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass112710%_ '7 '#f '#f))))
          (let _%loop112714%_ ((_%index112716%_
                                (let ((__tmp117000
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector112712%_))))
                                  (declare (not safe))
                                  (##fx- __tmp117000 '1)))
                               (_%plist112717%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index112716%_ '1))
                (cons _%klass112710%_ _%plist112717%_)
                (let ((_%slot112720%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector112712%_
                          _%index112716%_))))
                  (_%loop112714%_
                   (let () (declare (not safe)) (##fx- _%index112716%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot112720%_))
                         (cons (unchecked-field-ref
                                _%obj112701%_
                                _%index112716%_)
                               _%plist112717%_)))))))))
    (define call-method
      (lambda (_%obj112682%_ _%id112683%_ . _%args112684%_)
        (if (symbol? _%id112683%_)
            (let ((_%id112688%_ _%id112683%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj112682%_
                       _%id112688%_
                       _%args112684%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@926.24-926.26"
               'contract:
               'symbol?
               'value:
               _%id112683%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj112651%_ _%id112652%_ . _%args112653%_)
        (let* ((_%id112656%_ _%id112652%_)
               (_%$e112665%_ (__method-ref _%obj112651%_ _%id112656%_)))
          (if _%$e112665%_
              ((lambda (_%method112668%_)
                 (let ((_%method112670%_ _%method112668%_))
                   (apply _%method112670%_ _%obj112651%_ _%args112653%_)))
               _%$e112665%_)
              (error '"cannot find method"
                     'object:
                     _%obj112651%_
                     'method:
                     _%id112656%_)))))
    (define method-ref
      (lambda (_%obj112636%_ _%id112637%_)
        (if (symbol? _%id112637%_)
            (let ((_%id112641%_ _%id112637%_))
              (__method-ref _%obj112636%_ _%id112641%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@953.23-953.25"
               'contract:
               'symbol?
               'value:
               _%id112637%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj112623%_ _%id112624%_)
        (let ((_%id112627%_ _%id112624%_))
          (__find-method
           (class-of _%obj112623%_)
           _%obj112623%_
           _%id112627%_))))
    (define checked-method-ref
      (lambda (_%obj112616%_ _%id112617%_)
        (let ((_%$e112620%_ (method-ref _%obj112616%_ _%id112617%_)))
          (if _%$e112620%_
              _%$e112620%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj112616%_
                       'method:
                       _%id112617%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj112601%_ _%id112602%_)
        (if (symbol? _%id112602%_)
            (let ((_%id112606%_ _%id112602%_))
              (__bound-method-ref _%obj112601%_ _%id112606%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.29-961.31"
               'contract:
               'symbol?
               'value:
               _%id112602%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj112569%_ _%id112570%_)
        (let* ((_%id112573%_ _%id112570%_)
               (_%$e112582%_ (__method-ref _%obj112569%_ _%id112573%_)))
          (if _%$e112582%_
              ((lambda (_%method112585%_)
                 (let ((_%method112587%_ _%method112585%_))
                   (lambda _%args112598%_
                     (apply _%method112587%_ _%obj112569%_ _%args112598%_))))
               _%$e112582%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj112554%_ _%id112555%_)
        (if (symbol? _%id112555%_)
            (let ((_%id112559%_ _%id112555%_))
              (__checked-bound-method-ref _%obj112554%_ _%id112559%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.37-970.39"
               'contract:
               'symbol?
               'value:
               _%id112555%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj112537%_ _%id112538%_)
        (let* ((_%id112541%_ _%id112538%_)
               (_%method112550%_
                (checked-method-ref _%obj112537%_ _%id112541%_)))
          (lambda _%args112552%_
            (apply _%method112550%_ _%obj112537%_ _%args112552%_)))))
    (define find-method
      (lambda (_%klass112511%_ _%obj112512%_ _%id112513%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass112511%_ 'class))
            (let ((_%klass112517%_ _%klass112511%_))
              (if (symbol? _%id112513%_)
                  (let ((_%id112527%_ _%id112513%_))
                    (__find-method _%klass112517%_ _%obj112512%_ _%id112527%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@975.41-975.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id112513%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.20-975.25"
               'contract:
               'class-type?
               'value:
               _%klass112511%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass112482%_ _%obj112483%_ _%id112484%_)
        (let* ((_%klass112487%_ _%klass112482%_) (_%id112495%_ _%id112484%_))
          (if (__class-type-sealed? _%klass112487%_)
              (let ((_%tab112505%_ (__specialize-class _%klass112487%_)))
                (declare (not safe))
                (symbolic-table-ref _%tab112505%_ _%id112495%_ '#f))
              (let ((_%$e112507%_
                     (__direct-method-ref
                      _%klass112487%_
                      _%obj112483%_
                      _%id112495%_)))
                (if _%$e112507%_
                    _%$e112507%_
                    (__mixin-method-ref
                     _%klass112487%_
                     _%obj112483%_
                     _%id112495%_)))))))
    (define mixin-find-method
      (lambda (_%mixins112466%_ _%obj112467%_ _%id112468%_)
        (if (symbol? _%id112468%_)
            (let ((_%id112472%_ _%id112468%_))
              (__mixin-find-method
               _%mixins112466%_
               _%obj112467%_
               _%id112472%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.37-984.39"
               'contract:
               'symbol?
               'value:
               _%id112468%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins112448%_ _%obj112449%_ _%id112450%_)
        (let* ((_%id112453%_ _%id112450%_)
               (__tmp117001
                (lambda (_%g112461112463%_)
                  (direct-method-ref
                   _%g112461112463%_
                   _%obj112449%_
                   _%id112453%_))))
          (declare (not safe))
          (__ormap1 __tmp117001 _%mixins112448%_))))
    (define direct-method-ref
      (lambda (_%klass112422%_ _%obj112423%_ _%id112424%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass112422%_ 'class))
            (let ((_%klass112428%_ _%klass112422%_))
              (if (symbol? _%id112424%_)
                  (let ((_%id112438%_ _%id112424%_))
                    (__direct-method-ref
                     _%klass112428%_
                     _%obj112423%_
                     _%id112438%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@987.47-987.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id112424%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@987.26-987.31"
               'contract:
               'class-type?
               'value:
               _%klass112422%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass112376%_ _%obj112377%_ _%id112378%_)
        (let* ((_%klass112381%_ _%klass112376%_) (_%id112389%_ _%id112378%_))
          (letrec ((_%metaclass-resolve-method112398%_
                    (lambda ()
                      (let ((__method116905
                             (__method-ref
                              _%klass112381%_
                              'direct-method-ref)))
                        (if __method116905
                            (let ()
                              (declare (not safe))
                              (__method116905
                               _%klass112381%_
                               _%obj112377%_
                               _%id112389%_))
                            (begin
                              (error '"Missing method"
                                     _%klass112381%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!112399%_
                    (lambda ()
                      (let ((_%method112419%_
                             (_%metaclass-resolve-method112398%_)))
                        (let ((__tmp117003
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass112381%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp117002
                               (if _%method112419%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp117003
                           _%id112389%_
                           __tmp117002))
                        _%method112419%_))))
            (let ((_%$e112401%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass112381%_ '11 '#f '#f))))
              (if _%$e112401%_
                  ((lambda (_%ht112404%_)
                     (let ((_%method112406%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht112404%_
                               _%id112389%_
                               '#f))))
                       (if (procedure? _%method112406%_)
                           _%method112406%_
                           (if (__class-type-metaclass? _%klass112381%_)
                               (let ((_%$e112410%_ _%method112406%_))
                                 (if (eq? 'resolved _%$e112410%_)
                                     (_%metaclass-resolve-method112398%_)
                                     (if (eq? 'unknown _%$e112410%_)
                                         '#f
                                         (_%metaclass-resolve-method!112399%_))))
                               '#f))))
                   _%$e112401%_)
                  (if (__class-type-metaclass? _%klass112381%_)
                      (let ((_%tab112415%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass112381%_
                           _%tab112415%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!112399%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass112350%_ _%obj112351%_ _%id112352%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass112350%_ 'class))
            (let ((_%klass112356%_ _%klass112350%_))
              (if (symbol? _%id112352%_)
                  (let ((_%id112366%_ _%id112352%_))
                    (__mixin-method-ref
                     _%klass112356%_
                     _%obj112351%_
                     _%id112366%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1017.46-1017.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id112352%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass112350%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass112328%_ _%obj112329%_ _%id112330%_)
        (let* ((_%klass112333%_ _%klass112328%_) (_%id112341%_ _%id112330%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass112333%_ '6 '#f '#f))
           _%obj112329%_
           _%id112341%_))))
    (define bind-method!__%
      (lambda (_%klass112287%_ _%id112288%_ _%proc112289%_ _%rebind?112290%_)
        (if (symbol? _%id112288%_)
            (let ((_%id112294%_ _%id112288%_))
              (if (procedure? _%proc112289%_)
                  (let ((_%proc112304%_ _%proc112289%_))
                    (__bind-method!__%
                     _%klass112287%_
                     _%id112294%_
                     _%proc112304%_
                     _%rebind?112290%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1020.42-1020.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc112289%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.27-1020.29"
               'contract:
               'symbol?
               'value:
               _%id112288%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass112317%_ _%id112318%_ _%proc112319%_)
        (let ((_%rebind?112321%_ '#f))
          (bind-method!__%
           _%klass112317%_
           _%id112318%_
           _%proc112319%_
           _%rebind?112321%_))))
    (define bind-method!
      (lambda _g117004_
        (let ((_g117005_ (let () (declare (not safe)) (##length _g117004_))))
          (cond ((let () (declare (not safe)) (##fx= _g117005_ 3))
                 (apply bind-method!__0 _g117004_))
                ((let () (declare (not safe)) (##fx= _g117005_ 4))
                 (apply bind-method!__% _g117004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g117004_))))))
    (define __bind-method!__%
      (lambda (_%klass112238%_ _%id112239%_ _%proc112240%_ _%rebind?112241%_)
        (let* ((_%id112244%_ _%id112239%_) (_%proc112252%_ _%proc112240%_))
          (letrec ((_%bind!112261%_
                    (lambda (_%ht112270%_)
                      (if (and (not _%rebind?112241%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht112270%_
                                  _%id112244%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass112238%_
                                 'method:
                                 _%id112244%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht112270%_
                               _%id112244%_
                               _%proc112252%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass112238%_ 'class))
                (let ((_%ht112264%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass112238%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht112264%_
                      (_%bind!112261%_ _%ht112264%_)
                      (let ((_%ht112266%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass112238%_
                           _%ht112266%_
                           '11
                           '#f
                           '#f))
                        (_%bind!112261%_ _%ht112266%_))))
                (if (let () (declare (not safe)) (##type? _%klass112238%_))
                    (__bind-method!__%
                     (__shadow-class__0 _%klass112238%_)
                     _%id112244%_
                     _%proc112252%_
                     _%rebind?112241%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass112238%_)))))))
    (define __bind-method!__0
      (lambda (_%klass112275%_ _%id112276%_ _%proc112277%_)
        (let ((_%rebind?112279%_ '#f))
          (__bind-method!__%
           _%klass112275%_
           _%id112276%_
           _%proc112277%_
           _%rebind?112279%_))))
    (define __bind-method!
      (lambda _g117006_
        (let ((_g117007_ (let () (declare (not safe)) (##length _g117006_))))
          (cond ((let () (declare (not safe)) (##fx= _g117007_ 3))
                 (apply __bind-method!__0 _g117006_))
                ((let () (declare (not safe)) (##fx= _g117007_ 4))
                 (apply __bind-method!__% _g117006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g117006_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint112219%_ _%seed112220%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint112219%_
           procedure-hash
           eq?
           _%seed112220%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint112226%_ '#f) (_%seed112228%_ '0))
          (make-method-specializer-table__%
           _%size-hint112226%_
           _%seed112228%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint112230%_)
        (let ((_%seed112232%_ '0))
          (make-method-specializer-table__%
           _%size-hint112230%_
           _%seed112232%_))))
    (define make-method-specializer-table
      (lambda _g117008_
        (let ((_g117009_ (let () (declare (not safe)) (##length _g117008_))))
          (cond ((let () (declare (not safe)) (##fx= _g117009_ 0))
                 (apply make-method-specializer-table__0 _g117008_))
                ((let () (declare (not safe)) (##fx= _g117009_ 1))
                 (apply make-method-specializer-table__1 _g117008_))
                ((let () (declare (not safe)) (##fx= _g117009_ 2))
                 (apply make-method-specializer-table__% _g117008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g117008_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint112199%_ _%seed112201%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint112199%_
           procedure-hash
           eq?
           _%seed112201%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint112207%_ '#f) (_%seed112209%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint112207%_
           _%seed112209%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint112211%_)
        (let ((_%seed112213%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint112211%_
           _%seed112213%_))))
    (define make-method-specializer-table/lock
      (lambda _g117010_
        (let ((_g117011_ (let () (declare (not safe)) (##length _g117010_))))
          (cond ((let () (declare (not safe)) (##fx= _g117011_ 0))
                 (apply make-method-specializer-table/lock__0 _g117010_))
                ((let () (declare (not safe)) (##fx= _g117011_ 1))
                 (apply make-method-specializer-table/lock__1 _g117010_))
                ((let () (declare (not safe)) (##fx= _g117011_ 2))
                 (apply make-method-specializer-table/lock__% _g117010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g117010_))))))
    (define method-specializer-table-ref
      (lambda (_%tab112152%_ _%key112153%_ _%default112154%_)
        (let ((_%table112156%_
               (let () (declare (not safe)) (&raw-table-table _%tab112152%_)))
              (_%seed112157%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112152%_))))
          (let* ((_%h112159%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key112153%_))
                         _%seed112157%_))
                 (_%size112162%_ (vector-length _%table112156%_))
                 (_%entries112165%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112162%_ '2)))
                 (_%start112168%_
                  (let ((__tmp117012
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112159%_ _%entries112165%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp117012 '1))))
            (let _%loop112172%_ ((_%probe112175%_ _%start112168%_)
                                 (_%i112177%_ '1)
                                 (_%deleted112179%_ '#f))
              (let ((_%k112182%_ (vector-ref _%table112156%_ _%probe112175%_)))
                (if (eq? _%k112182%_ (macro-unused-obj))
                    _%default112154%_
                    (if (eq? _%k112182%_ (macro-deleted-obj))
                        (_%loop112172%_
                         (let ((_%next-probe112187%_
                                (fx+ _%start112168%_
                                     _%i112177%_
                                     (fx* _%i112177%_ _%i112177%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112187%_ _%size112162%_))
                         (let () (declare (not safe)) (##fx+ _%i112177%_ '1))
                         (let ((_%$e112190%_ _%deleted112179%_))
                           (if _%$e112190%_ _%$e112190%_ _%probe112175%_)))
                        (if (eq? _%key112153%_ _%k112182%_)
                            (vector-ref
                             _%table112156%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe112175%_ '1)))
                            (_%loop112172%_
                             (let ((_%next-probe112195%_
                                    (fx+ _%start112168%_
                                         _%i112177%_
                                         (fx* _%i112177%_ _%i112177%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112195%_
                                _%size112162%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112177%_ '1))
                             _%deleted112179%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab112125%_ _%key112126%_ _%default112127%_)
        (let ((_%lock112129%_
               (let () (declare (not safe)) (&raw-table-lock _%tab112125%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again112134%_ ((_%spin112137%_ '0))
              (if (let ((__tmp117013
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock112129%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp117013 '0))
                  (let ((__tmp117014 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock112129%_ '1 __tmp117014))
                  (if (let () (declare (not safe)) (##fx< _%spin112137%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again112134%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin112137%_ '1))))
                      (let ((_%owner112143%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock112129%_ '1))))
                        (if (eq? _%owner112143%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner112143%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again112134%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r112149%_
                 (method-specializer-table-ref
                  _%tab112125%_
                  _%key112126%_
                  _%default112127%_)))
            (let () (declare (not safe)) (##vector-set! _%lock112129%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock112129%_ '0 '0 '1))
            _%$r112149%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab112077%_ _%key112078%_ _%value112079%_)
        (let ((_%table112081%_
               (let () (declare (not safe)) (&raw-table-table _%tab112077%_)))
              (_%seed112082%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112077%_))))
          (let* ((_%h112084%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key112078%_))
                         _%seed112082%_))
                 (_%size112087%_ (vector-length _%table112081%_))
                 (_%entries112090%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112087%_ '2)))
                 (_%start112093%_
                  (let ((__tmp117015
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112084%_ _%entries112090%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp117015 '1))))
            (let _%loop112097%_ ((_%probe112100%_ _%start112093%_)
                                 (_%i112102%_ '1)
                                 (_%deleted112104%_ '#f))
              (let ((_%k112107%_ (vector-ref _%table112081%_ _%probe112100%_)))
                (if (eq? _%k112107%_ (macro-unused-obj))
                    (if _%deleted112104%_
                        (begin
                          (vector-set!
                           _%table112081%_
                           _%deleted112104%_
                           _%key112078%_)
                          (vector-set!
                           _%table112081%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112104%_ '1))
                           _%value112079%_)
                          ((lambda ()
                             (let ((__tmp117016
                                    (let ((__tmp117017
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112077%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp117017 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112077%_
                                __tmp117016)))))
                        (begin
                          (vector-set!
                           _%table112081%_
                           _%probe112100%_
                           _%key112078%_)
                          (vector-set!
                           _%table112081%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112100%_ '1))
                           _%value112079%_)
                          ((lambda ()
                             (let ((__tmp117018
                                    (let ((__tmp117019
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112077%_))))
                                      (declare (not safe))
                                      (##fx- __tmp117019 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112077%_
                                __tmp117018))
                             (let ((__tmp117020
                                    (let ((__tmp117021
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112077%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp117021 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112077%_
                                __tmp117020))))))
                    (if (eq? _%k112107%_ (macro-deleted-obj))
                        (_%loop112097%_
                         (let ((_%next-probe112114%_
                                (fx+ _%start112093%_
                                     _%i112102%_
                                     (fx* _%i112102%_ _%i112102%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112114%_ _%size112087%_))
                         (let () (declare (not safe)) (##fx+ _%i112102%_ '1))
                         (let ((_%$e112117%_ _%deleted112104%_))
                           (if _%$e112117%_ _%$e112117%_ _%probe112100%_)))
                        (if (eq? _%key112078%_ _%k112107%_)
                            (let ()
                              (vector-set!
                               _%table112081%_
                               _%probe112100%_
                               _%key112078%_)
                              (vector-set!
                               _%table112081%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112100%_ '1))
                               _%value112079%_))
                            (_%loop112097%_
                             (let ((_%next-probe112122%_
                                    (fx+ _%start112093%_
                                         _%i112102%_
                                         (fx* _%i112102%_ _%i112102%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112122%_
                                _%size112087%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112102%_ '1))
                             _%deleted112104%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab112073%_ _%key112074%_ _%value112075%_)
        (if (let ((__tmp117024
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112073%_)))
                  (__tmp117022
                   (let ((__tmp117023
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112073%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp117023 '4))))
              (declare (not safe))
              (##fx< __tmp117024 __tmp117022))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112073%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab112073%_
         _%key112074%_
         _%value112075%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab112045%_ _%key112046%_ _%value112047%_)
        (let ((_%lock112050%_
               (let () (declare (not safe)) (&raw-table-lock _%tab112045%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again112055%_ ((_%spin112058%_ '0))
              (if (let ((__tmp117025
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock112050%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp117025 '0))
                  (let ((__tmp117026 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock112050%_ '1 __tmp117026))
                  (if (let () (declare (not safe)) (##fx< _%spin112058%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again112055%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin112058%_ '1))))
                      (let ((_%owner112064%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock112050%_ '1))))
                        (if (eq? _%owner112064%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner112064%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again112055%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r112070%_
                 (method-specializer-table-set!
                  _%tab112045%_
                  _%key112046%_
                  _%value112047%_)))
            (let () (declare (not safe)) (##vector-set! _%lock112050%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock112050%_ '0 '0 '1))
            _%$r112070%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab111996%_
               _%key111997%_
               _%method-specializer-table-update!111998%_
               _%default111999%_)
        (let ((_%table112001%_
               (let () (declare (not safe)) (&raw-table-table _%tab111996%_)))
              (_%seed112002%_
               (let () (declare (not safe)) (&raw-table-seed _%tab111996%_))))
          (let* ((_%h112004%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key111997%_))
                         _%seed112002%_))
                 (_%size112007%_ (vector-length _%table112001%_))
                 (_%entries112010%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112007%_ '2)))
                 (_%start112013%_
                  (let ((__tmp117027
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112004%_ _%entries112010%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp117027 '1))))
            (let _%loop112017%_ ((_%probe112020%_ _%start112013%_)
                                 (_%i112022%_ '1)
                                 (_%deleted112024%_ '#f))
              (let ((_%k112027%_ (vector-ref _%table112001%_ _%probe112020%_)))
                (if (eq? _%k112027%_ (macro-unused-obj))
                    (if _%deleted112024%_
                        (begin
                          (vector-set!
                           _%table112001%_
                           _%deleted112024%_
                           _%key111997%_)
                          (vector-set!
                           _%table112001%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112024%_ '1))
                           (_%method-specializer-table-update!111998%_
                            _%default111999%_))
                          ((lambda ()
                             (let ((__tmp117028
                                    (let ((__tmp117029
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab111996%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp117029 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab111996%_
                                __tmp117028)))))
                        (begin
                          (vector-set!
                           _%table112001%_
                           _%probe112020%_
                           _%key111997%_)
                          (vector-set!
                           _%table112001%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112020%_ '1))
                           (_%method-specializer-table-update!111998%_
                            _%default111999%_))
                          ((lambda ()
                             (let ((__tmp117030
                                    (let ((__tmp117031
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab111996%_))))
                                      (declare (not safe))
                                      (##fx- __tmp117031 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab111996%_
                                __tmp117030))
                             (let ((__tmp117032
                                    (let ((__tmp117033
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab111996%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp117033 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab111996%_
                                __tmp117032))))))
                    (if (eq? _%k112027%_ (macro-deleted-obj))
                        (_%loop112017%_
                         (let ((_%next-probe112034%_
                                (fx+ _%start112013%_
                                     _%i112022%_
                                     (fx* _%i112022%_ _%i112022%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112034%_ _%size112007%_))
                         (let () (declare (not safe)) (##fx+ _%i112022%_ '1))
                         (let ((_%$e112037%_ _%deleted112024%_))
                           (if _%$e112037%_ _%$e112037%_ _%probe112020%_)))
                        (if (eq? _%key111997%_ _%k112027%_)
                            (let ()
                              (vector-set!
                               _%table112001%_
                               _%probe112020%_
                               _%key111997%_)
                              (vector-set!
                               _%table112001%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112020%_ '1))
                               (_%method-specializer-table-update!111998%_
                                (vector-ref
                                 _%table112001%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe112020%_ '1))))))
                            (_%loop112017%_
                             (let ((_%next-probe112042%_
                                    (fx+ _%start112013%_
                                         _%i112022%_
                                         (fx* _%i112022%_ _%i112022%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112042%_
                                _%size112007%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112022%_ '1))
                             _%deleted112024%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab111991%_
               _%key111992%_
               _%method-specializer-table-update!111993%_
               _%default111994%_)
        (if (let ((__tmp117036
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab111991%_)))
                  (__tmp117034
                   (let ((__tmp117035
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab111991%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp117035 '4))))
              (declare (not safe))
              (##fx< __tmp117036 __tmp117034))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab111991%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab111991%_
         _%key111992%_
         _%method-specializer-table-update!111993%_
         _%default111994%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab111962%_
               _%key111963%_
               _%method-specializer-table-update!111964%_
               _%default111965%_)
        (let ((_%lock111968%_
               (let () (declare (not safe)) (&raw-table-lock _%tab111962%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again111973%_ ((_%spin111976%_ '0))
              (if (let ((__tmp117037
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock111968%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp117037 '0))
                  (let ((__tmp117038 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock111968%_ '1 __tmp117038))
                  (if (let () (declare (not safe)) (##fx< _%spin111976%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again111973%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin111976%_ '1))))
                      (let ((_%owner111982%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock111968%_ '1))))
                        (if (eq? _%owner111982%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner111982%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again111973%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r111988%_
                 (_%method-specializer-table-update!111964%_
                  _%tab111962%_
                  _%key111963%_
                  _%method-specializer-table-update!111964%_
                  _%default111965%_)))
            (let () (declare (not safe)) (##vector-set! _%lock111968%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock111968%_ '0 '0 '1))
            _%$r111988%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab111919%_ _%key111920%_)
        (let ((_%table111922%_
               (let () (declare (not safe)) (&raw-table-table _%tab111919%_)))
              (_%seed111924%_
               (let () (declare (not safe)) (&raw-table-seed _%tab111919%_))))
          (let* ((_%h111927%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key111920%_))
                         _%seed111924%_))
                 (_%size111930%_ (vector-length _%table111922%_))
                 (_%entries111933%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size111930%_ '2)))
                 (_%start111936%_
                  (let ((__tmp117039
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h111927%_ _%entries111933%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp117039 '1))))
            (let _%loop111940%_ ((_%probe111943%_ _%start111936%_)
                                 (_%i111945%_ '1))
              (let ((_%k111948%_ (vector-ref _%table111922%_ _%probe111943%_)))
                (if (eq? _%k111948%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k111948%_ (macro-deleted-obj))
                        (_%loop111940%_
                         (let ((_%next-probe111953%_
                                (fx+ _%start111936%_
                                     _%i111945%_
                                     (fx* _%i111945%_ _%i111945%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe111953%_ _%size111930%_))
                         (let () (declare (not safe)) (##fx+ _%i111945%_ '1)))
                        (if (eq? _%key111920%_ _%k111948%_)
                            (let ()
                              (vector-set!
                               _%table111922%_
                               _%probe111943%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table111922%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe111943%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp117040
                                        (let ((__tmp117041
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab111919%_))))
                                          (declare (not safe))
                                          (##fx- __tmp117041 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab111919%_
                                    __tmp117040)))))
                            (_%loop111940%_
                             (let ((_%next-probe111959%_
                                    (fx+ _%start111936%_
                                         _%i111945%_
                                         (fx* _%i111945%_ _%i111945%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe111959%_
                                _%size111930%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i111945%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab111891%_ _%key111893%_)
        (let ((_%lock111896%_
               (let () (declare (not safe)) (&raw-table-lock _%tab111891%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again111901%_ ((_%spin111904%_ '0))
              (if (let ((__tmp117042
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock111896%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp117042 '0))
                  (let ((__tmp117043 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock111896%_ '1 __tmp117043))
                  (if (let () (declare (not safe)) (##fx< _%spin111904%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again111901%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin111904%_ '1))))
                      (let ((_%owner111910%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock111896%_ '1))))
                        (if (eq? _%owner111910%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner111910%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again111901%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r111916%_
                 (method-specializer-table-delete!
                  _%tab111891%_
                  _%key111893%_)))
            (let () (declare (not safe)) (##vector-set! _%lock111896%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock111896%_ '0 '0 '1))
            _%$r111916%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc111888%_ _%specializer111889%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc111888%_
         _%specializer111889%_)))
    (define __lookup-method-specializer
      (lambda (_%proc111886%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc111886%_
         '#f)))
    (define specialize-class
      (lambda (_%klass111872%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass111872%_ 'class))
            (let ((_%klass111876%_ _%klass111872%_))
              (__specialize-class _%klass111876%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1070.25-1070.30"
               'contract:
               'class-type?
               'value:
               _%klass111872%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass111854%_)
        (let* ((_%klass111857%_ _%klass111854%_)
               (_%$e111866%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass111857%_ '12 '#f '#f))))
          (if _%$e111866%_
              _%$e111866%_
              (let ((_%method-table111870%_
                     (___specialize-class _%klass111857%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass111857%_
                   _%method-table111870%_
                   '12
                   '#f
                   '#f))
                _%method-table111870%_)))))
    (define __specialize-method
      (lambda (_%klass111838%_
               _%method-table111839%_
               _%method111840%_
               _%proc111841%_)
        (let ((_%$e111843%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table111839%_
                  _%method111840%_
                  '#f))))
          (if _%$e111843%_
              _%$e111843%_
              (let ((_%$e111846%_
                     (__lookup-method-specializer _%proc111841%_)))
                (if _%$e111846%_
                    ((lambda (_%specialize111849%_)
                       (let ((_%specialized-proc111851%_
                              (_%specialize111849%_
                               _%klass111838%_
                               _%method-table111839%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table111839%_
                          _%method111840%_
                          _%specialized-proc111851%_)))
                     _%$e111846%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table111839%_
                       _%method111840%_
                       _%proc111841%_))))))))
    (define ___specialize-class
      (lambda (_%klass111781%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass111781%_ 'class))
            (if (__class-type-metaclass? _%klass111781%_)
                (let ((__method116906
                       (__method-ref _%klass111781%_ 'specialize-class)))
                  (if __method116906
                      (let ()
                        (declare (not safe))
                        (__method116906 _%klass111781%_))
                      (begin
                        (error '"Missing method"
                               _%klass111781%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp117044
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass111781%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp117044))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass111781%_)
                    (let ((_%method-table111787%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop111789%_ ((_%rest111791%_
                                            (__class-precedence-list
                                             _%klass111781%_)))
                        (let* ((_%rest111792111800%_ _%rest111791%_)
                               (_%else111794111808%_
                                (lambda () _%method-table111787%_))
                               (_%K111796111826%_
                                (lambda (_%rest111811%_ _%xklass111812%_)
                                  (let ((_%xmethod-table111813111815%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass111812%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table111813111815%_
                                        (let* ((_%xmethod-table111817%_
                                                _%xmethod-table111813111815%_)
                                               (__tmp117045
                                                (lambda (_%g111818111821%_
                                                         _%g111819111823%_)
                                                  (__specialize-method
                                                   _%klass111781%_
                                                   _%method-table111787%_
                                                   _%g111818111821%_
                                                   _%g111819111823%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table111817%_
                                           __tmp117045))
                                        '#f))
                                  (_%loop111789%_ _%rest111811%_))))
                          (if (pair? _%rest111792111800%_)
                              (let ((_%hd111797111829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111792111800%_)))
                                    (_%tl111798111831%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111792111800%_))))
                                (let* ((_%xklass111834%_ _%hd111797111829%_)
                                       (_%rest111836%_ _%tl111798111831%_))
                                  (_%K111796111826%_
                                   _%rest111836%_
                                   _%xklass111834%_)))
                              (_%else111794111808%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass111781%_))
                (__specialize-class (__shadow-class__0 _%klass111781%_))
                (error '"bad class; cannot specialize" _%klass111781%_)))))
    (define seal-class!
      (lambda (_%klass111767%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass111767%_ 'class))
            (let ((_%klass111771%_ _%klass111767%_))
              (__seal-class! _%klass111771%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1116.20-1116.25"
               'contract:
               'class-type?
               'value:
               _%klass111767%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass111752%_)
        (let ((_%klass111755%_ _%klass111752%_))
          (if (__class-type-sealed? _%klass111755%_)
              '#!void
              (begin
                (if (__class-type-metaclass? _%klass111755%_)
                    (let ()
                      (let ((__method116907
                             (__method-ref _%klass111755%_ 'seal-class!)))
                        (if __method116907
                            (let ()
                              (declare (not safe))
                              (__method116907 _%klass111755%_))
                            (begin
                              (error '"Missing method"
                                     _%klass111755%_
                                     'seal-class!)
                              '#!void)))
                      (__specialize-class _%klass111755%_))
                    (if (let ((__tmp117046
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass111755%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp117046))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass111755%_)
                        (__specialize-class _%klass111755%_)))
                (__class-type-seal! _%klass111755%_))))))
    (define next-method
      (lambda (_%subklass111726%_ _%obj111727%_ _%id111728%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass111726%_ 'class))
            (let ((_%subklass111732%_ _%subklass111726%_))
              (if (symbol? _%id111728%_)
                  (let ((_%id111742%_ _%id111728%_))
                    (__next-method
                     _%subklass111732%_
                     _%obj111727%_
                     _%id111742%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1138.44-1138.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id111728%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.20-1138.28"
               'contract:
               'class-type?
               'value:
               _%subklass111726%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass111663%_ _%obj111664%_ _%id111665%_)
        (let* ((_%subklass111668%_ _%subklass111663%_)
               (_%id111676%_ _%id111665%_))
          (letrec ((_%find-next-method111685%_
                    (lambda (_%klass111687%_)
                      (let _%lp111689%_ ((_%rest111691%_
                                          (class-precedence-list
                                           _%klass111687%_)))
                        (let* ((_%rest111692111700%_ _%rest111691%_)
                               (_%else111694111708%_ (lambda () '#f))
                               (_%K111696111714%_
                                (lambda (_%rest111711%_ _%klass111712%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass111668%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass111712%_)))
                                      (__mixin-find-method
                                       _%rest111711%_
                                       _%obj111664%_
                                       _%id111676%_)
                                      (_%lp111689%_ _%rest111711%_)))))
                          (if (pair? _%rest111692111700%_)
                              (let ((_%hd111697111717%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111692111700%_)))
                                    (_%tl111698111719%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111692111700%_))))
                                (let* ((_%klass111722%_ _%hd111697111717%_)
                                       (_%rest111724%_ _%tl111698111719%_))
                                  (_%K111696111714%_
                                   _%rest111724%_
                                   _%klass111722%_)))
                              (_%else111694111708%_)))))))
            (_%find-next-method111685%_ (class-of _%obj111664%_))))))
    (define call-next-method
      (lambda (_%subklass111636%_ _%obj111637%_ _%id111638%_ . _%args111639%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass111636%_ 'class))
            (let ((_%subklass111643%_ _%subklass111636%_))
              (if (symbol? _%id111638%_)
                  (let ((_%id111653%_ _%id111638%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass111643%_
                             _%obj111637%_
                             _%id111653%_
                             _%args111639%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1149.49-1149.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id111638%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1149.25-1149.33"
               'contract:
               'class-type?
               'value:
               _%subklass111636%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass111607%_ _%obj111608%_ _%id111609%_ . _%args111610%_)
        (let* ((_%subklass111613%_ _%subklass111607%_)
               (_%id111621%_ _%id111609%_)
               (_%$e111630%_
                (__next-method _%subklass111613%_ _%obj111608%_ _%id111621%_)))
          (if _%$e111630%_
              ((lambda (_%methodf111633%_)
                 (apply _%methodf111633%_ _%obj111608%_ _%args111610%_))
               _%$e111630%_)
              (error '"cannot find next method"
                     'object:
                     _%obj111608%_
                     'method:
                     _%id111621%_)))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type111500%_ _%properties111501%_)
        (letrec ((_%shadow-type-id111503%_
                  (lambda (_%type111595%_)
                    (let ((__tmp117047
                           (let ()
                             (declare (not safe))
                             (##type-name _%type111595%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp117047 '"::t"))))
                 (_%shadow-type-name111504%_
                  (lambda (_%type111593%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type111593%_))))
                 (_%make-shadow-class111505%_
                  (lambda (_%type111585%_ _%precedence-list111586%_)
                    (let* ((_%super111588%_
                            (if (pair? _%precedence-list111586%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list111586%_))
                                      '())
                                '()))
                           (_%klass111590%_
                            (make-class-type
                             (_%shadow-type-id111503%_ _%type111585%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type111585%_))
                             _%super111588%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (cons (cons 'system-type:
                                                     _%type111585%_)
                                               (let ((__tmp117048
                                                      (if (__type-extensible?
                                                           _%type111585%_)
                                                          '()
                                                          (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  _%properties111501%_
                                                  __tmp117048)))))
                             '#f)))
                      (let ((__tmp117049
                             (let ()
                               (declare (not safe))
                               (##type-id _%type111585%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp117049
                         _%klass111590%_))
                      _%klass111590%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again111509%_ ((_%spin111512%_ '0))
              (if (let ((__tmp117050
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp117050 '0))
                  (let ((__tmp117051 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp117051))
                  (if (let () (declare (not safe)) (##fx< _%spin111512%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again111509%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin111512%_ '1))))
                      (let ((_%owner111518%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner111518%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner111518%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again111509%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e111524%_
                 (let ((__tmp117052
                        (let ()
                          (declare (not safe))
                          (##type-id _%type111500%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp117052 '#f))))
            (if _%$e111524%_
                ((lambda (_%klass111527%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass111527%_)
                 _%$e111524%_)
                (let _%loop111530%_ ((_%super111532%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type111500%_)))
                                     (_%hierarchy111533%_ '()))
                  (if (not _%super111532%_)
                      (let _%loop111536%_ ((_%rest111538%_ _%hierarchy111533%_)
                                           (_%precedence-list111539%_ '()))
                        (let* ((_%rest111540111548%_ _%rest111538%_)
                               (_%else111542111558%_
                                (lambda ()
                                  (let ((_%klass111556%_
                                         (_%make-shadow-class111505%_
                                          _%type111500%_
                                          _%precedence-list111539%_)))
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
                                       '1))
                                    _%klass111556%_)))
                               (_%K111544111572%_
                                (lambda (_%rest111561%_ _%type111562%_)
                                  (let ((_%$e111564%_
                                         (let ((__tmp117053
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type111562%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp117053
                                            '#f))))
                                    (if _%$e111564%_
                                        ((lambda (_%klass111567%_)
                                           (_%loop111536%_
                                            _%rest111561%_
                                            (cons _%klass111567%_
                                                  _%precedence-list111539%_)))
                                         _%$e111564%_)
                                        (let ((_%klass111570%_
                                               (_%make-shadow-class111505%_
                                                _%type111562%_
                                                _%precedence-list111539%_)))
                                          (_%loop111536%_
                                           _%rest111561%_
                                           (cons _%klass111570%_
                                                 _%precedence-list111539%_))))))))
                          (if (pair? _%rest111540111548%_)
                              (let ((_%hd111545111575%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111540111548%_)))
                                    (_%tl111546111577%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111540111548%_))))
                                (let* ((_%type111580%_ _%hd111545111575%_)
                                       (_%rest111582%_ _%tl111546111577%_))
                                  (_%K111544111572%_
                                   _%rest111582%_
                                   _%type111580%_)))
                              (_%else111542111558%_))))
                      (_%loop111530%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super111532%_))
                       (cons _%super111532%_ _%hierarchy111533%_)))))))))
    (define __shadow-class__0
      (lambda (_%type111600%_)
        (let ((_%properties111602%_ '()))
          (__shadow-class__% _%type111600%_ _%properties111602%_))))
    (define __shadow-class
      (lambda _g117054_
        (let ((_g117055_ (let () (declare (not safe)) (##length _g117054_))))
          (cond ((let () (declare (not safe)) (##fx= _g117055_ 1))
                 (apply __shadow-class__0 _g117054_))
                ((let () (declare (not safe)) (##fx= _g117055_ 2))
                 (apply __shadow-class__% _g117054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g117054_))))))
    (define __type
      (let* ((_%tb111488%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e111490%_ _%tb111488%_))
        (if (eq? '2 _%$e111490%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e111490%_)
                (let ((_%flonum-self-tagging-tags111493%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits111494%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e111496%_ _%flonum-self-tagging-tags111493%_))
                    (if (eq? '0 _%$e111496%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits111494%_ '2))
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
                        (if (eq? '1 _%$e111496%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits111494%_ '2))
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
                            (if (eq? '2 _%$e111496%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e111496%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e111496%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags111493%_))))))))
                (error '"unexpected tag width" _%tb111488%_)))))
    (define __class
      (let* ((_%len111436%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv111438%_
              (let () (declare (not safe)) (##make-vector _%len111436%_ '#f))))
        (let _%loop111441%_ ((_%i111443%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i111443%_ _%len111436%_))
              (let* ((_%t111445%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i111443%_)))
                     (_%f111485%_
                      (if (eq? _%t111445%_ 'undefined)
                          (lambda (_%obj111448%_)
                            (error '"object type is undefined" _%obj111448%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t111445%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj111451%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t111445%_))
                              (if (eq? _%t111445%_ 'subtyped)
                                  (lambda (_%obj111455%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st111458%_
                                           (##subtype _%obj111455%_)))
                                      (if (##fx= _%st111458%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass111461%_
                                                 (##structure-type
                                                  _%obj111455%_)))
                                            (if (##structure-instance-of?
                                                 _%klass111461%_
                                                 'class)
                                                _%klass111461%_
                                                (__shadow-class__0
                                                 _%klass111461%_)))
                                          (if (##fx= _%st111458%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj111455%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e111464%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st111458%_)))
                                                (if _%$e111464%_
                                                    (__system-class
                                                     _%$e111464%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st111458%_
                                                           'object:
                                                           _%obj111455%_)))))))
                                  (if (eq? _%t111445%_ 'special)
                                      (lambda (_%obj111469%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj111469%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj111469%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj111469%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj111469%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj111469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj111469%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj111469%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj111469%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj111469%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj111469%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj111469%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t111445%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv111438%_ _%i111443%_ _%f111485%_))
                (_%loop111441%_
                 (let () (declare (not safe)) (##fx+ _%i111443%_ '1))))
              _%cv111438%_))))
    (define type-of
      (lambda (_%obj111432%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj111432%_)))))
    (define class-of
      (lambda (_%obj111423%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t111427%_ (##type _%obj111423%_))
                 (_%f111429%_ (##vector-ref __class _%t111427%_)))
            (_%f111429%_ _%obj111423%_)))))
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
      (lambda (_%id111417%_)
        (let ((_%$e111419%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id111417%_ '#f))))
          (if _%$e111419%_
              _%$e111419%_
              (error '"unknown system class" _%id111417%_)))))
    (define __make-system-class
      (lambda (_%id111411%_ _%super111412%_ _%properties111413%_)
        (let ((_%klass111415%_
               (make-class-type
                _%id111411%_
                _%id111411%_
                _%super111412%_
                '()
                (cons (cons 'system: '#t)
                      (let ()
                        (declare (not safe))
                        (__foldr1 cons '() _%properties111413%_)))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id111411%_
             _%klass111415%_))
          _%klass111415%_)))))
