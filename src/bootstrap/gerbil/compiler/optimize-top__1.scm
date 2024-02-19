(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117180_)
      (let* ((_g117184117213_
              (lambda (_g117185117209_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117185117209_))))
             (_g117183117314_
              (lambda (_g117185117217_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117185117217_))
                    (let ((_e117190117220_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117185117217_))))
                      (let ((_hd117189117224_
                             (let ()
                               (declare (not safe))
                               (##car _e117190117220_)))
                            (_tl117188117227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117190117220_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117188117227_))
                            (let ((_g128123_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117188117227_
                                      '0))))
                              (begin
                                (let ((_g128124_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128123_)
                                             (##vector-length _g128123_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128124_ 2)))
                                      (error "Context expects 2 values"
                                             _g128124_)))
                                (let ((_target117191117230_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128123_ 0)))
                                      (_tl117193117233_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128123_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117193117233_))
                                      (letrec ((_loop117194117236_
                                                (lambda (_hd117192117240_
                                                         _type-e117198117243_
                                                         _id117199117245_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117192117240_))
                                                      (let ((_e117195117248_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117192117240_))))
                (let ((_lp-hd117196117252_
                       (let () (declare (not safe)) (##car _e117195117248_)))
                      (_lp-tl117197117255_
                       (let () (declare (not safe)) (##cdr _e117195117248_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117196117252_))
                      (let ((_e117204117258_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117196117252_))))
                        (let ((_hd117203117262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117204117258_)))
                              (_tl117202117265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117204117258_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117202117265_))
                              (let ((_e117207117268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117202117265_))))
                                (let ((_hd117206117272_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117207117268_)))
                                      (_tl117205117275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117207117268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117205117275_))
                                      (_loop117194117236_
                                       _lp-tl117197117255_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117206117272_
                                               _type-e117198117243_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117203117262_
                                               _id117199117245_)))
                                      (_g117184117213_ _g117185117217_))))
                              (_g117184117213_ _g117185117217_))))
                      (_g117184117213_ _g117185117217_))))
              (let ((_type-e117200117278_ (reverse _type-e117198117243_))
                    (_id117201117281_ (reverse _id117199117245_)))
                ((lambda (_L117284_ _L117286_)
                   (let ((__tmp128136
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128125
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117284_
                               _L117286_))
                            (let ((__tmp128126
                                   (lambda (_g117302117306_
                                            _g117303117309_
                                            _g117304117311_)
                                     (let ((__tmp128127
                                            (let ((__tmp128135
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128128
                                                   (let ((__tmp128134
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128129
                                                          (let ((__tmp128131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128133
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128132
                                (let ()
                                  (declare (not safe))
                                  (cons _g117303117309_ '()))))
                           (declare (not safe))
                           (cons __tmp128133 __tmp128132)))
                        (__tmp128130
                         (let ()
                           (declare (not safe))
                           (cons _g117302117306_ '()))))
                    (declare (not safe))
                    (cons __tmp128131 __tmp128130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128134
                                                           __tmp128129))))
                                              (declare (not safe))
                                              (cons __tmp128135 __tmp128128))))
                                       (declare (not safe))
                                       (cons __tmp128127 _g117304117311_)))))
                              (declare (not safe))
                              (foldr2 __tmp128126 '() _L117284_ _L117286_)))))
                     (declare (not safe))
                     (cons __tmp128136 __tmp128125)))
                 _type-e117200117278_
                 _id117201117281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117194117236_
                                         _target117191117230_
                                         '()
                                         '()))
                                      (_g117184117213_ _g117185117217_)))))
                            (_g117184117213_ _g117185117217_))))
                    (_g117184117213_ _g117185117217_)))))
        (_g117183117314_ _$stx117180_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117319_)
      (let* ((_g117323117352_
              (lambda (_g117324117348_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117324117348_))))
             (_g117322117452_
              (lambda (_g117324117356_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117324117356_))
                    (let ((_e117329117359_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117324117356_))))
                      (let ((_hd117328117363_
                             (let ()
                               (declare (not safe))
                               (##car _e117329117359_)))
                            (_tl117327117366_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117329117359_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117327117366_))
                            (let ((_g128137_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117327117366_
                                      '0))))
                              (begin
                                (let ((_g128138_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128137_)
                                             (##vector-length _g128137_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128138_ 2)))
                                      (error "Context expects 2 values"
                                             _g128138_)))
                                (let ((_target117330117369_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128137_ 0)))
                                      (_tl117332117372_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128137_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117332117372_))
                                      (letrec ((_loop117333117375_
                                                (lambda (_hd117331117379_
                                                         _type-e117337117382_
                                                         _id117338117384_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117331117379_))
                                                      (let ((_e117334117387_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117331117379_))))
                (let ((_lp-hd117335117391_
                       (let () (declare (not safe)) (##car _e117334117387_)))
                      (_lp-tl117336117394_
                       (let () (declare (not safe)) (##cdr _e117334117387_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117335117391_))
                      (let ((_e117343117397_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117335117391_))))
                        (let ((_hd117342117401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117343117397_)))
                              (_tl117341117404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117343117397_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117341117404_))
                              (let ((_e117346117407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117341117404_))))
                                (let ((_hd117345117411_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117346117407_)))
                                      (_tl117344117414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117346117407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117344117414_))
                                      (_loop117333117375_
                                       _lp-tl117336117394_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117345117411_
                                               _type-e117337117382_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117342117401_
                                               _id117338117384_)))
                                      (_g117323117352_ _g117324117356_))))
                              (_g117323117352_ _g117324117356_))))
                      (_g117323117352_ _g117324117356_))))
              (let ((_type-e117339117417_ (reverse _type-e117337117382_))
                    (_id117340117420_ (reverse _id117338117384_)))
                ((lambda (_L117423_ _L117425_)
                   (let ((__tmp128150
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128139
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117423_
                               _L117425_))
                            (let ((__tmp128140
                                   (lambda (_g117440117444_
                                            _g117441117447_
                                            _g117442117449_)
                                     (let ((__tmp128141
                                            (let ((__tmp128149
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128142
                                                   (let ((__tmp128148
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128143
                                                          (let ((__tmp128145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128147
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128146
                                (let ()
                                  (declare (not safe))
                                  (cons _g117441117447_ '()))))
                           (declare (not safe))
                           (cons __tmp128147 __tmp128146)))
                        (__tmp128144
                         (let ()
                           (declare (not safe))
                           (cons _g117440117444_ '()))))
                    (declare (not safe))
                    (cons __tmp128145 __tmp128144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128148
                                                           __tmp128143))))
                                              (declare (not safe))
                                              (cons __tmp128149 __tmp128142))))
                                       (declare (not safe))
                                       (cons __tmp128141 _g117442117449_)))))
                              (declare (not safe))
                              (foldr2 __tmp128140 '() _L117423_ _L117425_)))))
                     (declare (not safe))
                     (cons __tmp128150 __tmp128139)))
                 _type-e117339117417_
                 _id117340117420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117333117375_
                                         _target117330117369_
                                         '()
                                         '()))
                                      (_g117323117352_ _g117324117356_)))))
                            (_g117323117352_ _g117324117356_))))
                    (_g117323117352_ _g117324117356_)))))
        (_g117322117452_ _$stx117319_)))))
