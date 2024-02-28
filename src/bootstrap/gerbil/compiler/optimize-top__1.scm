(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117837_)
      (let* ((_g117841117870_
              (lambda (_g117842117866_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117842117866_))))
             (_g117840117971_
              (lambda (_g117842117874_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117842117874_))
                    (let ((_e117847117877_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117842117874_))))
                      (let ((_hd117846117881_
                             (let ()
                               (declare (not safe))
                               (##car _e117847117877_)))
                            (_tl117845117884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117847117877_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117845117884_))
                            (let ((_g128780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117845117884_
                                      '0))))
                              (begin
                                (let ((_g128781_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128780_)
                                             (##vector-length _g128780_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128781_ 2)))
                                      (error "Context expects 2 values"
                                             _g128781_)))
                                (let ((_target117848117887_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128780_ 0)))
                                      (_tl117850117890_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128780_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117850117890_))
                                      (letrec ((_loop117851117893_
                                                (lambda (_hd117849117897_
                                                         _type-e117855117900_
                                                         _id117856117902_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117849117897_))
                                                      (let ((_e117852117905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117849117897_))))
                (let ((_lp-hd117853117909_
                       (let () (declare (not safe)) (##car _e117852117905_)))
                      (_lp-tl117854117912_
                       (let () (declare (not safe)) (##cdr _e117852117905_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117853117909_))
                      (let ((_e117861117915_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117853117909_))))
                        (let ((_hd117860117919_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117861117915_)))
                              (_tl117859117922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117861117915_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117859117922_))
                              (let ((_e117864117925_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117859117922_))))
                                (let ((_hd117863117929_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117864117925_)))
                                      (_tl117862117932_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117864117925_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117862117932_))
                                      (_loop117851117893_
                                       _lp-tl117854117912_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117863117929_
                                               _type-e117855117900_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117860117919_
                                               _id117856117902_)))
                                      (_g117841117870_ _g117842117874_))))
                              (_g117841117870_ _g117842117874_))))
                      (_g117841117870_ _g117842117874_))))
              (let ((_type-e117857117935_ (reverse _type-e117855117900_))
                    (_id117858117938_ (reverse _id117856117902_)))
                ((lambda (_L117941_ _L117943_)
                   (let ((__tmp128793
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128782
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117941_
                               _L117943_))
                            (let ((__tmp128783
                                   (lambda (_g117959117963_
                                            _g117960117966_
                                            _g117961117968_)
                                     (let ((__tmp128784
                                            (let ((__tmp128792
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128785
                                                   (let ((__tmp128791
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128786
                                                          (let ((__tmp128788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128790
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128789
                                (let ()
                                  (declare (not safe))
                                  (cons _g117960117966_ '()))))
                           (declare (not safe))
                           (cons __tmp128790 __tmp128789)))
                        (__tmp128787
                         (let ()
                           (declare (not safe))
                           (cons _g117959117963_ '()))))
                    (declare (not safe))
                    (cons __tmp128788 __tmp128787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128791
                                                           __tmp128786))))
                                              (declare (not safe))
                                              (cons __tmp128792 __tmp128785))))
                                       (declare (not safe))
                                       (cons __tmp128784 _g117961117968_)))))
                              (declare (not safe))
                              (foldr2 __tmp128783 '() _L117941_ _L117943_)))))
                     (declare (not safe))
                     (cons __tmp128793 __tmp128782)))
                 _type-e117857117935_
                 _id117858117938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117851117893_
                                         _target117848117887_
                                         '()
                                         '()))
                                      (_g117841117870_ _g117842117874_)))))
                            (_g117841117870_ _g117842117874_))))
                    (_g117841117870_ _g117842117874_)))))
        (_g117840117971_ _$stx117837_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117976_)
      (let* ((_g117980118009_
              (lambda (_g117981118005_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117981118005_))))
             (_g117979118109_
              (lambda (_g117981118013_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117981118013_))
                    (let ((_e117986118016_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117981118013_))))
                      (let ((_hd117985118020_
                             (let ()
                               (declare (not safe))
                               (##car _e117986118016_)))
                            (_tl117984118023_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117986118016_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117984118023_))
                            (let ((_g128794_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117984118023_
                                      '0))))
                              (begin
                                (let ((_g128795_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128794_)
                                             (##vector-length _g128794_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128795_ 2)))
                                      (error "Context expects 2 values"
                                             _g128795_)))
                                (let ((_target117987118026_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128794_ 0)))
                                      (_tl117989118029_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128794_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117989118029_))
                                      (letrec ((_loop117990118032_
                                                (lambda (_hd117988118036_
                                                         _type-e117994118039_
                                                         _id117995118041_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117988118036_))
                                                      (let ((_e117991118044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117988118036_))))
                (let ((_lp-hd117992118048_
                       (let () (declare (not safe)) (##car _e117991118044_)))
                      (_lp-tl117993118051_
                       (let () (declare (not safe)) (##cdr _e117991118044_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117992118048_))
                      (let ((_e118000118054_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117992118048_))))
                        (let ((_hd117999118058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118000118054_)))
                              (_tl117998118061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118000118054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117998118061_))
                              (let ((_e118003118064_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117998118061_))))
                                (let ((_hd118002118068_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118003118064_)))
                                      (_tl118001118071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118003118064_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118001118071_))
                                      (_loop117990118032_
                                       _lp-tl117993118051_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118002118068_
                                               _type-e117994118039_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117999118058_
                                               _id117995118041_)))
                                      (_g117980118009_ _g117981118013_))))
                              (_g117980118009_ _g117981118013_))))
                      (_g117980118009_ _g117981118013_))))
              (let ((_type-e117996118074_ (reverse _type-e117994118039_))
                    (_id117997118077_ (reverse _id117995118041_)))
                ((lambda (_L118080_ _L118082_)
                   (let ((__tmp128807
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128796
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118080_
                               _L118082_))
                            (let ((__tmp128797
                                   (lambda (_g118097118101_
                                            _g118098118104_
                                            _g118099118106_)
                                     (let ((__tmp128798
                                            (let ((__tmp128806
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128799
                                                   (let ((__tmp128805
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128800
                                                          (let ((__tmp128802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128804
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128803
                                (let ()
                                  (declare (not safe))
                                  (cons _g118098118104_ '()))))
                           (declare (not safe))
                           (cons __tmp128804 __tmp128803)))
                        (__tmp128801
                         (let ()
                           (declare (not safe))
                           (cons _g118097118101_ '()))))
                    (declare (not safe))
                    (cons __tmp128802 __tmp128801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128805
                                                           __tmp128800))))
                                              (declare (not safe))
                                              (cons __tmp128806 __tmp128799))))
                                       (declare (not safe))
                                       (cons __tmp128798 _g118099118106_)))))
                              (declare (not safe))
                              (foldr2 __tmp128797 '() _L118080_ _L118082_)))))
                     (declare (not safe))
                     (cons __tmp128807 __tmp128796)))
                 _type-e117996118074_
                 _id117997118077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117990118032_
                                         _target117987118026_
                                         '()
                                         '()))
                                      (_g117980118009_ _g117981118013_)))))
                            (_g117980118009_ _g117981118013_))))
                    (_g117980118009_ _g117981118013_)))))
        (_g117979118109_ _$stx117976_)))))
