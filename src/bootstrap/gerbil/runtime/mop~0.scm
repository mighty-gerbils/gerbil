(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1734131745)
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
      (let ((_%flags100265%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties100266%_ '((direct-slots:) (system: . #t)))
            (_%slot-table100267%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags100265%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table100267%_
           _%properties100266%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots100241%_
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
             (_%slot-vector100243%_ (list->vector (cons '#f _%slots100241%_)))
             (_%slot-table100250%_
              (let ((_%slot-table100245%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp101708
                       (lambda (_%slot100247%_ _%field100248%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table100245%_
                            _%slot100247%_
                            _%field100248%_))
                         (let ((__tmp101709
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot100247%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table100245%_
                            __tmp101709
                            _%field100248%_))))
                      (__tmp101706
                       (let ((__tmp101707
                              (let ()
                                (declare (not safe))
                                (##length _%slots100241%_))))
                         (declare (not safe))
                         (##iota __tmp101707 '1))))
                  (declare (not safe))
                  (##for-each __tmp101708 _%slots100241%_ __tmp101706))
                _%slot-table100245%_))
             (_%flags100252%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields100258%_
              (list->vector
               (let ((__tmp101710
                      (map (lambda (_%g100253100255%_)
                             (list _%g100253100255%_ '5 '#f))
                           (drop _%slots100241%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp101710))))
             (_%properties100260%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots100241%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t100262%_
              (let ((__tmp101711 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags100252%_
                 ##type-type
                 _%fields100258%_
                 __tmp101711
                 _%slot-vector100243%_
                 _%slot-table100250%_
                 _%properties100260%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t100262%_ _%t100262%_))
        _%t100262%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags100237%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties100238%_ '((direct-slots:) (system: . #t)))
            (_%slot-table100239%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp101712 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags100237%_
           '#f
           '#()
           __tmp101712
           '#(#f)
           _%slot-table100239%_
           _%properties100238%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj100235%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj100235%_ 'class))))
    (define class-type=?
      (lambda (_%x100210%_ _%y100211%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x100210%_ 'class))
            (let ((_%x100215%_ _%x100210%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y100211%_ 'class))
                  (let ((_%y100225%_ _%y100211%_))
                    (__class-type=? _%x100215%_ _%y100225%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y100211%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x100210%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x100189%_ _%y100190%_)
        (let* ((_%x100193%_ _%x100189%_) (_%y100201%_ _%y100190%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x100193%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y100201%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type100175%_)
        (if (let () (declare (not safe)) (##type? _%type100175%_))
            (let ((_%type100179%_ _%type100175%_))
              (__type-opaque? _%type100179%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type100175%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type100163%_)
        (let* ((_%type100166%_ _%type100163%_)
               (__tmp101713
                (let ((__tmp101714
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100166%_))))
                  (declare (not safe))
                  (##fxand __tmp101714 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp101713 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100149%_)
        (if (let () (declare (not safe)) (##type? _%type100149%_))
            (let ((_%type100153%_ _%type100149%_))
              (__type-extensible? _%type100153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100149%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100137%_)
        (let* ((_%type100140%_ _%type100137%_)
               (__tmp101715
                (let ((__tmp101716
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100140%_))))
                  (declare (not safe))
                  (##fxand __tmp101716 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp101715 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100123%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100123%_ 'class))
            (let ((_%type100127%_ _%type100123%_))
              (__class-type-final? _%type100127%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100123%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100111%_)
        (let* ((_%type100114%_ _%type100111%_)
               (__tmp101717
                (let ((__tmp101718
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100114%_))))
                  (declare (not safe))
                  (##fxand __tmp101718 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp101717 '0))))
    (define class-type-struct?
      (lambda (_%klass100097%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100097%_ 'class))
            (let ((_%klass100101%_ _%klass100097%_))
              (__class-type-struct? _%klass100101%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100097%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100085%_)
        (let* ((_%klass100088%_ _%klass100085%_)
               (__tmp101719
                (let ((__tmp101720
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100088%_))))
                  (declare (not safe))
                  (##fxand __tmp101720 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp101719 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100071%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100071%_ 'class))
            (let ((_%klass100075%_ _%klass100071%_))
              (__class-type-sealed? _%klass100075%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100071%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100059%_)
        (let* ((_%klass100062%_ _%klass100059%_)
               (__tmp101721
                (let ((__tmp101722
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100062%_))))
                  (declare (not safe))
                  (##fxand __tmp101722 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp101721 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100045%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100045%_ 'class))
            (let ((_%klass100049%_ _%klass100045%_))
              (__class-type-metaclass? _%klass100049%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100045%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100033%_)
        (let* ((_%klass100036%_ _%klass100033%_)
               (__tmp101723
                (let ((__tmp101724
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100036%_))))
                  (declare (not safe))
                  (##fxand __tmp101724 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp101723 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100019%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100019%_ 'class))
            (let ((_%klass100023%_ _%klass100019%_))
              (__class-type-system? _%klass100023%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100019%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100007%_)
        (let* ((_%klass100010%_ _%klass100007%_)
               (__tmp101725
                (let ((__tmp101726
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100010%_))))
                  (declare (not safe))
                  (##fxand __tmp101726 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp101725 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id99889%_
               _%type-name99890%_
               _%type-super99891%_
               _%precedence-list99892%_
               _%slot-vector99893%_
               _%properties99894%_
               _%constructor99895%_
               _%slot-table99896%_
               _%methods99897%_)
        (letrec ((_%make-props!99900%_
                  (lambda (_%key99976%_)
                    (letrec* ((_%ht99978%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!99979%_
                               (lambda (_%ht100000%_ _%slots100001%_)
                                 (for-each
                                  (lambda (_%g100002100004%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100000%_
                                       _%g100002100004%_
                                       '#t)))
                                  _%slots100001%_)))
                              (_%put-alist!99980%_
                               (lambda (_%ht99989%_
                                        _%key99990%_
                                        _%alist99991%_)
                                 (let ((_%$e99993%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key99990%_
                                           _%alist99991%_))))
                                   (if _%$e99993%_
                                       ((lambda (_%g9999599997%_)
                                          (_%put-slots!99979%_
                                           _%ht99989%_
                                           _%g9999599997%_))
                                        _%$e99993%_)
                                       '#!void)))))
                      (_%put-alist!99980%_
                       _%ht99978%_
                       _%key99976%_
                       _%properties99894%_)
                      (for-each
                       (lambda (_%mixin99982%_)
                         (let ((_%alist99984%_
                                (##structure-ref
                                 _%mixin99982%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist99984%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key99976%_
                                           _%alist99984%_))))
                               (_%put-slots!99979%_
                                _%ht99978%_
                                (class-type-slot-list _%mixin99982%_))
                               (_%put-alist!99980%_
                                _%ht99978%_
                                _%key99976%_
                                _%alist99984%_))))
                       _%precedence-list99892%_)
                      _%ht99978%_))))
          (let* ((_%transparent?99902%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties99894%_)))
                 (_%all-slots-printable?99907%_
                  (let ((_%$e99904%_ _%transparent?99902%_))
                    (if _%$e99904%_
                        _%$e99904%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties99894%_))))))
                 (_%printable99909%_
                  (if (not _%all-slots-printable?99907%_)
                      (_%make-props!99900%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?99914%_
                  (let ((_%$e99911%_ _%transparent?99902%_))
                    (if _%$e99911%_
                        _%$e99911%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties99894%_))))))
                 (_%equalable99916%_
                  (if (not _%all-slots-equalable?99914%_)
                      (_%make-props!99900%_ 'equal:)
                      '#f))
                 (_%first-new-field99918%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super99891%_ 'class))
                      (let ((__tmp101727
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super99891%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp101727))
                      '1))
                 (_%field-info-length99920%_
                  (let ((__tmp101728
                         (let ((__tmp101729
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector99893%_))))
                           (declare (not safe))
                           (##fx- __tmp101729 _%first-new-field99918%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp101728)))
                 (_%field-info99922%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length99920%_ '#f)))
                 (_%struct?99924%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties99894%_)))
                 (_%final?99926%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties99894%_)))
                 (_%metaclass99934%_
                  (let ((_%metaclass9992799929%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties99894%_))))
                    (if _%metaclass9992799929%_
                        (let ((_%metaclass99932%_ _%metaclass9992799929%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass99932%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id99889%_
                                     'metaclass:
                                     _%metaclass99932%_))
                          _%metaclass99932%_)
                        '#f)))
                 (_%system?99936%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties99894%_)))
                 (_%opaque?99944%_
                  (if (or _%transparent?99902%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties99894%_)))
                      '#f
                      (let ((_%$e99941%_ (not _%type-super99891%_)))
                        (if _%$e99941%_
                            _%$e99941%_
                            (__type-opaque? _%type-super99891%_)))))
                 (_%type-flags99946%_
                  (let ((__tmp101734
                         (if _%final?99926%_ '0 type-flag-extensible))
                        (__tmp101733 (if _%opaque?99944%_ type-flag-opaque '0))
                        (__tmp101732
                         (if _%struct?99924%_ class-type-flag-struct '0))
                        (__tmp101731
                         (if _%metaclass99934%_ class-type-flag-metaclass '0))
                        (__tmp101730
                         (if _%system?99936%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp101734
                             __tmp101733
                             __tmp101732
                             __tmp101731
                             __tmp101730)))
                 (_%precedence-list99954%_
                  (let ((_%$e99948%_ (memq t::t _%precedence-list99892%_)))
                    (if _%$e99948%_
                        ((lambda (_%tail99951%_)
                           (if (null? (cdr _%tail99951%_))
                               _%precedence-list99892%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list99892%_)))
                         _%$e99948%_)
                        (let ((__tmp101735 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list99892%_ __tmp101735))))))
            (let _%loop99957%_ ((_%i99959%_ _%first-new-field99918%_)
                                (_%j99960%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j99960%_ _%field-info-length99920%_))
                  (let* ((_%slot99962%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector99893%_ _%i99959%_)))
                         (_%flags99970%_
                          (if _%transparent?99902%_
                              '0
                              (let ((__tmp101737
                                     (if (or _%all-slots-printable?99907%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable99909%_
                                                _%slot99962%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp101736
                                     (if (or _%all-slots-equalable?99914%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable99916%_
                                                _%slot99962%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp101737 __tmp101736)))))
                    (vector-set! _%field-info99922%_ _%j99960%_ _%slot99962%_)
                    (vector-set!
                     _%field-info99922%_
                     (let () (declare (not safe)) (##fx+ _%j99960%_ '1))
                     _%flags99970%_)
                    (_%loop99957%_
                     (let () (declare (not safe)) (##fx+ _%i99959%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j99960%_ '3))))
                  '#!void))
            (if _%metaclass99934%_
                (let ((_%val99973%_
                       (make-instance
                        _%metaclass99934%_
                        _%type-id99889%_
                        _%type-name99890%_
                        _%type-flags99946%_
                        _%type-super99891%_
                        _%field-info99922%_
                        _%precedence-list99954%_
                        _%slot-vector99893%_
                        _%slot-table99896%_
                        _%properties99894%_
                        _%constructor99895%_
                        _%methods99897%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val99973%_ 'class))
                      _%val99973%_
                      (error '"bad cast" class::t _%val99973%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id99889%_
                   _%type-name99890%_
                   _%type-flags99946%_
                   _%type-super99891%_
                   _%field-info99922%_
                   _%precedence-list99954%_
                   _%slot-vector99893%_
                   _%slot-table99896%_
                   _%properties99894%_
                   _%constructor99895%_
                   _%methods99897%_)))))))
    (define class-type-id
      (lambda (_%klass99887%_)
        (##structure-ref _%klass99887%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass99885%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99885%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass99882%_ _%val99883%_)
        (##structure-set! _%klass99882%_ _%val99883%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass99877%_ _%val99879%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99877%_
           _%val99879%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass99875%_)
        (##structure-ref _%klass99875%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass99873%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99873%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass99870%_ _%val99871%_)
        (##structure-set! _%klass99870%_ _%val99871%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass99865%_ _%val99867%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99865%_
           _%val99867%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass99863%_)
        (##structure-ref _%klass99863%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass99861%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99861%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass99858%_ _%val99859%_)
        (##structure-set! _%klass99858%_ _%val99859%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass99853%_ _%val99855%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99853%_
           _%val99855%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass99851%_)
        (##structure-ref _%klass99851%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass99849%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99849%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass99846%_ _%val99847%_)
        (##structure-set! _%klass99846%_ _%val99847%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass99841%_ _%val99843%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99841%_
           _%val99843%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass99839%_)
        (##structure-ref _%klass99839%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass99837%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99837%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass99834%_ _%val99835%_)
        (##structure-set! _%klass99834%_ _%val99835%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass99829%_ _%val99831%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99829%_
           _%val99831%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass99827%_)
        (##structure-ref _%klass99827%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass99825%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99825%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass99822%_ _%val99823%_)
        (##structure-set!
         _%klass99822%_
         _%val99823%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass99817%_ _%val99819%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99817%_
           _%val99819%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass99815%_)
        (##structure-ref _%klass99815%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass99813%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99813%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass99810%_ _%val99811%_)
        (##structure-set!
         _%klass99810%_
         _%val99811%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass99805%_ _%val99807%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99805%_
           _%val99807%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass99803%_)
        (##structure-ref _%klass99803%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass99801%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99801%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass99798%_ _%val99799%_)
        (##structure-set!
         _%klass99798%_
         _%val99799%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass99793%_ _%val99795%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99793%_
           _%val99795%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass99791%_)
        (##structure-ref _%klass99791%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass99789%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99789%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass99786%_ _%val99787%_)
        (##structure-set!
         _%klass99786%_
         _%val99787%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass99781%_ _%val99783%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99781%_
           _%val99783%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass99779%_)
        (##structure-ref _%klass99779%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass99777%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99777%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass99774%_ _%val99775%_)
        (##structure-set!
         _%klass99774%_
         _%val99775%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass99769%_ _%val99771%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99769%_
           _%val99771%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass99767%_)
        (##structure-ref _%klass99767%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass99765%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99765%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass99762%_ _%val99763%_)
        (##structure-set! _%klass99762%_ _%val99763%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass99757%_ _%val99759%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99757%_
           _%val99759%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass99743%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99743%_ 'class))
            (let ((_%klass99747%_ _%klass99743%_))
              (__class-type-slot-list _%klass99747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass99743%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass99731%_)
        (let ((_%klass99734%_ _%klass99731%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99734%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass99717%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99717%_ 'class))
            (let ((_%klass99721%_ _%klass99717%_))
              (__class-type-field-count _%klass99721%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass99717%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass99705%_)
        (let* ((_%klass99708%_ _%klass99705%_)
               (__tmp101738
                (let ((__tmp101739
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99708%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp101739))))
          (declare (not safe))
          (##fx- __tmp101738 '1))))
    (define class-type-seal!
      (lambda (_%klass99691%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99691%_ 'class))
            (let ((_%klass99695%_ _%klass99691%_))
              (__class-type-seal! _%klass99695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass99691%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass99679%_)
        (let ((_%klass99682%_ _%klass99679%_))
          (let ((__tmp101740
                 (let ((__tmp101741
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass99682%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp101741))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass99682%_
             __tmp101740
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct99654%_ _%maybe-super-struct99655%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct99654%_ 'class))
            (let ((_%maybe-sub-struct99659%_ _%maybe-sub-struct99654%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct99655%_
                     'class))
                  (let ((_%maybe-super-struct99669%_
                         _%maybe-super-struct99655%_))
                    (__substruct?
                     _%maybe-sub-struct99659%_
                     _%maybe-super-struct99669%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct99655%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct99654%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct99623%_ _%maybe-super-struct99624%_)
        (let* ((_%maybe-sub-struct99627%_ _%maybe-sub-struct99623%_)
               (_%maybe-super-struct99635%_ _%maybe-super-struct99624%_)
               (_%maybe-super-struct-id99644%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct99635%_))))
          (let _%lp99646%_ ((_%super-struct99648%_ _%maybe-sub-struct99627%_))
            (if (not _%super-struct99648%_)
                '#f
                (if (eq? _%maybe-super-struct-id99644%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct99648%_)))
                    '#t
                    (_%lp99646%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct99648%_)))))))))
    (define base-struct/1
      (lambda (_%klass99618%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99618%_ 'class))
            (if (__class-type-struct? _%klass99618%_)
                _%klass99618%_
                (let () (declare (not safe)) (##type-super _%klass99618%_)))
            (if (not _%klass99618%_)
                '#f
                (error '"not a class or false" _%klass99618%_)))))
    (define base-struct/2
      (lambda (_%klass199603%_ _%klass299604%_)
        (let ((_%s199606%_ (base-struct/1 _%klass199603%_))
              (_%s299607%_ (base-struct/1 _%klass299604%_)))
          (if (or (not _%s199606%_)
                  (and _%s299607%_ (substruct? _%s199606%_ _%s299607%_)))
              _%s299607%_
              (if (or (not _%s299607%_)
                      (and _%s199606%_ (substruct? _%s299607%_ _%s199606%_)))
                  _%s199606%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass199603%_
                         _%klass299604%_
                         _%s199606%_
                         _%s299607%_))))))
    (define base-struct/list
      (lambda (_%all-supers99487%_)
        (let* ((_%all-supers9948899513%_ _%all-supers99487%_)
               (_%E9949399517%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9948899513%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9951199600%_ (lambda () '#f))
                (_%K9950899586%_
                 (lambda (_%x99584%_) (base-struct/1 _%x99584%_)))
                (_%K9950399563%_
                 (lambda (_%y99560%_ _%x99561%_)
                   (base-struct/2 _%x99561%_ _%y99560%_)))
                (_%K9949499524%_
                 (lambda (_%y99521%_ _%x99522%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x99522%_ _%y99521%_)))))
            (let* ((_%__match101700101701%_
                    (lambda (_%hd9949599527%_ _%tl9949699529%_)
                      (let ((_%x99532%_ _%hd9949599527%_))
                        (letrec ((_%splice-rest9949899534%_
                                  (lambda (_%rest9950299541%_ _%y99543%_)
                                    (if (null? _%rest9950299541%_)
                                        (_%K9949499524%_ _%y99543%_ _%x99532%_)
                                        (_%E9949399517%_))))
                                 (_%splice-try9950099536%_
                                  (lambda (_%hd9950199545%_
                                           _%rest9950299547%_
                                           _%y9949799548%_)
                                    (let ((_%y99551%_ _%hd9950199545%_))
                                      (_%splice-loop9949999538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9950299547%_))
                                       (cons _%y99551%_ _%y9949799548%_)))))
                                 (_%splice-loop9949999538%_
                                  (lambda (_%rest9950299553%_ _%y9949799554%_)
                                    (if (pair? _%rest9950299553%_)
                                        (_%splice-try9950099536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9950299553%_))
                                         _%rest9950299553%_
                                         _%y9949799554%_)
                                        (_%splice-rest9949899534%_
                                         _%rest9950299553%_
                                         (reverse _%y9949799554%_))))))
                          (_%splice-loop9949999538%_ _%tl9949699529%_ '())))))
                   (_%try-match9949099596%_
                    (lambda ()
                      (if (pair? _%all-supers9948899513%_)
                          (let ((_%tl9951099591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9948899513%_)))
                                (_%hd9950999589%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9948899513%_))))
                            (if (null? _%tl9951099591%_)
                                (let ((_%x99594%_ _%hd9950999589%_))
                                  (base-struct/1 _%x99594%_))
                                (if (pair? _%tl9951099591%_)
                                    (let ((_%tl9950799575%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9951099591%_)))
                                          (_%hd9950699573%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9951099591%_))))
                                      (if (null? _%tl9950799575%_)
                                          (let ((_%x99571%_ _%hd9950999589%_)
                                                (_%y99578%_ _%hd9950699573%_))
                                            (_%K9950399563%_
                                             _%y99578%_
                                             _%x99571%_))
                                          (_%__match101700101701%_
                                           _%hd9950999589%_
                                           _%tl9951099591%_)))
                                    (_%__match101700101701%_
                                     _%hd9950999589%_
                                     _%tl9951099591%_))))
                          (_%E9949399517%_)))))
              (if (null? _%all-supers9948899513%_)
                  (_%K9951199600%_)
                  (_%try-match9949099596%_)))))))
    (define base-struct
      (lambda _%all-supers99485%_ (base-struct/list _%all-supers99485%_)))
    (define find-super-constructor
      (lambda (_%super99436%_)
        (let _%lp99438%_ ((_%rest99440%_ _%super99436%_)
                          (_%constructor99441%_ '#f))
          (let* ((_%rest9944299450%_ _%rest99440%_)
                 (_%else9944499458%_ (lambda () _%constructor99441%_))
                 (_%K9944699473%_
                  (lambda (_%rest99461%_ _%hd99462%_)
                    (let ((_%$e99464%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd99462%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e99464%_
                          ((lambda (_%xconstructor99467%_)
                             (if (or (not _%constructor99441%_)
                                     (eq? _%constructor99441%_
                                          _%xconstructor99467%_))
                                 (_%lp99438%_
                                  _%rest99461%_
                                  _%xconstructor99467%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor99441%_
                                        _%xconstructor99467%_)))
                           _%$e99464%_)
                          (_%lp99438%_ _%rest99461%_ _%constructor99441%_))))))
            (if (pair? _%rest9944299450%_)
                (let ((_%hd9944799476%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9944299450%_)))
                      (_%tl9944899478%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9944299450%_))))
                  (let* ((_%hd99481%_ _%hd9944799476%_)
                         (_%rest99483%_ _%tl9944899478%_))
                    (_%K9944699473%_ _%rest99483%_ _%hd99481%_)))
                (_%else9944499458%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list99412%_ _%direct-slots99413%_)
        (let* ((_%next-slot99415%_ '1)
               (_%slot-table99417%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots99419%_ '(__class))
               (_%process-slot99423%_
                (lambda (_%slot99421%_)
                  (if (symbol? _%slot99421%_)
                      '#!void
                      (error '"invalid slot name" _%slot99421%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table99417%_
                              _%slot99421%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table99417%_
                           _%slot99421%_
                           _%next-slot99415%_))
                        (let ((__tmp101742
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot99421%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table99417%_
                           __tmp101742
                           _%next-slot99415%_))
                        (set! _%r-slots99419%_
                              (cons _%slot99421%_ _%r-slots99419%_))
                        (set! _%next-slot99415%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot99415%_ '1))))
                      '#!void)))
               (_%process-slots99429%_
                (lambda (_%g9942499426%_)
                  (for-each _%process-slot99423%_ _%g9942499426%_))))
          (let ((__tmp101744
                 (lambda (_%mixin99432%_)
                   (_%process-slots99429%_
                    (let ((__tmp101745
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin99432%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp101745 '())))))
                (__tmp101743 (reverse _%class-precedence-list99412%_)))
            (declare (not safe))
            (##for-each __tmp101744 __tmp101743))
          (_%process-slots99429%_ _%direct-slots99413%_)
          (let ((_%slot-vector99434%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots99419%_)))))
            (values _%slot-vector99434%_ _%slot-table99417%_)))))
    (define make-class-type
      (lambda (_%id99337%_
               _%name99338%_
               _%direct-supers99339%_
               _%direct-slots99340%_
               _%properties99341%_
               _%constructor99342%_)
        (if (symbol? _%id99337%_)
            (let ((_%id99346%_ _%id99337%_))
              (if (symbol? _%name99338%_)
                  (let ((_%name99356%_ _%name99338%_))
                    (if (list? _%direct-supers99339%_)
                        (let ((_%direct-supers99366%_ _%direct-supers99339%_))
                          (if (list? _%direct-slots99340%_)
                              (let ((_%direct-slots99376%_
                                     _%direct-slots99340%_))
                                (if (list? _%properties99341%_)
                                    (let ((_%properties99386%_
                                           _%properties99341%_))
                                      (if ((lambda (_%$obj99395%_)
                                             (or (not _%$obj99395%_)
                                                 (symbol? _%$obj99395%_)))
                                           _%constructor99342%_)
                                          (let ((_%constructor99402%_
                                                 _%constructor99342%_))
                                            (__make-class-type
                                             _%id99346%_
                                             _%name99356%_
                                             _%direct-supers99366%_
                                             _%direct-slots99376%_
                                             _%properties99386%_
                                             _%constructor99402%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor99342%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties99341%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots99340%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers99339%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name99338%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id99337%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id99206%_
               _%name99207%_
               _%direct-supers99208%_
               _%direct-slots99209%_
               _%properties99210%_
               _%constructor99211%_)
        (let* ((_%id99214%_ _%id99206%_)
               (_%name99222%_ _%name99207%_)
               (_%direct-supers99230%_ _%direct-supers99208%_)
               (_%direct-slots99238%_ _%direct-slots99209%_)
               (_%properties99246%_ _%properties99210%_)
               (_%constructor99254%_ _%constructor99211%_))
          (let ((_%$e99266%_
                 (let ((__tmp101746
                        (lambda (_%$obj99263%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj99263%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp101746 _%direct-supers99230%_))))
            (if _%$e99266%_
                ((lambda (_%g9926899270%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9926899270%_))
                 _%$e99266%_)
                (let ((_%$e99273%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers99230%_))))
                  (if _%$e99273%_
                      ((lambda (_%g9927599277%_)
                         (error '"Cannot extend final class" _%g9927599277%_))
                       _%$e99273%_)
                      '#!void))))
          (let ((_g101747_ (compute-precedence-list _%direct-supers99230%_)))
            (begin
              (let ((_g101748_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g101747_)
                           (##values-length _g101747_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101748_ 2)))
                    (error "Context expects 2 values" _g101748_)))
              (let ((_%precedence-list99280%_
                     (let () (declare (not safe)) (##values-ref _g101747_ 0)))
                    (_%struct-super99281%_
                     (let () (declare (not safe)) (##values-ref _g101747_ 1))))
                (let ((_g101749_
                       (compute-class-slots
                        _%precedence-list99280%_
                        _%direct-slots99238%_)))
                  (begin
                    (let ((_g101750_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g101749_)
                                 (##values-length _g101749_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g101750_ 2)))
                          (error "Context expects 2 values" _g101750_)))
                    (let ((_%slot-vector99283%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g101749_ 0)))
                          (_%slot-table99284%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g101749_ 1))))
                      (let* ((_%properties99286%_
                              (cons (cons 'direct-slots: _%direct-slots99238%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers99230%_)
                                          _%properties99246%_)))
                             (_%constructor*99291%_
                              (let ((_%$e99288%_ _%constructor99254%_))
                                (if _%$e99288%_
                                    _%$e99288%_
                                    (find-super-constructor
                                     _%direct-supers99230%_))))
                             (_%precedence-list99334%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties99286%_))
                                      (memq object::t
                                            _%precedence-list99280%_))
                                  _%precedence-list99280%_
                                  (let _%loop99296%_ ((_%tail99298%_
                                                       _%precedence-list99280%_)
                                                      (_%head99299%_ '()))
                                    (let* ((_%tail9930099308%_ _%tail99298%_)
                                           (_%else9930299316%_
                                            (lambda ()
                                              (let ((__tmp101751
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp101751
                                                 _%head99299%_))))
                                           (_%K9930499322%_
                                            (lambda (_%rest99319%_ _%hd99320%_)
                                              (if (eq? _%hd99320%_ t::t)
                                                  (let ((__tmp101752
                                                         (cons object::t
                                                               _%tail99298%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp101752
                                                     _%head99299%_))
                                                  (_%loop99296%_
                                                   _%rest99319%_
                                                   (cons _%hd99320%_
                                                         _%head99299%_))))))
                                      (if (pair? _%tail9930099308%_)
                                          (let ((_%hd9930599325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9930099308%_)))
                                                (_%tl9930699327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9930099308%_))))
                                            (let* ((_%hd99330%_
                                                    _%hd9930599325%_)
                                                   (_%rest99332%_
                                                    _%tl9930699327%_))
                                              (_%K9930499322%_
                                               _%rest99332%_
                                               _%hd99330%_)))
                                          (_%else9930299316%_)))))))
                        (make-class-type-descriptor
                         _%id99214%_
                         _%name99222%_
                         _%struct-super99281%_
                         _%precedence-list99334%_
                         _%slot-vector99283%_
                         _%properties99286%_
                         _%constructor*99291%_
                         _%slot-table99284%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass99192%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99192%_ 'class))
            (let ((_%klass99196%_ _%klass99192%_))
              (__class-precedence-list _%klass99196%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass99192%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass99180%_)
        (let ((_%klass99183%_ _%klass99180%_))
          (cons _%klass99183%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99183%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers99177%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers99177%_))))
    (define make-class-predicate
      (lambda (_%klass99163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99163%_ 'class))
            (let ((_%klass99167%_ _%klass99163%_))
              (__make-class-predicate _%klass99167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass99163%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99134%_)
        (let* ((_%klass99137%_ _%klass99134%_)
               (_%tid99146%_
                (let () (declare (not safe)) (##type-id _%klass99137%_))))
          (if (__class-type-final? _%klass99137%_)
              (lambda (_%g9914899150%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9914899150%_
                   _%tid99146%_)))
              (if (__class-type-struct? _%klass99137%_)
                  (lambda (_%g9915399155%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9915399155%_ _%tid99146%_)))
                  (lambda (_%g9915899160%_)
                    (__class-instance? _%klass99137%_ _%g9915899160%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99109%_ _%slot99110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99109%_ 'class))
            (let ((_%klass99114%_ _%klass99109%_))
              (if (symbol? _%slot99110%_)
                  (let ((_%slot99124%_ _%slot99110%_))
                    (__make-class-slot-accessor _%klass99114%_ _%slot99124%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99110%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99109%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99077%_ _%slot99078%_)
        (let* ((_%klass99081%_ _%klass99077%_)
               (_%slot99089%_ _%slot99078%_)
               (_%field99098%_
                (let ((__tmp101753
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99081%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101753 _%slot99089%_ '#f))))
          (if (not _%field99098%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99081%_
                       'slot:
                       _%slot99089%_)
                '#!void)
              (if (__class-type-final? _%klass99081%_)
                  (make-final-slot-accessor
                   _%klass99081%_
                   _%slot99089%_
                   _%field99098%_)
                  (if (__class-type-struct? _%klass99081%_)
                      (make-struct-slot-accessor
                       _%klass99081%_
                       _%slot99089%_
                       _%field99098%_)
                      (if (let ((_%strukt99104%_
                                 (base-struct/1 _%klass99081%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99104%_
                                    'class))
                                 (let ((__tmp101754
                                        (let ((__tmp101755
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99104%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101755))))
                                   (declare (not safe))
                                   (##fx< _%field99098%_ __tmp101754))))
                          (make-struct-subclass-slot-accessor
                           _%klass99081%_
                           _%slot99089%_
                           _%field99098%_)
                          (make-class-cached-slot-accessor
                           _%klass99081%_
                           _%slot99089%_
                           _%field99098%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99052%_ _%slot99053%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99052%_ 'class))
            (let ((_%klass99057%_ _%klass99052%_))
              (if (symbol? _%slot99053%_)
                  (let ((_%slot99067%_ _%slot99053%_))
                    (__make-class-slot-mutator _%klass99057%_ _%slot99067%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99053%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99052%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99020%_ _%slot99021%_)
        (let* ((_%klass99024%_ _%klass99020%_)
               (_%slot99032%_ _%slot99021%_)
               (_%field99041%_
                (let ((__tmp101756
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99024%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101756 _%slot99032%_ '#f))))
          (if (not _%field99041%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99024%_
                       'slot:
                       _%slot99032%_)
                '#!void)
              (if (__class-type-final? _%klass99024%_)
                  (make-final-slot-mutator
                   _%klass99024%_
                   _%slot99032%_
                   _%field99041%_)
                  (if (__class-type-struct? _%klass99024%_)
                      (make-struct-slot-mutator
                       _%klass99024%_
                       _%slot99032%_
                       _%field99041%_)
                      (if (let ((_%strukt99047%_
                                 (base-struct/1 _%klass99024%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99047%_
                                    'class))
                                 (let ((__tmp101757
                                        (let ((__tmp101758
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99047%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101758))))
                                   (declare (not safe))
                                   (##fx< _%field99041%_ __tmp101757))))
                          (make-struct-subclass-slot-mutator
                           _%klass99024%_
                           _%slot99032%_
                           _%field99041%_)
                          (make-class-cached-slot-mutator
                           _%klass99024%_
                           _%slot99032%_
                           _%field99041%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass98995%_ _%slot98996%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98995%_ 'class))
            (let ((_%klass99000%_ _%klass98995%_))
              (if (symbol? _%slot98996%_)
                  (let ((_%slot99010%_ _%slot98996%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99000%_
                     _%slot99010%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98996%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass98995%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass98963%_ _%slot98964%_)
        (let* ((_%klass98967%_ _%klass98963%_)
               (_%slot98975%_ _%slot98964%_)
               (_%field98984%_
                (let ((__tmp101759
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98967%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101759 _%slot98975%_ '#f))))
          (if (not _%field98984%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98967%_
                       'slot:
                       _%slot98975%_)
                '#!void)
              (if (__class-type-final? _%klass98967%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass98967%_
                   _%slot98975%_
                   _%field98984%_)
                  (if (__class-type-struct? _%klass98967%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass98967%_
                       _%slot98975%_
                       _%field98984%_)
                      (if (let ((_%strukt98990%_
                                 (base-struct/1 _%klass98967%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98990%_
                                    'class))
                                 (let ((__tmp101760
                                        (let ((__tmp101761
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98990%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101761))))
                                   (declare (not safe))
                                   (##fx< _%field98984%_ __tmp101760))))
                          (make-struct-slot-unchecked-accessor
                           _%klass98967%_
                           _%slot98975%_
                           _%field98984%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass98967%_
                           _%slot98975%_
                           _%field98984%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass98938%_ _%slot98939%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98938%_ 'class))
            (let ((_%klass98943%_ _%klass98938%_))
              (if (symbol? _%slot98939%_)
                  (let ((_%slot98953%_ _%slot98939%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass98943%_
                     _%slot98953%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98939%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass98938%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass98906%_ _%slot98907%_)
        (let* ((_%klass98910%_ _%klass98906%_)
               (_%slot98918%_ _%slot98907%_)
               (_%field98927%_
                (let ((__tmp101762
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98910%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101762 _%slot98918%_ '#f))))
          (if (not _%field98927%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98910%_
                       'slot:
                       _%slot98918%_)
                '#!void)
              (if (__class-type-final? _%klass98910%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass98910%_
                   _%slot98918%_
                   _%field98927%_)
                  (if (__class-type-struct? _%klass98910%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass98910%_
                       _%slot98918%_
                       _%field98927%_)
                      (if (let ((_%strukt98933%_
                                 (base-struct/1 _%klass98910%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98933%_
                                    'class))
                                 (let ((__tmp101763
                                        (let ((__tmp101764
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98933%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101764))))
                                   (declare (not safe))
                                   (##fx< _%field98927%_ __tmp101763))))
                          (make-struct-slot-unchecked-mutator
                           _%klass98910%_
                           _%slot98918%_
                           _%field98927%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass98910%_
                           _%slot98918%_
                           _%field98927%_))))))))
    (define not-an-instance__%
      (lambda (_%object98890%_ _%class98891%_ _%slot98892%_)
        (apply error
               '"not an instance"
               'object:
               _%object98890%_
               'class:
               _%class98891%_
               (if _%slot98892%_ (cons 'slot: (cons _%slot98892%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object98897%_ _%class98898%_)
        (let ((_%slot98900%_ '#f))
          (not-an-instance__% _%object98897%_ _%class98898%_ _%slot98900%_))))
    (define not-an-instance
      (lambda _g101766_
        (let ((_g101765_ (let () (declare (not safe)) (##length _g101766_))))
          (cond ((let () (declare (not safe)) (##fx= _g101765_ 2))
                 (apply not-an-instance__0 _g101766_))
                ((let () (declare (not safe)) (##fx= _g101765_ 3))
                 (apply not-an-instance__% _g101766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g101766_))))))
    (define make-final-slot-accessor
      (lambda (_%klass98883%_ _%slot98884%_ _%field98885%_)
        (lambda (_%obj98887%_)
          (##direct-structure-ref
           _%obj98887%_
           _%field98885%_
           _%klass98883%_
           _%slot98884%_))))
    (define make-final-slot-mutator
      (lambda (_%klass98876%_ _%slot98877%_ _%field98878%_)
        (lambda (_%obj98880%_ _%val98881%_)
          (##direct-structure-set!
           _%obj98880%_
           _%val98881%_
           _%field98878%_
           _%klass98876%_
           _%slot98877%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass98870%_ _%slot98871%_ _%field98872%_)
        (lambda (_%obj98874%_)
          (##structure-ref
           _%obj98874%_
           _%field98872%_
           _%klass98870%_
           _%slot98871%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass98863%_ _%slot98864%_ _%field98865%_)
        (lambda (_%obj98867%_ _%val98868%_)
          (##structure-set!
           _%obj98867%_
           _%val98868%_
           _%field98865%_
           _%klass98863%_
           _%slot98864%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass98857%_ _%slot98858%_ _%field98859%_)
        (lambda (_%obj98861%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj98861%_
             _%field98859%_
             _%klass98857%_
             _%slot98858%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass98850%_ _%slot98851%_ _%field98852%_)
        (lambda (_%obj98854%_ _%val98855%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj98854%_
             _%val98855%_
             _%field98852%_
             _%klass98850%_
             _%slot98851%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass98844%_ _%slot98845%_ _%field98846%_)
        (lambda (_%obj98848%_)
          (if (class-instance? _%klass98844%_ _%obj98848%_)
              (unchecked-slot-ref _%obj98848%_ _%field98846%_)
              (not-an-instance__%
               _%obj98848%_
               _%klass98844%_
               _%slot98845%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass98837%_ _%slot98838%_ _%field98839%_)
        (lambda (_%obj98841%_ _%val98842%_)
          (if (class-instance? _%klass98837%_ _%obj98841%_)
              (unchecked-field-set! _%obj98841%_ _%field98839%_ _%val98842%_)
              (not-an-instance__%
               _%obj98841%_
               _%klass98837%_
               _%slot98838%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass98828%_ _%slot98829%_ _%field98830%_)
        (lambda (_%obj98832%_)
          (if (let ((__tmp101767
                     (let () (declare (not safe)) (##type-id _%klass98828%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98832%_ __tmp101767))
              (unchecked-field-ref _%obj98832%_ _%field98830%_)
              (if (class-instance? _%klass98828%_ _%obj98832%_)
                  (unchecked-slot-ref _%obj98832%_ _%slot98829%_)
                  (not-an-instance__%
                   _%obj98832%_
                   _%klass98828%_
                   _%slot98829%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass98818%_ _%slot98819%_ _%field98820%_)
        (lambda (_%obj98822%_ _%val98823%_)
          (if (let ((__tmp101768
                     (let () (declare (not safe)) (##type-id _%klass98818%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98822%_ __tmp101768))
              (unchecked-field-set! _%obj98822%_ _%field98820%_ _%val98823%_)
              (if (class-instance? _%klass98818%_ _%obj98822%_)
                  (unchecked-slot-set! _%obj98822%_ _%slot98819%_ _%val98823%_)
                  (not-an-instance__%
                   _%obj98822%_
                   _%klass98818%_
                   _%slot98819%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass98812%_ _%slot98813%_ _%field98814%_)
        (lambda (_%obj98816%_)
          (if (let ((__tmp101769
                     (let () (declare (not safe)) (##type-id _%klass98812%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98816%_ __tmp101769))
              (unchecked-field-ref _%obj98816%_ _%field98814%_)
              (unchecked-slot-ref _%obj98816%_ _%slot98813%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass98805%_ _%slot98806%_ _%field98807%_)
        (lambda (_%obj98809%_ _%val98810%_)
          (if (let ((__tmp101770
                     (let () (declare (not safe)) (##type-id _%klass98805%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98809%_ __tmp101770))
              (unchecked-field-set! _%obj98809%_ _%field98807%_ _%val98810%_)
              (unchecked-slot-set! _%obj98809%_ _%slot98806%_ _%val98810%_)))))
    (define class-slot-offset
      (lambda (_%klass98780%_ _%slot98781%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98780%_ 'class))
            (let ((_%klass98785%_ _%klass98780%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98781%_))
                  (let ((_%slot98795%_ _%slot98781%_))
                    (__class-slot-offset _%klass98785%_ _%slot98795%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98781%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass98780%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass98759%_ _%slot98760%_)
        (let* ((_%klass98763%_ _%klass98759%_)
               (_%slot98771%_ _%slot98760%_)
               (__tmp101771
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98763%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp101771 _%slot98771%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass98733%_ _%obj98734%_ _%slot98735%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98733%_ 'class))
            (let ((_%klass98739%_ _%klass98733%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98735%_))
                  (let ((_%slot98749%_ _%slot98735%_))
                    (__class-slot-ref
                     _%klass98739%_
                     _%obj98734%_
                     _%slot98749%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98735%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass98733%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass98709%_ _%obj98710%_ _%slot98711%_)
        (let* ((_%klass98714%_ _%klass98709%_) (_%slot98722%_ _%slot98711%_))
          (if (__class-instance? _%klass98714%_ _%obj98710%_)
              (let ((_%off98731%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj98710%_))
                      _%slot98722%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj98710%_
                 _%off98731%_
                 _%klass98714%_
                 _%slot98722%_))
              (not-an-instance__0 _%obj98710%_ _%klass98714%_)))))
    (define class-slot-set!
      (lambda (_%klass98682%_ _%obj98683%_ _%slot98684%_ _%val98685%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98682%_ 'class))
            (let ((_%klass98689%_ _%klass98682%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98684%_))
                  (let ((_%slot98699%_ _%slot98684%_))
                    (__class-slot-set!
                     _%klass98689%_
                     _%obj98683%_
                     _%slot98699%_
                     _%val98685%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98684%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass98682%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass98657%_ _%obj98658%_ _%slot98659%_ _%val98660%_)
        (let* ((_%klass98663%_ _%klass98657%_) (_%slot98671%_ _%slot98659%_))
          (if (__class-instance? _%klass98663%_ _%obj98658%_)
              (let ((_%off98680%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj98658%_))
                      _%slot98671%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj98658%_
                 _%val98660%_
                 _%off98680%_
                 _%klass98663%_
                 _%slot98671%_))
              (not-an-instance__0 _%obj98658%_ _%klass98663%_)))))
    (define unchecked-field-ref
      (lambda (_%obj98654%_ _%off98655%_)
        (let ((__tmp101772
               (let () (declare (not safe)) (##structure-type _%obj98654%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj98654%_
           _%off98655%_
           __tmp101772
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj98650%_ _%off98651%_ _%val98652%_)
        (let ((__tmp101773
               (let () (declare (not safe)) (##structure-type _%obj98650%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj98650%_
           _%val98652%_
           _%off98651%_
           __tmp101773
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj98647%_ _%slot98648%_)
        (unchecked-field-ref
         _%obj98647%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj98647%_))
          _%slot98648%_))))
    (define unchecked-slot-set!
      (lambda (_%obj98643%_ _%slot98644%_ _%val98645%_)
        (unchecked-field-set!
         _%obj98643%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj98643%_))
          _%slot98644%_)
         _%val98645%_)))
    (define slot-ref__%
      (lambda (_%obj98605%_ _%slot98606%_ _%E98607%_)
        (if (symbol? _%slot98606%_)
            (let ((_%slot98611%_ _%slot98606%_))
              (if (procedure? _%E98607%_)
                  (let ((_%E98621%_ _%E98607%_))
                    (__slot-ref__% _%obj98605%_ _%slot98611%_ _%E98621%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E98607%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot98606%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj98634%_ _%slot98635%_)
        (let ((_%E98637%_ __slot-error))
          (slot-ref__% _%obj98634%_ _%slot98635%_ _%E98637%_))))
    (define slot-ref
      (lambda _g101775_
        (let ((_g101774_ (let () (declare (not safe)) (##length _g101775_))))
          (cond ((let () (declare (not safe)) (##fx= _g101774_ 2))
                 (apply slot-ref__0 _g101775_))
                ((let () (declare (not safe)) (##fx= _g101774_ 3))
                 (apply slot-ref__% _g101775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g101775_))))))
    (define __slot-ref__%
      (lambda (_%obj98561%_ _%slot98562%_ _%E98563%_)
        (let* ((_%slot98566%_ _%slot98562%_)
               (_%E98574%_ _%E98563%_)
               (_%klass98583%_ (class-of _%obj98561%_))
               (_%$e98586%_
                (__class-slot-offset _%klass98583%_ _%slot98566%_)))
          (if _%$e98586%_
              ((lambda (_%off98589%_)
                 (unchecked-field-ref _%obj98561%_ _%off98589%_))
               _%$e98586%_)
              (let ()
                (declare (not safe))
                (_%E98574%_ _%obj98561%_ _%slot98566%_))))))
    (define __slot-ref__0
      (lambda (_%obj98595%_ _%slot98596%_)
        (let ((_%E98598%_ __slot-error))
          (__slot-ref__% _%obj98595%_ _%slot98596%_ _%E98598%_))))
    (define __slot-ref
      (lambda _g101777_
        (let ((_g101776_ (let () (declare (not safe)) (##length _g101777_))))
          (cond ((let () (declare (not safe)) (##fx= _g101776_ 2))
                 (apply __slot-ref__0 _g101777_))
                ((let () (declare (not safe)) (##fx= _g101776_ 3))
                 (apply __slot-ref__% _g101777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g101777_))))))
    (define slot-set!__%
      (lambda (_%obj98519%_ _%slot98520%_ _%val98521%_ _%E98522%_)
        (if (symbol? _%slot98520%_)
            (let ((_%slot98526%_ _%slot98520%_))
              (if (procedure? _%E98522%_)
                  (let ((_%E98536%_ _%E98522%_))
                    (__slot-set!__%
                     _%obj98519%_
                     _%slot98526%_
                     _%val98521%_
                     _%E98536%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E98522%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot98520%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj98549%_ _%slot98550%_ _%val98551%_)
        (let ((_%E98553%_ __slot-error))
          (slot-set!__% _%obj98549%_ _%slot98550%_ _%val98551%_ _%E98553%_))))
    (define slot-set!
      (lambda _g101779_
        (let ((_g101778_ (let () (declare (not safe)) (##length _g101779_))))
          (cond ((let () (declare (not safe)) (##fx= _g101778_ 3))
                 (apply slot-set!__0 _g101779_))
                ((let () (declare (not safe)) (##fx= _g101778_ 4))
                 (apply slot-set!__% _g101779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g101779_))))))
    (define __slot-set!__%
      (lambda (_%obj98472%_ _%slot98473%_ _%val98474%_ _%E98475%_)
        (let* ((_%slot98478%_ _%slot98473%_)
               (_%E98486%_ _%E98475%_)
               (_%klass98495%_ (class-of _%obj98472%_))
               (_%$e98498%_
                (__class-slot-offset _%klass98495%_ _%slot98478%_)))
          (if _%$e98498%_
              ((lambda (_%off98501%_)
                 (unchecked-field-set! _%obj98472%_ _%off98501%_ _%val98474%_))
               _%$e98498%_)
              (let ()
                (declare (not safe))
                (_%E98486%_ _%obj98472%_ _%slot98478%_))))))
    (define __slot-set!__0
      (lambda (_%obj98507%_ _%slot98508%_ _%val98509%_)
        (let ((_%E98511%_ __slot-error))
          (__slot-set!__%
           _%obj98507%_
           _%slot98508%_
           _%val98509%_
           _%E98511%_))))
    (define __slot-set!
      (lambda _g101781_
        (let ((_g101780_ (let () (declare (not safe)) (##length _g101781_))))
          (cond ((let () (declare (not safe)) (##fx= _g101780_ 3))
                 (apply __slot-set!__0 _g101781_))
                ((let () (declare (not safe)) (##fx= _g101780_ 4))
                 (apply __slot-set!__% _g101781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g101781_))))))
    (define __slot-error
      (lambda (_%obj98468%_ _%slot98469%_)
        (error '"Cannot find slot"
               'object:
               _%obj98468%_
               'slot:
               _%slot98469%_)))
    (define subclass?
      (lambda (_%maybe-sub-class98443%_ _%maybe-super-class98444%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class98443%_ 'class))
            (let ((_%maybe-sub-class98448%_ _%maybe-sub-class98443%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class98444%_
                     'class))
                  (let ((_%maybe-super-class98458%_
                         _%maybe-super-class98444%_))
                    (__subclass?
                     _%maybe-sub-class98448%_
                     _%maybe-super-class98458%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class98444%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class98443%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class98415%_ _%maybe-super-class98416%_)
        (let* ((_%maybe-sub-class98419%_ _%maybe-sub-class98415%_)
               (_%maybe-super-class98427%_ _%maybe-super-class98416%_)
               (_%maybe-super-class-id98436%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class98427%_)))
               (_%$e98438%_
                (eq? _%maybe-super-class-id98436%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class98419%_)))))
          (if _%$e98438%_
              _%$e98438%_
              (let ((__tmp101783
                     (lambda (_%super-class98441%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class98441%_))
                            _%maybe-super-class-id98436%_)))
                    (__tmp101782
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class98419%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp101783 __tmp101782))))))
    (define object?
      (lambda (_%o98412%_)
        (if (let () (declare (not safe)) (##structure? _%o98412%_))
            (let ((__tmp101784
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o98412%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp101784 'class))
            '#f)))
    (define object-type
      (lambda (_%o98407%_)
        (if (let () (declare (not safe)) (##structure? _%o98407%_))
            (let ((_%klass98410%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o98407%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass98410%_ 'class))
                  _%klass98410%_
                  (begin
                    (error '"not an object" _%o98407%_ _%klass98410%_)
                    '#!void)))
            (begin (error '"not an object" _%o98407%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass98392%_ _%obj98393%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98392%_ 'class))
            (let ((_%klass98397%_ _%klass98392%_))
              (__direct-instance? _%klass98397%_ _%obj98393%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass98392%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass98379%_ _%obj98380%_)
        (let* ((_%klass98383%_ _%klass98379%_)
               (__tmp101785
                (let () (declare (not safe)) (##type-id _%klass98383%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj98380%_ __tmp101785))))
    (define immediate-instance-of?
      (lambda (_%klass98375%_ _%obj98376%_)
        (if (let () (declare (not safe)) (##structure? _%obj98376%_))
            (eq? _%klass98375%_
                 (let () (declare (not safe)) (##structure-type _%obj98376%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass98360%_ _%obj98361%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98360%_ 'class))
            (let ((_%klass98365%_ _%klass98360%_))
              (__struct-instance? _%klass98365%_ _%obj98361%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass98360%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass98347%_ _%obj98348%_)
        (let* ((_%klass98351%_ _%klass98347%_)
               (__tmp101786
                (let () (declare (not safe)) (##type-id _%klass98351%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj98348%_ __tmp101786))))
    (define class-instance?
      (lambda (_%klass98332%_ _%obj98333%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98332%_ 'class))
            (let ((_%klass98337%_ _%klass98332%_))
              (__class-instance? _%klass98337%_ _%obj98333%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass98332%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass98317%_ _%obj98318%_)
        (let* ((_%klass98321%_ _%klass98317%_)
               (_%type98330%_ (class-of _%obj98318%_)))
          (__subclass? _%type98330%_ _%klass98321%_))))
    (define make-object
      (lambda (_%klass98292%_ _%k98293%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98292%_ 'class))
            (let ((_%klass98297%_ _%klass98292%_))
              (if (fixnum? _%k98293%_)
                  (let ((_%k98307%_ _%k98293%_))
                    (__make-object _%klass98297%_ _%k98307%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k98293%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass98292%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass98269%_ _%k98270%_)
        (let* ((_%klass98273%_ _%klass98269%_) (_%k98281%_ _%k98270%_))
          (if (__class-type-system? _%klass98273%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass98273%_)
                '#!void)
              (let ((_%obj98290%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass98273%_ _%k98281%_))))
                (object-fill! _%obj98290%_ '#f))))))
    (define object-fill!
      (lambda (_%obj98254%_ _%fill98255%_)
        (if '#t
            (let ((_%obj98259%_ _%obj98254%_))
              (__object-fill! _%obj98259%_ _%fill98255%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj98254%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj98236%_ _%fill98237%_)
        (let ((_%obj98240%_ _%obj98236%_))
          (let _%loop98249%_ ((_%i98251%_
                               (let ((__tmp101787
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj98240%_))))
                                 (declare (not safe))
                                 (##fx- __tmp101787 '1))))
            (if (let () (declare (not safe)) (##fx> _%i98251%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj98240%_
                     _%fill98237%_
                     _%i98251%_
                     '#f
                     '#f))
                  (_%loop98249%_
                   (let () (declare (not safe)) (##fx- _%i98251%_ '1))))
                _%obj98240%_)))))
    (define new-instance
      (lambda (_%klass98222%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98222%_ 'class))
            (let ((_%klass98226%_ _%klass98222%_))
              (__new-instance _%klass98226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass98222%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass98210%_)
        (let* ((_%klass98213%_ _%klass98210%_)
               (__obj101702
                (let ((__tmp101788
                       (let ((__tmp101789
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass98213%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp101789))))
                  (declare (not safe))
                  (##make-structure _%klass98213%_ __tmp101788))))
          (object-fill! __obj101702 '#f)
          __obj101702)))
    (define make-instance
      (lambda (_%klass98195%_ . _%args98196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98195%_ 'class))
            (let ((_%klass98200%_ _%klass98195%_))
              (declare (not safe))
              (##apply __make-instance _%klass98200%_ _%args98196%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass98195%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass98167%_ . _%args98168%_)
        (let* ((_%klass98171%_ _%klass98167%_)
               (_%$e98180%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98171%_ '10 '#f '#f))))
          (if _%$e98180%_
              ((lambda (_%kons-id98183%_)
                 (let ((_%obj98185%_ (__new-instance _%klass98171%_)))
                   (___constructor-init!
                    _%klass98171%_
                    _%kons-id98183%_
                    _%obj98185%_
                    _%args98168%_)
                   _%obj98185%_))
               _%$e98180%_)
              (if (__class-type-metaclass? _%klass98171%_)
                  (let ((_%obj98188%_ (__new-instance _%klass98171%_)))
                    (__metaclass-instance-init!
                     _%klass98171%_
                     _%obj98188%_
                     _%args98168%_)
                    _%obj98188%_)
                  (if (__class-type-struct? _%klass98171%_)
                      (if (let ((__tmp101791
                                 (__class-type-field-count _%klass98171%_))
                                (__tmp101790
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args98168%_))))
                            (declare (not safe))
                            (##fx= __tmp101791 __tmp101790))
                          (apply ##structure _%klass98171%_ _%args98168%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass98171%_
                                   'slots:
                                   (__class-type-slot-list _%klass98171%_)
                                   'args:
                                   _%args98168%_)
                            '#!void))
                      (let ((_%obj98191%_ (__new-instance _%klass98171%_)))
                        (___class-instance-init!
                         _%klass98171%_
                         _%obj98191%_
                         _%args98168%_)
                        _%obj98191%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98152%_ . _%args98153%_)
        (if '#t
            (let ((_%obj98157%_ _%obj98152%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98157%_ _%args98153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98152%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98139%_ . _%args98140%_)
        (let ((_%obj98143%_ _%obj98139%_))
          (if (let ((__tmp101793
                     (let () (declare (not safe)) (##length _%args98140%_)))
                    (__tmp101792
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98143%_))))
                (declare (not safe))
                (##fx< __tmp101793 __tmp101792))
              (___struct-instance-init! _%obj98143%_ _%args98140%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98143%_
                     'args:
                     _%args98140%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98098%_ _%args98099%_)
        (let _%lp98101%_ ((_%k98103%_ '1) (_%rest98104%_ _%args98099%_))
          (let* ((_%rest9810598113%_ _%rest98104%_)
                 (_%else9810798121%_ (lambda () _%obj98098%_))
                 (_%K9810998127%_
                  (lambda (_%rest98124%_ _%hd98125%_)
                    (unchecked-field-set! _%obj98098%_ _%k98103%_ _%hd98125%_)
                    (_%lp98101%_
                     (let () (declare (not safe)) (##fx+ _%k98103%_ '1))
                     _%rest98124%_))))
            (if (pair? _%rest9810598113%_)
                (let ((_%hd9811098130%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9810598113%_)))
                      (_%tl9811198132%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9810598113%_))))
                  (let* ((_%hd98135%_ _%hd9811098130%_)
                         (_%rest98137%_ _%tl9811198132%_))
                    (_%K9810998127%_ _%rest98137%_ _%hd98135%_)))
                (_%else9810798121%_))))))
    (define class-instance-init!
      (lambda (_%obj98083%_ . _%args98084%_)
        (if '#t
            (let ((_%obj98088%_ _%obj98083%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98088%_ _%args98084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98083%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98070%_ . _%args98071%_)
        (let ((_%obj98074%_ _%obj98070%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98074%_))
           _%obj98074%_
           _%args98071%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98012%_ _%obj98013%_ _%args98014%_)
        (let _%lp98016%_ ((_%rest98018%_ _%args98014%_))
          (let* ((_%rest9801998029%_ _%rest98018%_)
                 (_%else9802198037%_
                  (lambda ()
                    (if (null? _%rest98018%_)
                        _%obj98013%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98012%_
                               'rest:
                               _%rest98018%_))))
                 (_%K9802398051%_
                  (lambda (_%rest98040%_ _%val98041%_ _%key98042%_)
                    (if (keyword? _%key98042%_)
                        (let ((_%$e98045%_
                               (__class-slot-offset
                                _%klass98012%_
                                _%key98042%_)))
                          (if _%$e98045%_
                              ((lambda (_%off98048%_)
                                 (unchecked-field-set!
                                  _%obj98013%_
                                  _%off98048%_
                                  _%val98041%_)
                                 (_%lp98016%_ _%rest98040%_))
                               _%$e98045%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98012%_
                                     'slot:
                                     _%key98042%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98042%_)))))
            (if (pair? _%rest9801998029%_)
                (let ((_%hd9802498054%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9801998029%_)))
                      (_%tl9802598056%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9801998029%_))))
                  (let ((_%key98059%_ _%hd9802498054%_))
                    (if (pair? _%tl9802598056%_)
                        (let ((_%hd9802698061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9802598056%_)))
                              (_%tl9802798063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9802598056%_))))
                          (let* ((_%val98066%_ _%hd9802698061%_)
                                 (_%rest98068%_ _%tl9802798063%_))
                            (_%K9802398051%_
                             _%rest98068%_
                             _%val98066%_
                             _%key98059%_)))
                        (_%else9802198037%_))))
                (_%else9802198037%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98008%_ _%obj98009%_ _%args98010%_)
        (apply call-method
               _%klass98008%_
               'instance-init!
               _%obj98009%_
               _%args98010%_)))
    (define constructor-init!
      (lambda (_%klass97971%_ _%kons-id97972%_ _%obj97973%_ . _%args97974%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97971%_ 'class))
            (let ((_%klass97978%_ _%klass97971%_))
              (if (symbol? _%kons-id97972%_)
                  (let ((_%kons-id97988%_ _%kons-id97972%_))
                    (if '#t
                        (let ((_%obj97998%_ _%obj97973%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass97978%_
                                   _%kons-id97988%_
                                   _%obj97998%_
                                   _%args97974%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj97973%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id97972%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass97971%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass97940%_ _%kons-id97941%_ _%obj97942%_ . _%args97943%_)
        (let* ((_%klass97946%_ _%klass97940%_)
               (_%kons-id97954%_ _%kons-id97941%_)
               (_%obj97962%_ _%obj97942%_))
          (___constructor-init!
           _%klass97946%_
           _%kons-id97954%_
           _%obj97962%_
           _%args97943%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass97929%_ _%kons-id97930%_ _%obj97931%_ _%args97932%_)
        (let ((_%$e97934%_
               (__find-method _%klass97929%_ _%obj97931%_ _%kons-id97930%_)))
          (if _%$e97934%_
              ((lambda (_%kons97937%_)
                 (apply _%kons97937%_ _%obj97931%_ _%args97932%_)
                 _%obj97931%_)
               _%$e97934%_)
              (error '"missing constructor"
                     'class:
                     _%klass97929%_
                     'method:
                     _%kons-id97930%_)))))
    (define struct-copy
      (lambda (_%struct97915%_)
        (if '#t
            (let ((_%struct97919%_ _%struct97915%_))
              (__struct-copy _%struct97919%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct97915%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct97903%_)
        (let ((_%struct97906%_ _%struct97903%_))
          (declare (not safe))
          (##structure-copy _%struct97906%_))))
    (define struct->list
      (lambda (_%obj97889%_)
        (if '#t
            (let ((_%obj97893%_ _%obj97889%_)) (__struct->list _%obj97893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj97889%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj97877%_)
        (let ((_%obj97880%_ _%obj97877%_))
          (declare (not safe))
          (##vector->list _%obj97880%_))))
    (define class->list
      (lambda (_%obj97863%_)
        (if '#t
            (let ((_%obj97867%_ _%obj97863%_)) (__class->list _%obj97867%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj97863%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj97839%_)
        (let* ((_%obj97842%_ _%obj97839%_)
               (_%klass97851%_
                (let () (declare (not safe)) (##structure-type _%obj97842%_)))
               (_%slot-vector97853%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97851%_ '7 '#f '#f))))
          (let _%loop97855%_ ((_%index97857%_
                               (let ((__tmp101794
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector97853%_))))
                                 (declare (not safe))
                                 (##fx- __tmp101794 '1)))
                              (_%plist97858%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index97857%_ '1))
                (cons _%klass97851%_ _%plist97858%_)
                (let ((_%slot97861%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector97853%_ _%index97857%_))))
                  (_%loop97855%_
                   (let () (declare (not safe)) (##fx- _%index97857%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot97861%_))
                         (cons (unchecked-field-ref
                                _%obj97842%_
                                _%index97857%_)
                               _%plist97858%_)))))))))
    (define call-method
      (lambda (_%obj97823%_ _%id97824%_ . _%args97825%_)
        (if (symbol? _%id97824%_)
            (let ((_%id97829%_ _%id97824%_))
              (declare (not safe))
              (##apply __call-method _%obj97823%_ _%id97829%_ _%args97825%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id97824%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj97792%_ _%id97793%_ . _%args97794%_)
        (let* ((_%id97797%_ _%id97793%_)
               (_%$e97806%_ (__method-ref _%obj97792%_ _%id97797%_)))
          (if _%$e97806%_
              ((lambda (_%method97809%_)
                 (let ((_%method97811%_ _%method97809%_))
                   (apply _%method97811%_ _%obj97792%_ _%args97794%_)))
               _%$e97806%_)
              (error '"cannot find method"
                     'object:
                     _%obj97792%_
                     'method:
                     _%id97797%_)))))
    (define method-ref
      (lambda (_%obj97777%_ _%id97778%_)
        (if (symbol? _%id97778%_)
            (let ((_%id97782%_ _%id97778%_))
              (__method-ref _%obj97777%_ _%id97782%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id97778%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj97764%_ _%id97765%_)
        (let ((_%id97768%_ _%id97765%_))
          (__find-method (class-of _%obj97764%_) _%obj97764%_ _%id97768%_))))
    (define checked-method-ref
      (lambda (_%obj97757%_ _%id97758%_)
        (let ((_%$e97761%_ (method-ref _%obj97757%_ _%id97758%_)))
          (if _%$e97761%_
              _%$e97761%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj97757%_
                       'method:
                       _%id97758%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj97742%_ _%id97743%_)
        (if (symbol? _%id97743%_)
            (let ((_%id97747%_ _%id97743%_))
              (__bound-method-ref _%obj97742%_ _%id97747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id97743%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj97710%_ _%id97711%_)
        (let* ((_%id97714%_ _%id97711%_)
               (_%$e97723%_ (__method-ref _%obj97710%_ _%id97714%_)))
          (if _%$e97723%_
              ((lambda (_%method97726%_)
                 (let ((_%method97728%_ _%method97726%_))
                   (lambda _%args97739%_
                     (apply _%method97728%_ _%obj97710%_ _%args97739%_))))
               _%$e97723%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj97695%_ _%id97696%_)
        (if (symbol? _%id97696%_)
            (let ((_%id97700%_ _%id97696%_))
              (__checked-bound-method-ref _%obj97695%_ _%id97700%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id97696%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj97678%_ _%id97679%_)
        (let* ((_%id97682%_ _%id97679%_)
               (_%method97691%_ (checked-method-ref _%obj97678%_ _%id97682%_)))
          (lambda _%args97693%_
            (apply _%method97691%_ _%obj97678%_ _%args97693%_)))))
    (define find-method
      (lambda (_%klass97652%_ _%obj97653%_ _%id97654%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97652%_ 'class))
            (let ((_%klass97658%_ _%klass97652%_))
              (if (symbol? _%id97654%_)
                  (let ((_%id97668%_ _%id97654%_))
                    (__find-method _%klass97658%_ _%obj97653%_ _%id97668%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id97654%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass97652%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass97625%_ _%obj97626%_ _%id97627%_)
        (let* ((_%klass97630%_ _%klass97625%_)
               (_%id97638%_ _%id97627%_)
               (_%$e97647%_
                (__direct-method-ref _%klass97630%_ _%obj97626%_ _%id97638%_)))
          (if _%$e97647%_
              _%$e97647%_
              (if (__class-type-sealed? _%klass97630%_)
                  '#f
                  (__mixin-method-ref
                   _%klass97630%_
                   _%obj97626%_
                   _%id97638%_))))))
    (define mixin-find-method
      (lambda (_%mixins97609%_ _%obj97610%_ _%id97611%_)
        (if (symbol? _%id97611%_)
            (let ((_%id97615%_ _%id97611%_))
              (__mixin-find-method _%mixins97609%_ _%obj97610%_ _%id97615%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id97611%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins97591%_ _%obj97592%_ _%id97593%_)
        (let* ((_%id97596%_ _%id97593%_)
               (__tmp101795
                (lambda (_%g9760497606%_)
                  (direct-method-ref
                   _%g9760497606%_
                   _%obj97592%_
                   _%id97596%_))))
          (declare (not safe))
          (__ormap1 __tmp101795 _%mixins97591%_))))
    (define direct-method-ref
      (lambda (_%klass97565%_ _%obj97566%_ _%id97567%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97565%_ 'class))
            (let ((_%klass97571%_ _%klass97565%_))
              (if (symbol? _%id97567%_)
                  (let ((_%id97581%_ _%id97567%_))
                    (__direct-method-ref
                     _%klass97571%_
                     _%obj97566%_
                     _%id97581%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id97567%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass97565%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass97519%_ _%obj97520%_ _%id97521%_)
        (let* ((_%klass97524%_ _%klass97519%_) (_%id97532%_ _%id97521%_))
          (letrec ((_%metaclass-resolve-method97541%_
                    (lambda ()
                      (let ((__method101703
                             (__method-ref _%klass97524%_ 'direct-method-ref)))
                        (if __method101703
                            (let ()
                              (declare (not safe))
                              (__method101703
                               _%klass97524%_
                               _%obj97520%_
                               _%id97532%_))
                            (begin
                              (error '"Missing method"
                                     _%klass97524%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!97542%_
                    (lambda ()
                      (let ((_%method97562%_
                             (_%metaclass-resolve-method97541%_)))
                        (let ((__tmp101797
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97524%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp101796
                               (if _%method97562%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp101797
                           _%id97532%_
                           __tmp101796))
                        _%method97562%_))))
            (let ((_%$e97544%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass97524%_ '11 '#f '#f))))
              (if _%$e97544%_
                  ((lambda (_%ht97547%_)
                     (let ((_%method97549%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht97547%_
                               _%id97532%_
                               '#f))))
                       (if (procedure? _%method97549%_)
                           _%method97549%_
                           (if (__class-type-metaclass? _%klass97524%_)
                               (let ((_%$e97553%_ _%method97549%_))
                                 (if (eq? 'resolved _%$e97553%_)
                                     (_%metaclass-resolve-method97541%_)
                                     (if (eq? 'unknown _%$e97553%_)
                                         '#f
                                         (_%metaclass-resolve-method!97542%_))))
                               '#f))))
                   _%$e97544%_)
                  (if (__class-type-metaclass? _%klass97524%_)
                      (let ((_%tab97558%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97524%_
                           _%tab97558%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!97542%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass97493%_ _%obj97494%_ _%id97495%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97493%_ 'class))
            (let ((_%klass97499%_ _%klass97493%_))
              (if (symbol? _%id97495%_)
                  (let ((_%id97509%_ _%id97495%_))
                    (__mixin-method-ref
                     _%klass97499%_
                     _%obj97494%_
                     _%id97509%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id97495%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass97493%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass97471%_ _%obj97472%_ _%id97473%_)
        (let* ((_%klass97476%_ _%klass97471%_) (_%id97484%_ _%id97473%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass97476%_ '6 '#f '#f))
           _%obj97472%_
           _%id97484%_))))
    (define bind-method!__%
      (lambda (_%klass97430%_ _%id97431%_ _%proc97432%_ _%rebind?97433%_)
        (if (symbol? _%id97431%_)
            (let ((_%id97437%_ _%id97431%_))
              (if (procedure? _%proc97432%_)
                  (let ((_%proc97447%_ _%proc97432%_))
                    (__bind-method!__%
                     _%klass97430%_
                     _%id97437%_
                     _%proc97447%_
                     _%rebind?97433%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc97432%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id97431%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass97460%_ _%id97461%_ _%proc97462%_)
        (let ((_%rebind?97464%_ '#f))
          (bind-method!__%
           _%klass97460%_
           _%id97461%_
           _%proc97462%_
           _%rebind?97464%_))))
    (define bind-method!
      (lambda _g101799_
        (let ((_g101798_ (let () (declare (not safe)) (##length _g101799_))))
          (cond ((let () (declare (not safe)) (##fx= _g101798_ 3))
                 (apply bind-method!__0 _g101799_))
                ((let () (declare (not safe)) (##fx= _g101798_ 4))
                 (apply bind-method!__% _g101799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g101799_))))))
    (define __bind-method!__%
      (lambda (_%klass97381%_ _%id97382%_ _%proc97383%_ _%rebind?97384%_)
        (let* ((_%id97387%_ _%id97382%_) (_%proc97395%_ _%proc97383%_))
          (letrec ((_%bind!97404%_
                    (lambda (_%ht97413%_)
                      (if (and (not _%rebind?97384%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht97413%_
                                  _%id97387%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass97381%_
                                 'method:
                                 _%id97387%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht97413%_
                               _%id97387%_
                               _%proc97395%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass97381%_ 'class))
                (let ((_%ht97407%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97381%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht97407%_
                      (_%bind!97404%_ _%ht97407%_)
                      (let ((_%ht97409%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97381%_
                           _%ht97409%_
                           '11
                           '#f
                           '#f))
                        (_%bind!97404%_ _%ht97409%_))))
                (if (let () (declare (not safe)) (##type? _%klass97381%_))
                    (__bind-method!__%
                     (__shadow-class _%klass97381%_)
                     _%id97387%_
                     _%proc97395%_
                     _%rebind?97384%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass97381%_)))))))
    (define __bind-method!__0
      (lambda (_%klass97418%_ _%id97419%_ _%proc97420%_)
        (let ((_%rebind?97422%_ '#f))
          (__bind-method!__%
           _%klass97418%_
           _%id97419%_
           _%proc97420%_
           _%rebind?97422%_))))
    (define __bind-method!
      (lambda _g101801_
        (let ((_g101800_ (let () (declare (not safe)) (##length _g101801_))))
          (cond ((let () (declare (not safe)) (##fx= _g101800_ 3))
                 (apply __bind-method!__0 _g101801_))
                ((let () (declare (not safe)) (##fx= _g101800_ 4))
                 (apply __bind-method!__% _g101801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g101801_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint97361%_ _%seed97363%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97361%_
           procedure-hash
           eq?
           _%seed97363%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97369%_ '#f) (_%seed97371%_ '0))
          (make-method-specializer-table__%
           _%size-hint97369%_
           _%seed97371%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint97373%_)
        (let ((_%seed97375%_ '0))
          (make-method-specializer-table__%
           _%size-hint97373%_
           _%seed97375%_))))
    (define make-method-specializer-table
      (lambda _g101803_
        (let ((_g101802_ (let () (declare (not safe)) (##length _g101803_))))
          (cond ((let () (declare (not safe)) (##fx= _g101802_ 0))
                 (apply make-method-specializer-table__0 _g101803_))
                ((let () (declare (not safe)) (##fx= _g101802_ 1))
                 (apply make-method-specializer-table__1 _g101803_))
                ((let () (declare (not safe)) (##fx= _g101802_ 2))
                 (apply make-method-specializer-table__% _g101803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g101803_))))))
    (define method-specializer-table-ref
      (lambda (_%tab97314%_ _%key97315%_ _%default97316%_)
        (let ((_%table97318%_
               (let () (declare (not safe)) (&raw-table-table _%tab97314%_)))
              (_%seed97319%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97314%_))))
          (let* ((_%h97321%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97315%_))
                         _%seed97319%_))
                 (_%size97324%_ (vector-length _%table97318%_))
                 (_%entries97327%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97324%_ '2)))
                 (_%start97330%_
                  (let ((__tmp101804
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97321%_ _%entries97327%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101804 '1))))
            (let _%loop97334%_ ((_%probe97337%_ _%start97330%_)
                                (_%i97339%_ '1)
                                (_%deleted97341%_ '#f))
              (let ((_%k97344%_ (vector-ref _%table97318%_ _%probe97337%_)))
                (if (eq? _%k97344%_ (macro-unused-obj))
                    _%default97316%_
                    (if (eq? _%k97344%_ (macro-deleted-obj))
                        (_%loop97334%_
                         (let ((_%next-probe97349%_
                                (fx+ _%start97330%_
                                     _%i97339%_
                                     (fx* _%i97339%_ _%i97339%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97349%_ _%size97324%_))
                         (let () (declare (not safe)) (##fx+ _%i97339%_ '1))
                         (let ((_%$e97352%_ _%deleted97341%_))
                           (if _%$e97352%_ _%$e97352%_ _%probe97337%_)))
                        (if (eq? _%key97315%_ _%k97344%_)
                            (vector-ref
                             _%table97318%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97337%_ '1)))
                            (_%loop97334%_
                             (let ((_%next-probe97357%_
                                    (fx+ _%start97330%_
                                         _%i97339%_
                                         (fx* _%i97339%_ _%i97339%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97357%_ _%size97324%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97339%_ '1))
                             _%deleted97341%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab97310%_ _%key97311%_ _%value97312%_)
        (if (let ((__tmp101807
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97310%_)))
                  (__tmp101805
                   (let ((__tmp101806
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97310%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101806 '4))))
              (declare (not safe))
              (##fx< __tmp101807 __tmp101805))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97310%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab97310%_
         _%key97311%_
         _%value97312%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab97261%_ _%key97262%_ _%value97263%_)
        (let ((_%table97266%_
               (let () (declare (not safe)) (&raw-table-table _%tab97261%_)))
              (_%seed97267%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97261%_))))
          (let* ((_%h97269%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97262%_))
                         _%seed97267%_))
                 (_%size97272%_ (vector-length _%table97266%_))
                 (_%entries97275%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97272%_ '2)))
                 (_%start97278%_
                  (let ((__tmp101808
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97269%_ _%entries97275%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101808 '1))))
            (let _%loop97282%_ ((_%probe97285%_ _%start97278%_)
                                (_%i97287%_ '1)
                                (_%deleted97289%_ '#f))
              (let ((_%k97292%_ (vector-ref _%table97266%_ _%probe97285%_)))
                (if (eq? _%k97292%_ (macro-unused-obj))
                    (if _%deleted97289%_
                        (begin
                          (vector-set!
                           _%table97266%_
                           _%deleted97289%_
                           _%key97262%_)
                          (vector-set!
                           _%table97266%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97289%_ '1))
                           _%value97263%_)
                          ((lambda ()
                             (let ((__tmp101809
                                    (let ((__tmp101810
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97261%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101810 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97261%_
                                __tmp101809)))))
                        (begin
                          (vector-set!
                           _%table97266%_
                           _%probe97285%_
                           _%key97262%_)
                          (vector-set!
                           _%table97266%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97285%_ '1))
                           _%value97263%_)
                          ((lambda ()
                             (let ((__tmp101811
                                    (let ((__tmp101812
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97261%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101812 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97261%_ __tmp101811))
                             (let ((__tmp101813
                                    (let ((__tmp101814
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97261%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101814 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97261%_
                                __tmp101813))))))
                    (if (eq? _%k97292%_ (macro-deleted-obj))
                        (_%loop97282%_
                         (let ((_%next-probe97299%_
                                (fx+ _%start97278%_
                                     _%i97287%_
                                     (fx* _%i97287%_ _%i97287%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97299%_ _%size97272%_))
                         (let () (declare (not safe)) (##fx+ _%i97287%_ '1))
                         (let ((_%$e97302%_ _%deleted97289%_))
                           (if _%$e97302%_ _%$e97302%_ _%probe97285%_)))
                        (if (eq? _%key97262%_ _%k97292%_)
                            (let ()
                              (vector-set!
                               _%table97266%_
                               _%probe97285%_
                               _%key97262%_)
                              (vector-set!
                               _%table97266%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97285%_ '1))
                               _%value97263%_))
                            (_%loop97282%_
                             (let ((_%next-probe97307%_
                                    (fx+ _%start97278%_
                                         _%i97287%_
                                         (fx* _%i97287%_ _%i97287%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97307%_ _%size97272%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97287%_ '1))
                             _%deleted97289%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab97256%_
               _%key97257%_
               _%method-specializer-table-update!97258%_
               _%default97259%_)
        (if (let ((__tmp101817
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97256%_)))
                  (__tmp101815
                   (let ((__tmp101816
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97256%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101816 '4))))
              (declare (not safe))
              (##fx< __tmp101817 __tmp101815))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97256%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab97256%_
         _%key97257%_
         _%method-specializer-table-update!97258%_
         _%default97259%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab97206%_
               _%key97207%_
               _%method-specializer-table-update!97208%_
               _%default97209%_)
        (let ((_%table97212%_
               (let () (declare (not safe)) (&raw-table-table _%tab97206%_)))
              (_%seed97213%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97206%_))))
          (let* ((_%h97215%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97207%_))
                         _%seed97213%_))
                 (_%size97218%_ (vector-length _%table97212%_))
                 (_%entries97221%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97218%_ '2)))
                 (_%start97224%_
                  (let ((__tmp101818
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97215%_ _%entries97221%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101818 '1))))
            (let _%loop97228%_ ((_%probe97231%_ _%start97224%_)
                                (_%i97233%_ '1)
                                (_%deleted97235%_ '#f))
              (let ((_%k97238%_ (vector-ref _%table97212%_ _%probe97231%_)))
                (if (eq? _%k97238%_ (macro-unused-obj))
                    (if _%deleted97235%_
                        (begin
                          (vector-set!
                           _%table97212%_
                           _%deleted97235%_
                           _%key97207%_)
                          (vector-set!
                           _%table97212%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97235%_ '1))
                           (_%method-specializer-table-update!97208%_
                            _%default97209%_))
                          ((lambda ()
                             (let ((__tmp101819
                                    (let ((__tmp101820
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97206%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101820 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97206%_
                                __tmp101819)))))
                        (begin
                          (vector-set!
                           _%table97212%_
                           _%probe97231%_
                           _%key97207%_)
                          (vector-set!
                           _%table97212%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97231%_ '1))
                           (_%method-specializer-table-update!97208%_
                            _%default97209%_))
                          ((lambda ()
                             (let ((__tmp101821
                                    (let ((__tmp101822
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97206%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101822 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97206%_ __tmp101821))
                             (let ((__tmp101823
                                    (let ((__tmp101824
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97206%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101824 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97206%_
                                __tmp101823))))))
                    (if (eq? _%k97238%_ (macro-deleted-obj))
                        (_%loop97228%_
                         (let ((_%next-probe97245%_
                                (fx+ _%start97224%_
                                     _%i97233%_
                                     (fx* _%i97233%_ _%i97233%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97245%_ _%size97218%_))
                         (let () (declare (not safe)) (##fx+ _%i97233%_ '1))
                         (let ((_%$e97248%_ _%deleted97235%_))
                           (if _%$e97248%_ _%$e97248%_ _%probe97231%_)))
                        (if (eq? _%key97207%_ _%k97238%_)
                            (let ()
                              (vector-set!
                               _%table97212%_
                               _%probe97231%_
                               _%key97207%_)
                              (vector-set!
                               _%table97212%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97231%_ '1))
                               (_%method-specializer-table-update!97208%_
                                (vector-ref
                                 _%table97212%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97231%_ '1))))))
                            (_%loop97228%_
                             (let ((_%next-probe97253%_
                                    (fx+ _%start97224%_
                                         _%i97233%_
                                         (fx* _%i97233%_ _%i97233%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97253%_ _%size97218%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97233%_ '1))
                             _%deleted97235%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97161%_ _%key97163%_)
        (let ((_%table97166%_
               (let () (declare (not safe)) (&raw-table-table _%tab97161%_)))
              (_%seed97168%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97161%_))))
          (let* ((_%h97171%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97163%_))
                         _%seed97168%_))
                 (_%size97174%_ (vector-length _%table97166%_))
                 (_%entries97177%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97174%_ '2)))
                 (_%start97180%_
                  (let ((__tmp101825
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97171%_ _%entries97177%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101825 '1))))
            (let _%loop97184%_ ((_%probe97187%_ _%start97180%_)
                                (_%i97189%_ '1))
              (let ((_%k97192%_ (vector-ref _%table97166%_ _%probe97187%_)))
                (if (eq? _%k97192%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97192%_ (macro-deleted-obj))
                        (_%loop97184%_
                         (let ((_%next-probe97197%_
                                (fx+ _%start97180%_
                                     _%i97189%_
                                     (fx* _%i97189%_ _%i97189%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97197%_ _%size97174%_))
                         (let () (declare (not safe)) (##fx+ _%i97189%_ '1)))
                        (if (eq? _%key97163%_ _%k97192%_)
                            (let ()
                              (vector-set!
                               _%table97166%_
                               _%probe97187%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97166%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97187%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101826
                                        (let ((__tmp101827
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97161%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101827 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97161%_
                                    __tmp101826)))))
                            (_%loop97184%_
                             (let ((_%next-probe97203%_
                                    (fx+ _%start97180%_
                                         _%i97189%_
                                         (fx* _%i97189%_ _%i97189%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97203%_ _%size97174%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97189%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97152%_ _%specializer97153%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97157%_ ()
            (if (let ((__tmp101828
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101828 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97157%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97152%_
         _%specializer97153%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97142%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97146%_ ()
            (if (let ((__tmp101829
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101829 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97146%_)))))
        (let ((_%specializer97150%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97142%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97150%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97140%_)
        (let ((__tmp101830
               (let () (declare (not safe)) (##type-id _%klass97140%_))))
          (declare (not safe))
          (symbolic-hash __tmp101830))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97121%_ _%seed97123%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97121%_
           __class-specializer-hash-key
           eq?
           _%seed97123%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97129%_ '#f) (_%seed97131%_ '0))
          (make-class-specializer-table__% _%size-hint97129%_ _%seed97131%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97133%_)
        (let ((_%seed97135%_ '0))
          (make-class-specializer-table__% _%size-hint97133%_ _%seed97135%_))))
    (define make-class-specializer-table
      (lambda _g101832_
        (let ((_g101831_ (let () (declare (not safe)) (##length _g101832_))))
          (cond ((let () (declare (not safe)) (##fx= _g101831_ 0))
                 (apply make-class-specializer-table__0 _g101832_))
                ((let () (declare (not safe)) (##fx= _g101831_ 1))
                 (apply make-class-specializer-table__1 _g101832_))
                ((let () (declare (not safe)) (##fx= _g101831_ 2))
                 (apply make-class-specializer-table__% _g101832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g101832_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97074%_ _%key97075%_ _%default97076%_)
        (let ((_%table97078%_
               (let () (declare (not safe)) (&raw-table-table _%tab97074%_)))
              (_%seed97079%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97074%_))))
          (let* ((_%h97081%_
                  (fxxor (__class-specializer-hash-key _%key97075%_)
                         _%seed97079%_))
                 (_%size97084%_ (vector-length _%table97078%_))
                 (_%entries97087%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97084%_ '2)))
                 (_%start97090%_
                  (let ((__tmp101833
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97081%_ _%entries97087%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101833 '1))))
            (let _%loop97094%_ ((_%probe97097%_ _%start97090%_)
                                (_%i97099%_ '1)
                                (_%deleted97101%_ '#f))
              (let ((_%k97104%_ (vector-ref _%table97078%_ _%probe97097%_)))
                (if (eq? _%k97104%_ (macro-unused-obj))
                    _%default97076%_
                    (if (eq? _%k97104%_ (macro-deleted-obj))
                        (_%loop97094%_
                         (let ((_%next-probe97109%_
                                (fx+ _%start97090%_
                                     _%i97099%_
                                     (fx* _%i97099%_ _%i97099%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97109%_ _%size97084%_))
                         (let () (declare (not safe)) (##fx+ _%i97099%_ '1))
                         (let ((_%$e97112%_ _%deleted97101%_))
                           (if _%$e97112%_ _%$e97112%_ _%probe97097%_)))
                        (if (eq? _%key97075%_ _%k97104%_)
                            (vector-ref
                             _%table97078%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97097%_ '1)))
                            (_%loop97094%_
                             (let ((_%next-probe97117%_
                                    (fx+ _%start97090%_
                                         _%i97099%_
                                         (fx* _%i97099%_ _%i97099%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97117%_ _%size97084%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97099%_ '1))
                             _%deleted97101%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97070%_ _%key97071%_ _%value97072%_)
        (if (let ((__tmp101836
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97070%_)))
                  (__tmp101834
                   (let ((__tmp101835
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97070%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101835 '4))))
              (declare (not safe))
              (##fx< __tmp101836 __tmp101834))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97070%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97070%_
         _%key97071%_
         _%value97072%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97021%_ _%key97022%_ _%value97023%_)
        (let ((_%table97026%_
               (let () (declare (not safe)) (&raw-table-table _%tab97021%_)))
              (_%seed97027%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97021%_))))
          (let* ((_%h97029%_
                  (fxxor (__class-specializer-hash-key _%key97022%_)
                         _%seed97027%_))
                 (_%size97032%_ (vector-length _%table97026%_))
                 (_%entries97035%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97032%_ '2)))
                 (_%start97038%_
                  (let ((__tmp101837
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97029%_ _%entries97035%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101837 '1))))
            (let _%loop97042%_ ((_%probe97045%_ _%start97038%_)
                                (_%i97047%_ '1)
                                (_%deleted97049%_ '#f))
              (let ((_%k97052%_ (vector-ref _%table97026%_ _%probe97045%_)))
                (if (eq? _%k97052%_ (macro-unused-obj))
                    (if _%deleted97049%_
                        (begin
                          (vector-set!
                           _%table97026%_
                           _%deleted97049%_
                           _%key97022%_)
                          (vector-set!
                           _%table97026%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97049%_ '1))
                           _%value97023%_)
                          ((lambda ()
                             (let ((__tmp101838
                                    (let ((__tmp101839
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97021%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101839 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97021%_
                                __tmp101838)))))
                        (begin
                          (vector-set!
                           _%table97026%_
                           _%probe97045%_
                           _%key97022%_)
                          (vector-set!
                           _%table97026%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97045%_ '1))
                           _%value97023%_)
                          ((lambda ()
                             (let ((__tmp101840
                                    (let ((__tmp101841
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97021%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101841 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97021%_ __tmp101840))
                             (let ((__tmp101842
                                    (let ((__tmp101843
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97021%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101843 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97021%_
                                __tmp101842))))))
                    (if (eq? _%k97052%_ (macro-deleted-obj))
                        (_%loop97042%_
                         (let ((_%next-probe97059%_
                                (fx+ _%start97038%_
                                     _%i97047%_
                                     (fx* _%i97047%_ _%i97047%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97059%_ _%size97032%_))
                         (let () (declare (not safe)) (##fx+ _%i97047%_ '1))
                         (let ((_%$e97062%_ _%deleted97049%_))
                           (if _%$e97062%_ _%$e97062%_ _%probe97045%_)))
                        (if (eq? _%key97022%_ _%k97052%_)
                            (let ()
                              (vector-set!
                               _%table97026%_
                               _%probe97045%_
                               _%key97022%_)
                              (vector-set!
                               _%table97026%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97045%_ '1))
                               _%value97023%_))
                            (_%loop97042%_
                             (let ((_%next-probe97067%_
                                    (fx+ _%start97038%_
                                         _%i97047%_
                                         (fx* _%i97047%_ _%i97047%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97067%_ _%size97032%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97047%_ '1))
                             _%deleted97049%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97016%_
               _%key97017%_
               _%class-specializer-table-update!97018%_
               _%default97019%_)
        (if (let ((__tmp101846
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97016%_)))
                  (__tmp101844
                   (let ((__tmp101845
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97016%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101845 '4))))
              (declare (not safe))
              (##fx< __tmp101846 __tmp101844))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97016%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97016%_
         _%key97017%_
         _%class-specializer-table-update!97018%_
         _%default97019%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab96966%_
               _%key96967%_
               _%class-specializer-table-update!96968%_
               _%default96969%_)
        (let ((_%table96972%_
               (let () (declare (not safe)) (&raw-table-table _%tab96966%_)))
              (_%seed96973%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96966%_))))
          (let* ((_%h96975%_
                  (fxxor (__class-specializer-hash-key _%key96967%_)
                         _%seed96973%_))
                 (_%size96978%_ (vector-length _%table96972%_))
                 (_%entries96981%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96978%_ '2)))
                 (_%start96984%_
                  (let ((__tmp101847
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96975%_ _%entries96981%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101847 '1))))
            (let _%loop96988%_ ((_%probe96991%_ _%start96984%_)
                                (_%i96993%_ '1)
                                (_%deleted96995%_ '#f))
              (let ((_%k96998%_ (vector-ref _%table96972%_ _%probe96991%_)))
                (if (eq? _%k96998%_ (macro-unused-obj))
                    (if _%deleted96995%_
                        (begin
                          (vector-set!
                           _%table96972%_
                           _%deleted96995%_
                           _%key96967%_)
                          (vector-set!
                           _%table96972%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96995%_ '1))
                           (_%class-specializer-table-update!96968%_
                            _%default96969%_))
                          ((lambda ()
                             (let ((__tmp101848
                                    (let ((__tmp101849
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96966%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101849 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96966%_
                                __tmp101848)))))
                        (begin
                          (vector-set!
                           _%table96972%_
                           _%probe96991%_
                           _%key96967%_)
                          (vector-set!
                           _%table96972%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96991%_ '1))
                           (_%class-specializer-table-update!96968%_
                            _%default96969%_))
                          ((lambda ()
                             (let ((__tmp101850
                                    (let ((__tmp101851
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96966%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101851 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96966%_ __tmp101850))
                             (let ((__tmp101852
                                    (let ((__tmp101853
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96966%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101853 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96966%_
                                __tmp101852))))))
                    (if (eq? _%k96998%_ (macro-deleted-obj))
                        (_%loop96988%_
                         (let ((_%next-probe97005%_
                                (fx+ _%start96984%_
                                     _%i96993%_
                                     (fx* _%i96993%_ _%i96993%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97005%_ _%size96978%_))
                         (let () (declare (not safe)) (##fx+ _%i96993%_ '1))
                         (let ((_%$e97008%_ _%deleted96995%_))
                           (if _%$e97008%_ _%$e97008%_ _%probe96991%_)))
                        (if (eq? _%key96967%_ _%k96998%_)
                            (let ()
                              (vector-set!
                               _%table96972%_
                               _%probe96991%_
                               _%key96967%_)
                              (vector-set!
                               _%table96972%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96991%_ '1))
                               (_%class-specializer-table-update!96968%_
                                (vector-ref
                                 _%table96972%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe96991%_ '1))))))
                            (_%loop96988%_
                             (let ((_%next-probe97013%_
                                    (fx+ _%start96984%_
                                         _%i96993%_
                                         (fx* _%i96993%_ _%i96993%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97013%_ _%size96978%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96993%_ '1))
                             _%deleted96995%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab96921%_ _%key96923%_)
        (let ((_%table96926%_
               (let () (declare (not safe)) (&raw-table-table _%tab96921%_)))
              (_%seed96928%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96921%_))))
          (let* ((_%h96931%_
                  (fxxor (__class-specializer-hash-key _%key96923%_)
                         _%seed96928%_))
                 (_%size96934%_ (vector-length _%table96926%_))
                 (_%entries96937%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96934%_ '2)))
                 (_%start96940%_
                  (let ((__tmp101854
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96931%_ _%entries96937%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101854 '1))))
            (let _%loop96944%_ ((_%probe96947%_ _%start96940%_)
                                (_%i96949%_ '1))
              (let ((_%k96952%_ (vector-ref _%table96926%_ _%probe96947%_)))
                (if (eq? _%k96952%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k96952%_ (macro-deleted-obj))
                        (_%loop96944%_
                         (let ((_%next-probe96957%_
                                (fx+ _%start96940%_
                                     _%i96949%_
                                     (fx* _%i96949%_ _%i96949%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96957%_ _%size96934%_))
                         (let () (declare (not safe)) (##fx+ _%i96949%_ '1)))
                        (if (eq? _%key96923%_ _%k96952%_)
                            (let ()
                              (vector-set!
                               _%table96926%_
                               _%probe96947%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table96926%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96947%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101855
                                        (let ((__tmp101856
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab96921%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101856 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab96921%_
                                    __tmp101855)))))
                            (_%loop96944%_
                             (let ((_%next-probe96963%_
                                    (fx+ _%start96940%_
                                         _%i96949%_
                                         (fx* _%i96949%_ _%i96949%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96963%_ _%size96934%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96949%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass96907%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96907%_ 'class))
            (let ((_%klass96911%_ _%klass96907%_))
              (__specialize-class _%klass96911%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass96907%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass96889%_)
        (let* ((_%klass96892%_ _%klass96889%_)
               (_%$e96901%_ (__lookup-class-specializer _%klass96892%_)))
          (if _%$e96901%_
              _%$e96901%_
              (let ((_%method-table96905%_
                     (___specialize-class _%klass96892%_)))
                (__bind-class-specializer!
                 _%klass96892%_
                 _%method-table96905%_)
                _%method-table96905%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass96879%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96883%_ ()
            (if (let ((__tmp101857
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101857 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96883%_)))))
        (let ((_%method-table96887%_
               (class-specializer-table-ref
                __class-specializers
                _%klass96879%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table96887%_)))
    (define __bind-class-specializer!
      (lambda (_%klass96870%_ _%method-table96871%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96875%_ ()
            (if (let ((__tmp101858
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101858 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96875%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass96870%_
         _%method-table96871%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass96854%_
               _%method-table96855%_
               _%method96856%_
               _%proc96857%_)
        (let ((_%$e96859%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table96855%_
                  _%method96856%_
                  '#f))))
          (if _%$e96859%_
              _%$e96859%_
              (let ((_%$e96862%_ (__lookup-method-specializer _%proc96857%_)))
                (if _%$e96862%_
                    ((lambda (_%specialize96865%_)
                       (let ((_%specialized-proc96867%_
                              (_%specialize96865%_
                               _%klass96854%_
                               _%method-table96855%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table96855%_
                          _%method96856%_
                          _%specialized-proc96867%_)))
                     _%$e96862%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table96855%_
                       _%method96856%_
                       _%proc96857%_))))))))
    (define ___specialize-class
      (lambda (_%klass96796%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96796%_ 'class))
            (if (__class-type-metaclass? _%klass96796%_)
                (let ((__method101704
                       (__method-ref _%klass96796%_ 'specialize-class)))
                  (if __method101704
                      (let ()
                        (declare (not safe))
                        (__method101704 _%klass96796%_))
                      (begin
                        (error '"Missing method"
                               _%klass96796%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp101859
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass96796%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp101859))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass96796%_)
                    (let ((_%method-table96802%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop96804%_ ((_%rest96806%_
                                           (__class-precedence-list
                                            _%klass96796%_)))
                        (let* ((_%rest9680796815%_ _%rest96806%_)
                               (_%else9680996823%_
                                (lambda () _%method-table96802%_))
                               (_%K9681196842%_
                                (lambda (_%rest96826%_ _%xklass96827%_)
                                  (let ((_%xmethod-table9682896830%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass96827%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9682896830%_
                                        (let* ((_%xmethod-table96833%_
                                                _%xmethod-table9682896830%_)
                                               (__tmp101860
                                                (lambda (_%g9683496837%_
                                                         _%g9683596839%_)
                                                  (__specialize-method
                                                   _%klass96796%_
                                                   _%method-table96802%_
                                                   _%g9683496837%_
                                                   _%g9683596839%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table96833%_
                                           __tmp101860))
                                        '#f))
                                  (_%loop96804%_ _%rest96826%_))))
                          (if (pair? _%rest9680796815%_)
                              (let ((_%hd9681296845%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9680796815%_)))
                                    (_%tl9681396847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9680796815%_))))
                                (let* ((_%xklass96850%_ _%hd9681296845%_)
                                       (_%rest96852%_ _%tl9681396847%_))
                                  (_%K9681196842%_
                                   _%rest96852%_
                                   _%xklass96850%_)))
                              (_%else9680996823%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass96796%_))
                (__specialize-class (__shadow-class _%klass96796%_))
                (error '"bad class; cannot specialize" _%klass96796%_)))))
    (define seal-class!
      (lambda (_%klass96782%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96782%_ 'class))
            (let ((_%klass96786%_ _%klass96782%_))
              (__seal-class! _%klass96786%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass96782%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass96765%_)
        (let ((_%klass96768%_ _%klass96765%_))
          (if (__class-type-sealed? _%klass96768%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass96768%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass96768%_))
                (if (__class-type-metaclass? _%klass96768%_)
                    (let ((__method101705
                           (__method-ref _%klass96768%_ 'seal-class!)))
                      (if __method101705
                          (let ()
                            (declare (not safe))
                            (__method101705 _%klass96768%_))
                          (begin
                            (error '"Missing method"
                                   _%klass96768%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp101861
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass96768%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp101861))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass96768%_)
                        (let ((_%method-table96780%_
                               (__specialize-class _%klass96768%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass96768%_
                           _%method-table96780%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass96768%_))))))
    (define next-method
      (lambda (_%subklass96739%_ _%obj96740%_ _%id96741%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass96739%_ 'class))
            (let ((_%subklass96745%_ _%subklass96739%_))
              (if (symbol? _%id96741%_)
                  (let ((_%id96755%_ _%id96741%_))
                    (__next-method _%subklass96745%_ _%obj96740%_ _%id96755%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id96741%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass96739%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass96676%_ _%obj96677%_ _%id96678%_)
        (let* ((_%subklass96681%_ _%subklass96676%_) (_%id96689%_ _%id96678%_))
          (letrec ((_%find-next-method96698%_
                    (lambda (_%klass96700%_)
                      (let _%lp96702%_ ((_%rest96704%_
                                         (class-precedence-list
                                          _%klass96700%_)))
                        (let* ((_%rest9670596713%_ _%rest96704%_)
                               (_%else9670796721%_ (lambda () '#f))
                               (_%K9670996727%_
                                (lambda (_%rest96724%_ _%klass96725%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass96681%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass96725%_)))
                                      (__mixin-find-method
                                       _%rest96724%_
                                       _%obj96677%_
                                       _%id96689%_)
                                      (_%lp96702%_ _%rest96724%_)))))
                          (if (pair? _%rest9670596713%_)
                              (let ((_%hd9671096730%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9670596713%_)))
                                    (_%tl9671196732%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9670596713%_))))
                                (let* ((_%klass96735%_ _%hd9671096730%_)
                                       (_%rest96737%_ _%tl9671196732%_))
                                  (_%K9670996727%_
                                   _%rest96737%_
                                   _%klass96735%_)))
                              (_%else9670796721%_)))))))
            (_%find-next-method96698%_ (class-of _%obj96677%_))))))
    (define call-next-method
      (lambda (_%subklass96649%_ _%obj96650%_ _%id96651%_ . _%args96652%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass96649%_ 'class))
            (let ((_%subklass96656%_ _%subklass96649%_))
              (if (symbol? _%id96651%_)
                  (let ((_%id96666%_ _%id96651%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass96656%_
                             _%obj96650%_
                             _%id96666%_
                             _%args96652%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id96651%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass96649%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass96620%_ _%obj96621%_ _%id96622%_ . _%args96623%_)
        (let* ((_%subklass96626%_ _%subklass96620%_)
               (_%id96634%_ _%id96622%_)
               (_%$e96643%_
                (__next-method _%subklass96626%_ _%obj96621%_ _%id96634%_)))
          (if _%$e96643%_
              ((lambda (_%methodf96646%_)
                 (apply _%methodf96646%_ _%obj96621%_ _%args96623%_))
               _%$e96643%_)
              (error '"cannot find next method"
                     'object:
                     _%obj96621%_
                     'method:
                     _%id96634%_)))))
    (define write-style
      (lambda (_%we96618%_) (values (macro-writeenv-style _%we96618%_))))
    (define write-object
      (lambda (_%we96609%_ _%obj96610%_)
        (let ((_%$e96612%_ (__method-ref _%obj96610%_ ':wr)))
          (if _%$e96612%_
              ((lambda (_%method96615%_)
                 (_%method96615%_ _%obj96610%_ _%we96609%_))
               _%$e96612%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we96609%_ _%obj96610%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type96524%_)
        (letrec ((_%shadow-type-id96526%_
                  (lambda (_%type96607%_)
                    (let ((__tmp101862
                           (let ()
                             (declare (not safe))
                             (##type-name _%type96607%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp101862 '"::t"))))
                 (_%shadow-type-name96527%_
                  (lambda (_%type96605%_)
                    (let () (declare (not safe)) (##type-name _%type96605%_))))
                 (_%make-shadow-class96528%_
                  (lambda (_%type96597%_ _%precedence-list96598%_)
                    (let* ((_%super96600%_
                            (if (pair? _%precedence-list96598%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list96598%_))
                                      '())
                                '()))
                           (_%klass96602%_
                            (make-class-type
                             (_%shadow-type-id96526%_ _%type96597%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type96597%_))
                             _%super96600%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type96597%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp101863
                             (let ()
                               (declare (not safe))
                               (##type-id _%type96597%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp101863
                         _%klass96602%_))
                      _%klass96602%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again96532%_ ()
              (if (let ((__tmp101864
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp101864 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again96532%_)))))
          (let ((_%$e96536%_
                 (let ((__tmp101865
                        (let ()
                          (declare (not safe))
                          (##type-id _%type96524%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp101865 '#f))))
            (if _%$e96536%_
                ((lambda (_%klass96539%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass96539%_)
                 _%$e96536%_)
                (let _%loop96542%_ ((_%super96544%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type96524%_)))
                                    (_%hierarchy96545%_ '()))
                  (if (not _%super96544%_)
                      (let _%loop96548%_ ((_%rest96550%_ _%hierarchy96545%_)
                                          (_%precedence-list96551%_ '()))
                        (let* ((_%rest9655296560%_ _%rest96550%_)
                               (_%else9655496570%_
                                (lambda ()
                                  (let ((_%klass96568%_
                                         (_%make-shadow-class96528%_
                                          _%type96524%_
                                          _%precedence-list96551%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass96568%_)))
                               (_%K9655696584%_
                                (lambda (_%rest96573%_ _%type96574%_)
                                  (let ((_%$e96576%_
                                         (let ((__tmp101866
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type96574%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp101866
                                            '#f))))
                                    (if _%$e96576%_
                                        ((lambda (_%klass96579%_)
                                           (_%loop96548%_
                                            _%rest96573%_
                                            (cons _%klass96579%_
                                                  _%precedence-list96551%_)))
                                         _%$e96576%_)
                                        (let ((_%klass96582%_
                                               (_%make-shadow-class96528%_
                                                _%type96574%_
                                                _%precedence-list96551%_)))
                                          (_%loop96548%_
                                           _%rest96573%_
                                           (cons _%klass96582%_
                                                 _%precedence-list96551%_))))))))
                          (if (pair? _%rest9655296560%_)
                              (let ((_%hd9655796587%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9655296560%_)))
                                    (_%tl9655896589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9655296560%_))))
                                (let* ((_%type96592%_ _%hd9655796587%_)
                                       (_%rest96594%_ _%tl9655896589%_))
                                  (_%K9655696584%_
                                   _%rest96594%_
                                   _%type96592%_)))
                              (_%else9655496570%_))))
                      (_%loop96542%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super96544%_))
                       (cons _%super96544%_ _%hierarchy96545%_)))))))))
    (define __type
      (let* ((_%tb96513%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e96515%_ _%tb96513%_))
        (if (eq? '2 _%$e96515%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e96515%_)
                (let ((_%flonum-self-tagging-tags96518%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits96519%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e96521%_ _%flonum-self-tagging-tags96518%_))
                    (if (eq? '0 _%$e96521%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits96519%_ '2))
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
                        (if (eq? '1 _%$e96521%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits96519%_ '2))
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
                            (if (eq? '2 _%$e96521%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e96521%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e96521%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags96518%_))))))))
                (error '"unexpected tag width" _%tb96513%_)))))
    (define __class
      (let* ((_%len96466%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv96468%_
              (let () (declare (not safe)) (##make-vector _%len96466%_ '#f))))
        (let _%loop96471%_ ((_%i96473%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i96473%_ _%len96466%_))
              (let* ((_%t96475%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i96473%_)))
                     (_%f96510%_
                      (if (eq? _%t96475%_ 'undefined)
                          (lambda (_%obj96478%_)
                            (error '"object type is undefined" _%obj96478%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t96475%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj96481%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t96475%_))
                              (if (eq? _%t96475%_ 'subtyped)
                                  (lambda (_%obj96485%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st96488%_
                                           (##subtype _%obj96485%_)))
                                      (if (##fx= _%st96488%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass96491%_
                                                 (##structure-type
                                                  _%obj96485%_)))
                                            (if (##structure-instance-of?
                                                 _%klass96491%_
                                                 'class)
                                                _%klass96491%_
                                                (__shadow-class
                                                 _%klass96491%_)))
                                          (if (##fx= _%st96488%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##vector-length
                                                          _%obj96485%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e96494%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st96488%_)))
                                                (if _%$e96494%_
                                                    (__system-class
                                                     _%$e96494%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st96488%_
                                                           'object:
                                                           _%obj96485%_)))))))
                                  (if (eq? _%t96475%_ 'special)
                                      (lambda (_%obj96499%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj96499%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj96499%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj96499%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj96499%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj96499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj96499%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t96475%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv96468%_ _%i96473%_ _%f96510%_))
                (_%loop96471%_
                 (let () (declare (not safe)) (##fx+ _%i96473%_ '1))))
              _%cv96468%_))))
    (define type-of
      (lambda (_%obj96462%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj96462%_)))))
    (define class-of
      (lambda (_%obj96453%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t96457%_ (##type _%obj96453%_))
                 (_%f96459%_ (##vector-ref __class _%t96457%_)))
            (_%f96459%_ _%obj96453%_)))))
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
      (lambda (_%id96447%_)
        (let ((_%$e96449%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id96447%_ '#f))))
          (if _%$e96449%_
              _%$e96449%_
              (error '"unknown system class" _%id96447%_)))))
    (define __make-system-class
      (lambda (_%id96442%_ _%super96443%_)
        (let ((_%klass96445%_
               (make-class-type
                _%id96442%_
                _%id96442%_
                _%super96443%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id96442%_ _%klass96445%_))
          _%klass96445%_)))))
