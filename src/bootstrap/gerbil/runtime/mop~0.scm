(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712124233)
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
      (let ((_%flags96161%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96162%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96163%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96161%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96163%_
           _%properties96162%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96137%_
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
             (_%slot-vector96139%_ (list->vector (cons '#f _%slots96137%_)))
             (_%slot-table96146%_
              (let ((_%slot-table96141%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp97609
                       (lambda (_%slot96143%_ _%field96144%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96141%_
                            _%slot96143%_
                            _%field96144%_))
                         (let ((__tmp97610
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96143%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96141%_
                            __tmp97610
                            _%field96144%_))))
                      (__tmp97607
                       (let ((__tmp97608
                              (let ()
                                (declare (not safe))
                                (##length _%slots96137%_))))
                         (declare (not safe))
                         (##iota __tmp97608 '1))))
                  (declare (not safe))
                  (##for-each __tmp97609 _%slots96137%_ __tmp97607))
                _%slot-table96141%_))
             (_%flags96148%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96154%_
              (list->vector
               (let ((__tmp97611
                      (map (lambda (_%g9614996151%_)
                             (list _%g9614996151%_ '5 '#f))
                           (drop _%slots96137%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp97611))))
             (_%properties96156%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96137%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96158%_
              (let ((__tmp97612 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96148%_
                 ##type-type
                 _%fields96154%_
                 __tmp97612
                 _%slot-vector96139%_
                 _%slot-table96146%_
                 _%properties96156%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96158%_ _%t96158%_))
        _%t96158%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96133%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96134%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96135%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp97613 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96133%_
           '#f
           '#()
           __tmp97613
           '#(#f)
           _%slot-table96135%_
           _%properties96134%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96131%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96131%_ 'class))))
    (define class-type=?
      (lambda (_%x96106%_ _%y96107%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96106%_ 'class))
              (let ()
                (let ((_%x96111%_ _%x96106%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%y96107%_ 'class))
                      (let ()
                        (let ((_%y96121%_ _%y96107%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-type=? _%x96111%_ _%y96121%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96107%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x96106%_)))))
    (define __class-type=?
      (lambda (_%x96085%_ _%y96086%_)
        (let ()
          (let ((_%x96089%_ _%x96085%_))
            (let ((_%y96097%_ _%y96086%_))
              (let ()
                (eq? (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%x96089%_ '1 '#f '#f))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%y96097%_
                        '1
                        '#f
                        '#f)))))))))
    (define type-opaque?
      (lambda (_%type96071%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96071%_))
              (let ()
                (let ((_%type96075%_ _%type96071%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-opaque? _%type96075%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type96071%_)))))
    (define __type-opaque?
      (lambda (_%type96059%_)
        (let ()
          (let ((_%type96062%_ _%type96059%_))
            (let ()
              (let ((__tmp97614
                     (let ((__tmp97615
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type96062%_))))
                       (declare (not safe))
                       (##fxand __tmp97615 type-flag-opaque))))
                (declare (not safe))
                (##fx= __tmp97614 type-flag-opaque)))))))
    (define type-extensible?
      (lambda (_%type96045%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96045%_))
              (let ()
                (let ((_%type96049%_ _%type96045%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-extensible? _%type96049%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type96045%_)))))
    (define __type-extensible?
      (lambda (_%type96033%_)
        (let ()
          (let ((_%type96036%_ _%type96033%_))
            (let ()
              (let ((__tmp97616
                     (let ((__tmp97617
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type96036%_))))
                       (declare (not safe))
                       (##fxand __tmp97617 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97616 type-flag-extensible)))))))
    (define class-type-final?
      (lambda (_%type96019%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type96019%_ 'class))
              (let ()
                (let ((_%type96023%_ _%type96019%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-final? _%type96023%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type96019%_)))))
    (define __class-type-final?
      (lambda (_%type96007%_)
        (let ()
          (let ((_%type96010%_ _%type96007%_))
            (let ()
              (let ((__tmp97618
                     (let ((__tmp97619
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type96010%_))))
                       (declare (not safe))
                       (##fxand __tmp97619 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97618 '0)))))))
    (define class-type-struct?
      (lambda (_%klass95993%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95993%_ 'class))
              (let ()
                (let ((_%klass95997%_ _%klass95993%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95997%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass95993%_)))))
    (define __class-type-struct?
      (lambda (_%klass95981%_)
        (let ()
          (let ((_%klass95984%_ _%klass95981%_))
            (let ()
              (let ((__tmp97620
                     (let ((__tmp97621
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95984%_))))
                       (declare (not safe))
                       (##fxand __tmp97621 class-type-flag-struct))))
                (declare (not safe))
                (##fx= __tmp97620 class-type-flag-struct)))))))
    (define class-type-sealed?
      (lambda (_%klass95967%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95967%_ 'class))
              (let ()
                (let ((_%klass95971%_ _%klass95967%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass95971%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass95967%_)))))
    (define __class-type-sealed?
      (lambda (_%klass95955%_)
        (let ()
          (let ((_%klass95958%_ _%klass95955%_))
            (let ()
              (let ((__tmp97622
                     (let ((__tmp97623
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95958%_))))
                       (declare (not safe))
                       (##fxand __tmp97623 class-type-flag-sealed))))
                (declare (not safe))
                (##fx= __tmp97622 class-type-flag-sealed)))))))
    (define class-type-metaclass?
      (lambda (_%klass95941%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95941%_ 'class))
              (let ()
                (let ((_%klass95945%_ _%klass95941%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass95945%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass95941%_)))))
    (define __class-type-metaclass?
      (lambda (_%klass95929%_)
        (let ()
          (let ((_%klass95932%_ _%klass95929%_))
            (let ()
              (let ((__tmp97624
                     (let ((__tmp97625
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95932%_))))
                       (declare (not safe))
                       (##fxand __tmp97625 class-type-flag-metaclass))))
                (declare (not safe))
                (##fx= __tmp97624 class-type-flag-metaclass)))))))
    (define class-type-system?
      (lambda (_%klass95915%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95915%_ 'class))
              (let ()
                (let ((_%klass95919%_ _%klass95915%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass95919%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass95915%_)))))
    (define __class-type-system?
      (lambda (_%klass95903%_)
        (let ()
          (let ((_%klass95906%_ _%klass95903%_))
            (let ()
              (let ((__tmp97626
                     (let ((__tmp97627
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95906%_))))
                       (declare (not safe))
                       (##fxand __tmp97627 class-type-flag-system))))
                (declare (not safe))
                (##fx= __tmp97626 class-type-flag-system)))))))
    (define make-class-type-descriptor
      (lambda (_%type-id95788%_
               _%type-name95789%_
               _%type-super95790%_
               _%precedence-list95791%_
               _%slot-vector95792%_
               _%properties95793%_
               _%constructor95794%_
               _%slot-table95795%_
               _%methods95796%_)
        (let ()
          (letrec ((_%make-props!95799%_
                    (lambda (_%key95872%_)
                      (letrec* ((_%ht95874%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!95875%_
                                 (lambda (_%ht95896%_ _%slots95897%_)
                                   (for-each
                                    (lambda (_%g9589895900%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht95896%_
                                         _%g9589895900%_
                                         '#t)))
                                    _%slots95897%_)))
                                (_%put-alist!95876%_
                                 (lambda (_%ht95885%_
                                          _%key95886%_
                                          _%alist95887%_)
                                   (let ((_%$e95889%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95886%_
                                             _%alist95887%_))))
                                     (if _%$e95889%_
                                         ((lambda (_%g9589195893%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!95875%_
                                               _%ht95885%_
                                               _%g9589195893%_)))
                                          _%$e95889%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!95876%_
                           _%ht95874%_
                           _%key95872%_
                           _%properties95793%_))
                        (for-each
                         (lambda (_%mixin95878%_)
                           (let ((_%alist95880%_
                                  (##structure-ref
                                   _%mixin95878%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist95880%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95872%_
                                             _%alist95880%_))))
                                 (let ((__tmp97628
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin95878%_))))
                                   (declare (not safe))
                                   (_%put-slots!95875%_
                                    _%ht95874%_
                                    __tmp97628))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!95876%_
                                    _%ht95874%_
                                    _%key95872%_
                                    _%alist95880%_)))))
                         _%precedence-list95791%_)
                        _%ht95874%_))))
            (let* ((_%transparent?95801%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties95793%_)))
                   (_%all-slots-printable?95806%_
                    (let ((_%$e95803%_ _%transparent?95801%_))
                      (if _%$e95803%_
                          _%$e95803%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties95793%_))))))
                   (_%printable95808%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?95806%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95799%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?95813%_
                    (let ((_%$e95810%_ _%transparent?95801%_))
                      (if _%$e95810%_
                          _%$e95810%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties95793%_))))))
                   (_%equalable95815%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?95813%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95799%_ 'equal:))
                        '#f))
                   (_%first-new-field95817%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super95790%_
                           'class))
                        (let ((__tmp97629
                               (##structure-ref
                                _%type-super95790%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp97629))
                        '1))
                   (_%field-info-length95819%_
                    (let ((__tmp97630
                           (let ((__tmp97631
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector95792%_))))
                             (declare (not safe))
                             (##fx- __tmp97631 _%first-new-field95817%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp97630)))
                   (_%field-info95821%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length95819%_ '#f)))
                   (_%struct?95823%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties95793%_)))
                   (_%final?95825%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties95793%_)))
                   (_%metaclass95833%_
                    (let ((_%metaclass9582695828%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties95793%_))))
                      (if _%metaclass9582695828%_
                          (let ((_%metaclass95831%_ _%metaclass9582695828%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass95831%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id95788%_
                                       'metaclass:
                                       _%metaclass95831%_))
                            _%metaclass95831%_)
                          '#f)))
                   (_%system?95835%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties95793%_)))
                   (_%opaque?95840%_
                    (let ((_%$e95837%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?95813%_))))
                      (if _%$e95837%_
                          _%$e95837%_
                          (if _%type-super95790%_
                              (let ()
                                (declare (not safe))
                                (type-opaque? _%type-super95790%_))
                              '#f))))
                   (_%type-flags95842%_
                    (let ((__tmp97636
                           (if _%final?95825%_ '0 type-flag-extensible))
                          (__tmp97635
                           (if _%opaque?95840%_ type-flag-opaque '0))
                          (__tmp97634
                           (if _%struct?95823%_ class-type-flag-struct '0))
                          (__tmp97633
                           (if _%metaclass95833%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp97632
                           (if _%system?95835%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp97636
                               __tmp97635
                               __tmp97634
                               __tmp97633
                               __tmp97632)))
                   (_%precedence-list95850%_
                    (let ((_%$e95844%_ (memq t::t _%precedence-list95791%_)))
                      (if _%$e95844%_
                          ((lambda (_%tail95847%_)
                             (if (let ((__tmp97637 (cdr _%tail95847%_)))
                                   (declare (not safe))
                                   (null? __tmp97637))
                                 _%precedence-list95791%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list95791%_)))
                           _%$e95844%_)
                          (let ()
                            (let ((__tmp97638 (cons t::t '())))
                              (declare (not safe))
                              (##append
                               _%precedence-list95791%_
                               __tmp97638)))))))
              (let _%loop95853%_ ((_%i95855%_ _%first-new-field95817%_)
                                  (_%j95856%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j95856%_ _%field-info-length95819%_))
                    (let* ((_%slot95858%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector95792%_ _%i95855%_)))
                           (_%flags95866%_
                            (if _%transparent?95801%_
                                '0
                                (let ((__tmp97640
                                       (if (or _%all-slots-printable?95806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable95808%_
                                                  _%slot95858%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp97639
                                       (if (or _%all-slots-equalable?95813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable95815%_
                                                  _%slot95858%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp97640 __tmp97639)))))
                      (vector-set!
                       _%field-info95821%_
                       _%j95856%_
                       _%slot95858%_)
                      (vector-set!
                       _%field-info95821%_
                       (let () (declare (not safe)) (##fx+ _%j95856%_ '1))
                       _%flags95866%_)
                      (let ((__tmp97642
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95855%_ '1)))
                            (__tmp97641
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j95856%_ '3))))
                        (declare (not safe))
                        (_%loop95853%_ __tmp97642 __tmp97641)))
                    '#!void))
              (if _%metaclass95833%_
                  (let ((_%val95869%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass95833%_
                            _%type-id95788%_
                            _%type-name95789%_
                            _%type-flags95842%_
                            _%type-super95790%_
                            _%field-info95821%_
                            _%precedence-list95850%_
                            _%slot-vector95792%_
                            _%slot-table95795%_
                            _%properties95793%_
                            _%constructor95794%_
                            _%methods95796%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val95869%_ 'class))
                        _%val95869%_
                        (error '"bad cast" class::t _%val95869%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id95788%_
                     _%type-name95789%_
                     _%type-flags95842%_
                     _%type-super95790%_
                     _%field-info95821%_
                     _%precedence-list95850%_
                     _%slot-vector95792%_
                     _%slot-table95795%_
                     _%properties95793%_
                     _%constructor95794%_
                     _%methods95796%_))))))))
    (define class-type-id
      (lambda (_%klass95786%_)
        (##structure-ref _%klass95786%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass95784%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95784%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass95781%_ _%val95782%_)
        (##structure-set! _%klass95781%_ _%val95782%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass95776%_ _%val95778%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95776%_
           _%val95778%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass95774%_)
        (##structure-ref _%klass95774%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass95772%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95772%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass95769%_ _%val95770%_)
        (##structure-set! _%klass95769%_ _%val95770%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass95764%_ _%val95766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95764%_
           _%val95766%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass95762%_)
        (##structure-ref _%klass95762%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass95760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95760%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass95757%_ _%val95758%_)
        (##structure-set! _%klass95757%_ _%val95758%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass95752%_ _%val95754%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95752%_
           _%val95754%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass95750%_)
        (##structure-ref _%klass95750%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass95748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95748%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass95745%_ _%val95746%_)
        (##structure-set! _%klass95745%_ _%val95746%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass95740%_ _%val95742%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95740%_
           _%val95742%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass95738%_)
        (##structure-ref _%klass95738%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass95736%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95736%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass95733%_ _%val95734%_)
        (##structure-set! _%klass95733%_ _%val95734%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass95728%_ _%val95730%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95728%_
           _%val95730%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass95726%_)
        (##structure-ref _%klass95726%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass95724%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95724%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass95721%_ _%val95722%_)
        (##structure-set!
         _%klass95721%_
         _%val95722%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass95716%_ _%val95718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95716%_
           _%val95718%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass95714%_)
        (##structure-ref _%klass95714%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass95712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95712%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass95709%_ _%val95710%_)
        (##structure-set!
         _%klass95709%_
         _%val95710%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass95704%_ _%val95706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95704%_
           _%val95706%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass95702%_)
        (##structure-ref _%klass95702%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass95700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95700%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass95697%_ _%val95698%_)
        (##structure-set!
         _%klass95697%_
         _%val95698%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass95692%_ _%val95694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95692%_
           _%val95694%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass95690%_)
        (##structure-ref _%klass95690%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass95688%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95688%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass95685%_ _%val95686%_)
        (##structure-set!
         _%klass95685%_
         _%val95686%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass95680%_ _%val95682%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95680%_
           _%val95682%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass95678%_)
        (##structure-ref _%klass95678%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass95676%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95676%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass95673%_ _%val95674%_)
        (##structure-set!
         _%klass95673%_
         _%val95674%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass95668%_ _%val95670%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95668%_
           _%val95670%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass95666%_)
        (##structure-ref _%klass95666%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass95664%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95664%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass95661%_ _%val95662%_)
        (##structure-set! _%klass95661%_ _%val95662%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass95656%_ _%val95658%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95656%_
           _%val95658%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass95642%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95642%_ 'class))
              (let ()
                (let ((_%klass95646%_ _%klass95642%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-slot-list _%klass95646%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass95642%_)))))
    (define __class-type-slot-list
      (lambda (_%klass95630%_)
        (let ()
          (let ((_%klass95633%_ _%klass95630%_))
            (let ()
              (cdr (vector->list
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95633%_
                       '7
                       '#f
                       '#f)))))))))
    (define class-type-field-count
      (lambda (_%klass95616%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95616%_ 'class))
              (let ()
                (let ((_%klass95620%_ _%klass95616%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-field-count _%klass95620%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass95616%_)))))
    (define __class-type-field-count
      (lambda (_%klass95604%_)
        (let ()
          (let ((_%klass95607%_ _%klass95604%_))
            (let ()
              (let ((__tmp97643
                     (let ((__tmp97644
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass95607%_
                               '7
                               '#f
                               '#f))))
                       (declare (not safe))
                       (##vector-length __tmp97644))))
                (declare (not safe))
                (##fx- __tmp97643 '1)))))))
    (define class-type-seal!
      (lambda (_%klass95590%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95590%_ 'class))
              (let ()
                (let ((_%klass95594%_ _%klass95590%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass95594%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass95590%_)))))
    (define __class-type-seal!
      (lambda (_%klass95578%_)
        (let ()
          (let ((_%klass95581%_ _%klass95578%_))
            (let ()
              (let ((__tmp97645
                     (let ((__tmp97646
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95581%_))))
                       (declare (not safe))
                       (##fxior class-type-flag-sealed __tmp97646))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%klass95581%_
                 __tmp97645
                 '3
                 class::t
                 class-type-seal!))
              '#!void)))))
    (define substruct?
      (lambda (_%maybe-sub-struct95553%_ _%maybe-super-struct95554%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct95553%_ 'class))
              (let ()
                (let ((_%maybe-sub-struct95558%_ _%maybe-sub-struct95553%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-struct95554%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-struct95568%_
                               _%maybe-super-struct95554%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__substruct?
                               _%maybe-sub-struct95558%_
                               _%maybe-super-struct95568%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct95554%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct95553%_)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct95522%_ _%maybe-super-struct95523%_)
        (let ()
          (let ((_%maybe-sub-struct95526%_ _%maybe-sub-struct95522%_))
            (let ((_%maybe-super-struct95534%_ _%maybe-super-struct95523%_))
              (let ()
                (let ((_%maybe-super-struct-id95543%_
                       (let ()
                         (declare (not safe))
                         (##type-id _%maybe-super-struct95534%_))))
                  (let _%lp95545%_ ((_%super-struct95547%_
                                     _%maybe-sub-struct95526%_))
                    (let ()
                      (if (let ()
                            (declare (not safe))
                            (not _%super-struct95547%_))
                          (let () '#f)
                          (if (eq? _%maybe-super-struct-id95543%_
                                   (let ()
                                     (declare (not safe))
                                     (##type-id _%super-struct95547%_)))
                              (let () '#t)
                              (let ()
                                (let ((__tmp97647
                                       (let ()
                                         (declare (not safe))
                                         (##type-super
                                          _%super-struct95547%_))))
                                  (declare (not safe))
                                  (_%lp95545%_ __tmp97647))))))))))))))
    (define base-struct/1
      (lambda (_%klass95517%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95517%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass95517%_))
                  _%klass95517%_
                  (let () (declare (not safe)) (##type-super _%klass95517%_))))
            (if (let () (declare (not safe)) (not _%klass95517%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass95517%_))))))
    (define base-struct/2
      (lambda (_%klass195502%_ _%klass295503%_)
        (let ((_%s195505%_
               (let () (declare (not safe)) (base-struct/1 _%klass195502%_)))
              (_%s295506%_
               (let () (declare (not safe)) (base-struct/1 _%klass295503%_))))
          (if (or (let () (declare (not safe)) (not _%s195505%_))
                  (and _%s295506%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s195505%_ _%s295506%_))))
              (let () _%s295506%_)
              (if (or (let () (declare (not safe)) (not _%s295506%_))
                      (and _%s195505%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s295506%_ _%s195505%_))))
                  (let () _%s195505%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass195502%_
                           _%klass295503%_
                           _%s195505%_
                           _%s295506%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95386%_)
        (let* ((_%all-supers9538795412%_ _%all-supers95386%_)
               (_%E9539295416%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9538795412%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9541095499%_ (lambda () '#f))
                (_%K9540795485%_
                 (lambda (_%x95483%_)
                   (let () (declare (not safe)) (base-struct/1 _%x95483%_))))
                (_%K9540295462%_
                 (lambda (_%y95459%_ _%x95460%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x95460%_ _%y95459%_))))
                (_%K9539395423%_
                 (lambda (_%y95420%_ _%x95421%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95421%_ _%y95420%_)))))
            (let* ((_%__match9760197602%_
                    (lambda (_%hd9539495426%_ _%tl9539595428%_)
                      (let ((_%x95431%_ _%hd9539495426%_))
                        (letrec ((_%splice-rest9539795433%_
                                  (lambda (_%rest9540195440%_ _%y95442%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9540195440%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9539395423%_
                                           _%y95442%_
                                           _%x95431%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9539295416%_)))))
                                 (_%splice-try9539995435%_
                                  (lambda (_%hd9540095444%_
                                           _%rest9540195446%_
                                           _%y9539695447%_)
                                    (let ((_%y95450%_ _%hd9540095444%_))
                                      (let ((__tmp97649
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9540195446%_)))
                                            (__tmp97648
                                             (cons _%y95450%_
                                                   _%y9539695447%_)))
                                        (declare (not safe))
                                        (_%splice-loop9539895437%_
                                         __tmp97649
                                         __tmp97648)))))
                                 (_%splice-loop9539895437%_
                                  (lambda (_%rest9540195452%_ _%y9539695453%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9540195452%_))
                                        (let ((__tmp97650
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9540195452%_))))
                                          (declare (not safe))
                                          (_%splice-try9539995435%_
                                           __tmp97650
                                           _%rest9540195452%_
                                           _%y9539695453%_))
                                        (let ((__tmp97651
                                               (reverse _%y9539695453%_)))
                                          (declare (not safe))
                                          (_%splice-rest9539795433%_
                                           _%rest9540195452%_
                                           __tmp97651))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9539895437%_
                             _%tl9539595428%_
                             '()))))))
                   (_%try-match9538995495%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9538795412%_))
                          (let ((_%tl9540995490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9538795412%_)))
                                (_%hd9540895488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9538795412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9540995490%_))
                                (let ((_%x95493%_ _%hd9540895488%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x95493%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9540995490%_))
                                    (let ((_%tl9540695474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9540995490%_)))
                                          (_%hd9540595472%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9540995490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9540695474%_))
                                          (let ((_%x95470%_ _%hd9540895488%_)
                                                (_%y95477%_ _%hd9540595472%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9540295462%_
                                               _%y95477%_
                                               _%x95470%_)))
                                          (_%__match9760197602%_
                                           _%hd9540895488%_
                                           _%tl9540995490%_)))
                                    (_%__match9760197602%_
                                     _%hd9540895488%_
                                     _%tl9540995490%_))))
                          (let () (declare (not safe)) (_%E9539295416%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9538795412%_))
                  (let () (declare (not safe)) (_%K9541095499%_))
                  (let () (declare (not safe)) (_%try-match9538995495%_))))))))
    (define base-struct
      (lambda _%all-supers95384%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95384%_))))
    (define find-super-constructor
      (lambda (_%super95335%_)
        (let _%lp95337%_ ((_%rest95339%_ _%super95335%_)
                          (_%constructor95340%_ '#f))
          (let* ((_%rest9534195349%_ _%rest95339%_)
                 (_%else9534395357%_ (lambda () _%constructor95340%_))
                 (_%K9534595372%_
                  (lambda (_%rest95360%_ _%hd95361%_)
                    (let ((_%$e95363%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95361%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95363%_
                          ((lambda (_%xconstructor95366%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95340%_))
                                     (eq? _%constructor95340%_
                                          _%xconstructor95366%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95337%_
                                    _%rest95360%_
                                    _%xconstructor95366%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95340%_
                                        _%xconstructor95366%_)))
                           _%$e95363%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (_%lp95337%_
                               _%rest95360%_
                               _%constructor95340%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9534195349%_))
                (let ((_%hd9534695375%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9534195349%_)))
                      (_%tl9534795377%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9534195349%_))))
                  (let* ((_%hd95380%_ _%hd9534695375%_)
                         (_%rest95382%_ _%tl9534795377%_))
                    (declare (not safe))
                    (_%K9534595372%_ _%rest95382%_ _%hd95380%_)))
                (let () (declare (not safe)) (_%else9534395357%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95311%_ _%direct-slots95312%_)
        (let* ((_%next-slot95314%_ '1)
               (_%slot-table95316%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95318%_ '(__class))
               (_%process-slot95322%_
                (lambda (_%slot95320%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95320%_))
                      '#!void
                      (error '"invalid slot name" _%slot95320%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95316%_
                              _%slot95320%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95316%_
                           _%slot95320%_
                           _%next-slot95314%_))
                        (let ((__tmp97652
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95320%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95316%_
                           __tmp97652
                           _%next-slot95314%_))
                        (set! _%r-slots95318%_
                              (cons _%slot95320%_ _%r-slots95318%_))
                        (set! _%next-slot95314%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95314%_ '1))))
                      '#!void)))
               (_%process-slots95328%_
                (lambda (_%g9532395325%_)
                  (for-each _%process-slot95322%_ _%g9532395325%_))))
          (let ((__tmp97654
                 (lambda (_%mixin95331%_)
                   (let ((__tmp97655
                          (let ((__tmp97656
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95331%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp97656 '()))))
                     (declare (not safe))
                     (_%process-slots95328%_ __tmp97655))))
                (__tmp97653 (reverse _%class-precedence-list95311%_)))
            (declare (not safe))
            (##for-each __tmp97654 __tmp97653))
          (let ()
            (declare (not safe))
            (_%process-slots95328%_ _%direct-slots95312%_))
          (let ((_%slot-vector95333%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95318%_)))))
            (values _%slot-vector95333%_ _%slot-table95316%_)))))
    (define make-class-type
      (lambda (_%id95236%_
               _%name95237%_
               _%direct-supers95238%_
               _%direct-slots95239%_
               _%properties95240%_
               _%constructor95241%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95236%_))
              (let ()
                (let ((_%id95245%_ _%id95236%_))
                  (if (let () (declare (not safe)) (symbol? _%name95237%_))
                      (let ()
                        (let ((_%name95255%_ _%name95237%_))
                          (if (let ()
                                (declare (not safe))
                                (list? _%direct-supers95238%_))
                              (let ()
                                (let ((_%direct-supers95265%_
                                       _%direct-supers95238%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%direct-slots95239%_))
                                      (let ()
                                        (let ((_%direct-slots95275%_
                                               _%direct-slots95239%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (list? _%properties95240%_))
                                              (let ()
                                                (let ((_%properties95285%_
                                                       _%properties95240%_))
                                                  (if ((lambda (_%$obj95294%_)
                                                         (or (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (not _%$obj95294%_))
                     (let () (declare (not safe)) (symbol? _%$obj95294%_))))
               _%constructor95241%_)
              (let ()
                (let ((_%constructor95301%_ _%constructor95241%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-type
                       _%id95245%_
                       _%name95255%_
                       _%direct-supers95265%_
                       _%direct-slots95275%_
                       _%properties95285%_
                       _%constructor95301%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
               'contract:
               '(? (or not symbol?))
               'value:
               _%constructor95241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                               'contract:
                                               'list?
                                               'value:
                                               _%properties95240%_))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                       'contract:
                                       'list?
                                       'value:
                                       _%direct-slots95239%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                               'contract:
                               'list?
                               'value:
                               _%direct-supers95238%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95237%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id95236%_)))))
    (define __make-class-type
      (lambda (_%id95105%_
               _%name95106%_
               _%direct-supers95107%_
               _%direct-slots95108%_
               _%properties95109%_
               _%constructor95110%_)
        (let ()
          (let ((_%id95113%_ _%id95105%_))
            (let ((_%name95121%_ _%name95106%_))
              (let ((_%direct-supers95129%_ _%direct-supers95107%_))
                (let ((_%direct-slots95137%_ _%direct-slots95108%_))
                  (let ((_%properties95145%_ _%properties95109%_))
                    (let ((_%constructor95153%_ _%constructor95110%_))
                      (let ()
                        (let ((_%$e95165%_
                               (let ((__tmp97657
                                      (lambda (_%$obj95162%_)
                                        (let ((__tmp97658
                                               (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _%$obj95162%_
                                                  'class))))
                                          (declare (not safe))
                                          (not __tmp97658)))))
                                 (declare (not safe))
                                 (__find __tmp97657 _%direct-supers95129%_))))
                          (if _%$e95165%_
                              ((lambda (_%g9516795169%_)
                                 (error '"Illegal super class; not a class descriptor"
                                        _%g9516795169%_))
                               _%$e95165%_)
                              (let ((_%$e95172%_
                                     (let ()
                                       (declare (not safe))
                                       (__find __class-type-final?
                                               _%direct-supers95129%_))))
                                (if _%$e95172%_
                                    ((lambda (_%g9517495176%_)
                                       (error '"Cannot extend final class"
                                              _%g9517495176%_))
                                     _%$e95172%_)
                                    '#!void))))
                        (let ((_g97659_
                               (let ()
                                 (declare (not safe))
                                 (compute-precedence-list
                                  _%direct-supers95129%_))))
                          (begin
                            (let ((_g97660_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97659_)
                                         (##vector-length _g97659_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97660_ 2)))
                                  (error "Context expects 2 values" _g97660_)))
                            (let ((_%precedence-list95179%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97659_ 0)))
                                  (_%struct-super95180%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97659_ 1))))
                              (let ((_g97661_
                                     (let ()
                                       (declare (not safe))
                                       (compute-class-slots
                                        _%precedence-list95179%_
                                        _%direct-slots95137%_))))
                                (begin
                                  (let ((_g97662_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97661_)
                                               (##vector-length _g97661_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97662_ 2)))
                                        (error "Context expects 2 values"
                                               _g97662_)))
                                  (let ((_%slot-vector95182%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97661_ 0)))
                                        (_%slot-table95183%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97661_ 1))))
                                    (let* ((_%properties95185%_
                                            (cons (cons 'direct-slots:
                                                        _%direct-slots95137%_)
                                                  (cons (cons 'direct-supers:
                                                              _%direct-supers95129%_)
                                                        _%properties95145%_)))
                                           (_%constructor*95190%_
                                            (let ((_%$e95187%_
                                                   _%constructor95153%_))
                                              (if _%$e95187%_
                                                  _%$e95187%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (find-super-constructor
                                                     _%direct-supers95129%_)))))
                                           (_%precedence-list95233%_
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (agetq__0
                                                       'system:
                                                       _%properties95185%_))
                                                    (memq object::t
                                                          _%precedence-list95179%_))
                                                _%precedence-list95179%_
                                                (let _%loop95195%_ ((_%tail95197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%precedence-list95179%_)
                            (_%head95198%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%tail9519995207%_
                                                          _%tail95197%_)
                                                         (_%else9520195215%_
                                                          (lambda ()
                                                            (let ((__tmp97663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons object::t (cons t::t '()))))
                      (declare (not safe))
                      (__foldl1 cons __tmp97663 _%head95198%_))))
                 (_%K9520395221%_
                  (lambda (_%rest95218%_ _%hd95219%_)
                    (if (eq? _%hd95219%_ t::t)
                        (let ((__tmp97664 (cons object::t _%tail95197%_)))
                          (declare (not safe))
                          (__foldl1 cons __tmp97664 _%head95198%_))
                        (let ((__tmp97665 (cons _%hd95219%_ _%head95198%_)))
                          (declare (not safe))
                          (_%loop95195%_ _%rest95218%_ __tmp97665))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tail9519995207%_))
                                                        (let ((_%hd9520495224%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%tail9519995207%_)))
                      (_%tl9520595226%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%tail9519995207%_))))
                  (let* ((_%hd95229%_ _%hd9520495224%_)
                         (_%rest95231%_ _%tl9520595226%_))
                    (declare (not safe))
                    (_%K9520395221%_ _%rest95231%_ _%hd95229%_)))
                (let () (declare (not safe)) (_%else9520195215%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (make-class-type-descriptor
                                         _%id95113%_
                                         _%name95121%_
                                         _%struct-super95180%_
                                         _%precedence-list95233%_
                                         _%slot-vector95182%_
                                         _%properties95185%_
                                         _%constructor*95190%_
                                         _%slot-table95183%_
                                         '#f)))))))))))))))))))
    (define class-precedence-list
      (lambda (_%klass95091%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95091%_ 'class))
              (let ()
                (let ((_%klass95095%_ _%klass95091%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-precedence-list _%klass95095%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass95091%_)))))
    (define __class-precedence-list
      (lambda (_%klass95079%_)
        (let ()
          (let ((_%klass95082%_ _%klass95079%_))
            (let ()
              (cons _%klass95082%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95082%_
                       '6
                       '#f
                       '#f))))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95076%_)
        (let ()
          (let ()
            (declare (not safe))
            (c4-linearize
             '()
             _%direct-supers95076%_
             'get-precedence-list:
             class-precedence-list
             'struct:
             class-type-struct?
             'eq:
             eq?
             'get-name:
             ##type-name)))))
    (define make-class-predicate
      (lambda (_%klass95062%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95062%_ 'class))
              (let ()
                (let ((_%klass95066%_ _%klass95062%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-predicate _%klass95066%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass95062%_)))))
    (define __make-class-predicate
      (lambda (_%klass95033%_)
        (let ()
          (let ((_%klass95036%_ _%klass95033%_))
            (let ()
              (let ((_%tid95045%_
                     (let () (declare (not safe)) (##type-id _%klass95036%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95036%_))
                    (let ()
                      (lambda (_%g9504795049%_)
                        (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           _%g9504795049%_
                           _%tid95045%_))))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95036%_))
                        (let ()
                          (lambda (_%g9505295054%_)
                            (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g9505295054%_
                               _%tid95045%_))))
                        (let ()
                          (lambda (_%g9505795059%_)
                            (let ()
                              (declare (not safe))
                              (__class-instance?
                               _%klass95036%_
                               _%g9505795059%_))))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass95008%_ _%slot95009%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95008%_ 'class))
              (let ()
                (let ((_%klass95013%_ _%klass95008%_))
                  (if (let () (declare (not safe)) (symbol? _%slot95009%_))
                      (let ()
                        (let ((_%slot95023%_ _%slot95009%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-accessor
                               _%klass95013%_
                               _%slot95023%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95009%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass95008%_)))))
    (define __make-class-slot-accessor
      (lambda (_%klass94976%_ _%slot94977%_)
        (let ()
          (let ((_%klass94980%_ _%klass94976%_))
            (let ((_%slot94988%_ _%slot94977%_))
              (let ()
                (let ((_%field94997%_
                       (let ((__tmp97666
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94980%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97666 _%slot94988%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94997%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94980%_
                               'slot:
                               _%slot94988%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94980%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-accessor
                               _%klass94980%_
                               _%slot94988%_
                               _%field94997%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94980%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-accessor
                                   _%klass94980%_
                                   _%slot94988%_
                                   _%field94997%_)))
                              (if (let ((_%strukt95003%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94980%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt95003%_
                                            'class))
                                         (let ((__tmp97667
                                                (let ((__tmp97668
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt95003%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97668))))
                                           (declare (not safe))
                                           (##fx< _%field94997%_ __tmp97667))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-accessor
                                       _%klass94980%_
                                       _%slot94988%_
                                       _%field94997%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-accessor
                                       _%klass94980%_
                                       _%slot94988%_
                                       _%field94997%_))))))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass94951%_ _%slot94952%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94951%_ 'class))
              (let ()
                (let ((_%klass94956%_ _%klass94951%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94952%_))
                      (let ()
                        (let ((_%slot94966%_ _%slot94952%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-mutator
                               _%klass94956%_
                               _%slot94966%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94952%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass94951%_)))))
    (define __make-class-slot-mutator
      (lambda (_%klass94919%_ _%slot94920%_)
        (let ()
          (let ((_%klass94923%_ _%klass94919%_))
            (let ((_%slot94931%_ _%slot94920%_))
              (let ()
                (let ((_%field94940%_
                       (let ((__tmp97669
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94923%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97669 _%slot94931%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94940%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94923%_
                               'slot:
                               _%slot94931%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94923%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-mutator
                               _%klass94923%_
                               _%slot94931%_
                               _%field94940%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94923%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-mutator
                                   _%klass94923%_
                                   _%slot94931%_
                                   _%field94940%_)))
                              (if (let ((_%strukt94946%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94923%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94946%_
                                            'class))
                                         (let ((__tmp97670
                                                (let ((__tmp97671
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94946%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97671))))
                                           (declare (not safe))
                                           (##fx< _%field94940%_ __tmp97670))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-mutator
                                       _%klass94923%_
                                       _%slot94931%_
                                       _%field94940%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-mutator
                                       _%klass94923%_
                                       _%slot94931%_
                                       _%field94940%_))))))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass94894%_ _%slot94895%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94894%_ 'class))
              (let ()
                (let ((_%klass94899%_ _%klass94894%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94895%_))
                      (let ()
                        (let ((_%slot94909%_ _%slot94895%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-unchecked-accessor
                               _%klass94899%_
                               _%slot94909%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94895%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass94894%_)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass94862%_ _%slot94863%_)
        (let ()
          (let ((_%klass94866%_ _%klass94862%_))
            (let ((_%slot94874%_ _%slot94863%_))
              (let ()
                (let ((_%field94883%_
                       (let ((__tmp97672
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94866%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97672 _%slot94874%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94883%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94866%_
                               'slot:
                               _%slot94874%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94866%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass94866%_
                               _%slot94874%_
                               _%field94883%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94866%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-accessor
                                   _%klass94866%_
                                   _%slot94874%_
                                   _%field94883%_)))
                              (if (let ((_%strukt94889%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94866%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94889%_
                                            'class))
                                         (let ((__tmp97673
                                                (let ((__tmp97674
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94889%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97674))))
                                           (declare (not safe))
                                           (##fx< _%field94883%_ __tmp97673))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-accessor
                                       _%klass94866%_
                                       _%slot94874%_
                                       _%field94883%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-accessor
                                       _%klass94866%_
                                       _%slot94874%_
                                       _%field94883%_))))))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass94837%_ _%slot94838%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94837%_ 'class))
              (let ()
                (let ((_%klass94842%_ _%klass94837%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94838%_))
                      (let ()
                        (let ((_%slot94852%_ _%slot94838%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-unchecked-mutator
                               _%klass94842%_
                               _%slot94852%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94838%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass94837%_)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass94805%_ _%slot94806%_)
        (let ()
          (let ((_%klass94809%_ _%klass94805%_))
            (let ((_%slot94817%_ _%slot94806%_))
              (let ()
                (let ((_%field94826%_
                       (let ((__tmp97675
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94809%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97675 _%slot94817%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94826%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94809%_
                               'slot:
                               _%slot94817%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94809%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass94809%_
                               _%slot94817%_
                               _%field94826%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94809%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-mutator
                                   _%klass94809%_
                                   _%slot94817%_
                                   _%field94826%_)))
                              (if (let ((_%strukt94832%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94809%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94832%_
                                            'class))
                                         (let ((__tmp97676
                                                (let ((__tmp97677
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94832%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97677))))
                                           (declare (not safe))
                                           (##fx< _%field94826%_ __tmp97676))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-mutator
                                       _%klass94809%_
                                       _%slot94817%_
                                       _%field94826%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-mutator
                                       _%klass94809%_
                                       _%slot94817%_
                                       _%field94826%_))))))))))))))
    (define not-an-instance__%
      (lambda (_%object94789%_ _%class94790%_ _%slot94791%_)
        (apply error
               '"not an instance"
               'object:
               _%object94789%_
               'class:
               _%class94790%_
               (if _%slot94791%_ (cons 'slot: (cons _%slot94791%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object94796%_ _%class94797%_)
        (let ((_%slot94799%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object94796%_ _%class94797%_ _%slot94799%_))))
    (define not-an-instance
      (lambda _g97679_
        (let ((_g97678_ (let () (declare (not safe)) (##length _g97679_))))
          (cond ((let () (declare (not safe)) (##fx= _g97678_ 2))
                 (apply (lambda (_%object94796%_ _%class94797%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object94796%_
                             _%class94797%_)))
                        _g97679_))
                ((let () (declare (not safe)) (##fx= _g97678_ 3))
                 (apply (lambda (_%object94801%_ _%class94802%_ _%slot94803%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object94801%_
                             _%class94802%_
                             _%slot94803%_)))
                        _g97679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97679_))))))
    (define make-final-slot-accessor
      (lambda (_%klass94782%_ _%slot94783%_ _%field94784%_)
        (lambda (_%obj94786%_)
          (##direct-structure-ref
           _%obj94786%_
           _%field94784%_
           _%klass94782%_
           _%slot94783%_))))
    (define make-final-slot-mutator
      (lambda (_%klass94775%_ _%slot94776%_ _%field94777%_)
        (lambda (_%obj94779%_ _%val94780%_)
          (##direct-structure-set!
           _%obj94779%_
           _%val94780%_
           _%field94777%_
           _%klass94775%_
           _%slot94776%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass94769%_ _%slot94770%_ _%field94771%_)
        (lambda (_%obj94773%_)
          (##structure-ref
           _%obj94773%_
           _%field94771%_
           _%klass94769%_
           _%slot94770%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass94762%_ _%slot94763%_ _%field94764%_)
        (lambda (_%obj94766%_ _%val94767%_)
          (##structure-set!
           _%obj94766%_
           _%val94767%_
           _%field94764%_
           _%klass94762%_
           _%slot94763%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass94756%_ _%slot94757%_ _%field94758%_)
        (lambda (_%obj94760%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj94760%_
             _%field94758%_
             _%klass94756%_
             _%slot94757%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass94749%_ _%slot94750%_ _%field94751%_)
        (lambda (_%obj94753%_ _%val94754%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj94753%_
             _%val94754%_
             _%field94751%_
             _%klass94749%_
             _%slot94750%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass94743%_ _%slot94744%_ _%field94745%_)
        (lambda (_%obj94747%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94743%_ _%obj94747%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94747%_ _%field94745%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94747%_
                 _%klass94743%_
                 _%slot94744%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass94736%_ _%slot94737%_ _%field94738%_)
        (lambda (_%obj94740%_ _%val94741%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94736%_ _%obj94740%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94740%_
                 _%field94738%_
                 _%val94741%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94740%_
                 _%klass94736%_
                 _%slot94737%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass94727%_ _%slot94728%_ _%field94729%_)
        (lambda (_%obj94731%_)
          (if (let ((__tmp97680
                     (let () (declare (not safe)) (##type-id _%klass94727%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94731%_ __tmp97680))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-ref _%obj94731%_ _%field94729%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94727%_ _%obj94731%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _%obj94731%_ _%slot94728%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94731%_
                       _%klass94727%_
                       _%slot94728%_))))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass94717%_ _%slot94718%_ _%field94719%_)
        (lambda (_%obj94721%_ _%val94722%_)
          (if (let ((__tmp97681
                     (let () (declare (not safe)) (##type-id _%klass94717%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94721%_ __tmp97681))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-set!
                   _%obj94721%_
                   _%field94719%_
                   _%val94722%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94717%_ _%obj94721%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-set!
                       _%obj94721%_
                       _%slot94718%_
                       _%val94722%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94721%_
                       _%klass94717%_
                       _%slot94718%_))))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass94711%_ _%slot94712%_ _%field94713%_)
        (lambda (_%obj94715%_)
          (if (let ((__tmp97682
                     (let () (declare (not safe)) (##type-id _%klass94711%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94715%_ __tmp97682))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj94715%_ _%field94713%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94715%_ _%slot94712%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass94704%_ _%slot94705%_ _%field94706%_)
        (lambda (_%obj94708%_ _%val94709%_)
          (if (let ((__tmp97683
                     (let () (declare (not safe)) (##type-id _%klass94704%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94708%_ __tmp97683))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94708%_
                 _%field94706%_
                 _%val94709%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj94708%_
                 _%slot94705%_
                 _%val94709%_))))))
    (define class-slot-offset
      (lambda (_%klass94679%_ _%slot94680%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94679%_ 'class))
              (let ()
                (let ((_%klass94684%_ _%klass94679%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94680%_))
                      (let ()
                        (let ((_%slot94694%_ _%slot94680%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-offset
                               _%klass94684%_
                               _%slot94694%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94680%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass94679%_)))))
    (define __class-slot-offset
      (lambda (_%klass94658%_ _%slot94659%_)
        (let ()
          (let ((_%klass94662%_ _%klass94658%_))
            (let ((_%slot94670%_ _%slot94659%_))
              (let ()
                (let ((__tmp97684
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94662%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97684 _%slot94670%_ '#f))))))))
    (define class-slot-ref
      (lambda (_%klass94632%_ _%obj94633%_ _%slot94634%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94632%_ 'class))
              (let ()
                (let ((_%klass94638%_ _%klass94632%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94634%_))
                      (let ()
                        (let ((_%slot94648%_ _%slot94634%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-ref
                               _%klass94638%_
                               _%obj94633%_
                               _%slot94648%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94634%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass94632%_)))))
    (define __class-slot-ref
      (lambda (_%klass94608%_ _%obj94609%_ _%slot94610%_)
        (let ()
          (let ((_%klass94613%_ _%klass94608%_))
            (let ((_%slot94621%_ _%slot94610%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94613%_ _%obj94609%_))
                    (let ((_%off94630%_
                           (let ((__tmp97685
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94609%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97685 _%slot94621%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%obj94609%_
                       _%off94630%_
                       _%klass94613%_
                       _%slot94621%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94609%_ _%klass94613%_)))))))))
    (define class-slot-set!
      (lambda (_%klass94581%_ _%obj94582%_ _%slot94583%_ _%val94584%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94581%_ 'class))
              (let ()
                (let ((_%klass94588%_ _%klass94581%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94583%_))
                      (let ()
                        (let ((_%slot94598%_ _%slot94583%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-set!
                               _%klass94588%_
                               _%obj94582%_
                               _%slot94598%_
                               _%val94584%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94583%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass94581%_)))))
    (define __class-slot-set!
      (lambda (_%klass94556%_ _%obj94557%_ _%slot94558%_ _%val94559%_)
        (let ()
          (let ((_%klass94562%_ _%klass94556%_))
            (let ((_%slot94570%_ _%slot94558%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94562%_ _%obj94557%_))
                    (let ((_%off94579%_
                           (let ((__tmp97686
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94557%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97686 _%slot94570%_))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94557%_
                       _%val94559%_
                       _%off94579%_
                       _%klass94562%_
                       _%slot94570%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94557%_ _%klass94562%_)))))))))
    (define unchecked-field-ref
      (lambda (_%obj94553%_ _%off94554%_)
        (let ((__tmp97687
               (let () (declare (not safe)) (##structure-type _%obj94553%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj94553%_
           _%off94554%_
           __tmp97687
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj94549%_ _%off94550%_ _%val94551%_)
        (let ((__tmp97688
               (let () (declare (not safe)) (##structure-type _%obj94549%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj94549%_
           _%val94551%_
           _%off94550%_
           __tmp97688
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj94546%_ _%slot94547%_)
        (let ((__tmp97689
               (let ((__tmp97690
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94546%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97690 _%slot94547%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj94546%_ __tmp97689))))
    (define unchecked-slot-set!
      (lambda (_%obj94542%_ _%slot94543%_ _%val94544%_)
        (let ((__tmp97691
               (let ((__tmp97692
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94542%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97692 _%slot94543%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj94542%_ __tmp97691 _%val94544%_))))
    (define slot-ref__%
      (lambda (_%obj94504%_ _%slot94505%_ _%E94506%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94505%_))
              (let ()
                (let ((_%slot94510%_ _%slot94505%_))
                  (if (let () (declare (not safe)) (procedure? _%E94506%_))
                      (let ()
                        (let ((_%E94520%_ _%E94506%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-ref__%
                               _%obj94504%_
                               _%slot94510%_
                               _%E94520%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E94506%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot94505%_)))))
    (define slot-ref__0
      (lambda (_%obj94533%_ _%slot94534%_)
        (let ((_%E94536%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj94533%_ _%slot94534%_ _%E94536%_))))
    (define slot-ref
      (lambda _g97694_
        (let ((_g97693_ (let () (declare (not safe)) (##length _g97694_))))
          (cond ((let () (declare (not safe)) (##fx= _g97693_ 2))
                 (apply (lambda (_%obj94533%_ _%slot94534%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj94533%_ _%slot94534%_)))
                        _g97694_))
                ((let () (declare (not safe)) (##fx= _g97693_ 3))
                 (apply (lambda (_%obj94538%_ _%slot94539%_ _%E94540%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj94538%_
                             _%slot94539%_
                             _%E94540%_)))
                        _g97694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97694_))))))
    (define __slot-ref__%
      (lambda (_%obj94460%_ _%slot94461%_ _%E94462%_)
        (let ()
          (let ((_%slot94465%_ _%slot94461%_))
            (let ((_%E94473%_ _%E94462%_))
              (let ()
                (let* ((_%klass94482%_
                        (let () (declare (not safe)) (class-of _%obj94460%_)))
                       (_%$e94485%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94482%_ _%slot94465%_))))
                  (if _%$e94485%_
                      ((lambda (_%off94488%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-ref _%obj94460%_ _%off94488%_)))
                       _%$e94485%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94473%_ _%obj94460%_ _%slot94465%_)))))))))))
    (define __slot-ref__0
      (lambda (_%obj94494%_ _%slot94495%_)
        (let ((_%E94497%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj94494%_ _%slot94495%_ _%E94497%_))))
    (define __slot-ref
      (lambda _g97696_
        (let ((_g97695_ (let () (declare (not safe)) (##length _g97696_))))
          (cond ((let () (declare (not safe)) (##fx= _g97695_ 2))
                 (apply (lambda (_%obj94494%_ _%slot94495%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj94494%_ _%slot94495%_)))
                        _g97696_))
                ((let () (declare (not safe)) (##fx= _g97695_ 3))
                 (apply (lambda (_%obj94499%_ _%slot94500%_ _%E94501%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj94499%_
                             _%slot94500%_
                             _%E94501%_)))
                        _g97696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g97696_))))))
    (define slot-set!__%
      (lambda (_%obj94418%_ _%slot94419%_ _%val94420%_ _%E94421%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94419%_))
              (let ()
                (let ((_%slot94425%_ _%slot94419%_))
                  (if (let () (declare (not safe)) (procedure? _%E94421%_))
                      (let ()
                        (let ((_%E94435%_ _%E94421%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-set!__%
                               _%obj94418%_
                               _%slot94425%_
                               _%val94420%_
                               _%E94435%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94421%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot94419%_)))))
    (define slot-set!__0
      (lambda (_%obj94448%_ _%slot94449%_ _%val94450%_)
        (let ((_%E94452%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj94448%_ _%slot94449%_ _%val94450%_ _%E94452%_))))
    (define slot-set!
      (lambda _g97698_
        (let ((_g97697_ (let () (declare (not safe)) (##length _g97698_))))
          (cond ((let () (declare (not safe)) (##fx= _g97697_ 3))
                 (apply (lambda (_%obj94448%_ _%slot94449%_ _%val94450%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj94448%_
                             _%slot94449%_
                             _%val94450%_)))
                        _g97698_))
                ((let () (declare (not safe)) (##fx= _g97697_ 4))
                 (apply (lambda (_%obj94454%_
                                 _%slot94455%_
                                 _%val94456%_
                                 _%E94457%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj94454%_
                             _%slot94455%_
                             _%val94456%_
                             _%E94457%_)))
                        _g97698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97698_))))))
    (define __slot-set!__%
      (lambda (_%obj94371%_ _%slot94372%_ _%val94373%_ _%E94374%_)
        (let ()
          (let ((_%slot94377%_ _%slot94372%_))
            (let ((_%E94385%_ _%E94374%_))
              (let ()
                (let* ((_%klass94394%_
                        (let () (declare (not safe)) (class-of _%obj94371%_)))
                       (_%$e94397%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94394%_ _%slot94377%_))))
                  (if _%$e94397%_
                      ((lambda (_%off94400%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-set!
                            _%obj94371%_
                            _%off94400%_
                            _%val94373%_)))
                       _%$e94397%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94385%_ _%obj94371%_ _%slot94377%_)))))))))))
    (define __slot-set!__0
      (lambda (_%obj94406%_ _%slot94407%_ _%val94408%_)
        (let ((_%E94410%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94406%_
           _%slot94407%_
           _%val94408%_
           _%E94410%_))))
    (define __slot-set!
      (lambda _g97700_
        (let ((_g97699_ (let () (declare (not safe)) (##length _g97700_))))
          (cond ((let () (declare (not safe)) (##fx= _g97699_ 3))
                 (apply (lambda (_%obj94406%_ _%slot94407%_ _%val94408%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94406%_
                             _%slot94407%_
                             _%val94408%_)))
                        _g97700_))
                ((let () (declare (not safe)) (##fx= _g97699_ 4))
                 (apply (lambda (_%obj94412%_
                                 _%slot94413%_
                                 _%val94414%_
                                 _%E94415%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94412%_
                             _%slot94413%_
                             _%val94414%_
                             _%E94415%_)))
                        _g97700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g97700_))))))
    (define __slot-error
      (lambda (_%obj94367%_ _%slot94368%_)
        (error '"Cannot find slot"
               'object:
               _%obj94367%_
               'slot:
               _%slot94368%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94342%_ _%maybe-super-class94343%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94342%_ 'class))
              (let ()
                (let ((_%maybe-sub-class94347%_ _%maybe-sub-class94342%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-class94343%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-class94357%_
                               _%maybe-super-class94343%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__subclass?
                               _%maybe-sub-class94347%_
                               _%maybe-super-class94357%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94343%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class94342%_)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94314%_ _%maybe-super-class94315%_)
        (let ()
          (let ((_%maybe-sub-class94318%_ _%maybe-sub-class94314%_))
            (let ((_%maybe-super-class94326%_ _%maybe-super-class94315%_))
              (let ()
                (let* ((_%maybe-super-class-id94335%_
                        (let ()
                          (declare (not safe))
                          (##type-id _%maybe-super-class94326%_)))
                       (_%$e94337%_
                        (eq? _%maybe-super-class-id94335%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%maybe-sub-class94318%_)))))
                  (if _%$e94337%_
                      _%$e94337%_
                      (let ((__tmp97702
                             (lambda (_%super-class94340%_)
                               (eq? (let ()
                                      (declare (not safe))
                                      (##type-id _%super-class94340%_))
                                    _%maybe-super-class-id94335%_)))
                            (__tmp97701
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%maybe-sub-class94318%_
                                '6
                                '#f
                                '#f))))
                        (declare (not safe))
                        (__ormap1 __tmp97702 __tmp97701))))))))))
    (define object?
      (lambda (_%o94311%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94311%_))
              (let ((__tmp97703
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94311%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp97703 'class))
              '#f))))
    (define object-type
      (lambda (_%o94306%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94306%_))
              (let ((_%klass94309%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94306%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94309%_ 'class))
                    _%klass94309%_
                    (error '"not an object" _%o94306%_ _%klass94309%_)))
              (error '"not an object" _%o94306%_)))))
    (define direct-instance?
      (lambda (_%klass94291%_ _%obj94292%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94291%_ 'class))
              (let ()
                (let ((_%klass94296%_ _%klass94291%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__direct-instance? _%klass94296%_ _%obj94292%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass94291%_)))))
    (define __direct-instance?
      (lambda (_%klass94278%_ _%obj94279%_)
        (let ()
          (let ((_%klass94282%_ _%klass94278%_))
            (let ()
              (let ((__tmp97704
                     (let () (declare (not safe)) (##type-id _%klass94282%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94279%_ __tmp97704)))))))
    (define immediate-instance-of?
      (lambda (_%klass94274%_ _%obj94275%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94275%_))
              (eq? _%klass94274%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94275%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94259%_ _%obj94260%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94259%_ 'class))
              (let ()
                (let ((_%klass94264%_ _%klass94259%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-instance? _%klass94264%_ _%obj94260%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass94259%_)))))
    (define __struct-instance?
      (lambda (_%klass94246%_ _%obj94247%_)
        (let ()
          (let ((_%klass94250%_ _%klass94246%_))
            (let ()
              (let ((__tmp97705
                     (let () (declare (not safe)) (##type-id _%klass94250%_))))
                (declare (not safe))
                (##structure-instance-of? _%obj94247%_ __tmp97705)))))))
    (define class-instance?
      (lambda (_%klass94231%_ _%obj94232%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94231%_ 'class))
              (let ()
                (let ((_%klass94236%_ _%klass94231%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94236%_ _%obj94232%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass94231%_)))))
    (define __class-instance?
      (lambda (_%klass94216%_ _%obj94217%_)
        (let ()
          (let ((_%klass94220%_ _%klass94216%_))
            (let ()
              (let ((_%type94229%_
                     (let () (declare (not safe)) (class-of _%obj94217%_))))
                (declare (not safe))
                (subclass? _%type94229%_ _%klass94220%_)))))))
    (define make-object
      (lambda (_%klass94191%_ _%k94192%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94191%_ 'class))
              (let ()
                (let ((_%klass94196%_ _%klass94191%_))
                  (if (let () (declare (not safe)) (fixnum? _%k94192%_))
                      (let ()
                        (let ((_%k94206%_ _%k94192%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-object _%klass94196%_ _%k94206%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94192%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass94191%_)))))
    (define __make-object
      (lambda (_%klass94168%_ _%k94169%_)
        (let ()
          (let ((_%klass94172%_ _%klass94168%_))
            (let ((_%k94180%_ _%k94169%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass94172%_))
                    (error '"cannot instantiate system class"
                           'class:
                           _%klass94172%_)
                    (let ((_%obj94189%_
                           (let ()
                             (declare (not safe))
                             (##make-structure _%klass94172%_ _%k94180%_))))
                      (declare (not safe))
                      (object-fill! _%obj94189%_ '#f)))))))))
    (define object-fill!
      (lambda (_%obj94153%_ _%fill94154%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj94158%_ _%obj94153%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__object-fill! _%obj94158%_ _%fill94154%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj94153%_)))))
    (define __object-fill!
      (lambda (_%obj94135%_ _%fill94136%_)
        (let ()
          (let ((_%obj94139%_ _%obj94135%_))
            (let ()
              (let _%loop94148%_ ((_%i94150%_
                                   (let ((__tmp97707
                                          (let ()
                                            (declare (not safe))
                                            (##structure-length
                                             _%obj94139%_))))
                                     (declare (not safe))
                                     (##fx- __tmp97707 '1))))
                (let ()
                  (if (let () (declare (not safe)) (##fx> _%i94150%_ '0))
                      (begin
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%obj94139%_
                           _%fill94136%_
                           _%i94150%_
                           '#f
                           '#f))
                        (let ((__tmp97706
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%i94150%_ '1))))
                          (declare (not safe))
                          (_%loop94148%_ __tmp97706)))
                      _%obj94139%_))))))))
    (define new-instance
      (lambda (_%klass94121%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94121%_ 'class))
              (let ()
                (let ((_%klass94125%_ _%klass94121%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__new-instance _%klass94125%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass94121%_)))))
    (define __new-instance
      (lambda (_%klass94109%_)
        (let ()
          (let ((_%klass94112%_ _%klass94109%_))
            (let ()
              (let ((__obj97603
                     (let ((__tmp97708
                            (let ((__tmp97709
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass94112%_
                                      '7
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (##vector-length __tmp97709))))
                       (declare (not safe))
                       (##make-structure _%klass94112%_ __tmp97708))))
                (let () (declare (not safe)) (object-fill! __obj97603 '#f))
                __obj97603))))))
    (define make-instance
      (lambda (_%klass94094%_ . _%args94095%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94094%_ 'class))
              (let ()
                (let ((_%klass94099%_ _%klass94094%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __make-instance
                               _%klass94099%_
                               _%args94095%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass94094%_)))))
    (define __make-instance
      (lambda (_%klass94066%_ . _%args94067%_)
        (let ()
          (let ((_%klass94070%_ _%klass94066%_))
            (let ()
              (let ((_%$e94079%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass94070%_
                        '10
                        '#f
                        '#f))))
                (if _%$e94079%_
                    ((lambda (_%kons-id94082%_)
                       (let ((_%obj94084%_
                              (let ()
                                (declare (not safe))
                                (__new-instance _%klass94070%_))))
                         (let ()
                           (declare (not safe))
                           (___constructor-init!
                            _%klass94070%_
                            _%kons-id94082%_
                            _%obj94084%_
                            _%args94067%_))
                         _%obj94084%_))
                     _%$e94079%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass94070%_))
                        (let ()
                          (let ((_%obj94087%_
                                 (let ()
                                   (declare (not safe))
                                   (__new-instance _%klass94070%_))))
                            (let ()
                              (declare (not safe))
                              (__metaclass-instance-init!
                               _%klass94070%_
                               _%obj94087%_
                               _%args94067%_))
                            _%obj94087%_))
                        (if (let ((__tmp97710
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-struct? _%klass94070%_))))
                              (declare (not safe))
                              (not __tmp97710))
                            (let ()
                              (let ((_%obj94090%_
                                     (let ()
                                       (declare (not safe))
                                       (__new-instance _%klass94070%_))))
                                (let ()
                                  (declare (not safe))
                                  (___class-instance-init!
                                   _%klass94070%_
                                   _%obj94090%_
                                   _%args94067%_))
                                _%obj94090%_))
                            (if (let ((__tmp97712
                                       (let ()
                                         (declare (not safe))
                                         (__class-type-field-count
                                          _%klass94070%_)))
                                      (__tmp97711 (length _%args94067%_)))
                                  (declare (not safe))
                                  (##fx= __tmp97712 __tmp97711))
                                (let ()
                                  (apply ##structure
                                         _%klass94070%_
                                         _%args94067%_))
                                (let ()
                                  (error '"arguments don't match object size"
                                         'class:
                                         _%klass94070%_
                                         'slots:
                                         (let ()
                                           (declare (not safe))
                                           (__class-type-slot-list
                                            _%klass94070%_))
                                         'args:
                                         _%args94067%_))))))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94051%_ . _%args94052%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj94056%_ _%obj94051%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __struct-instance-init!
                               _%obj94056%_
                               _%args94052%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj94051%_)))))
    (define __struct-instance-init!
      (lambda (_%obj94038%_ . _%args94039%_)
        (let ()
          (let ((_%obj94042%_ _%obj94038%_))
            (let ()
              (if (let ((__tmp97714 (length _%args94039%_))
                        (__tmp97713
                         (let ()
                           (declare (not safe))
                           (##structure-length _%obj94042%_))))
                    (declare (not safe))
                    (##fx< __tmp97714 __tmp97713))
                  (let ()
                    (declare (not safe))
                    (___struct-instance-init! _%obj94042%_ _%args94039%_))
                  (error '"too many arguments for struct"
                         'object:
                         _%obj94042%_
                         'args:
                         _%args94039%_))
              '#!void)))))
    (define ___struct-instance-init!
      (lambda (_%obj93997%_ _%args93998%_)
        (let _%lp94000%_ ((_%k94002%_ '1) (_%rest94003%_ _%args93998%_))
          (let* ((_%rest9400494012%_ _%rest94003%_)
                 (_%else9400694020%_ (lambda () _%obj93997%_))
                 (_%K9400894026%_
                  (lambda (_%rest94023%_ _%hd94024%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj93997%_
                       _%k94002%_
                       _%hd94024%_))
                    (let ((__tmp97715
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k94002%_ '1))))
                      (declare (not safe))
                      (_%lp94000%_ __tmp97715 _%rest94023%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9400494012%_))
                (let ((_%hd9400994029%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9400494012%_)))
                      (_%tl9401094031%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9400494012%_))))
                  (let* ((_%hd94034%_ _%hd9400994029%_)
                         (_%rest94036%_ _%tl9401094031%_))
                    (declare (not safe))
                    (_%K9400894026%_ _%rest94036%_ _%hd94034%_)))
                (let () (declare (not safe)) (_%else9400694020%_)))))))
    (define class-instance-init!
      (lambda (_%obj93982%_ . _%args93983%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93987%_ _%obj93982%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __class-instance-init!
                               _%obj93987%_
                               _%args93983%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj93982%_)))))
    (define __class-instance-init!
      (lambda (_%obj93969%_ . _%args93970%_)
        (let ()
          (let ((_%obj93973%_ _%obj93969%_))
            (let ()
              (let ((__tmp97716
                     (let ()
                       (declare (not safe))
                       (##structure-type _%obj93973%_))))
                (declare (not safe))
                (___class-instance-init!
                 __tmp97716
                 _%obj93973%_
                 _%args93970%_))
              '#!void)))))
    (define ___class-instance-init!
      (lambda (_%klass93911%_ _%obj93912%_ _%args93913%_)
        (let _%lp93915%_ ((_%rest93917%_ _%args93913%_))
          (let* ((_%rest9391893928%_ _%rest93917%_)
                 (_%else9392093936%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest93917%_))
                        _%obj93912%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass93911%_
                               'rest:
                               _%rest93917%_))))
                 (_%K9392293950%_
                  (lambda (_%rest93939%_ _%val93940%_ _%key93941%_)
                    (if (let ((__tmp97717
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key93941%_))))
                          (declare (not safe))
                          (not __tmp97717))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key93941%_))
                        (let ((_%$e93944%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass93911%_
                                  _%key93941%_))))
                          (if _%$e93944%_
                              ((lambda (_%off93947%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj93912%_
                                    _%off93947%_
                                    _%val93940%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp93915%_ _%rest93939%_)))
                               _%$e93944%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass93911%_
                                       'slot:
                                       _%key93941%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9391893928%_))
                (let ((_%hd9392393953%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9391893928%_)))
                      (_%tl9392493955%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9391893928%_))))
                  (let ((_%key93958%_ _%hd9392393953%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9392493955%_))
                        (let ((_%hd9392593960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9392493955%_)))
                              (_%tl9392693962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9392493955%_))))
                          (let* ((_%val93965%_ _%hd9392593960%_)
                                 (_%rest93967%_ _%tl9392693962%_))
                            (declare (not safe))
                            (_%K9392293950%_
                             _%rest93967%_
                             _%val93965%_
                             _%key93958%_)))
                        (let () (declare (not safe)) (_%else9392093936%_)))))
                (let () (declare (not safe)) (_%else9392093936%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass93907%_ _%obj93908%_ _%args93909%_)
        (apply call-method
               _%klass93907%_
               'instance-init!
               _%obj93908%_
               _%args93909%_)))
    (define constructor-init!
      (lambda (_%klass93870%_ _%kons-id93871%_ _%obj93872%_ . _%args93873%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93870%_ 'class))
              (let ()
                (let ((_%klass93877%_ _%klass93870%_))
                  (if (let () (declare (not safe)) (symbol? _%kons-id93871%_))
                      (let ()
                        (let ((_%kons-id93887%_ _%kons-id93871%_))
                          (if '#t
                              (let ()
                                (let ((_%obj93897%_ _%obj93872%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (##apply __constructor-init!
                                               _%klass93877%_
                                               _%kons-id93887%_
                                               _%obj93897%_
                                               _%args93873%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                               'contract:
                               'true
                               'value:
                               _%obj93872%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id93871%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass93870%_)))))
    (define __constructor-init!
      (lambda (_%klass93839%_ _%kons-id93840%_ _%obj93841%_ . _%args93842%_)
        (let ()
          (let ((_%klass93845%_ _%klass93839%_))
            (let ((_%kons-id93853%_ _%kons-id93840%_))
              (let ((_%obj93861%_ _%obj93841%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (___constructor-init!
                     _%klass93845%_
                     _%kons-id93853%_
                     _%obj93861%_
                     _%args93842%_))
                  '#!void)))))))
    (define ___constructor-init!
      (lambda (_%klass93828%_ _%kons-id93829%_ _%obj93830%_ _%args93831%_)
        (let ((_%$e93833%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass93828%_
                  _%obj93830%_
                  _%kons-id93829%_))))
          (if _%$e93833%_
              ((lambda (_%kons93836%_)
                 (apply _%kons93836%_ _%obj93830%_ _%args93831%_)
                 _%obj93830%_)
               _%$e93833%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass93828%_
                       'method:
                       _%kons-id93829%_))))))
    (define struct-copy
      (lambda (_%struct93814%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%struct93818%_ _%struct93814%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-copy _%struct93818%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct93814%_)))))
    (define __struct-copy
      (lambda (_%struct93802%_)
        (let ()
          (let ((_%struct93805%_ _%struct93802%_))
            (let ()
              (let ()
                (declare (not safe))
                (##structure-copy _%struct93805%_)))))))
    (define struct->list
      (lambda (_%obj93788%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93792%_ _%obj93788%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct->list _%obj93792%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj93788%_)))))
    (define __struct->list
      (lambda (_%obj93776%_)
        (let ()
          (let ((_%obj93779%_ _%obj93776%_))
            (let ()
              (let () (declare (not safe)) (##vector->list _%obj93779%_)))))))
    (define class->list
      (lambda (_%obj93762%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93766%_ _%obj93762%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class->list _%obj93766%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj93762%_)))))
    (define __class->list
      (lambda (_%obj93738%_)
        (let ()
          (let ((_%obj93741%_ _%obj93738%_))
            (let ()
              (let* ((_%klass93750%_
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj93741%_)))
                     (_%slot-vector93752%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%klass93750%_
                         '7
                         '#f
                         '#f))))
                (let _%loop93754%_ ((_%index93756%_
                                     (let ((__tmp97723
                                            (let ()
                                              (declare (not safe))
                                              (##vector-length
                                               _%slot-vector93752%_))))
                                       (declare (not safe))
                                       (##fx- __tmp97723 '1)))
                                    (_%plist93757%_ '()))
                  (let ()
                    (if (let () (declare (not safe)) (##fx< _%index93756%_ '1))
                        (cons _%klass93750%_ _%plist93757%_)
                        (let ((_%slot93760%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref
                                  _%slot-vector93752%_
                                  _%index93756%_))))
                          (let ((__tmp97722
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%index93756%_ '1)))
                                (__tmp97718
                                 (let ((__tmp97721
                                        (let ()
                                          (declare (not safe))
                                          (symbol->keyword _%slot93760%_)))
                                       (__tmp97719
                                        (let ((__tmp97720
                                               (let ()
                                                 (declare (not safe))
                                                 (unchecked-field-ref
                                                  _%obj93741%_
                                                  _%index93756%_))))
                                          (declare (not safe))
                                          (cons __tmp97720 _%plist93757%_))))
                                   (declare (not safe))
                                   (cons __tmp97721 __tmp97719))))
                            (declare (not safe))
                            (_%loop93754%_ __tmp97722 __tmp97718))))))))))))
    (define call-method
      (lambda (_%obj93722%_ _%id93723%_ . _%args93724%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93723%_))
              (let ()
                (let ((_%id93728%_ _%id93723%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-method
                               _%obj93722%_
                               _%id93728%_
                               _%args93724%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id93723%_)))))
    (define __call-method
      (lambda (_%obj93691%_ _%id93692%_ . _%args93693%_)
        (let ()
          (let ((_%id93696%_ _%id93692%_))
            (let ()
              (let ((_%$e93705%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93691%_ _%id93696%_))))
                (if _%$e93705%_
                    ((lambda (_%method93708%_)
                       (let ((_%method93710%_ _%method93708%_))
                         (apply _%method93710%_ _%obj93691%_ _%args93693%_)))
                     _%$e93705%_)
                    (let ()
                      (error '"cannot find method"
                             'object:
                             _%obj93691%_
                             'method:
                             _%id93696%_)))))))))
    (define method-ref
      (lambda (_%obj93676%_ _%id93677%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93677%_))
              (let ()
                (let ((_%id93681%_ _%id93677%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__method-ref _%obj93676%_ _%id93681%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
               'contract:
               'symbol?
               'value:
               _%id93677%_)))))
    (define __method-ref
      (lambda (_%obj93663%_ _%id93664%_)
        (let ()
          (let ((_%id93667%_ _%id93664%_))
            (let ()
              (let ((__tmp97724
                     (let () (declare (not safe)) (class-of _%obj93663%_))))
                (declare (not safe))
                (__find-method __tmp97724 _%obj93663%_ _%id93667%_)))))))
    (define checked-method-ref
      (lambda (_%obj93656%_ _%id93657%_)
        (let ()
          (let ((_%$e93660%_
                 (let ()
                   (declare (not safe))
                   (method-ref _%obj93656%_ _%id93657%_))))
            (if _%$e93660%_
                _%$e93660%_
                (error '"missing method"
                       'object:
                       _%obj93656%_
                       'method:
                       _%id93657%_))))))
    (define bound-method-ref
      (lambda (_%obj93641%_ _%id93642%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93642%_))
              (let ()
                (let ((_%id93646%_ _%id93642%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__bound-method-ref _%obj93641%_ _%id93646%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
               'contract:
               'symbol?
               'value:
               _%id93642%_)))))
    (define __bound-method-ref
      (lambda (_%obj93609%_ _%id93610%_)
        (let ()
          (let ((_%id93613%_ _%id93610%_))
            (let ()
              (let ((_%$e93622%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93609%_ _%id93613%_))))
                (if _%$e93622%_
                    ((lambda (_%method93625%_)
                       (let ((_%method93627%_ _%method93625%_))
                         (lambda _%args93638%_
                           (apply _%method93627%_
                                  _%obj93609%_
                                  _%args93638%_))))
                     _%$e93622%_)
                    (let () '#f))))))))
    (define checked-bound-method-ref
      (lambda (_%obj93594%_ _%id93595%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93595%_))
              (let ()
                (let ((_%id93599%_ _%id93595%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__checked-bound-method-ref _%obj93594%_ _%id93599%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
               'contract:
               'symbol?
               'value:
               _%id93595%_)))))
    (define __checked-bound-method-ref
      (lambda (_%obj93577%_ _%id93578%_)
        (let ()
          (let ((_%id93581%_ _%id93578%_))
            (let ()
              (let ((_%method93590%_
                     (let ()
                       (declare (not safe))
                       (checked-method-ref _%obj93577%_ _%id93581%_))))
                (lambda _%args93592%_
                  (apply _%method93590%_ _%obj93577%_ _%args93592%_))))))))
    (define find-method
      (lambda (_%klass93551%_ _%obj93552%_ _%id93553%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93551%_ 'class))
              (let ()
                (let ((_%klass93557%_ _%klass93551%_))
                  (if (let () (declare (not safe)) (symbol? _%id93553%_))
                      (let ()
                        (let ((_%id93567%_ _%id93553%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__find-method
                               _%klass93557%_
                               _%obj93552%_
                               _%id93567%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id93553%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
               'contract:
               'class-type?
               'value:
               _%klass93551%_)))))
    (define __find-method
      (lambda (_%klass93524%_ _%obj93525%_ _%id93526%_)
        (let ()
          (let ((_%klass93529%_ _%klass93524%_))
            (let ((_%id93537%_ _%id93526%_))
              (let ()
                (let ((_%$e93546%_
                       (let ()
                         (declare (not safe))
                         (__direct-method-ref
                          _%klass93529%_
                          _%obj93525%_
                          _%id93537%_))))
                  (if _%$e93546%_
                      _%$e93546%_
                      (if (let ()
                            (declare (not safe))
                            (__class-type-sealed? _%klass93529%_))
                          (let () '#f)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93529%_
                               _%obj93525%_
                               _%id93537%_))))))))))))
    (define mixin-find-method
      (lambda (_%mixins93508%_ _%obj93509%_ _%id93510%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93510%_))
              (let ()
                (let ((_%id93514%_ _%id93510%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__mixin-find-method
                       _%mixins93508%_
                       _%obj93509%_
                       _%id93514%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
               'contract:
               'symbol?
               'value:
               _%id93510%_)))))
    (define __mixin-find-method
      (lambda (_%mixins93490%_ _%obj93491%_ _%id93492%_)
        (let ()
          (let ((_%id93495%_ _%id93492%_))
            (let ()
              (let ((__tmp97725
                     (lambda (_%g9350393505%_)
                       (let ()
                         (declare (not safe))
                         (direct-method-ref
                          _%g9350393505%_
                          _%obj93491%_
                          _%id93495%_)))))
                (declare (not safe))
                (__ormap1 __tmp97725 _%mixins93490%_)))))))
    (define direct-method-ref
      (lambda (_%klass93464%_ _%obj93465%_ _%id93466%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93464%_ 'class))
              (let ()
                (let ((_%klass93470%_ _%klass93464%_))
                  (if (let () (declare (not safe)) (symbol? _%id93466%_))
                      (let ()
                        (let ((_%id93480%_ _%id93466%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__direct-method-ref
                               _%klass93470%_
                               _%obj93465%_
                               _%id93480%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id93466%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
               'contract:
               'class-type?
               'value:
               _%klass93464%_)))))
    (define __direct-method-ref
      (lambda (_%klass93418%_ _%obj93419%_ _%id93420%_)
        (let ()
          (let ((_%klass93423%_ _%klass93418%_))
            (let ((_%id93431%_ _%id93420%_))
              (let ()
                (letrec ((_%metaclass-resolve-method93440%_
                          (lambda ()
                            (let ((__method97604
                                   (let ()
                                     (declare (not safe))
                                     (__method-ref
                                      _%klass93423%_
                                      'direct-method-ref))))
                              (if __method97604
                                  (__method97604
                                   _%klass93423%_
                                   _%obj93419%_
                                   _%id93431%_)
                                  (error '"Missing method"
                                         _%klass93423%_
                                         'direct-method-ref)))))
                         (_%metaclass-resolve-method!93441%_
                          (lambda ()
                            (let ((_%method93461%_
                                   (let ()
                                     (declare (not safe))
                                     (_%metaclass-resolve-method93440%_))))
                              (let ((__tmp97727
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass93423%_
                                        '11
                                        '#f
                                        '#f)))
                                    (__tmp97726
                                     (if _%method93461%_ 'resolved 'unknown)))
                                (declare (not safe))
                                (symbolic-table-set!
                                 __tmp97727
                                 _%id93431%_
                                 __tmp97726))
                              _%method93461%_))))
                  (let ((_%$e93443%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93423%_
                            '11
                            '#f
                            '#f))))
                    (if _%$e93443%_
                        ((lambda (_%ht93446%_)
                           (let ((_%method93448%_
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-ref
                                     _%ht93446%_
                                     _%id93431%_
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (procedure? _%method93448%_))
                                 (let () _%method93448%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__class-type-metaclass?
                                        _%klass93423%_))
                                     (let ()
                                       (let ((_%$e93452%_ _%method93448%_))
                                         (if (eq? 'resolved _%$e93452%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%metaclass-resolve-method93440%_))
                                             (if (eq? 'unknown _%$e93452%_)
                                                 '#f
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%metaclass-resolve-method!93441%_))))))
                                     (let () '#f)))))
                         _%$e93443%_)
                        (if (let ()
                              (declare (not safe))
                              (__class-type-metaclass? _%klass93423%_))
                            (let ()
                              (let ((_%tab93457%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93423%_
                                   _%tab93457%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%metaclass-resolve-method!93441%_))))
                            (let () '#f)))))))))))
    (define mixin-method-ref
      (lambda (_%klass93392%_ _%obj93393%_ _%id93394%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93392%_ 'class))
              (let ()
                (let ((_%klass93398%_ _%klass93392%_))
                  (if (let () (declare (not safe)) (symbol? _%id93394%_))
                      (let ()
                        (let ((_%id93408%_ _%id93394%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93398%_
                               _%obj93393%_
                               _%id93408%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93394%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
               'contract:
               'class-type?
               'value:
               _%klass93392%_)))))
    (define __mixin-method-ref
      (lambda (_%klass93370%_ _%obj93371%_ _%id93372%_)
        (let ()
          (let ((_%klass93375%_ _%klass93370%_))
            (let ((_%id93383%_ _%id93372%_))
              (let ()
                (let ((__tmp97728
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass93375%_
                          '6
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__mixin-find-method
                   __tmp97728
                   _%obj93371%_
                   _%id93383%_))))))))
    (define bind-method!__%
      (lambda (_%klass93329%_ _%id93330%_ _%proc93331%_ _%rebind?93332%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93330%_))
              (let ()
                (let ((_%id93336%_ _%id93330%_))
                  (if (let () (declare (not safe)) (procedure? _%proc93331%_))
                      (let ()
                        (let ((_%proc93346%_ _%proc93331%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bind-method!__%
                               _%klass93329%_
                               _%id93336%_
                               _%proc93346%_
                               _%rebind?93332%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93331%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
               'contract:
               'symbol?
               'value:
               _%id93330%_)))))
    (define bind-method!__0
      (lambda (_%klass93359%_ _%id93360%_ _%proc93361%_)
        (let ((_%rebind?93363%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93359%_
           _%id93360%_
           _%proc93361%_
           _%rebind?93363%_))))
    (define bind-method!
      (lambda _g97730_
        (let ((_g97729_ (let () (declare (not safe)) (##length _g97730_))))
          (cond ((let () (declare (not safe)) (##fx= _g97729_ 3))
                 (apply (lambda (_%klass93359%_ _%id93360%_ _%proc93361%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93359%_
                             _%id93360%_
                             _%proc93361%_)))
                        _g97730_))
                ((let () (declare (not safe)) (##fx= _g97729_ 4))
                 (apply (lambda (_%klass93365%_
                                 _%id93366%_
                                 _%proc93367%_
                                 _%rebind?93368%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93365%_
                             _%id93366%_
                             _%proc93367%_
                             _%rebind?93368%_)))
                        _g97730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97730_))))))
    (define __bind-method!__%
      (lambda (_%klass93280%_ _%id93281%_ _%proc93282%_ _%rebind?93283%_)
        (let ()
          (let ((_%id93286%_ _%id93281%_))
            (let ((_%proc93294%_ _%proc93282%_))
              (let ()
                (letrec ((_%bind!93303%_
                          (lambda (_%ht93312%_)
                            (if (and (let ()
                                       (declare (not safe))
                                       (not _%rebind?93283%_))
                                     (let ()
                                       (declare (not safe))
                                       (symbolic-table-ref
                                        _%ht93312%_
                                        _%id93286%_
                                        '#f)))
                                (error '"method already bound"
                                       'class:
                                       _%klass93280%_
                                       'method:
                                       _%id93286%_)
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-set!
                                     _%ht93312%_
                                     _%id93286%_
                                     _%proc93294%_))
                                  '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%klass93280%_ 'class))
                      (let ()
                        (let ((_%ht93306%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93280%_
                                  '11
                                  '#f
                                  '#f))))
                          (if _%ht93306%_
                              (let ()
                                (declare (not safe))
                                (_%bind!93303%_ _%ht93306%_))
                              (let ((_%ht93308%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93280%_
                                   _%ht93308%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%bind!93303%_ _%ht93308%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##type? _%klass93280%_))
                          (let ()
                            (let ((__tmp97731
                                   (let ()
                                     (declare (not safe))
                                     (__shadow-class _%klass93280%_))))
                              (declare (not safe))
                              (__bind-method!
                               __tmp97731
                               _%id93286%_
                               _%proc93294%_
                               _%rebind?93283%_)))
                          (let ()
                            (error '"bad class; expected class or builtin type"
                                   _%klass93280%_)))))))))))
    (define __bind-method!__0
      (lambda (_%klass93317%_ _%id93318%_ _%proc93319%_)
        (let ((_%rebind?93321%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93317%_
           _%id93318%_
           _%proc93319%_
           _%rebind?93321%_))))
    (define __bind-method!
      (lambda _g97733_
        (let ((_g97732_ (let () (declare (not safe)) (##length _g97733_))))
          (cond ((let () (declare (not safe)) (##fx= _g97732_ 3))
                 (apply (lambda (_%klass93317%_ _%id93318%_ _%proc93319%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93317%_
                             _%id93318%_
                             _%proc93319%_)))
                        _g97733_))
                ((let () (declare (not safe)) (##fx= _g97732_ 4))
                 (apply (lambda (_%klass93323%_
                                 _%id93324%_
                                 _%proc93325%_
                                 _%rebind?93326%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93323%_
                             _%id93324%_
                             _%proc93325%_
                             _%rebind?93326%_)))
                        _g97733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g97733_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93260%_ _%seed93262%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93260%_
           procedure-hash
           eq?
           _%seed93262%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93268%_ '#f) (_%seed93270%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93268%_
           _%seed93270%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93272%_)
        (let ((_%seed93274%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93272%_
           _%seed93274%_))))
    (define make-method-specializer-table
      (lambda _g97735_
        (let ((_g97734_ (let () (declare (not safe)) (##length _g97735_))))
          (cond ((let () (declare (not safe)) (##fx= _g97734_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g97735_))
                ((let () (declare (not safe)) (##fx= _g97734_ 1))
                 (apply (lambda (_%size-hint93272%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93272%_)))
                        _g97735_))
                ((let () (declare (not safe)) (##fx= _g97734_ 2))
                 (apply (lambda (_%size-hint93276%_ _%seed93277%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93276%_
                             _%seed93277%_)))
                        _g97735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g97735_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93213%_ _%key93214%_ _%default93215%_)
        (let ((_%table93217%_
               (let () (declare (not safe)) (&raw-table-table _%tab93213%_)))
              (_%seed93218%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93213%_))))
          (let* ((_%h93220%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93214%_))
                         _%seed93218%_))
                 (_%size93223%_ (vector-length _%table93217%_))
                 (_%entries93226%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93223%_ '2)))
                 (_%start93229%_
                  (let ((__tmp97736
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93220%_ _%entries93226%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97736 '1))))
            (let _%loop93233%_ ((_%probe93236%_ _%start93229%_)
                                (_%i93238%_ '1)
                                (_%deleted93240%_ '#f))
              (let ((_%k93243%_ (vector-ref _%table93217%_ _%probe93236%_)))
                (if (eq? _%k93243%_ (macro-unused-obj))
                    (let () _%default93215%_)
                    (if (eq? _%k93243%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97739
                                 (let ((_%next-probe93248%_
                                        (fx+ _%start93229%_
                                             _%i93238%_
                                             (fx* _%i93238%_ _%i93238%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93248%_
                                    _%size93223%_)))
                                (__tmp97738
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93238%_ '1)))
                                (__tmp97737
                                 (let ((_%$e93251%_ _%deleted93240%_))
                                   (if _%$e93251%_
                                       _%$e93251%_
                                       _%probe93236%_))))
                            (declare (not safe))
                            (_%loop93233%_ __tmp97739 __tmp97738 __tmp97737)))
                        (if (eq? _%key93214%_ _%k93243%_)
                            (let ()
                              (vector-ref
                               _%table93217%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93236%_ '1))))
                            (let ()
                              (let ((__tmp97741
                                     (let ((_%next-probe93256%_
                                            (fx+ _%start93229%_
                                                 _%i93238%_
                                                 (fx* _%i93238%_ _%i93238%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93256%_
                                        _%size93223%_)))
                                    (__tmp97740
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93238%_ '1))))
                                (declare (not safe))
                                (_%loop93233%_
                                 __tmp97741
                                 __tmp97740
                                 _%deleted93240%_))))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93209%_ _%key93210%_ _%value93211%_)
        (if (let ((__tmp97744
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93209%_)))
                  (__tmp97742
                   (let ((__tmp97743
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93209%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97743 '4))))
              (declare (not safe))
              (##fx< __tmp97744 __tmp97742))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93209%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93209%_
           _%key93210%_
           _%value93211%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93160%_ _%key93161%_ _%value93162%_)
        (let ((_%table93165%_
               (let () (declare (not safe)) (&raw-table-table _%tab93160%_)))
              (_%seed93166%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93160%_))))
          (let* ((_%h93168%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93161%_))
                         _%seed93166%_))
                 (_%size93171%_ (vector-length _%table93165%_))
                 (_%entries93174%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93171%_ '2)))
                 (_%start93177%_
                  (let ((__tmp97745
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93168%_ _%entries93174%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97745 '1))))
            (let _%loop93181%_ ((_%probe93184%_ _%start93177%_)
                                (_%i93186%_ '1)
                                (_%deleted93188%_ '#f))
              (let ((_%k93191%_ (vector-ref _%table93165%_ _%probe93184%_)))
                (if (eq? _%k93191%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93188%_
                          (begin
                            (vector-set!
                             _%table93165%_
                             _%deleted93188%_
                             _%key93161%_)
                            (vector-set!
                             _%table93165%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93188%_ '1))
                             _%value93162%_)
                            ((lambda ()
                               (let ((__tmp97746
                                      (let ((__tmp97747
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93160%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97747 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93160%_
                                  __tmp97746)))))
                          (begin
                            (vector-set!
                             _%table93165%_
                             _%probe93184%_
                             _%key93161%_)
                            (vector-set!
                             _%table93165%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93184%_ '1))
                             _%value93162%_)
                            ((lambda ()
                               (let ((__tmp97748
                                      (let ((__tmp97749
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93160%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97749 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93160%_
                                  __tmp97748))
                               (let ((__tmp97750
                                      (let ((__tmp97751
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93160%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97751 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93160%_
                                  __tmp97750)))))))
                    (if (eq? _%k93191%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97754
                                 (let ((_%next-probe93198%_
                                        (fx+ _%start93177%_
                                             _%i93186%_
                                             (fx* _%i93186%_ _%i93186%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93198%_
                                    _%size93171%_)))
                                (__tmp97753
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93186%_ '1)))
                                (__tmp97752
                                 (let ((_%$e93201%_ _%deleted93188%_))
                                   (if _%$e93201%_
                                       _%$e93201%_
                                       _%probe93184%_))))
                            (declare (not safe))
                            (_%loop93181%_ __tmp97754 __tmp97753 __tmp97752)))
                        (if (eq? _%key93161%_ _%k93191%_)
                            (let ()
                              (vector-set!
                               _%table93165%_
                               _%probe93184%_
                               _%key93161%_)
                              (vector-set!
                               _%table93165%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93184%_ '1))
                               _%value93162%_))
                            (let ()
                              (let ((__tmp97756
                                     (let ((_%next-probe93206%_
                                            (fx+ _%start93177%_
                                                 _%i93186%_
                                                 (fx* _%i93186%_ _%i93186%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93206%_
                                        _%size93171%_)))
                                    (__tmp97755
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93186%_ '1))))
                                (declare (not safe))
                                (_%loop93181%_
                                 __tmp97756
                                 __tmp97755
                                 _%deleted93188%_))))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93155%_
               _%key93156%_
               _%method-specializer-table-update!93157%_
               _%default93158%_)
        (if (let ((__tmp97759
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93155%_)))
                  (__tmp97757
                   (let ((__tmp97758
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93155%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97758 '4))))
              (declare (not safe))
              (##fx< __tmp97759 __tmp97757))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93155%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93155%_
           _%key93156%_
           _%method-specializer-table-update!93157%_
           _%default93158%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93105%_
               _%key93106%_
               _%method-specializer-table-update!93107%_
               _%default93108%_)
        (let ((_%table93111%_
               (let () (declare (not safe)) (&raw-table-table _%tab93105%_)))
              (_%seed93112%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93105%_))))
          (let* ((_%h93114%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93106%_))
                         _%seed93112%_))
                 (_%size93117%_ (vector-length _%table93111%_))
                 (_%entries93120%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93117%_ '2)))
                 (_%start93123%_
                  (let ((__tmp97760
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93114%_ _%entries93120%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97760 '1))))
            (let _%loop93127%_ ((_%probe93130%_ _%start93123%_)
                                (_%i93132%_ '1)
                                (_%deleted93134%_ '#f))
              (let ((_%k93137%_ (vector-ref _%table93111%_ _%probe93130%_)))
                (if (eq? _%k93137%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93134%_
                          (begin
                            (vector-set!
                             _%table93111%_
                             _%deleted93134%_
                             _%key93106%_)
                            (vector-set!
                             _%table93111%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93134%_ '1))
                             (_%method-specializer-table-update!93107%_
                              _%default93108%_))
                            ((lambda ()
                               (let ((__tmp97761
                                      (let ((__tmp97762
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93105%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97762 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93105%_
                                  __tmp97761)))))
                          (begin
                            (vector-set!
                             _%table93111%_
                             _%probe93130%_
                             _%key93106%_)
                            (vector-set!
                             _%table93111%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93130%_ '1))
                             (_%method-specializer-table-update!93107%_
                              _%default93108%_))
                            ((lambda ()
                               (let ((__tmp97763
                                      (let ((__tmp97764
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93105%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97764 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93105%_
                                  __tmp97763))
                               (let ((__tmp97765
                                      (let ((__tmp97766
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93105%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97766 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93105%_
                                  __tmp97765)))))))
                    (if (eq? _%k93137%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97769
                                 (let ((_%next-probe93144%_
                                        (fx+ _%start93123%_
                                             _%i93132%_
                                             (fx* _%i93132%_ _%i93132%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93144%_
                                    _%size93117%_)))
                                (__tmp97768
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93132%_ '1)))
                                (__tmp97767
                                 (let ((_%$e93147%_ _%deleted93134%_))
                                   (if _%$e93147%_
                                       _%$e93147%_
                                       _%probe93130%_))))
                            (declare (not safe))
                            (_%loop93127%_ __tmp97769 __tmp97768 __tmp97767)))
                        (if (eq? _%key93106%_ _%k93137%_)
                            (let ()
                              (vector-set!
                               _%table93111%_
                               _%probe93130%_
                               _%key93106%_)
                              (vector-set!
                               _%table93111%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93130%_ '1))
                               (_%method-specializer-table-update!93107%_
                                (vector-ref
                                 _%table93111%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93130%_ '1))))))
                            (let ()
                              (let ((__tmp97771
                                     (let ((_%next-probe93152%_
                                            (fx+ _%start93123%_
                                                 _%i93132%_
                                                 (fx* _%i93132%_ _%i93132%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93152%_
                                        _%size93117%_)))
                                    (__tmp97770
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93132%_ '1))))
                                (declare (not safe))
                                (_%loop93127%_
                                 __tmp97771
                                 __tmp97770
                                 _%deleted93134%_))))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93060%_ _%key93062%_)
        (let ((_%table93065%_
               (let () (declare (not safe)) (&raw-table-table _%tab93060%_)))
              (_%seed93067%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93060%_))))
          (let* ((_%h93070%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93062%_))
                         _%seed93067%_))
                 (_%size93073%_ (vector-length _%table93065%_))
                 (_%entries93076%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93073%_ '2)))
                 (_%start93079%_
                  (let ((__tmp97772
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93070%_ _%entries93076%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97772 '1))))
            (let _%loop93083%_ ((_%probe93086%_ _%start93079%_)
                                (_%i93088%_ '1))
              (let ((_%k93091%_ (vector-ref _%table93065%_ _%probe93086%_)))
                (if (eq? _%k93091%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93091%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97774
                                 (let ((_%next-probe93096%_
                                        (fx+ _%start93079%_
                                             _%i93088%_
                                             (fx* _%i93088%_ _%i93088%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93096%_
                                    _%size93073%_)))
                                (__tmp97773
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93088%_ '1))))
                            (declare (not safe))
                            (_%loop93083%_ __tmp97774 __tmp97773)))
                        (if (eq? _%key93062%_ _%k93091%_)
                            (let ()
                              (vector-set!
                               _%table93065%_
                               _%probe93086%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93065%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93086%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97775
                                        (let ((__tmp97776
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93060%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97776 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93060%_
                                    __tmp97775)))))
                            (let ()
                              (let ((__tmp97778
                                     (let ((_%next-probe93102%_
                                            (fx+ _%start93079%_
                                                 _%i93088%_
                                                 (fx* _%i93088%_ _%i93088%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93102%_
                                        _%size93073%_)))
                                    (__tmp97777
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93088%_ '1))))
                                (declare (not safe))
                                (_%loop93083%_
                                 __tmp97778
                                 __tmp97777))))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93051%_ _%specializer93052%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93056%_ ()
            (if (let ((__tmp97779
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97779 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93056%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93051%_
           _%specializer93052%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93041%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93045%_ ()
            (if (let ((__tmp97780
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97780 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93045%_))))))
        (let ((_%specializer93049%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93041%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93049%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93039%_)
        (let ((__tmp97781
               (let () (declare (not safe)) (##type-id _%klass93039%_))))
          (declare (not safe))
          (symbolic-hash __tmp97781))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93020%_ _%seed93022%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93020%_
           __class-specializer-hash-key
           eq?
           _%seed93022%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93028%_ '#f) (_%seed93030%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93028%_ _%seed93030%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93032%_)
        (let ((_%seed93034%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93032%_ _%seed93034%_))))
    (define make-class-specializer-table
      (lambda _g97783_
        (let ((_g97782_ (let () (declare (not safe)) (##length _g97783_))))
          (cond ((let () (declare (not safe)) (##fx= _g97782_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g97783_))
                ((let () (declare (not safe)) (##fx= _g97782_ 1))
                 (apply (lambda (_%size-hint93032%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint93032%_)))
                        _g97783_))
                ((let () (declare (not safe)) (##fx= _g97782_ 2))
                 (apply (lambda (_%size-hint93036%_ _%seed93037%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93036%_
                             _%seed93037%_)))
                        _g97783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g97783_))))))
    (define class-specializer-table-ref
      (lambda (_%tab92973%_ _%key92974%_ _%default92975%_)
        (let ((_%table92977%_
               (let () (declare (not safe)) (&raw-table-table _%tab92973%_)))
              (_%seed92978%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92973%_))))
          (let* ((_%h92980%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92974%_))
                         _%seed92978%_))
                 (_%size92983%_ (vector-length _%table92977%_))
                 (_%entries92986%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92983%_ '2)))
                 (_%start92989%_
                  (let ((__tmp97784
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92980%_ _%entries92986%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97784 '1))))
            (let _%loop92993%_ ((_%probe92996%_ _%start92989%_)
                                (_%i92998%_ '1)
                                (_%deleted93000%_ '#f))
              (let ((_%k93003%_ (vector-ref _%table92977%_ _%probe92996%_)))
                (if (eq? _%k93003%_ (macro-unused-obj))
                    (let () _%default92975%_)
                    (if (eq? _%k93003%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97787
                                 (let ((_%next-probe93008%_
                                        (fx+ _%start92989%_
                                             _%i92998%_
                                             (fx* _%i92998%_ _%i92998%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93008%_
                                    _%size92983%_)))
                                (__tmp97786
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92998%_ '1)))
                                (__tmp97785
                                 (let ((_%$e93011%_ _%deleted93000%_))
                                   (if _%$e93011%_
                                       _%$e93011%_
                                       _%probe92996%_))))
                            (declare (not safe))
                            (_%loop92993%_ __tmp97787 __tmp97786 __tmp97785)))
                        (if (eq? _%key92974%_ _%k93003%_)
                            (let ()
                              (vector-ref
                               _%table92977%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92996%_ '1))))
                            (let ()
                              (let ((__tmp97789
                                     (let ((_%next-probe93016%_
                                            (fx+ _%start92989%_
                                                 _%i92998%_
                                                 (fx* _%i92998%_ _%i92998%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93016%_
                                        _%size92983%_)))
                                    (__tmp97788
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92998%_ '1))))
                                (declare (not safe))
                                (_%loop92993%_
                                 __tmp97789
                                 __tmp97788
                                 _%deleted93000%_))))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab92969%_ _%key92970%_ _%value92971%_)
        (if (let ((__tmp97792
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92969%_)))
                  (__tmp97790
                   (let ((__tmp97791
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92969%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97791 '4))))
              (declare (not safe))
              (##fx< __tmp97792 __tmp97790))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92969%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab92969%_
           _%key92970%_
           _%value92971%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab92920%_ _%key92921%_ _%value92922%_)
        (let ((_%table92925%_
               (let () (declare (not safe)) (&raw-table-table _%tab92920%_)))
              (_%seed92926%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92920%_))))
          (let* ((_%h92928%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92921%_))
                         _%seed92926%_))
                 (_%size92931%_ (vector-length _%table92925%_))
                 (_%entries92934%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92931%_ '2)))
                 (_%start92937%_
                  (let ((__tmp97793
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92928%_ _%entries92934%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97793 '1))))
            (let _%loop92941%_ ((_%probe92944%_ _%start92937%_)
                                (_%i92946%_ '1)
                                (_%deleted92948%_ '#f))
              (let ((_%k92951%_ (vector-ref _%table92925%_ _%probe92944%_)))
                (if (eq? _%k92951%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92948%_
                          (begin
                            (vector-set!
                             _%table92925%_
                             _%deleted92948%_
                             _%key92921%_)
                            (vector-set!
                             _%table92925%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92948%_ '1))
                             _%value92922%_)
                            ((lambda ()
                               (let ((__tmp97794
                                      (let ((__tmp97795
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92920%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97795 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92920%_
                                  __tmp97794)))))
                          (begin
                            (vector-set!
                             _%table92925%_
                             _%probe92944%_
                             _%key92921%_)
                            (vector-set!
                             _%table92925%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92944%_ '1))
                             _%value92922%_)
                            ((lambda ()
                               (let ((__tmp97796
                                      (let ((__tmp97797
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92920%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97797 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92920%_
                                  __tmp97796))
                               (let ((__tmp97798
                                      (let ((__tmp97799
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92920%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97799 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92920%_
                                  __tmp97798)))))))
                    (if (eq? _%k92951%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97802
                                 (let ((_%next-probe92958%_
                                        (fx+ _%start92937%_
                                             _%i92946%_
                                             (fx* _%i92946%_ _%i92946%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92958%_
                                    _%size92931%_)))
                                (__tmp97801
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92946%_ '1)))
                                (__tmp97800
                                 (let ((_%$e92961%_ _%deleted92948%_))
                                   (if _%$e92961%_
                                       _%$e92961%_
                                       _%probe92944%_))))
                            (declare (not safe))
                            (_%loop92941%_ __tmp97802 __tmp97801 __tmp97800)))
                        (if (eq? _%key92921%_ _%k92951%_)
                            (let ()
                              (vector-set!
                               _%table92925%_
                               _%probe92944%_
                               _%key92921%_)
                              (vector-set!
                               _%table92925%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92944%_ '1))
                               _%value92922%_))
                            (let ()
                              (let ((__tmp97804
                                     (let ((_%next-probe92966%_
                                            (fx+ _%start92937%_
                                                 _%i92946%_
                                                 (fx* _%i92946%_ _%i92946%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92966%_
                                        _%size92931%_)))
                                    (__tmp97803
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92946%_ '1))))
                                (declare (not safe))
                                (_%loop92941%_
                                 __tmp97804
                                 __tmp97803
                                 _%deleted92948%_))))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab92915%_
               _%key92916%_
               _%class-specializer-table-update!92917%_
               _%default92918%_)
        (if (let ((__tmp97807
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92915%_)))
                  (__tmp97805
                   (let ((__tmp97806
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92915%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97806 '4))))
              (declare (not safe))
              (##fx< __tmp97807 __tmp97805))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92915%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab92915%_
           _%key92916%_
           _%class-specializer-table-update!92917%_
           _%default92918%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab92865%_
               _%key92866%_
               _%class-specializer-table-update!92867%_
               _%default92868%_)
        (let ((_%table92871%_
               (let () (declare (not safe)) (&raw-table-table _%tab92865%_)))
              (_%seed92872%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92865%_))))
          (let* ((_%h92874%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92866%_))
                         _%seed92872%_))
                 (_%size92877%_ (vector-length _%table92871%_))
                 (_%entries92880%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92877%_ '2)))
                 (_%start92883%_
                  (let ((__tmp97808
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92874%_ _%entries92880%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97808 '1))))
            (let _%loop92887%_ ((_%probe92890%_ _%start92883%_)
                                (_%i92892%_ '1)
                                (_%deleted92894%_ '#f))
              (let ((_%k92897%_ (vector-ref _%table92871%_ _%probe92890%_)))
                (if (eq? _%k92897%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92894%_
                          (begin
                            (vector-set!
                             _%table92871%_
                             _%deleted92894%_
                             _%key92866%_)
                            (vector-set!
                             _%table92871%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92894%_ '1))
                             (_%class-specializer-table-update!92867%_
                              _%default92868%_))
                            ((lambda ()
                               (let ((__tmp97809
                                      (let ((__tmp97810
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92865%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97810 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92865%_
                                  __tmp97809)))))
                          (begin
                            (vector-set!
                             _%table92871%_
                             _%probe92890%_
                             _%key92866%_)
                            (vector-set!
                             _%table92871%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92890%_ '1))
                             (_%class-specializer-table-update!92867%_
                              _%default92868%_))
                            ((lambda ()
                               (let ((__tmp97811
                                      (let ((__tmp97812
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92865%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97812 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92865%_
                                  __tmp97811))
                               (let ((__tmp97813
                                      (let ((__tmp97814
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92865%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97814 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92865%_
                                  __tmp97813)))))))
                    (if (eq? _%k92897%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97817
                                 (let ((_%next-probe92904%_
                                        (fx+ _%start92883%_
                                             _%i92892%_
                                             (fx* _%i92892%_ _%i92892%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92904%_
                                    _%size92877%_)))
                                (__tmp97816
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92892%_ '1)))
                                (__tmp97815
                                 (let ((_%$e92907%_ _%deleted92894%_))
                                   (if _%$e92907%_
                                       _%$e92907%_
                                       _%probe92890%_))))
                            (declare (not safe))
                            (_%loop92887%_ __tmp97817 __tmp97816 __tmp97815)))
                        (if (eq? _%key92866%_ _%k92897%_)
                            (let ()
                              (vector-set!
                               _%table92871%_
                               _%probe92890%_
                               _%key92866%_)
                              (vector-set!
                               _%table92871%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92890%_ '1))
                               (_%class-specializer-table-update!92867%_
                                (vector-ref
                                 _%table92871%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe92890%_ '1))))))
                            (let ()
                              (let ((__tmp97819
                                     (let ((_%next-probe92912%_
                                            (fx+ _%start92883%_
                                                 _%i92892%_
                                                 (fx* _%i92892%_ _%i92892%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92912%_
                                        _%size92877%_)))
                                    (__tmp97818
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92892%_ '1))))
                                (declare (not safe))
                                (_%loop92887%_
                                 __tmp97819
                                 __tmp97818
                                 _%deleted92894%_))))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab92820%_ _%key92822%_)
        (let ((_%table92825%_
               (let () (declare (not safe)) (&raw-table-table _%tab92820%_)))
              (_%seed92827%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92820%_))))
          (let* ((_%h92830%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92822%_))
                         _%seed92827%_))
                 (_%size92833%_ (vector-length _%table92825%_))
                 (_%entries92836%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92833%_ '2)))
                 (_%start92839%_
                  (let ((__tmp97820
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92830%_ _%entries92836%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97820 '1))))
            (let _%loop92843%_ ((_%probe92846%_ _%start92839%_)
                                (_%i92848%_ '1))
              (let ((_%k92851%_ (vector-ref _%table92825%_ _%probe92846%_)))
                (if (eq? _%k92851%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k92851%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97822
                                 (let ((_%next-probe92856%_
                                        (fx+ _%start92839%_
                                             _%i92848%_
                                             (fx* _%i92848%_ _%i92848%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92856%_
                                    _%size92833%_)))
                                (__tmp97821
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92848%_ '1))))
                            (declare (not safe))
                            (_%loop92843%_ __tmp97822 __tmp97821)))
                        (if (eq? _%key92822%_ _%k92851%_)
                            (let ()
                              (vector-set!
                               _%table92825%_
                               _%probe92846%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92825%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92846%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97823
                                        (let ((__tmp97824
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92820%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97824 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92820%_
                                    __tmp97823)))))
                            (let ()
                              (let ((__tmp97826
                                     (let ((_%next-probe92862%_
                                            (fx+ _%start92839%_
                                                 _%i92848%_
                                                 (fx* _%i92848%_ _%i92848%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92862%_
                                        _%size92833%_)))
                                    (__tmp97825
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92848%_ '1))))
                                (declare (not safe))
                                (_%loop92843%_
                                 __tmp97826
                                 __tmp97825))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass92806%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92806%_ 'class))
              (let ()
                (let ((_%klass92810%_ _%klass92806%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__specialize-class _%klass92810%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass92806%_)))))
    (define __specialize-class
      (lambda (_%klass92788%_)
        (let ()
          (let ((_%klass92791%_ _%klass92788%_))
            (let ()
              (let ((_%$e92800%_
                     (let ()
                       (declare (not safe))
                       (__lookup-class-specializer _%klass92791%_))))
                (if _%$e92800%_
                    _%$e92800%_
                    (let ()
                      (let ((_%method-table92804%_
                             (let ()
                               (declare (not safe))
                               (___specialize-class _%klass92791%_))))
                        (let ()
                          (declare (not safe))
                          (__bind-class-specializer!
                           _%klass92791%_
                           _%method-table92804%_))
                        _%method-table92804%_)))))))))
    (define __lookup-class-specializer
      (lambda (_%klass92778%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92782%_ ()
            (if (let ((__tmp97827
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97827 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92782%_))))))
        (let ((_%method-table92786%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass92778%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table92786%_)))
    (define __bind-class-specializer!
      (lambda (_%klass92769%_ _%method-table92770%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92774%_ ()
            (if (let ((__tmp97828
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97828 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92774%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass92769%_
           _%method-table92770%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass92753%_
               _%method-table92754%_
               _%method92755%_
               _%proc92756%_)
        (let ((_%$e92758%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table92754%_
                  _%method92755%_
                  '#f))))
          (if _%$e92758%_
              _%$e92758%_
              (let ((_%$e92761%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc92756%_))))
                (if _%$e92761%_
                    ((lambda (_%specialize92764%_)
                       (let ((_%specialized-proc92766%_
                              (_%specialize92764%_
                               _%klass92753%_
                               _%method-table92754%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table92754%_
                          _%method92755%_
                          _%specialized-proc92766%_)))
                     _%$e92761%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (symbolic-table-set!
                         _%method-table92754%_
                         _%method92755%_
                         _%proc92756%_)))))))))
    (define ___specialize-class
      (lambda (_%klass92695%_)
        (if (let ((__tmp97829
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass92695%_ 'class))))
              (declare (not safe))
              (not __tmp97829))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass92695%_))
                  (let ((__tmp97830
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass92695%_))))
                    (declare (not safe))
                    (__specialize-class __tmp97830))
                  (error '"bad class; cannot specialize" _%klass92695%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass92695%_))
                (let ()
                  (let ((__method97605
                         (let ()
                           (declare (not safe))
                           (__method-ref _%klass92695%_ 'specialize-class))))
                    (if __method97605
                        (__method97605 _%klass92695%_)
                        (error '"Missing method"
                               _%klass92695%_
                               'specialize-class))))
                (if (let ((__tmp97831
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass92695%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp97831))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass92695%_))
                    (let ()
                      (let ((_%method-table92701%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let _%loop92703%_ ((_%rest92705%_
                                             (let ()
                                               (declare (not safe))
                                               (class-precedence-list
                                                _%klass92695%_))))
                          (let* ((_%rest9270692714%_ _%rest92705%_)
                                 (_%else9270892722%_
                                  (lambda () _%method-table92701%_))
                                 (_%K9271092741%_
                                  (lambda (_%rest92725%_ _%xklass92726%_)
                                    (let ((_%xmethod-table9272792729%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%xklass92726%_
                                              '11
                                              '#f
                                              '#f))))
                                      (if _%xmethod-table9272792729%_
                                          (let* ((_%xmethod-table92732%_
                                                  _%xmethod-table9272792729%_)
                                                 (__tmp97832
                                                  (lambda (_%g9273392736%_
                                                           _%g9273492738%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (__specialize-method
                                                       _%klass92695%_
                                                       _%method-table92701%_
                                                       _%g9273392736%_
                                                       _%g9273492738%_)))))
                                            (declare (not safe))
                                            (raw-table-for-each
                                             _%xmethod-table92732%_
                                             __tmp97832))
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_%loop92703%_ _%rest92725%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9270692714%_))
                                (let ((_%hd9271192744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9270692714%_)))
                                      (_%tl9271292746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9270692714%_))))
                                  (let* ((_%xklass92749%_ _%hd9271192744%_)
                                         (_%rest92751%_ _%tl9271292746%_))
                                    (declare (not safe))
                                    (_%K9271092741%_
                                     _%rest92751%_
                                     _%xklass92749%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9270892722%_))))))))))))
    (define seal-class!
      (lambda (_%klass92681%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92681%_ 'class))
              (let ()
                (let ((_%klass92685%_ _%klass92681%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__seal-class! _%klass92685%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
               'contract:
               'class-type?
               'value:
               _%klass92681%_)))))
    (define __seal-class!
      (lambda (_%klass92664%_)
        (let ()
          (let ((_%klass92667%_ _%klass92664%_))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (__class-type-sealed? _%klass92667%_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (__class-type-final? _%klass92667%_))
                        '#!void
                        (error '"cannot seal non-final class" _%klass92667%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass92667%_))
                        (let ()
                          (let ((__method97606
                                 (let ()
                                   (declare (not safe))
                                   (__method-ref
                                    _%klass92667%_
                                    'seal-class!))))
                            (if __method97606
                                (__method97606 _%klass92667%_)
                                (error '"Missing method"
                                       _%klass92667%_
                                       'seal-class!))))
                        (if (let ((__tmp97833
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass92667%_
                                      '6
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (__find class-type-metaclass? __tmp97833))
                            (let ()
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _%klass92667%_))
                            (let ()
                              (let ((_%method-table92679%_
                                     (let ()
                                       (declare (not safe))
                                       (__specialize-class _%klass92667%_))))
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _%klass92667%_
                                 _%method-table92679%_
                                 '11
                                 '#f
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass92667%_)))))))))
    (define next-method
      (lambda (_%subklass92638%_ _%obj92639%_ _%id92640%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92638%_ 'class))
              (let ()
                (let ((_%subklass92644%_ _%subklass92638%_))
                  (if (let () (declare (not safe)) (symbol? _%id92640%_))
                      (let ()
                        (let ((_%id92654%_ _%id92640%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__next-method
                               _%subklass92644%_
                               _%obj92639%_
                               _%id92654%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id92640%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
               'contract:
               'class-type?
               'value:
               _%subklass92638%_)))))
    (define __next-method
      (lambda (_%subklass92575%_ _%obj92576%_ _%id92577%_)
        (let ()
          (let ((_%subklass92580%_ _%subklass92575%_))
            (let ((_%id92588%_ _%id92577%_))
              (let ()
                (letrec ((_%find-next-method92597%_
                          (lambda (_%klass92599%_)
                            (let _%lp92601%_ ((_%rest92603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (class-precedence-list
                                                  _%klass92599%_))))
                              (let* ((_%rest9260492612%_ _%rest92603%_)
                                     (_%else9260692620%_ (lambda () '#f))
                                     (_%K9260892626%_
                                      (lambda (_%rest92623%_ _%klass92624%_)
                                        (if (eq? (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%subklass92580%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass92624%_)))
                                            (let ()
                                              (declare (not safe))
                                              (__mixin-find-method
                                               _%rest92623%_
                                               _%obj92576%_
                                               _%id92588%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp92601%_ _%rest92623%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest9260492612%_))
                                    (let ((_%hd9260992629%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest9260492612%_)))
                                          (_%tl9261092631%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest9260492612%_))))
                                      (let* ((_%klass92634%_ _%hd9260992629%_)
                                             (_%rest92636%_ _%tl9261092631%_))
                                        (declare (not safe))
                                        (_%K9260892626%_
                                         _%rest92636%_
                                         _%klass92634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else9260692620%_))))))))
                  (let ((__tmp97834
                         (let ()
                           (declare (not safe))
                           (class-of _%obj92576%_))))
                    (declare (not safe))
                    (_%find-next-method92597%_ __tmp97834)))))))))
    (define call-next-method
      (lambda (_%subklass92548%_ _%obj92549%_ _%id92550%_ . _%args92551%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92548%_ 'class))
              (let ()
                (let ((_%subklass92555%_ _%subklass92548%_))
                  (if (let () (declare (not safe)) (symbol? _%id92550%_))
                      (let ()
                        (let ((_%id92565%_ _%id92550%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (##apply __call-next-method
                                       _%subklass92555%_
                                       _%obj92549%_
                                       _%id92565%_
                                       _%args92551%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id92550%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
               'contract:
               'class-type?
               'value:
               _%subklass92548%_)))))
    (define __call-next-method
      (lambda (_%subklass92519%_ _%obj92520%_ _%id92521%_ . _%args92522%_)
        (let ()
          (let ((_%subklass92525%_ _%subklass92519%_))
            (let ((_%id92533%_ _%id92521%_))
              (let ()
                (let ((_%$e92542%_
                       (let ()
                         (declare (not safe))
                         (__next-method
                          _%subklass92525%_
                          _%obj92520%_
                          _%id92533%_))))
                  (if _%$e92542%_
                      ((lambda (_%methodf92545%_)
                         (apply _%methodf92545%_ _%obj92520%_ _%args92522%_))
                       _%$e92542%_)
                      (let ()
                        (error '"cannot find next method"
                               'object:
                               _%obj92520%_
                               'method:
                               _%id92533%_))))))))))
    (define write-style
      (lambda (_%we92517%_) (macro-writeenv-style _%we92517%_)))
    (define write-object
      (lambda (_%we92508%_ _%obj92509%_)
        (let ((_%$e92511%_
               (let () (declare (not safe)) (__method-ref _%obj92509%_ ':wr))))
          (if _%$e92511%_
              ((lambda (_%method92514%_)
                 (_%method92514%_ _%obj92509%_ _%we92508%_))
               _%$e92511%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-wr _%we92508%_ _%obj92509%_)))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92423%_)
        (letrec ((_%shadow-type-id92425%_
                  (lambda (_%type92506%_)
                    (let ((__tmp97835
                           (let ()
                             (declare (not safe))
                             (##type-name _%type92506%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp97835 '"::t"))))
                 (_%shadow-type-name92426%_
                  (lambda (_%type92504%_)
                    (let () (declare (not safe)) (##type-name _%type92504%_))))
                 (_%make-shadow-class92427%_
                  (lambda (_%type92496%_ _%precedence-list92497%_)
                    (let* ((_%super92499%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list92497%_))
                                (cons (car _%precedence-list92497%_) '())
                                '()))
                           (_%klass92501%_
                            (let ((__tmp97838
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92425%_ _%type92496%_)))
                                  (__tmp97837
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type92496%_)))
                                  (__tmp97836
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (type-extensible?
                                                      _%type92496%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp97838
                               __tmp97837
                               _%super92499%_
                               '()
                               __tmp97836
                               '#f))))
                      (let ((__tmp97839
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92496%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp97839
                         _%klass92501%_))
                      _%klass92501%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92431%_ ()
              (if (let ((__tmp97840
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp97840 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92431%_))))))
          (let ((_%$e92435%_
                 (let ((__tmp97841
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92423%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp97841 '#f))))
            (if _%$e92435%_
                ((lambda (_%klass92438%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92438%_)
                 _%$e92435%_)
                (let ()
                  (let _%loop92441%_ ((_%super92443%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%type92423%_)))
                                      (_%hierarchy92444%_ '()))
                    (if (let () (declare (not safe)) (not _%super92443%_))
                        (let ()
                          (let _%loop92447%_ ((_%rest92449%_
                                               _%hierarchy92444%_)
                                              (_%precedence-list92450%_ '()))
                            (let* ((_%rest9245192459%_ _%rest92449%_)
                                   (_%else9245392469%_
                                    (lambda ()
                                      (let ((_%klass92467%_
                                             (let ()
                                               (declare (not safe))
                                               (_%make-shadow-class92427%_
                                                _%type92423%_
                                                _%precedence-list92450%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##vector-cas!
                                           __shadow-classes-mx
                                           '0
                                           '0
                                           '1))
                                        _%klass92467%_)))
                                   (_%K9245592483%_
                                    (lambda (_%rest92472%_ _%type92473%_)
                                      (let ((_%$e92475%_
                                             (let ((__tmp97842
                                                    (let ()
                                                      (declare (not safe))
                                                      (##type-id
                                                       _%type92473%_))))
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                __shadow-classes
                                                __tmp97842
                                                '#f))))
                                        (if _%$e92475%_
                                            ((lambda (_%klass92478%_)
                                               (let ((__tmp97843
                                                      (cons _%klass92478%_
                                                            _%precedence-list92450%_)))
                                                 (declare (not safe))
                                                 (_%loop92447%_
                                                  _%rest92472%_
                                                  __tmp97843)))
                                             _%$e92475%_)
                                            (let ()
                                              (let* ((_%klass92481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make-shadow-class92427%_
                                                         _%type92473%_
                                                         _%precedence-list92450%_)))
                                                     (__tmp97844
                                                      (cons _%klass92481%_
                                                            _%precedence-list92450%_)))
                                                (declare (not safe))
                                                (_%loop92447%_
                                                 _%rest92472%_
                                                 __tmp97844))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest9245192459%_))
                                  (let ((_%hd9245692486%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9245192459%_)))
                                        (_%tl9245792488%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest9245192459%_))))
                                    (let* ((_%type92491%_ _%hd9245692486%_)
                                           (_%rest92493%_ _%tl9245792488%_))
                                      (declare (not safe))
                                      (_%K9245592483%_
                                       _%rest92493%_
                                       _%type92491%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else9245392469%_))))))
                        (let ()
                          (let ((__tmp97846
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _%super92443%_)))
                                (__tmp97845
                                 (cons _%super92443%_ _%hierarchy92444%_)))
                            (declare (not safe))
                            (_%loop92441%_ __tmp97846 __tmp97845)))))))))))
    (define class-of
      (lambda (_%obj92396%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92400%_
                 (let () (declare (not safe)) (##type _%obj92396%_))))
            (if (fx= _%t92400%_ (macro-type-subtyped))
                (let ()
                  (let ((_%st92403%_
                         (let ()
                           (declare (not safe))
                           (##subtype _%obj92396%_))))
                    (if (fx= _%st92403%_ (macro-subtype-structure))
                        (let ()
                          (let ((_%klass92406%_
                                 (let ()
                                   (declare (not safe))
                                   (##structure-type _%obj92396%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%klass92406%_
                                   'class))
                                _%klass92406%_
                                (let ()
                                  (declare (not safe))
                                  (__shadow-class _%klass92406%_)))))
                        (if (fx= _%st92403%_ (macro-subtype-boxvalues))
                            (let ()
                              (if (let ((__tmp97847
                                         (let ()
                                           (declare (not safe))
                                           (##vector-length _%obj92396%_))))
                                    (declare (not safe))
                                    (##fx= __tmp97847 '1))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'box))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'values))))
                            (let ((_%$e92409%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref __subtype-id _%st92403%_))))
                              (if _%$e92409%_
                                  (let ()
                                    (declare (not safe))
                                    (__system-class _%$e92409%_))
                                  (let ()
                                    (error '"unknown class"
                                           'subtype:
                                           _%st92403%_
                                           'object:
                                           _%obj92396%_))))))))
                (if (fx= _%t92400%_ (macro-type-mem2))
                    (let ()
                      (let () (declare (not safe)) (__system-class 'pair)))
                    (if (fx= _%t92400%_ (macro-type-fixnum))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (__system-class 'fixnum)))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92396%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'char)))
                              (if (eq? _%obj92396%_ '())
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__system-class 'null)))
                                  (if (eq? _%obj92396%_ '#f)
                                      (let ()
                                        (let ()
                                          (declare (not safe))
                                          (__system-class 'boolean)))
                                      (if (eq? _%obj92396%_ '#t)
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__system-class 'boolean)))
                                          (if (eq? _%obj92396%_ '#!void)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__system-class 'void)))
                                              (if (eq? _%obj92396%_ '#!eof)
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (__system-class 'eof)))
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (__system-class
                                                       'special)))))))))))))))))
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
      (lambda (_%id92390%_)
        (let ((_%$e92392%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92390%_ '#f))))
          (if _%$e92392%_
              _%$e92392%_
              (let () (error '"unknown system class" _%id92390%_))))))
    (define __make-system-class
      (lambda (_%id92385%_ _%super92386%_)
        (let ((_%klass92388%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92385%_
                  _%id92385%_
                  _%super92386%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92385%_ _%klass92388%_))
          _%klass92388%_)))))
