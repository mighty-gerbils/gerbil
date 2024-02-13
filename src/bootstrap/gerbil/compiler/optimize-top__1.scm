(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx230038_)
      (let* ((_g230042230071_
              (lambda (_g230043230067_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g230043230067_))))
             (_g230041230172_
              (lambda (_g230043230075_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g230043230075_))
                    (let ((_e230048230078_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g230043230075_))))
                      (let ((_hd230047230082_
                             (let ()
                               (declare (not safe))
                               (##car _e230048230078_)))
                            (_tl230046230085_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230048230078_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl230046230085_))
                            (let ((_g245549_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl230046230085_
                                      '0))))
                              (begin
                                (let ((_g245550_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245549_)
                                             (##vector-length _g245549_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245550_ 2)))
                                      (error "Context expects 2 values"
                                             _g245550_)))
                                (let ((_target230049230088_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245549_ 0)))
                                      (_tl230051230091_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245549_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230051230091_))
                                      (letrec ((_loop230052230094_
                                                (lambda (_hd230050230098_
                                                         _type-e230056230101_
                                                         _id230057230103_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230050230098_))
                                                      (let ((_e230053230106_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd230050230098_))))
                (let ((_lp-hd230054230110_
                       (let () (declare (not safe)) (##car _e230053230106_)))
                      (_lp-tl230055230113_
                       (let () (declare (not safe)) (##cdr _e230053230106_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd230054230110_))
                      (let ((_e230062230116_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd230054230110_))))
                        (let ((_hd230061230120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230062230116_)))
                              (_tl230060230123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230062230116_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230060230123_))
                              (let ((_e230065230126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl230060230123_))))
                                (let ((_hd230064230130_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230065230126_)))
                                      (_tl230063230133_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230065230126_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230063230133_))
                                      (_loop230052230094_
                                       _lp-tl230055230113_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230064230130_
                                               _type-e230056230101_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230061230120_
                                               _id230057230103_)))
                                      (_g230042230071_ _g230043230075_))))
                              (_g230042230071_ _g230043230075_))))
                      (_g230042230071_ _g230043230075_))))
              (let ((_type-e230058230136_ (reverse _type-e230056230101_))
                    (_id230059230139_ (reverse _id230057230103_)))
                ((lambda (_L230142_ _L230144_)
                   (let ((__tmp245562
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245551
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230142_
                               _L230144_))
                            (let ((__tmp245552
                                   (lambda (_g230160230164_
                                            _g230161230167_
                                            _g230162230169_)
                                     (let ((__tmp245553
                                            (let ((__tmp245561
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245554
                                                   (let ((__tmp245560
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp245555
                                                          (let ((__tmp245557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245559
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245558
                                (let ()
                                  (declare (not safe))
                                  (cons _g230161230167_ '()))))
                           (declare (not safe))
                           (cons __tmp245559 __tmp245558)))
                        (__tmp245556
                         (let ()
                           (declare (not safe))
                           (cons _g230160230164_ '()))))
                    (declare (not safe))
                    (cons __tmp245557 __tmp245556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245560
                                                           __tmp245555))))
                                              (declare (not safe))
                                              (cons __tmp245561 __tmp245554))))
                                       (declare (not safe))
                                       (cons __tmp245553 _g230162230169_)))))
                              (declare (not safe))
                              (foldr2 __tmp245552 '() _L230142_ _L230144_)))))
                     (declare (not safe))
                     (cons __tmp245562 __tmp245551)))
                 _type-e230058230136_
                 _id230059230139_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop230052230094_
                                         _target230049230088_
                                         '()
                                         '()))
                                      (_g230042230071_ _g230043230075_)))))
                            (_g230042230071_ _g230043230075_))))
                    (_g230042230071_ _g230043230075_)))))
        (_g230041230172_ _$stx230038_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx230177_)
      (let* ((_g230181230210_
              (lambda (_g230182230206_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g230182230206_))))
             (_g230180230310_
              (lambda (_g230182230214_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g230182230214_))
                    (let ((_e230187230217_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g230182230214_))))
                      (let ((_hd230186230221_
                             (let ()
                               (declare (not safe))
                               (##car _e230187230217_)))
                            (_tl230185230224_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230187230217_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl230185230224_))
                            (let ((_g245563_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl230185230224_
                                      '0))))
                              (begin
                                (let ((_g245564_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245563_)
                                             (##vector-length _g245563_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245564_ 2)))
                                      (error "Context expects 2 values"
                                             _g245564_)))
                                (let ((_target230188230227_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245563_ 0)))
                                      (_tl230190230230_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245563_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230190230230_))
                                      (letrec ((_loop230191230233_
                                                (lambda (_hd230189230237_
                                                         _type-e230195230240_
                                                         _id230196230242_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230189230237_))
                                                      (let ((_e230192230245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd230189230237_))))
                (let ((_lp-hd230193230249_
                       (let () (declare (not safe)) (##car _e230192230245_)))
                      (_lp-tl230194230252_
                       (let () (declare (not safe)) (##cdr _e230192230245_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd230193230249_))
                      (let ((_e230201230255_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd230193230249_))))
                        (let ((_hd230200230259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230201230255_)))
                              (_tl230199230262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230201230255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230199230262_))
                              (let ((_e230204230265_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl230199230262_))))
                                (let ((_hd230203230269_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230204230265_)))
                                      (_tl230202230272_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230204230265_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230202230272_))
                                      (_loop230191230233_
                                       _lp-tl230194230252_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230203230269_
                                               _type-e230195230240_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230200230259_
                                               _id230196230242_)))
                                      (_g230181230210_ _g230182230214_))))
                              (_g230181230210_ _g230182230214_))))
                      (_g230181230210_ _g230182230214_))))
              (let ((_type-e230197230275_ (reverse _type-e230195230240_))
                    (_id230198230278_ (reverse _id230196230242_)))
                ((lambda (_L230281_ _L230283_)
                   (let ((__tmp245576
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245565
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230281_
                               _L230283_))
                            (let ((__tmp245566
                                   (lambda (_g230298230302_
                                            _g230299230305_
                                            _g230300230307_)
                                     (let ((__tmp245567
                                            (let ((__tmp245575
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245568
                                                   (let ((__tmp245574
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp245569
                                                          (let ((__tmp245571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245573
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245572
                                (let ()
                                  (declare (not safe))
                                  (cons _g230299230305_ '()))))
                           (declare (not safe))
                           (cons __tmp245573 __tmp245572)))
                        (__tmp245570
                         (let ()
                           (declare (not safe))
                           (cons _g230298230302_ '()))))
                    (declare (not safe))
                    (cons __tmp245571 __tmp245570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245574
                                                           __tmp245569))))
                                              (declare (not safe))
                                              (cons __tmp245575 __tmp245568))))
                                       (declare (not safe))
                                       (cons __tmp245567 _g230300230307_)))))
                              (declare (not safe))
                              (foldr2 __tmp245566 '() _L230281_ _L230283_)))))
                     (declare (not safe))
                     (cons __tmp245576 __tmp245565)))
                 _type-e230197230275_
                 _id230198230278_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop230191230233_
                                         _target230188230227_
                                         '()
                                         '()))
                                      (_g230181230210_ _g230182230214_)))))
                            (_g230181230210_ _g230182230214_))))
                    (_g230181230210_ _g230182230214_)))))
        (_g230180230310_ _$stx230177_)))))
