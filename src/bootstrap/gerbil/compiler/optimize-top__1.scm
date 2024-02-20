(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117260_)
      (let* ((_g117264117293_
              (lambda (_g117265117289_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117265117289_))))
             (_g117263117394_
              (lambda (_g117265117297_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117265117297_))
                    (let ((_e117270117300_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117265117297_))))
                      (let ((_hd117269117304_
                             (let ()
                               (declare (not safe))
                               (##car _e117270117300_)))
                            (_tl117268117307_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117270117300_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117268117307_))
                            (let ((_g128203_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117268117307_
                                      '0))))
                              (begin
                                (let ((_g128204_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128203_)
                                             (##vector-length _g128203_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128204_ 2)))
                                      (error "Context expects 2 values"
                                             _g128204_)))
                                (let ((_target117271117310_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128203_ 0)))
                                      (_tl117273117313_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128203_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117273117313_))
                                      (letrec ((_loop117274117316_
                                                (lambda (_hd117272117320_
                                                         _type-e117278117323_
                                                         _id117279117325_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117272117320_))
                                                      (let ((_e117275117328_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117272117320_))))
                (let ((_lp-hd117276117332_
                       (let () (declare (not safe)) (##car _e117275117328_)))
                      (_lp-tl117277117335_
                       (let () (declare (not safe)) (##cdr _e117275117328_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117276117332_))
                      (let ((_e117284117338_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117276117332_))))
                        (let ((_hd117283117342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117284117338_)))
                              (_tl117282117345_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117284117338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117282117345_))
                              (let ((_e117287117348_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117282117345_))))
                                (let ((_hd117286117352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117287117348_)))
                                      (_tl117285117355_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117287117348_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117285117355_))
                                      (_loop117274117316_
                                       _lp-tl117277117335_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117286117352_
                                               _type-e117278117323_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117283117342_
                                               _id117279117325_)))
                                      (_g117264117293_ _g117265117297_))))
                              (_g117264117293_ _g117265117297_))))
                      (_g117264117293_ _g117265117297_))))
              (let ((_type-e117280117358_ (reverse _type-e117278117323_))
                    (_id117281117361_ (reverse _id117279117325_)))
                ((lambda (_L117364_ _L117366_)
                   (let ((__tmp128216
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128205
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117364_
                               _L117366_))
                            (let ((__tmp128206
                                   (lambda (_g117382117386_
                                            _g117383117389_
                                            _g117384117391_)
                                     (let ((__tmp128207
                                            (let ((__tmp128215
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128208
                                                   (let ((__tmp128214
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128209
                                                          (let ((__tmp128211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128213
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128212
                                (let ()
                                  (declare (not safe))
                                  (cons _g117383117389_ '()))))
                           (declare (not safe))
                           (cons __tmp128213 __tmp128212)))
                        (__tmp128210
                         (let ()
                           (declare (not safe))
                           (cons _g117382117386_ '()))))
                    (declare (not safe))
                    (cons __tmp128211 __tmp128210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128214
                                                           __tmp128209))))
                                              (declare (not safe))
                                              (cons __tmp128215 __tmp128208))))
                                       (declare (not safe))
                                       (cons __tmp128207 _g117384117391_)))))
                              (declare (not safe))
                              (foldr2 __tmp128206 '() _L117364_ _L117366_)))))
                     (declare (not safe))
                     (cons __tmp128216 __tmp128205)))
                 _type-e117280117358_
                 _id117281117361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117274117316_
                                         _target117271117310_
                                         '()
                                         '()))
                                      (_g117264117293_ _g117265117297_)))))
                            (_g117264117293_ _g117265117297_))))
                    (_g117264117293_ _g117265117297_)))))
        (_g117263117394_ _$stx117260_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117399_)
      (let* ((_g117403117432_
              (lambda (_g117404117428_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117404117428_))))
             (_g117402117532_
              (lambda (_g117404117436_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117404117436_))
                    (let ((_e117409117439_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117404117436_))))
                      (let ((_hd117408117443_
                             (let ()
                               (declare (not safe))
                               (##car _e117409117439_)))
                            (_tl117407117446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117409117439_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117407117446_))
                            (let ((_g128217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117407117446_
                                      '0))))
                              (begin
                                (let ((_g128218_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128217_)
                                             (##vector-length _g128217_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128218_ 2)))
                                      (error "Context expects 2 values"
                                             _g128218_)))
                                (let ((_target117410117449_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128217_ 0)))
                                      (_tl117412117452_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128217_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117412117452_))
                                      (letrec ((_loop117413117455_
                                                (lambda (_hd117411117459_
                                                         _type-e117417117462_
                                                         _id117418117464_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117411117459_))
                                                      (let ((_e117414117467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117411117459_))))
                (let ((_lp-hd117415117471_
                       (let () (declare (not safe)) (##car _e117414117467_)))
                      (_lp-tl117416117474_
                       (let () (declare (not safe)) (##cdr _e117414117467_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117415117471_))
                      (let ((_e117423117477_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117415117471_))))
                        (let ((_hd117422117481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117423117477_)))
                              (_tl117421117484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117423117477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117421117484_))
                              (let ((_e117426117487_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117421117484_))))
                                (let ((_hd117425117491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117426117487_)))
                                      (_tl117424117494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117426117487_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117424117494_))
                                      (_loop117413117455_
                                       _lp-tl117416117474_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117425117491_
                                               _type-e117417117462_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117422117481_
                                               _id117418117464_)))
                                      (_g117403117432_ _g117404117436_))))
                              (_g117403117432_ _g117404117436_))))
                      (_g117403117432_ _g117404117436_))))
              (let ((_type-e117419117497_ (reverse _type-e117417117462_))
                    (_id117420117500_ (reverse _id117418117464_)))
                ((lambda (_L117503_ _L117505_)
                   (let ((__tmp128230
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128219
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117503_
                               _L117505_))
                            (let ((__tmp128220
                                   (lambda (_g117520117524_
                                            _g117521117527_
                                            _g117522117529_)
                                     (let ((__tmp128221
                                            (let ((__tmp128229
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128222
                                                   (let ((__tmp128228
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128223
                                                          (let ((__tmp128225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128227
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128226
                                (let ()
                                  (declare (not safe))
                                  (cons _g117521117527_ '()))))
                           (declare (not safe))
                           (cons __tmp128227 __tmp128226)))
                        (__tmp128224
                         (let ()
                           (declare (not safe))
                           (cons _g117520117524_ '()))))
                    (declare (not safe))
                    (cons __tmp128225 __tmp128224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128228
                                                           __tmp128223))))
                                              (declare (not safe))
                                              (cons __tmp128229 __tmp128222))))
                                       (declare (not safe))
                                       (cons __tmp128221 _g117522117529_)))))
                              (declare (not safe))
                              (foldr2 __tmp128220 '() _L117503_ _L117505_)))))
                     (declare (not safe))
                     (cons __tmp128230 __tmp128219)))
                 _type-e117419117497_
                 _id117420117500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117413117455_
                                         _target117410117449_
                                         '()
                                         '()))
                                      (_g117403117432_ _g117404117436_)))))
                            (_g117403117432_ _g117404117436_))))
                    (_g117403117432_ _g117404117436_)))))
        (_g117402117532_ _$stx117399_)))))
