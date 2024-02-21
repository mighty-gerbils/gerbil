(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117594_)
      (let* ((_g117598117627_
              (lambda (_g117599117623_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117599117623_))))
             (_g117597117728_
              (lambda (_g117599117631_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117599117631_))
                    (let ((_e117604117634_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117599117631_))))
                      (let ((_hd117603117638_
                             (let ()
                               (declare (not safe))
                               (##car _e117604117634_)))
                            (_tl117602117641_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117604117634_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117602117641_))
                            (let ((_g128537_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117602117641_
                                      '0))))
                              (begin
                                (let ((_g128538_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128537_)
                                             (##vector-length _g128537_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128538_ 2)))
                                      (error "Context expects 2 values"
                                             _g128538_)))
                                (let ((_target117605117644_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128537_ 0)))
                                      (_tl117607117647_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128537_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117607117647_))
                                      (letrec ((_loop117608117650_
                                                (lambda (_hd117606117654_
                                                         _type-e117612117657_
                                                         _id117613117659_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117606117654_))
                                                      (let ((_e117609117662_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117606117654_))))
                (let ((_lp-hd117610117666_
                       (let () (declare (not safe)) (##car _e117609117662_)))
                      (_lp-tl117611117669_
                       (let () (declare (not safe)) (##cdr _e117609117662_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117610117666_))
                      (let ((_e117618117672_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117610117666_))))
                        (let ((_hd117617117676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117618117672_)))
                              (_tl117616117679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117618117672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117616117679_))
                              (let ((_e117621117682_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117616117679_))))
                                (let ((_hd117620117686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117621117682_)))
                                      (_tl117619117689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117621117682_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117619117689_))
                                      (_loop117608117650_
                                       _lp-tl117611117669_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117620117686_
                                               _type-e117612117657_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117617117676_
                                               _id117613117659_)))
                                      (_g117598117627_ _g117599117631_))))
                              (_g117598117627_ _g117599117631_))))
                      (_g117598117627_ _g117599117631_))))
              (let ((_type-e117614117692_ (reverse _type-e117612117657_))
                    (_id117615117695_ (reverse _id117613117659_)))
                ((lambda (_L117698_ _L117700_)
                   (let ((__tmp128550
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128539
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117698_
                               _L117700_))
                            (let ((__tmp128540
                                   (lambda (_g117716117720_
                                            _g117717117723_
                                            _g117718117725_)
                                     (let ((__tmp128541
                                            (let ((__tmp128549
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128542
                                                   (let ((__tmp128548
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128543
                                                          (let ((__tmp128545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128547
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128546
                                (let ()
                                  (declare (not safe))
                                  (cons _g117717117723_ '()))))
                           (declare (not safe))
                           (cons __tmp128547 __tmp128546)))
                        (__tmp128544
                         (let ()
                           (declare (not safe))
                           (cons _g117716117720_ '()))))
                    (declare (not safe))
                    (cons __tmp128545 __tmp128544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128548
                                                           __tmp128543))))
                                              (declare (not safe))
                                              (cons __tmp128549 __tmp128542))))
                                       (declare (not safe))
                                       (cons __tmp128541 _g117718117725_)))))
                              (declare (not safe))
                              (foldr2 __tmp128540 '() _L117698_ _L117700_)))))
                     (declare (not safe))
                     (cons __tmp128550 __tmp128539)))
                 _type-e117614117692_
                 _id117615117695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117608117650_
                                         _target117605117644_
                                         '()
                                         '()))
                                      (_g117598117627_ _g117599117631_)))))
                            (_g117598117627_ _g117599117631_))))
                    (_g117598117627_ _g117599117631_)))))
        (_g117597117728_ _$stx117594_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117733_)
      (let* ((_g117737117766_
              (lambda (_g117738117762_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117738117762_))))
             (_g117736117866_
              (lambda (_g117738117770_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117738117770_))
                    (let ((_e117743117773_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117738117770_))))
                      (let ((_hd117742117777_
                             (let ()
                               (declare (not safe))
                               (##car _e117743117773_)))
                            (_tl117741117780_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117743117773_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117741117780_))
                            (let ((_g128551_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117741117780_
                                      '0))))
                              (begin
                                (let ((_g128552_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128551_)
                                             (##vector-length _g128551_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128552_ 2)))
                                      (error "Context expects 2 values"
                                             _g128552_)))
                                (let ((_target117744117783_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128551_ 0)))
                                      (_tl117746117786_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128551_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117746117786_))
                                      (letrec ((_loop117747117789_
                                                (lambda (_hd117745117793_
                                                         _type-e117751117796_
                                                         _id117752117798_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117745117793_))
                                                      (let ((_e117748117801_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117745117793_))))
                (let ((_lp-hd117749117805_
                       (let () (declare (not safe)) (##car _e117748117801_)))
                      (_lp-tl117750117808_
                       (let () (declare (not safe)) (##cdr _e117748117801_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117749117805_))
                      (let ((_e117757117811_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117749117805_))))
                        (let ((_hd117756117815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117757117811_)))
                              (_tl117755117818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117757117811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117755117818_))
                              (let ((_e117760117821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117755117818_))))
                                (let ((_hd117759117825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117760117821_)))
                                      (_tl117758117828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117760117821_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117758117828_))
                                      (_loop117747117789_
                                       _lp-tl117750117808_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117759117825_
                                               _type-e117751117796_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117756117815_
                                               _id117752117798_)))
                                      (_g117737117766_ _g117738117770_))))
                              (_g117737117766_ _g117738117770_))))
                      (_g117737117766_ _g117738117770_))))
              (let ((_type-e117753117831_ (reverse _type-e117751117796_))
                    (_id117754117834_ (reverse _id117752117798_)))
                ((lambda (_L117837_ _L117839_)
                   (let ((__tmp128564
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128553
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117837_
                               _L117839_))
                            (let ((__tmp128554
                                   (lambda (_g117854117858_
                                            _g117855117861_
                                            _g117856117863_)
                                     (let ((__tmp128555
                                            (let ((__tmp128563
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128556
                                                   (let ((__tmp128562
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128557
                                                          (let ((__tmp128559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128561
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128560
                                (let ()
                                  (declare (not safe))
                                  (cons _g117855117861_ '()))))
                           (declare (not safe))
                           (cons __tmp128561 __tmp128560)))
                        (__tmp128558
                         (let ()
                           (declare (not safe))
                           (cons _g117854117858_ '()))))
                    (declare (not safe))
                    (cons __tmp128559 __tmp128558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128562
                                                           __tmp128557))))
                                              (declare (not safe))
                                              (cons __tmp128563 __tmp128556))))
                                       (declare (not safe))
                                       (cons __tmp128555 _g117856117863_)))))
                              (declare (not safe))
                              (foldr2 __tmp128554 '() _L117837_ _L117839_)))))
                     (declare (not safe))
                     (cons __tmp128564 __tmp128553)))
                 _type-e117753117831_
                 _id117754117834_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117747117789_
                                         _target117744117783_
                                         '()
                                         '()))
                                      (_g117737117766_ _g117738117770_)))))
                            (_g117737117766_ _g117738117770_))))
                    (_g117737117766_ _g117738117770_)))))
        (_g117736117866_ _$stx117733_)))))
