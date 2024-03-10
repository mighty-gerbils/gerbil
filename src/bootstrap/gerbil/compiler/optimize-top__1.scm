(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117814_)
      (let* ((_g117818117847_
              (lambda (_g117819117843_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117819117843_))))
             (_g117817117948_
              (lambda (_g117819117851_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117819117851_))
                    (let ((_e117824117854_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117819117851_))))
                      (let ((_hd117823117858_
                             (let ()
                               (declare (not safe))
                               (##car _e117824117854_)))
                            (_tl117822117861_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117824117854_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117822117861_))
                            (let ((_g128761_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117822117861_
                                      '0))))
                              (begin
                                (let ((_g128762_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128761_)
                                             (##vector-length _g128761_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128762_ 2)))
                                      (error "Context expects 2 values"
                                             _g128762_)))
                                (let ((_target117825117864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128761_ 0)))
                                      (_tl117827117867_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128761_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117827117867_))
                                      (letrec ((_loop117828117870_
                                                (lambda (_hd117826117874_
                                                         _type-e117832117877_
                                                         _id117833117879_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117826117874_))
                                                      (let ((_e117829117882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117826117874_))))
                (let ((_lp-hd117830117886_
                       (let () (declare (not safe)) (##car _e117829117882_)))
                      (_lp-tl117831117889_
                       (let () (declare (not safe)) (##cdr _e117829117882_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117830117886_))
                      (let ((_e117838117892_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117830117886_))))
                        (let ((_hd117837117896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117838117892_)))
                              (_tl117836117899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117838117892_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117836117899_))
                              (let ((_e117841117902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117836117899_))))
                                (let ((_hd117840117906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117841117902_)))
                                      (_tl117839117909_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117841117902_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117839117909_))
                                      (_loop117828117870_
                                       _lp-tl117831117889_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117840117906_
                                               _type-e117832117877_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117837117896_
                                               _id117833117879_)))
                                      (_g117818117847_ _g117819117851_))))
                              (_g117818117847_ _g117819117851_))))
                      (_g117818117847_ _g117819117851_))))
              (let ((_type-e117834117912_ (reverse _type-e117832117877_))
                    (_id117835117915_ (reverse _id117833117879_)))
                ((lambda (_L117918_ _L117920_)
                   (let ((__tmp128774
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128763
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117918_
                               _L117920_))
                            (let ((__tmp128764
                                   (lambda (_g117936117940_
                                            _g117937117943_
                                            _g117938117945_)
                                     (let ((__tmp128765
                                            (let ((__tmp128773
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128766
                                                   (let ((__tmp128772
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128767
                                                          (let ((__tmp128769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128771
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128770
                                (let ()
                                  (declare (not safe))
                                  (cons _g117937117943_ '()))))
                           (declare (not safe))
                           (cons __tmp128771 __tmp128770)))
                        (__tmp128768
                         (let ()
                           (declare (not safe))
                           (cons _g117936117940_ '()))))
                    (declare (not safe))
                    (cons __tmp128769 __tmp128768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128772
                                                           __tmp128767))))
                                              (declare (not safe))
                                              (cons __tmp128773 __tmp128766))))
                                       (declare (not safe))
                                       (cons __tmp128765 _g117938117945_)))))
                              (declare (not safe))
                              (foldr2 __tmp128764 '() _L117918_ _L117920_)))))
                     (declare (not safe))
                     (cons __tmp128774 __tmp128763)))
                 _type-e117834117912_
                 _id117835117915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117828117870_
                                         _target117825117864_
                                         '()
                                         '()))
                                      (_g117818117847_ _g117819117851_)))))
                            (_g117818117847_ _g117819117851_))))
                    (_g117818117847_ _g117819117851_)))))
        (_g117817117948_ _$stx117814_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117953_)
      (let* ((_g117957117986_
              (lambda (_g117958117982_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117958117982_))))
             (_g117956118086_
              (lambda (_g117958117990_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117958117990_))
                    (let ((_e117963117993_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117958117990_))))
                      (let ((_hd117962117997_
                             (let ()
                               (declare (not safe))
                               (##car _e117963117993_)))
                            (_tl117961118000_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117963117993_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117961118000_))
                            (let ((_g128775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117961118000_
                                      '0))))
                              (begin
                                (let ((_g128776_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128775_)
                                             (##vector-length _g128775_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128776_ 2)))
                                      (error "Context expects 2 values"
                                             _g128776_)))
                                (let ((_target117964118003_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128775_ 0)))
                                      (_tl117966118006_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128775_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117966118006_))
                                      (letrec ((_loop117967118009_
                                                (lambda (_hd117965118013_
                                                         _type-e117971118016_
                                                         _id117972118018_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117965118013_))
                                                      (let ((_e117968118021_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117965118013_))))
                (let ((_lp-hd117969118025_
                       (let () (declare (not safe)) (##car _e117968118021_)))
                      (_lp-tl117970118028_
                       (let () (declare (not safe)) (##cdr _e117968118021_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117969118025_))
                      (let ((_e117977118031_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117969118025_))))
                        (let ((_hd117976118035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117977118031_)))
                              (_tl117975118038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117977118031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117975118038_))
                              (let ((_e117980118041_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117975118038_))))
                                (let ((_hd117979118045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117980118041_)))
                                      (_tl117978118048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117980118041_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117978118048_))
                                      (_loop117967118009_
                                       _lp-tl117970118028_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117979118045_
                                               _type-e117971118016_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117976118035_
                                               _id117972118018_)))
                                      (_g117957117986_ _g117958117990_))))
                              (_g117957117986_ _g117958117990_))))
                      (_g117957117986_ _g117958117990_))))
              (let ((_type-e117973118051_ (reverse _type-e117971118016_))
                    (_id117974118054_ (reverse _id117972118018_)))
                ((lambda (_L118057_ _L118059_)
                   (let ((__tmp128788
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128777
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118057_
                               _L118059_))
                            (let ((__tmp128778
                                   (lambda (_g118074118078_
                                            _g118075118081_
                                            _g118076118083_)
                                     (let ((__tmp128779
                                            (let ((__tmp128787
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128780
                                                   (let ((__tmp128786
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128781
                                                          (let ((__tmp128783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128785
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128784
                                (let ()
                                  (declare (not safe))
                                  (cons _g118075118081_ '()))))
                           (declare (not safe))
                           (cons __tmp128785 __tmp128784)))
                        (__tmp128782
                         (let ()
                           (declare (not safe))
                           (cons _g118074118078_ '()))))
                    (declare (not safe))
                    (cons __tmp128783 __tmp128782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128786
                                                           __tmp128781))))
                                              (declare (not safe))
                                              (cons __tmp128787 __tmp128780))))
                                       (declare (not safe))
                                       (cons __tmp128779 _g118076118083_)))))
                              (declare (not safe))
                              (foldr2 __tmp128778 '() _L118057_ _L118059_)))))
                     (declare (not safe))
                     (cons __tmp128788 __tmp128777)))
                 _type-e117973118051_
                 _id117974118054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117967118009_
                                         _target117964118003_
                                         '()
                                         '()))
                                      (_g117957117986_ _g117958117990_)))))
                            (_g117957117986_ _g117958117990_))))
                    (_g117957117986_ _g117958117990_)))))
        (_g117956118086_ _$stx117953_)))))
