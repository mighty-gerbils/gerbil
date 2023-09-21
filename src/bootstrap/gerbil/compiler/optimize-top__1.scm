(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx22517_)
    (let* ((_g2252122550_
            (lambda (_g2252222546_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g2252222546_))))
           (_g2252022651_
            (lambda (_g2252222554_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g2252222554_))
                  (let ((_e2252722557_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g2252222554_))))
                    (let ((_hd2252622561_
                           (let () (declare (not safe)) (##car _e2252722557_)))
                          (_tl2252522564_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2252722557_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl2252522564_))
                          (let ((_g37108_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl2252522564_
                                    '0))))
                            (begin
                              (let ((_g37109_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g37108_)
                                           (##vector-length _g37108_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g37109_ 2)))
                                    (error "Context expects 2 values"
                                           _g37109_)))
                              (let ((_target2252822567_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37108_ 0)))
                                    (_tl2253022570_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g37108_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2253022570_))
                                    (letrec ((_loop2253122573_
                                              (lambda (_hd2252922577_
                                                       _type-e2253522580_
                                                       _id2253622582_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd2252922577_))
                                                    (let ((_e2253222585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd2252922577_))))
                                                      (let ((_lp-hd2253322589_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2253222585_)))
                    (_lp-tl2253422592_
                     (let () (declare (not safe)) (##cdr _e2253222585_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _lp-hd2253322589_))
                    (let ((_e2254122595_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _lp-hd2253322589_))))
                      (let ((_hd2254022599_
                             (let ()
                               (declare (not safe))
                               (##car _e2254122595_)))
                            (_tl2253922602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2254122595_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl2253922602_))
                            (let ((_e2254422605_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl2253922602_))))
                              (let ((_hd2254322609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2254422605_)))
                                    (_tl2254222612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2254422605_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl2254222612_))
                                    (_loop2253122573_
                                     _lp-tl2253422592_
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2254322609_
                                             _type-e2253522580_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd2254022599_ _id2253622582_)))
                                    (_g2252122550_ _g2252222554_))))
                            (_g2252122550_ _g2252222554_))))
                    (_g2252122550_ _g2252222554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2253722615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (reverse _type-e2253522580_)))
                                                          (_id2253822618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (reverse _id2253622582_))))
                                                      ((lambda (_L22621_
                                                                _L22623_)
                                                         (let ((__tmp37121
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin)))
                       (__tmp37110
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets _L22621_ _L22623_))
                          (let ((__tmp37111
                                 (lambda (_g2263922643_
                                          _g2264022646_
                                          _g2264122648_)
                                   (let ((__tmp37112
                                          (let ((__tmp37120
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'hash-put!)))
                                                (__tmp37113
                                                 (let ((__tmp37119
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'basic-expression-type-builtin)))
                                                       (__tmp37114
                                                        (let ((__tmp37116
                                                               (let ((__tmp37118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp37117
                              (let ()
                                (declare (not safe))
                                (cons _g2264022646_ '()))))
                         (declare (not safe))
                         (cons __tmp37118 __tmp37117)))
                      (__tmp37115
                       (let () (declare (not safe)) (cons _g2263922643_ '()))))
                  (declare (not safe))
                  (cons __tmp37116 __tmp37115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp37119
                                                         __tmp37114))))
                                            (declare (not safe))
                                            (cons __tmp37120 __tmp37113))))
                                     (declare (not safe))
                                     (cons __tmp37112 _g2264122648_)))))
                            (declare (not safe))
                            (foldr2 __tmp37111 '() _L22621_ _L22623_)))))
                   (declare (not safe))
                   (cons __tmp37121 __tmp37110)))
               _type-e2253722615_
               _id2253822618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2253122573_
                                       _target2252822567_
                                       '()
                                       '()))
                                    (_g2252122550_ _g2252222554_)))))
                          (_g2252122550_ _g2252222554_))))
                  (_g2252122550_ _g2252222554_)))))
      (_g2252022651_ _$stx22517_))))
