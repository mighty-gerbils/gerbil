(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx229285_)
      (let* ((_g229289229318_
              (lambda (_g229290229314_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g229290229314_))))
             (_g229288229419_
              (lambda (_g229290229322_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g229290229322_))
                    (let ((_e229293229325_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g229290229322_))))
                      (let ((_hd229294229329_
                             (let ()
                               (declare (not safe))
                               (##car _e229293229325_)))
                            (_tl229295229332_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229293229325_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl229295229332_))
                            (let ((_g244796_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl229295229332_
                                      '0))))
                              (begin
                                (let ((_g244797_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244796_)
                                             (##vector-length _g244796_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244797_ 2)))
                                      (error "Context expects 2 values"
                                             _g244797_)))
                                (let ((_target229296229335_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244796_ 0)))
                                      (_tl229298229338_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244796_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229298229338_))
                                      (letrec ((_loop229299229341_
                                                (lambda (_hd229297229345_
                                                         _type-e229303229348_
                                                         _id229304229350_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229297229345_))
                                                      (let ((_e229300229353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd229297229345_))))
                (let ((_lp-hd229301229357_
                       (let () (declare (not safe)) (##car _e229300229353_)))
                      (_lp-tl229302229360_
                       (let () (declare (not safe)) (##cdr _e229300229353_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd229301229357_))
                      (let ((_e229307229363_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd229301229357_))))
                        (let ((_hd229308229367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229307229363_)))
                              (_tl229309229370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229307229363_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229309229370_))
                              (let ((_e229310229373_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl229309229370_))))
                                (let ((_hd229311229377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229310229373_)))
                                      (_tl229312229380_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229310229373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229312229380_))
                                      (_loop229299229341_
                                       _lp-tl229302229360_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229311229377_
                                               _type-e229303229348_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229308229367_
                                               _id229304229350_)))
                                      (_g229289229318_ _g229290229322_))))
                              (_g229289229318_ _g229290229322_))))
                      (_g229289229318_ _g229290229322_))))
              (let ((_type-e229305229383_ (reverse _type-e229303229348_))
                    (_id229306229386_ (reverse _id229304229350_)))
                ((lambda (_L229389_ _L229391_)
                   (let ((__tmp244809
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244798
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L229389_
                               _L229391_))
                            (let ((__tmp244799
                                   (lambda (_g229407229411_
                                            _g229408229414_
                                            _g229409229416_)
                                     (let ((__tmp244800
                                            (let ((__tmp244808
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244801
                                                   (let ((__tmp244807
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp244802
                                                          (let ((__tmp244804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244806
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244805
                                (let ()
                                  (declare (not safe))
                                  (cons _g229408229414_ '()))))
                           (declare (not safe))
                           (cons __tmp244806 __tmp244805)))
                        (__tmp244803
                         (let ()
                           (declare (not safe))
                           (cons _g229407229411_ '()))))
                    (declare (not safe))
                    (cons __tmp244804 __tmp244803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244807
                                                           __tmp244802))))
                                              (declare (not safe))
                                              (cons __tmp244808 __tmp244801))))
                                       (declare (not safe))
                                       (cons __tmp244800 _g229409229416_)))))
                              (declare (not safe))
                              (foldr2 __tmp244799 '() _L229389_ _L229391_)))))
                     (declare (not safe))
                     (cons __tmp244809 __tmp244798)))
                 _type-e229305229383_
                 _id229306229386_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop229299229341_
                                         _target229296229335_
                                         '()
                                         '()))
                                      (_g229289229318_ _g229290229322_)))))
                            (_g229289229318_ _g229290229322_))))
                    (_g229289229318_ _g229290229322_)))))
        (_g229288229419_ _$stx229285_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx229424_)
      (let* ((_g229428229457_
              (lambda (_g229429229453_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g229429229453_))))
             (_g229427229557_
              (lambda (_g229429229461_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g229429229461_))
                    (let ((_e229432229464_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g229429229461_))))
                      (let ((_hd229433229468_
                             (let ()
                               (declare (not safe))
                               (##car _e229432229464_)))
                            (_tl229434229471_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229432229464_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl229434229471_))
                            (let ((_g244810_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl229434229471_
                                      '0))))
                              (begin
                                (let ((_g244811_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244810_)
                                             (##vector-length _g244810_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244811_ 2)))
                                      (error "Context expects 2 values"
                                             _g244811_)))
                                (let ((_target229435229474_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244810_ 0)))
                                      (_tl229437229477_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244810_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229437229477_))
                                      (letrec ((_loop229438229480_
                                                (lambda (_hd229436229484_
                                                         _type-e229442229487_
                                                         _id229443229489_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229436229484_))
                                                      (let ((_e229439229492_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd229436229484_))))
                (let ((_lp-hd229440229496_
                       (let () (declare (not safe)) (##car _e229439229492_)))
                      (_lp-tl229441229499_
                       (let () (declare (not safe)) (##cdr _e229439229492_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd229440229496_))
                      (let ((_e229446229502_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd229440229496_))))
                        (let ((_hd229447229506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229446229502_)))
                              (_tl229448229509_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229446229502_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229448229509_))
                              (let ((_e229449229512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl229448229509_))))
                                (let ((_hd229450229516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229449229512_)))
                                      (_tl229451229519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229449229512_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229451229519_))
                                      (_loop229438229480_
                                       _lp-tl229441229499_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229450229516_
                                               _type-e229442229487_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229447229506_
                                               _id229443229489_)))
                                      (_g229428229457_ _g229429229461_))))
                              (_g229428229457_ _g229429229461_))))
                      (_g229428229457_ _g229429229461_))))
              (let ((_type-e229444229522_ (reverse _type-e229442229487_))
                    (_id229445229525_ (reverse _id229443229489_)))
                ((lambda (_L229528_ _L229530_)
                   (let ((__tmp244823
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244812
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L229528_
                               _L229530_))
                            (let ((__tmp244813
                                   (lambda (_g229545229549_
                                            _g229546229552_
                                            _g229547229554_)
                                     (let ((__tmp244814
                                            (let ((__tmp244822
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244815
                                                   (let ((__tmp244821
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp244816
                                                          (let ((__tmp244818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244820
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244819
                                (let ()
                                  (declare (not safe))
                                  (cons _g229546229552_ '()))))
                           (declare (not safe))
                           (cons __tmp244820 __tmp244819)))
                        (__tmp244817
                         (let ()
                           (declare (not safe))
                           (cons _g229545229549_ '()))))
                    (declare (not safe))
                    (cons __tmp244818 __tmp244817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244821
                                                           __tmp244816))))
                                              (declare (not safe))
                                              (cons __tmp244822 __tmp244815))))
                                       (declare (not safe))
                                       (cons __tmp244814 _g229547229554_)))))
                              (declare (not safe))
                              (foldr2 __tmp244813 '() _L229528_ _L229530_)))))
                     (declare (not safe))
                     (cons __tmp244823 __tmp244812)))
                 _type-e229444229522_
                 _id229445229525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop229438229480_
                                         _target229435229474_
                                         '()
                                         '()))
                                      (_g229428229457_ _g229429229461_)))))
                            (_g229428229457_ _g229429229461_))))
                    (_g229428229457_ _g229429229461_)))))
        (_g229427229557_ _$stx229424_)))))
