(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117179_)
      (let* ((_g117183117212_
              (lambda (_g117184117208_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117184117208_))))
             (_g117182117313_
              (lambda (_g117184117216_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117184117216_))
                    (let ((_e117189117219_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117184117216_))))
                      (let ((_hd117188117223_
                             (let ()
                               (declare (not safe))
                               (##car _e117189117219_)))
                            (_tl117187117226_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117189117219_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117187117226_))
                            (let ((_g128122_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117187117226_
                                      '0))))
                              (begin
                                (let ((_g128123_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128122_)
                                             (##vector-length _g128122_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128123_ 2)))
                                      (error "Context expects 2 values"
                                             _g128123_)))
                                (let ((_target117190117229_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128122_ 0)))
                                      (_tl117192117232_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128122_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117192117232_))
                                      (letrec ((_loop117193117235_
                                                (lambda (_hd117191117239_
                                                         _type-e117197117242_
                                                         _id117198117244_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117191117239_))
                                                      (let ((_e117194117247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117191117239_))))
                (let ((_lp-hd117195117251_
                       (let () (declare (not safe)) (##car _e117194117247_)))
                      (_lp-tl117196117254_
                       (let () (declare (not safe)) (##cdr _e117194117247_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117195117251_))
                      (let ((_e117203117257_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117195117251_))))
                        (let ((_hd117202117261_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117203117257_)))
                              (_tl117201117264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117203117257_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117201117264_))
                              (let ((_e117206117267_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117201117264_))))
                                (let ((_hd117205117271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117206117267_)))
                                      (_tl117204117274_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117206117267_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117204117274_))
                                      (_loop117193117235_
                                       _lp-tl117196117254_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117205117271_
                                               _type-e117197117242_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117202117261_
                                               _id117198117244_)))
                                      (_g117183117212_ _g117184117216_))))
                              (_g117183117212_ _g117184117216_))))
                      (_g117183117212_ _g117184117216_))))
              (let ((_type-e117199117277_ (reverse _type-e117197117242_))
                    (_id117200117280_ (reverse _id117198117244_)))
                ((lambda (_L117283_ _L117285_)
                   (let ((__tmp128135
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128124
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117283_
                               _L117285_))
                            (let ((__tmp128125
                                   (lambda (_g117301117305_
                                            _g117302117308_
                                            _g117303117310_)
                                     (let ((__tmp128126
                                            (let ((__tmp128134
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128127
                                                   (let ((__tmp128133
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128128
                                                          (let ((__tmp128130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128132
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128131
                                (let ()
                                  (declare (not safe))
                                  (cons _g117302117308_ '()))))
                           (declare (not safe))
                           (cons __tmp128132 __tmp128131)))
                        (__tmp128129
                         (let ()
                           (declare (not safe))
                           (cons _g117301117305_ '()))))
                    (declare (not safe))
                    (cons __tmp128130 __tmp128129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128133
                                                           __tmp128128))))
                                              (declare (not safe))
                                              (cons __tmp128134 __tmp128127))))
                                       (declare (not safe))
                                       (cons __tmp128126 _g117303117310_)))))
                              (declare (not safe))
                              (foldr2 __tmp128125 '() _L117283_ _L117285_)))))
                     (declare (not safe))
                     (cons __tmp128135 __tmp128124)))
                 _type-e117199117277_
                 _id117200117280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117193117235_
                                         _target117190117229_
                                         '()
                                         '()))
                                      (_g117183117212_ _g117184117216_)))))
                            (_g117183117212_ _g117184117216_))))
                    (_g117183117212_ _g117184117216_)))))
        (_g117182117313_ _$stx117179_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117318_)
      (let* ((_g117322117351_
              (lambda (_g117323117347_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117323117347_))))
             (_g117321117451_
              (lambda (_g117323117355_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117323117355_))
                    (let ((_e117328117358_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117323117355_))))
                      (let ((_hd117327117362_
                             (let ()
                               (declare (not safe))
                               (##car _e117328117358_)))
                            (_tl117326117365_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117328117358_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117326117365_))
                            (let ((_g128136_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117326117365_
                                      '0))))
                              (begin
                                (let ((_g128137_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128136_)
                                             (##vector-length _g128136_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128137_ 2)))
                                      (error "Context expects 2 values"
                                             _g128137_)))
                                (let ((_target117329117368_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128136_ 0)))
                                      (_tl117331117371_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128136_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117331117371_))
                                      (letrec ((_loop117332117374_
                                                (lambda (_hd117330117378_
                                                         _type-e117336117381_
                                                         _id117337117383_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117330117378_))
                                                      (let ((_e117333117386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117330117378_))))
                (let ((_lp-hd117334117390_
                       (let () (declare (not safe)) (##car _e117333117386_)))
                      (_lp-tl117335117393_
                       (let () (declare (not safe)) (##cdr _e117333117386_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117334117390_))
                      (let ((_e117342117396_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117334117390_))))
                        (let ((_hd117341117400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117342117396_)))
                              (_tl117340117403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117342117396_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117340117403_))
                              (let ((_e117345117406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117340117403_))))
                                (let ((_hd117344117410_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117345117406_)))
                                      (_tl117343117413_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117345117406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117343117413_))
                                      (_loop117332117374_
                                       _lp-tl117335117393_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117344117410_
                                               _type-e117336117381_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117341117400_
                                               _id117337117383_)))
                                      (_g117322117351_ _g117323117355_))))
                              (_g117322117351_ _g117323117355_))))
                      (_g117322117351_ _g117323117355_))))
              (let ((_type-e117338117416_ (reverse _type-e117336117381_))
                    (_id117339117419_ (reverse _id117337117383_)))
                ((lambda (_L117422_ _L117424_)
                   (let ((__tmp128149
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128138
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117422_
                               _L117424_))
                            (let ((__tmp128139
                                   (lambda (_g117439117443_
                                            _g117440117446_
                                            _g117441117448_)
                                     (let ((__tmp128140
                                            (let ((__tmp128148
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128141
                                                   (let ((__tmp128147
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128142
                                                          (let ((__tmp128144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128146
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128145
                                (let ()
                                  (declare (not safe))
                                  (cons _g117440117446_ '()))))
                           (declare (not safe))
                           (cons __tmp128146 __tmp128145)))
                        (__tmp128143
                         (let ()
                           (declare (not safe))
                           (cons _g117439117443_ '()))))
                    (declare (not safe))
                    (cons __tmp128144 __tmp128143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128147
                                                           __tmp128142))))
                                              (declare (not safe))
                                              (cons __tmp128148 __tmp128141))))
                                       (declare (not safe))
                                       (cons __tmp128140 _g117441117448_)))))
                              (declare (not safe))
                              (foldr2 __tmp128139 '() _L117422_ _L117424_)))))
                     (declare (not safe))
                     (cons __tmp128149 __tmp128138)))
                 _type-e117338117416_
                 _id117339117419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117332117374_
                                         _target117329117368_
                                         '()
                                         '()))
                                      (_g117322117351_ _g117323117355_)))))
                            (_g117322117351_ _g117323117355_))))
                    (_g117322117351_ _g117323117355_)))))
        (_g117321117451_ _$stx117318_)))))
