(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx118518_)
      (let* ((_g118522118551_
              (lambda (_g118523118547_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118523118547_))))
             (_g118521118652_
              (lambda (_g118523118555_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118523118555_))
                    (let ((_e118528118558_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118523118555_))))
                      (let ((_hd118527118562_
                             (let ()
                               (declare (not safe))
                               (##car _e118528118558_)))
                            (_tl118526118565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118528118558_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118526118565_))
                            (let ((_g129461_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118526118565_
                                      '0))))
                              (begin
                                (let ((_g129462_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129461_)
                                             (##vector-length _g129461_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129462_ 2)))
                                      (error "Context expects 2 values"
                                             _g129462_)))
                                (let ((_target118529118568_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129461_ 0)))
                                      (_tl118531118571_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129461_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118531118571_))
                                      (letrec ((_loop118532118574_
                                                (lambda (_hd118530118578_
                                                         _type-e118536118581_
                                                         _id118537118583_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118530118578_))
                                                      (let ((_e118533118586_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118530118578_))))
                (let ((_lp-hd118534118590_
                       (let () (declare (not safe)) (##car _e118533118586_)))
                      (_lp-tl118535118593_
                       (let () (declare (not safe)) (##cdr _e118533118586_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118534118590_))
                      (let ((_e118542118596_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118534118590_))))
                        (let ((_hd118541118600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118542118596_)))
                              (_tl118540118603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118542118596_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118540118603_))
                              (let ((_e118545118606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118540118603_))))
                                (let ((_hd118544118610_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118545118606_)))
                                      (_tl118543118613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118545118606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118543118613_))
                                      (_loop118532118574_
                                       _lp-tl118535118593_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118544118610_
                                               _type-e118536118581_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118541118600_
                                               _id118537118583_)))
                                      (_g118522118551_ _g118523118555_))))
                              (_g118522118551_ _g118523118555_))))
                      (_g118522118551_ _g118523118555_))))
              (let ((_type-e118538118616_ (reverse _type-e118536118581_))
                    (_id118539118619_ (reverse _id118537118583_)))
                ((lambda (_L118622_ _L118624_)
                   (let ((__tmp129474
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129463
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118622_
                               _L118624_))
                            (let ((__tmp129464
                                   (lambda (_g118640118644_
                                            _g118641118647_
                                            _g118642118649_)
                                     (let ((__tmp129465
                                            (let ((__tmp129473
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129466
                                                   (let ((__tmp129472
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp129467
                                                          (let ((__tmp129469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129471
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129470
                                (let ()
                                  (declare (not safe))
                                  (cons _g118641118647_ '()))))
                           (declare (not safe))
                           (cons __tmp129471 __tmp129470)))
                        (__tmp129468
                         (let ()
                           (declare (not safe))
                           (cons _g118640118644_ '()))))
                    (declare (not safe))
                    (cons __tmp129469 __tmp129468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129472
                                                           __tmp129467))))
                                              (declare (not safe))
                                              (cons __tmp129473 __tmp129466))))
                                       (declare (not safe))
                                       (cons __tmp129465 _g118642118649_)))))
                              (declare (not safe))
                              (foldr2 __tmp129464 '() _L118622_ _L118624_)))))
                     (declare (not safe))
                     (cons __tmp129474 __tmp129463)))
                 _type-e118538118616_
                 _id118539118619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118532118574_
                                         _target118529118568_
                                         '()
                                         '()))
                                      (_g118522118551_ _g118523118555_)))))
                            (_g118522118551_ _g118523118555_))))
                    (_g118522118551_ _g118523118555_)))))
        (_g118521118652_ _$stx118518_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx118657_)
      (let* ((_g118661118690_
              (lambda (_g118662118686_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g118662118686_))))
             (_g118660118790_
              (lambda (_g118662118694_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g118662118694_))
                    (let ((_e118667118697_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g118662118694_))))
                      (let ((_hd118666118701_
                             (let ()
                               (declare (not safe))
                               (##car _e118667118697_)))
                            (_tl118665118704_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118667118697_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl118665118704_))
                            (let ((_g129475_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl118665118704_
                                      '0))))
                              (begin
                                (let ((_g129476_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g129475_)
                                             (##vector-length _g129475_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g129476_ 2)))
                                      (error "Context expects 2 values"
                                             _g129476_)))
                                (let ((_target118668118707_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129475_ 0)))
                                      (_tl118670118710_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g129475_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118670118710_))
                                      (letrec ((_loop118671118713_
                                                (lambda (_hd118669118717_
                                                         _type-e118675118720_
                                                         _id118676118722_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118669118717_))
                                                      (let ((_e118672118725_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd118669118717_))))
                (let ((_lp-hd118673118729_
                       (let () (declare (not safe)) (##car _e118672118725_)))
                      (_lp-tl118674118732_
                       (let () (declare (not safe)) (##cdr _e118672118725_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd118673118729_))
                      (let ((_e118681118735_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd118673118729_))))
                        (let ((_hd118680118739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118681118735_)))
                              (_tl118679118742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118681118735_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118679118742_))
                              (let ((_e118684118745_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl118679118742_))))
                                (let ((_hd118683118749_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118684118745_)))
                                      (_tl118682118752_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118684118745_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118682118752_))
                                      (_loop118671118713_
                                       _lp-tl118674118732_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118683118749_
                                               _type-e118675118720_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd118680118739_
                                               _id118676118722_)))
                                      (_g118661118690_ _g118662118694_))))
                              (_g118661118690_ _g118662118694_))))
                      (_g118661118690_ _g118662118694_))))
              (let ((_type-e118677118755_ (reverse _type-e118675118720_))
                    (_id118678118758_ (reverse _id118676118722_)))
                ((lambda (_L118761_ _L118763_)
                   (let ((__tmp129488
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp129477
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L118761_
                               _L118763_))
                            (let ((__tmp129478
                                   (lambda (_g118778118782_
                                            _g118779118785_
                                            _g118780118787_)
                                     (let ((__tmp129479
                                            (let ((__tmp129487
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp129480
                                                   (let ((__tmp129486
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp129481
                                                          (let ((__tmp129483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129485
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp129484
                                (let ()
                                  (declare (not safe))
                                  (cons _g118779118785_ '()))))
                           (declare (not safe))
                           (cons __tmp129485 __tmp129484)))
                        (__tmp129482
                         (let ()
                           (declare (not safe))
                           (cons _g118778118782_ '()))))
                    (declare (not safe))
                    (cons __tmp129483 __tmp129482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129486
                                                           __tmp129481))))
                                              (declare (not safe))
                                              (cons __tmp129487 __tmp129480))))
                                       (declare (not safe))
                                       (cons __tmp129479 _g118780118787_)))))
                              (declare (not safe))
                              (foldr2 __tmp129478 '() _L118761_ _L118763_)))))
                     (declare (not safe))
                     (cons __tmp129488 __tmp129477)))
                 _type-e118677118755_
                 _id118678118758_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop118671118713_
                                         _target118668118707_
                                         '()
                                         '()))
                                      (_g118661118690_ _g118662118694_)))))
                            (_g118661118690_ _g118662118694_))))
                    (_g118661118690_ _g118662118694_)))))
        (_g118660118790_ _$stx118657_)))))
