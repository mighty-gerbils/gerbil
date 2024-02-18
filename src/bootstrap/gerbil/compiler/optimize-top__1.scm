(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx235506_)
      (let* ((_g235510235539_
              (lambda (_g235511235535_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g235511235535_))))
             (_g235509235640_
              (lambda (_g235511235543_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g235511235543_))
                    (let ((_e235514235546_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g235511235543_))))
                      (let ((_hd235515235550_
                             (let ()
                               (declare (not safe))
                               (##car _e235514235546_)))
                            (_tl235516235553_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235514235546_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl235516235553_))
                            (let ((_g250516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl235516235553_
                                      '0))))
                              (begin
                                (let ((_g250517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g250516_)
                                             (##vector-length _g250516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g250517_ 2)))
                                      (error "Context expects 2 values"
                                             _g250517_)))
                                (let ((_target235517235556_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g250516_ 0)))
                                      (_tl235519235559_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g250516_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235519235559_))
                                      (letrec ((_loop235520235562_
                                                (lambda (_hd235518235566_
                                                         _type-e235524235569_
                                                         _id235525235571_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235518235566_))
                                                      (let ((_e235521235574_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd235518235566_))))
                (let ((_lp-hd235522235578_
                       (let () (declare (not safe)) (##car _e235521235574_)))
                      (_lp-tl235523235581_
                       (let () (declare (not safe)) (##cdr _e235521235574_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd235522235578_))
                      (let ((_e235528235584_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd235522235578_))))
                        (let ((_hd235529235588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235528235584_)))
                              (_tl235530235591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235528235584_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235530235591_))
                              (let ((_e235531235594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl235530235591_))))
                                (let ((_hd235532235598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235531235594_)))
                                      (_tl235533235601_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235531235594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235533235601_))
                                      (_loop235520235562_
                                       _lp-tl235523235581_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd235532235598_
                                               _type-e235524235569_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd235529235588_
                                               _id235525235571_)))
                                      (_g235510235539_ _g235511235543_))))
                              (_g235510235539_ _g235511235543_))))
                      (_g235510235539_ _g235511235543_))))
              (let ((_type-e235526235604_ (reverse _type-e235524235569_))
                    (_id235527235607_ (reverse _id235525235571_)))
                ((lambda (_L235610_ _L235612_)
                   (let ((__tmp250529
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp250518
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L235610_
                               _L235612_))
                            (let ((__tmp250519
                                   (lambda (_g235628235632_
                                            _g235629235635_
                                            _g235630235637_)
                                     (let ((__tmp250520
                                            (let ((__tmp250528
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp250521
                                                   (let ((__tmp250527
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp250522
                                                          (let ((__tmp250524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp250526
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp250525
                                (let ()
                                  (declare (not safe))
                                  (cons _g235629235635_ '()))))
                           (declare (not safe))
                           (cons __tmp250526 __tmp250525)))
                        (__tmp250523
                         (let ()
                           (declare (not safe))
                           (cons _g235628235632_ '()))))
                    (declare (not safe))
                    (cons __tmp250524 __tmp250523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp250527
                                                           __tmp250522))))
                                              (declare (not safe))
                                              (cons __tmp250528 __tmp250521))))
                                       (declare (not safe))
                                       (cons __tmp250520 _g235630235637_)))))
                              (declare (not safe))
                              (foldr2 __tmp250519 '() _L235610_ _L235612_)))))
                     (declare (not safe))
                     (cons __tmp250529 __tmp250518)))
                 _type-e235526235604_
                 _id235527235607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop235520235562_
                                         _target235517235556_
                                         '()
                                         '()))
                                      (_g235510235539_ _g235511235543_)))))
                            (_g235510235539_ _g235511235543_))))
                    (_g235510235539_ _g235511235543_)))))
        (_g235509235640_ _$stx235506_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx235645_)
      (let* ((_g235649235678_
              (lambda (_g235650235674_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g235650235674_))))
             (_g235648235778_
              (lambda (_g235650235682_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g235650235682_))
                    (let ((_e235653235685_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g235650235682_))))
                      (let ((_hd235654235689_
                             (let ()
                               (declare (not safe))
                               (##car _e235653235685_)))
                            (_tl235655235692_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235653235685_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl235655235692_))
                            (let ((_g250530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl235655235692_
                                      '0))))
                              (begin
                                (let ((_g250531_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g250530_)
                                             (##vector-length _g250530_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g250531_ 2)))
                                      (error "Context expects 2 values"
                                             _g250531_)))
                                (let ((_target235656235695_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g250530_ 0)))
                                      (_tl235658235698_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g250530_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235658235698_))
                                      (letrec ((_loop235659235701_
                                                (lambda (_hd235657235705_
                                                         _type-e235663235708_
                                                         _id235664235710_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235657235705_))
                                                      (let ((_e235660235713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd235657235705_))))
                (let ((_lp-hd235661235717_
                       (let () (declare (not safe)) (##car _e235660235713_)))
                      (_lp-tl235662235720_
                       (let () (declare (not safe)) (##cdr _e235660235713_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd235661235717_))
                      (let ((_e235667235723_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd235661235717_))))
                        (let ((_hd235668235727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235667235723_)))
                              (_tl235669235730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235667235723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235669235730_))
                              (let ((_e235670235733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl235669235730_))))
                                (let ((_hd235671235737_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235670235733_)))
                                      (_tl235672235740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235670235733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235672235740_))
                                      (_loop235659235701_
                                       _lp-tl235662235720_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd235671235737_
                                               _type-e235663235708_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd235668235727_
                                               _id235664235710_)))
                                      (_g235649235678_ _g235650235682_))))
                              (_g235649235678_ _g235650235682_))))
                      (_g235649235678_ _g235650235682_))))
              (let ((_type-e235665235743_ (reverse _type-e235663235708_))
                    (_id235666235746_ (reverse _id235664235710_)))
                ((lambda (_L235749_ _L235751_)
                   (let ((__tmp250543
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp250532
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L235749_
                               _L235751_))
                            (let ((__tmp250533
                                   (lambda (_g235766235770_
                                            _g235767235773_
                                            _g235768235775_)
                                     (let ((__tmp250534
                                            (let ((__tmp250542
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp250535
                                                   (let ((__tmp250541
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp250536
                                                          (let ((__tmp250538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp250540
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp250539
                                (let ()
                                  (declare (not safe))
                                  (cons _g235767235773_ '()))))
                           (declare (not safe))
                           (cons __tmp250540 __tmp250539)))
                        (__tmp250537
                         (let ()
                           (declare (not safe))
                           (cons _g235766235770_ '()))))
                    (declare (not safe))
                    (cons __tmp250538 __tmp250537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp250541
                                                           __tmp250536))))
                                              (declare (not safe))
                                              (cons __tmp250542 __tmp250535))))
                                       (declare (not safe))
                                       (cons __tmp250534 _g235768235775_)))))
                              (declare (not safe))
                              (foldr2 __tmp250533 '() _L235749_ _L235751_)))))
                     (declare (not safe))
                     (cons __tmp250543 __tmp250532)))
                 _type-e235665235743_
                 _id235666235746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop235659235701_
                                         _target235656235695_
                                         '()
                                         '()))
                                      (_g235649235678_ _g235650235682_)))))
                            (_g235649235678_ _g235650235682_))))
                    (_g235649235678_ _g235650235682_)))))
        (_g235648235778_ _$stx235645_)))))
