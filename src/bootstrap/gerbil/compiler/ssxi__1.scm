(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158028_)
      (let* ((_g158032158050_
              (lambda (_g158033158046_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158033158046_))))
             (_g158031158105_
              (lambda (_g158033158054_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158033158054_))
                    (let ((_e158038158057_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158033158054_))))
                      (let ((_hd158037158061_
                             (let ()
                               (declare (not safe))
                               (##car _e158038158057_)))
                            (_tl158036158064_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158038158057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158036158064_))
                            (let ((_e158041158067_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158036158064_))))
                              (let ((_hd158040158071_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158041158067_)))
                                    (_tl158039158074_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158041158067_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158039158074_))
                                    (let ((_e158044158077_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158039158074_))))
                                      (let ((_hd158043158081_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158044158077_)))
                                            (_tl158042158084_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158044158077_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158042158084_))
                                            ((lambda (_L158087_ _L158089_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158089_))
                                                   (let ((__tmp161569
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161564
                                                          (let ((__tmp161566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161568
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161567
                                (let ()
                                  (declare (not safe))
                                  (cons _L158089_ '()))))
                           (declare (not safe))
                           (cons __tmp161568 __tmp161567)))
                        (__tmp161565
                         (let () (declare (not safe)) (cons _L158087_ '()))))
                    (declare (not safe))
                    (cons __tmp161566 __tmp161565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161569
                                                           __tmp161564))
                                                   (_g158032158050_
                                                    _g158033158054_)))
                                             _hd158043158081_
                                             _hd158040158071_)
                                            (_g158032158050_
                                             _g158033158054_))))
                                    (_g158032158050_ _g158033158054_))))
                            (_g158032158050_ _g158033158054_))))
                    (_g158032158050_ _g158033158054_)))))
        (_g158031158105_ _$stx158028_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158109_)
      (let* ((_g158113158142_
              (lambda (_g158114158138_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158114158138_))))
             (_g158112158242_
              (lambda (_g158114158146_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158114158146_))
                    (let ((_e158119158149_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158114158146_))))
                      (let ((_hd158118158153_
                             (let ()
                               (declare (not safe))
                               (##car _e158119158149_)))
                            (_tl158117158156_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158119158149_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158117158156_))
                            (let ((_g161570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158117158156_
                                      '0))))
                              (begin
                                (let ((_g161571_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161570_)
                                             (##vector-length _g161570_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161571_ 2)))
                                      (error "Context expects 2 values"
                                             _g161571_)))
                                (let ((_target158120158159_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161570_ 0)))
                                      (_tl158122158162_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161570_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158122158162_))
                                      (letrec ((_loop158123158165_
                                                (lambda (_hd158121158169_
                                                         _type158127158172_
                                                         _symbol158128158174_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158121158169_))
                                                      (let ((_e158124158177_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158121158169_))))
                (let ((_lp-hd158125158181_
                       (let () (declare (not safe)) (##car _e158124158177_)))
                      (_lp-tl158126158184_
                       (let () (declare (not safe)) (##cdr _e158124158177_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158125158181_))
                      (let ((_e158133158187_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158125158181_))))
                        (let ((_hd158132158191_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158133158187_)))
                              (_tl158131158194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158133158187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158131158194_))
                              (let ((_e158136158197_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158131158194_))))
                                (let ((_hd158135158201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158136158197_)))
                                      (_tl158134158204_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158136158197_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158134158204_))
                                      (_loop158123158165_
                                       _lp-tl158126158184_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158135158201_
                                               _type158127158172_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158132158191_
                                               _symbol158128158174_)))
                                      (_g158113158142_ _g158114158146_))))
                              (_g158113158142_ _g158114158146_))))
                      (_g158113158142_ _g158114158146_))))
              (let ((_type158129158207_ (reverse _type158127158172_))
                    (_symbol158130158210_ (reverse _symbol158128158174_)))
                ((lambda (_L158213_ _L158215_)
                   (let ((__tmp161578
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161572
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158213_
                               _L158215_))
                            (let ((__tmp161573
                                   (lambda (_g158230158234_
                                            _g158231158237_
                                            _g158232158239_)
                                     (let ((__tmp161574
                                            (let ((__tmp161577
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161575
                                                   (let ((__tmp161576
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158230158234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158231158237_
                                                           __tmp161576))))
                                              (declare (not safe))
                                              (cons __tmp161577 __tmp161575))))
                                       (declare (not safe))
                                       (cons __tmp161574 _g158232158239_)))))
                              (declare (not safe))
                              (foldr2 __tmp161573 '() _L158213_ _L158215_)))))
                     (declare (not safe))
                     (cons __tmp161578 __tmp161572)))
                 _type158129158207_
                 _symbol158130158210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158123158165_
                                         _target158120158159_
                                         '()
                                         '()))
                                      (_g158113158142_ _g158114158146_)))))
                            (_g158113158142_ _g158114158146_))))
                    (_g158113158142_ _g158114158146_)))))
        (_g158112158242_ _$stx158109_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158247_)
      (let* ((___stx161129161130_ _$stx158247_)
             (_g158252158294_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161129161130_)))))
        (let ((___kont161132161133_
               (lambda (_L158422_ _L158424_ _L158425_ _L158426_)
                 (let ((__tmp161592
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161579
                        (let ((__tmp161589
                               (let ((__tmp161591
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161590
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158426_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161591 __tmp161590)))
                              (__tmp161580
                               (let ((__tmp161586
                                      (let ((__tmp161588
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161587
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158425_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161588 __tmp161587)))
                                     (__tmp161581
                                      (let ((__tmp161583
                                             (let ((__tmp161585
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161584
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158424_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161585 __tmp161584)))
                                            (__tmp161582
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158422_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161583 __tmp161582))))
                                 (declare (not safe))
                                 (cons __tmp161586 __tmp161581))))
                          (declare (not safe))
                          (cons __tmp161589 __tmp161580))))
                   (declare (not safe))
                   (cons __tmp161592 __tmp161579))))
              (___kont161134161135_
               (lambda (_L158341_ _L158343_ _L158344_ _L158345_)
                 (let ((__tmp161593
                        (let ((__tmp161594
                               (let ((__tmp161595
                                      (let ((__tmp161596
                                             (let ((__tmp161597
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161597 '()))))
                                        (declare (not safe))
                                        (cons _L158341_ __tmp161596))))
                                 (declare (not safe))
                                 (cons _L158343_ __tmp161595))))
                          (declare (not safe))
                          (cons _L158344_ __tmp161594))))
                   (declare (not safe))
                   (cons _L158345_ __tmp161593)))))
          (let ((___match161168161169_
                 (lambda (_e158260158372_
                          _hd158259158376_
                          _tl158258158379_
                          _e158263158382_
                          _hd158262158386_
                          _tl158261158389_
                          _e158266158392_
                          _hd158265158396_
                          _tl158264158399_
                          _e158269158402_
                          _hd158268158406_
                          _tl158267158409_
                          _e158272158412_
                          _hd158271158416_
                          _tl158270158419_)
                   (let ((_L158422_ _hd158271158416_)
                         (_L158424_ _hd158268158406_)
                         (_L158425_ _hd158265158396_)
                         (_L158426_ _hd158262158386_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158426_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158425_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158424_)))
                         (___kont161132161133_
                          _L158422_
                          _L158424_
                          _L158425_
                          _L158426_)
                         (let () (declare (not safe)) (_g158252158294_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161129161130_))
                (let ((_e158260158372_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161129161130_))))
                  (let ((_tl158258158379_
                         (let () (declare (not safe)) (##cdr _e158260158372_)))
                        (_hd158259158376_
                         (let ()
                           (declare (not safe))
                           (##car _e158260158372_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158258158379_))
                        (let ((_e158263158382_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158258158379_))))
                          (let ((_tl158261158389_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158263158382_)))
                                (_hd158262158386_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158263158382_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158261158389_))
                                (let ((_e158266158392_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158261158389_))))
                                  (let ((_tl158264158399_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158266158392_)))
                                        (_hd158265158396_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158266158392_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158264158399_))
                                        (let ((_e158269158402_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158264158399_))))
                                          (let ((_tl158267158409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158269158402_)))
                                                (_hd158268158406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158269158402_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158267158409_))
                                                (let ((_e158272158412_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158267158409_))))
                                                  (let ((_tl158270158419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158272158412_)))
                                                        (_hd158271158416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158272158412_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158270158419_))
                                                        (___match161168161169_
                                                         _e158260158372_
                                                         _hd158259158376_
                                                         _tl158258158379_
                                                         _e158263158382_
                                                         _hd158262158386_
                                                         _tl158261158389_
                                                         _e158266158392_
                                                         _hd158265158396_
                                                         _tl158264158399_
                                                         _e158269158402_
                                                         _hd158268158406_
                                                         _tl158267158409_
                                                         _e158272158412_
                                                         _hd158271158416_
                                                         _tl158270158419_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158252158294_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158267158409_))
                                                    (___kont161134161135_
                                                     _hd158268158406_
                                                     _hd158265158396_
                                                     _hd158262158386_
                                                     _hd158259158376_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158252158294_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158252158294_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158252158294_)))))
                        (let () (declare (not safe)) (_g158252158294_)))))
                (let () (declare (not safe)) (_g158252158294_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158451_)
      (let* ((_g158455158490_
              (lambda (_g158456158486_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158456158486_))))
             (_g158454158609_
              (lambda (_g158456158494_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158456158494_))
                    (let ((_e158462158497_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158456158494_))))
                      (let ((_hd158461158501_
                             (let ()
                               (declare (not safe))
                               (##car _e158462158497_)))
                            (_tl158460158504_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158462158497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158460158504_))
                            (let ((_g161598_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158460158504_
                                      '0))))
                              (begin
                                (let ((_g161599_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161598_)
                                             (##vector-length _g161598_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161599_ 2)))
                                      (error "Context expects 2 values"
                                             _g161599_)))
                                (let ((_target158463158507_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161598_ 0)))
                                      (_tl158465158510_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161598_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158465158510_))
                                      (letrec ((_loop158466158513_
                                                (lambda (_hd158464158517_
                                                         _symbol158470158520_
                                                         _method158471158522_
                                                         _type-t158472158524_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158464158517_))
                                                      (let ((_e158467158527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158464158517_))))
                (let ((_lp-hd158468158531_
                       (let () (declare (not safe)) (##car _e158467158527_)))
                      (_lp-tl158469158534_
                       (let () (declare (not safe)) (##cdr _e158467158527_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158468158531_))
                      (let ((_e158478158537_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158468158531_))))
                        (let ((_hd158477158541_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158478158537_)))
                              (_tl158476158544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158478158537_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158476158544_))
                              (let ((_e158481158547_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158476158544_))))
                                (let ((_hd158480158551_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158481158547_)))
                                      (_tl158479158554_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158481158547_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158479158554_))
                                      (let ((_e158484158557_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158479158554_))))
                                        (let ((_hd158483158561_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158484158557_)))
                                              (_tl158482158564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158484158557_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158482158564_))
                                              (_loop158466158513_
                                               _lp-tl158469158534_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158483158561_
                                                       _symbol158470158520_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158480158551_
                                                       _method158471158522_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158477158541_
                                                       _type-t158472158524_)))
                                              (_g158455158490_
                                               _g158456158494_))))
                                      (_g158455158490_ _g158456158494_))))
                              (_g158455158490_ _g158456158494_))))
                      (_g158455158490_ _g158456158494_))))
              (let ((_symbol158473158567_ (reverse _symbol158470158520_))
                    (_method158474158570_ (reverse _method158471158522_))
                    (_type-t158475158572_ (reverse _type-t158472158524_)))
                ((lambda (_L158575_ _L158577_ _L158578_)
                   (let ((__tmp161607
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161600
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158575_
                               _L158577_
                               _L158578_))
                            (let ((__tmp161601
                                   (lambda (_g158594158599_
                                            _g158595158602_
                                            _g158596158604_
                                            _g158597158606_)
                                     (let ((__tmp161602
                                            (let ((__tmp161606
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161603
                                                   (let ((__tmp161604
                                                          (let ((__tmp161605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158594158599_ '()))))
                    (declare (not safe))
                    (cons _g158595158602_ __tmp161605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158596158604_
                                                           __tmp161604))))
                                              (declare (not safe))
                                              (cons __tmp161606 __tmp161603))))
                                       (declare (not safe))
                                       (cons __tmp161602 _g158597158606_)))))
                              (declare (not safe))
                              (foldr* __tmp161601
                                      '()
                                      _L158575_
                                      _L158577_
                                      _L158578_)))))
                     (declare (not safe))
                     (cons __tmp161607 __tmp161600)))
                 _symbol158473158567_
                 _method158474158570_
                 _type-t158475158572_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158466158513_
                                         _target158463158507_
                                         '()
                                         '()
                                         '()))
                                      (_g158455158490_ _g158456158494_)))))
                            (_g158455158490_ _g158456158494_))))
                    (_g158455158490_ _g158456158494_)))))
        (_g158454158609_ _$stx158451_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158614_)
      (let* ((_g158618158651_
              (lambda (_g158619158647_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158619158647_))))
             (_g158617158765_
              (lambda (_g158619158655_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158619158655_))
                    (let ((_e158625158658_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158619158655_))))
                      (let ((_hd158624158662_
                             (let ()
                               (declare (not safe))
                               (##car _e158625158658_)))
                            (_tl158623158665_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158625158658_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158623158665_))
                            (let ((_e158628158668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158623158665_))))
                              (let ((_hd158627158672_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158628158668_)))
                                    (_tl158626158675_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158628158668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158626158675_))
                                    (let ((_g161608_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158626158675_
                                              '0))))
                                      (begin
                                        (let ((_g161609_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161608_)
                                                     (##vector-length
                                                      _g161608_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161609_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161609_)))
                                        (let ((_target158629158678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161608_ 0)))
                                              (_tl158631158681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161608_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158631158681_))
                                              (letrec ((_loop158632158684_
                                                        (lambda (_hd158630158688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158636158691_
                         _method158637158693_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158630158688_))
                      (let ((_e158633158696_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158630158688_))))
                        (let ((_lp-hd158634158700_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158633158696_)))
                              (_lp-tl158635158703_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158633158696_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158634158700_))
                              (let ((_e158642158706_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158634158700_))))
                                (let ((_hd158641158710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158642158706_)))
                                      (_tl158640158713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158642158706_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158640158713_))
                                      (let ((_e158645158716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158640158713_))))
                                        (let ((_hd158644158720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158645158716_)))
                                              (_tl158643158723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158645158716_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158643158723_))
                                              (_loop158632158684_
                                               _lp-tl158635158703_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158644158720_
                                                       _symbol158636158691_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158641158710_
                                                       _method158637158693_)))
                                              (_g158618158651_
                                               _g158619158655_))))
                                      (_g158618158651_ _g158619158655_))))
                              (_g158618158651_ _g158619158655_))))
                      (let ((_symbol158638158726_
                             (reverse _symbol158636158691_))
                            (_method158639158729_
                             (reverse _method158637158693_)))
                        ((lambda (_L158732_ _L158734_ _L158735_)
                           (let ((__tmp161617
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161610
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158732_
                                       _L158734_))
                                    (let ((__tmp161611
                                           (lambda (_g158753158757_
                                                    _g158754158760_
                                                    _g158755158762_)
                                             (let ((__tmp161612
                                                    (let ((__tmp161616
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161613
                                                           (let ((__tmp161614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161615
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158753158757_ '()))))
                            (declare (not safe))
                            (cons _g158754158760_ __tmp161615))))
                     (declare (not safe))
                     (cons _L158735_ __tmp161614))))
              (declare (not safe))
              (cons __tmp161616 __tmp161613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161612
                                                     _g158755158762_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161611
                                              '()
                                              _L158732_
                                              _L158734_)))))
                             (declare (not safe))
                             (cons __tmp161617 __tmp161610)))
                         _symbol158638158726_
                         _method158639158729_
                         _hd158627158672_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158632158684_
                                                 _target158629158678_
                                                 '()
                                                 '()))
                                              (_g158618158651_
                                               _g158619158655_)))))
                                    (_g158618158651_ _g158619158655_))))
                            (_g158618158651_ _g158619158655_))))
                    (_g158618158651_ _g158619158655_)))))
        (_g158617158765_ _$stx158614_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158770_)
      (let* ((_g158774158788_
              (lambda (_g158775158784_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158775158784_))))
             (_g158773158829_
              (lambda (_g158775158792_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158775158792_))
                    (let ((_e158779158795_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158775158792_))))
                      (let ((_hd158778158799_
                             (let ()
                               (declare (not safe))
                               (##car _e158779158795_)))
                            (_tl158777158802_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158779158795_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158777158802_))
                            (let ((_e158782158805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158777158802_))))
                              (let ((_hd158781158809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158782158805_)))
                                    (_tl158780158812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158782158805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158780158812_))
                                    ((lambda (_L158815_)
                                       (let ((__tmp161622
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161618
                                              (let ((__tmp161619
                                                     (let ((__tmp161621
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161620
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161621 __tmp161620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161619 '()))))
                                         (declare (not safe))
                                         (cons __tmp161622 __tmp161618)))
                                     _hd158781158809_)
                                    (_g158774158788_ _g158775158792_))))
                            (_g158774158788_ _g158775158792_))))
                    (_g158774158788_ _g158775158792_)))))
        (_g158773158829_ _$stx158770_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158833_)
      (let* ((_g158837158887_
              (lambda (_g158838158883_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158838158883_))))
             (_g158836159054_
              (lambda (_g158838158891_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158838158891_))
                    (let ((_e158851158894_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158838158891_))))
                      (let ((_hd158850158898_
                             (let ()
                               (declare (not safe))
                               (##car _e158851158894_)))
                            (_tl158849158901_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158851158894_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158849158901_))
                            (let ((_e158854158904_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158849158901_))))
                              (let ((_hd158853158908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158854158904_)))
                                    (_tl158852158911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158854158904_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158852158911_))
                                    (let ((_e158857158914_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158852158911_))))
                                      (let ((_hd158856158918_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158857158914_)))
                                            (_tl158855158921_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158857158914_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158855158921_))
                                            (let ((_e158860158924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158855158921_))))
                                              (let ((_hd158859158928_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158860158924_)))
                                                    (_tl158858158931_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158860158924_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158858158931_))
                                                    (let ((_e158863158934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158858158931_))))
                                                      (let ((_hd158862158938_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158863158934_)))
                    (_tl158861158941_
                     (let () (declare (not safe)) (##cdr _e158863158934_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158861158941_))
                    (let ((_e158866158944_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158861158941_))))
                      (let ((_hd158865158948_
                             (let ()
                               (declare (not safe))
                               (##car _e158866158944_)))
                            (_tl158864158951_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158866158944_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158864158951_))
                            (let ((_e158869158954_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158864158951_))))
                              (let ((_hd158868158958_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158869158954_)))
                                    (_tl158867158961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158869158954_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158867158961_))
                                    (let ((_e158872158964_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158867158961_))))
                                      (let ((_hd158871158968_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158872158964_)))
                                            (_tl158870158971_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158872158964_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158870158971_))
                                            (let ((_e158875158974_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158870158971_))))
                                              (let ((_hd158874158978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158875158974_)))
                                                    (_tl158873158981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158875158974_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158873158981_))
                                                    (let ((_e158878158984_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158873158981_))))
                                                      (let ((_hd158877158988_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158878158984_)))
                    (_tl158876158991_
                     (let () (declare (not safe)) (##cdr _e158878158984_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158876158991_))
                    (let ((_e158881158994_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158876158991_))))
                      (let ((_hd158880158998_
                             (let ()
                               (declare (not safe))
                               (##car _e158881158994_)))
                            (_tl158879159001_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158881158994_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158879159001_))
                            ((lambda (_L159004_
                                      _L159006_
                                      _L159007_
                                      _L159008_
                                      _L159009_
                                      _L159010_
                                      _L159011_
                                      _L159012_
                                      _L159013_
                                      _L159014_)
                               (let ((__tmp161657
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161623
                                      (let ((__tmp161654
                                             (let ((__tmp161656
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161655
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159014_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161656 __tmp161655)))
                                            (__tmp161624
                                             (let ((__tmp161651
                                                    (let ((__tmp161653
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161652
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161653 __tmp161652)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161625
                                                    (let ((__tmp161648
                                                           (let ((__tmp161650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161649
                          (let () (declare (not safe)) (cons _L159012_ '()))))
                     (declare (not safe))
                     (cons __tmp161650 __tmp161649)))
                  (__tmp161626
                   (let ((__tmp161645
                          (let ((__tmp161647
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161646
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159011_ '()))))
                            (declare (not safe))
                            (cons __tmp161647 __tmp161646)))
                         (__tmp161627
                          (let ((__tmp161642
                                 (let ((__tmp161644
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161643
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159010_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161644 __tmp161643)))
                                (__tmp161628
                                 (let ((__tmp161639
                                        (let ((__tmp161641
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161640
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159009_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161641 __tmp161640)))
                                       (__tmp161629
                                        (let ((__tmp161630
                                               (let ((__tmp161631
                                                      (let ((__tmp161636
                                                             (let ((__tmp161638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161637
                            (let ()
                              (declare (not safe))
                              (cons _L159006_ '()))))
                       (declare (not safe))
                       (cons __tmp161638 __tmp161637)))
                    (__tmp161632
                     (let ((__tmp161633
                            (let ((__tmp161635
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161634
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159004_ '()))))
                              (declare (not safe))
                              (cons __tmp161635 __tmp161634))))
                       (declare (not safe))
                       (cons __tmp161633 '()))))
                (declare (not safe))
                (cons __tmp161636 __tmp161632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159007_
                                                       __tmp161631))))
                                          (declare (not safe))
                                          (cons _L159008_ __tmp161630))))
                                   (declare (not safe))
                                   (cons __tmp161639 __tmp161629))))
                            (declare (not safe))
                            (cons __tmp161642 __tmp161628))))
                     (declare (not safe))
                     (cons __tmp161645 __tmp161627))))
              (declare (not safe))
              (cons __tmp161648 __tmp161626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161651
                                                     __tmp161625))))
                                        (declare (not safe))
                                        (cons __tmp161654 __tmp161624))))
                                 (declare (not safe))
                                 (cons __tmp161657 __tmp161623)))
                             _hd158880158998_
                             _hd158877158988_
                             _hd158874158978_
                             _hd158871158968_
                             _hd158868158958_
                             _hd158865158948_
                             _hd158862158938_
                             _hd158859158928_
                             _hd158856158918_
                             _hd158853158908_)
                            (_g158837158887_ _g158838158891_))))
                    (_g158837158887_ _g158838158891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158837158887_
                                                     _g158838158891_))))
                                            (_g158837158887_
                                             _g158838158891_))))
                                    (_g158837158887_ _g158838158891_))))
                            (_g158837158887_ _g158838158891_))))
                    (_g158837158887_ _g158838158891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158837158887_
                                                     _g158838158891_))))
                                            (_g158837158887_
                                             _g158838158891_))))
                                    (_g158837158887_ _g158838158891_))))
                            (_g158837158887_ _g158838158891_))))
                    (_g158837158887_ _g158838158891_)))))
        (_g158836159054_ _$stx158833_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159058_)
      (let* ((_g159062159076_
              (lambda (_g159063159072_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159063159072_))))
             (_g159061159117_
              (lambda (_g159063159080_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159063159080_))
                    (let ((_e159067159083_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159063159080_))))
                      (let ((_hd159066159087_
                             (let ()
                               (declare (not safe))
                               (##car _e159067159083_)))
                            (_tl159065159090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159067159083_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159065159090_))
                            (let ((_e159070159093_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159065159090_))))
                              (let ((_hd159069159097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159070159093_)))
                                    (_tl159068159100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159070159093_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159068159100_))
                                    ((lambda (_L159103_)
                                       (let ((__tmp161662
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161658
                                              (let ((__tmp161659
                                                     (let ((__tmp161661
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161660
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161661 __tmp161660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161659 '()))))
                                         (declare (not safe))
                                         (cons __tmp161662 __tmp161658)))
                                     _hd159069159097_)
                                    (_g159062159076_ _g159063159080_))))
                            (_g159062159076_ _g159063159080_))))
                    (_g159062159076_ _g159063159080_)))))
        (_g159061159117_ _$stx159058_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159121_)
      (let* ((_g159125159139_
              (lambda (_g159126159135_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159126159135_))))
             (_g159124159180_
              (lambda (_g159126159143_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159126159143_))
                    (let ((_e159130159146_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159126159143_))))
                      (let ((_hd159129159150_
                             (let ()
                               (declare (not safe))
                               (##car _e159130159146_)))
                            (_tl159128159153_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159130159146_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159128159153_))
                            (let ((_e159133159156_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159128159153_))))
                              (let ((_hd159132159160_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159133159156_)))
                                    (_tl159131159163_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159133159156_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159131159163_))
                                    ((lambda (_L159166_)
                                       (let ((__tmp161667
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161663
                                              (let ((__tmp161664
                                                     (let ((__tmp161666
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161665
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161666 __tmp161665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161664 '()))))
                                         (declare (not safe))
                                         (cons __tmp161667 __tmp161663)))
                                     _hd159132159160_)
                                    (_g159125159139_ _g159126159143_))))
                            (_g159125159139_ _g159126159143_))))
                    (_g159125159139_ _g159126159143_)))))
        (_g159124159180_ _$stx159121_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159184_)
      (let* ((_g159188159210_
              (lambda (_g159189159206_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159189159206_))))
             (_g159187159279_
              (lambda (_g159189159214_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159189159214_))
                    (let ((_e159195159217_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159189159214_))))
                      (let ((_hd159194159221_
                             (let ()
                               (declare (not safe))
                               (##car _e159195159217_)))
                            (_tl159193159224_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159195159217_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159193159224_))
                            (let ((_e159198159227_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159193159224_))))
                              (let ((_hd159197159231_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159198159227_)))
                                    (_tl159196159234_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159198159227_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159196159234_))
                                    (let ((_e159201159237_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159196159234_))))
                                      (let ((_hd159200159241_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159201159237_)))
                                            (_tl159199159244_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159201159237_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159199159244_))
                                            (let ((_e159204159247_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159199159244_))))
                                              (let ((_hd159203159251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159204159247_)))
                                                    (_tl159202159254_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159204159247_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159202159254_))
                                                    ((lambda (_L159257_
                                                              _L159259_
                                                              _L159260_)
                                                       (let ((__tmp161677
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161668
                      (let ((__tmp161674
                             (let ((__tmp161676
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161675
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159260_ '()))))
                               (declare (not safe))
                               (cons __tmp161676 __tmp161675)))
                            (__tmp161669
                             (let ((__tmp161671
                                    (let ((__tmp161673
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161672
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159259_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161673 __tmp161672)))
                                   (__tmp161670
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159257_ '()))))
                               (declare (not safe))
                               (cons __tmp161671 __tmp161670))))
                        (declare (not safe))
                        (cons __tmp161674 __tmp161669))))
                 (declare (not safe))
                 (cons __tmp161677 __tmp161668)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159203159251_
                                                     _hd159200159241_
                                                     _hd159197159231_)
                                                    (_g159188159210_
                                                     _g159189159214_))))
                                            (_g159188159210_
                                             _g159189159214_))))
                                    (_g159188159210_ _g159189159214_))))
                            (_g159188159210_ _g159189159214_))))
                    (_g159188159210_ _g159189159214_)))))
        (_g159187159279_ _$stx159184_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159283_)
      (let* ((_g159287159309_
              (lambda (_g159288159305_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159288159305_))))
             (_g159286159378_
              (lambda (_g159288159313_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159288159313_))
                    (let ((_e159294159316_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159288159313_))))
                      (let ((_hd159293159320_
                             (let ()
                               (declare (not safe))
                               (##car _e159294159316_)))
                            (_tl159292159323_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159294159316_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159292159323_))
                            (let ((_e159297159326_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159292159323_))))
                              (let ((_hd159296159330_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159297159326_)))
                                    (_tl159295159333_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159297159326_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159295159333_))
                                    (let ((_e159300159336_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159295159333_))))
                                      (let ((_hd159299159340_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159300159336_)))
                                            (_tl159298159343_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159300159336_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159298159343_))
                                            (let ((_e159303159346_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159298159343_))))
                                              (let ((_hd159302159350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159303159346_)))
                                                    (_tl159301159353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159303159346_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159301159353_))
                                                    ((lambda (_L159356_
                                                              _L159358_
                                                              _L159359_)
                                                       (let ((__tmp161687
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161678
                      (let ((__tmp161684
                             (let ((__tmp161686
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161685
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159359_ '()))))
                               (declare (not safe))
                               (cons __tmp161686 __tmp161685)))
                            (__tmp161679
                             (let ((__tmp161681
                                    (let ((__tmp161683
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161682
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159358_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161683 __tmp161682)))
                                   (__tmp161680
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159356_ '()))))
                               (declare (not safe))
                               (cons __tmp161681 __tmp161680))))
                        (declare (not safe))
                        (cons __tmp161684 __tmp161679))))
                 (declare (not safe))
                 (cons __tmp161687 __tmp161678)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159302159350_
                                                     _hd159299159340_
                                                     _hd159296159330_)
                                                    (_g159287159309_
                                                     _g159288159313_))))
                                            (_g159287159309_
                                             _g159288159313_))))
                                    (_g159287159309_ _g159288159313_))))
                            (_g159287159309_ _g159288159313_))))
                    (_g159287159309_ _g159288159313_)))))
        (_g159286159378_ _$stx159283_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159382_)
      (let* ((___stx161197161198_ _$stx159382_)
             (_g159390159458_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161197161198_)))))
        (let ((___kont161200161201_
               (lambda (_L159736_ _L159738_)
                 (let ((__tmp161708
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161688
                        (let ((__tmp161704
                               (let ((__tmp161707
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161705
                                      (let ((__tmp161706
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161706 '()))))
                                 (declare (not safe))
                                 (cons __tmp161707 __tmp161705)))
                              (__tmp161689
                               (let ((__tmp161701
                                      (let ((__tmp161703
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161702
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159738_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161703 __tmp161702)))
                                     (__tmp161690
                                      (let ((__tmp161691
                                             (let ((__tmp161692
                                                    (let ((__tmp161693
                                                           (let ((__tmp161700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161694
                          (let ((__tmp161695
                                 (let ((__tmp161699
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp161696
                                        (let ((__tmp161697
                                               (let ((__tmp161698
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L159736_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp161698))))
                                          (declare (not safe))
                                          (cons _L159738_ __tmp161697))))
                                   (declare (not safe))
                                   (cons __tmp161699 __tmp161696))))
                            (declare (not safe))
                            (cons __tmp161695 '()))))
                     (declare (not safe))
                     (cons __tmp161700 __tmp161694))))
              (declare (not safe))
              (cons __tmp161693 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159736_ __tmp161692))))
                                        (declare (not safe))
                                        (cons '#f __tmp161691))))
                                 (declare (not safe))
                                 (cons __tmp161701 __tmp161690))))
                          (declare (not safe))
                          (cons __tmp161704 __tmp161689))))
                   (declare (not safe))
                   (cons __tmp161708 __tmp161688))))
              (___kont161202161203_
               (lambda (_L159667_ _L159669_)
                 (let ((__tmp161709
                        (let ((__tmp161710
                               (let ((__tmp161711
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159667_ __tmp161711))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161710))))
                   (declare (not safe))
                   (cons _L159669_ __tmp161709))))
              (___kont161204161205_
               (lambda (_L159606_ _L159608_)
                 (let ((__tmp161725
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161712
                        (let ((__tmp161721
                               (let ((__tmp161724
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161722
                                      (let ((__tmp161723
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161723 '()))))
                                 (declare (not safe))
                                 (cons __tmp161724 __tmp161722)))
                              (__tmp161713
                               (let ((__tmp161718
                                      (let ((__tmp161720
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161719
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159608_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161720 __tmp161719)))
                                     (__tmp161714
                                      (let ((__tmp161715
                                             (let ((__tmp161717
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161716
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159606_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161717
                                                     __tmp161716))))
                                        (declare (not safe))
                                        (cons __tmp161715 '()))))
                                 (declare (not safe))
                                 (cons __tmp161718 __tmp161714))))
                          (declare (not safe))
                          (cons __tmp161721 __tmp161713))))
                   (declare (not safe))
                   (cons __tmp161725 __tmp161712))))
              (___kont161206161207_
               (lambda (_L159538_ _L159540_)
                 (let ((__tmp161739
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161726
                        (let ((__tmp161735
                               (let ((__tmp161738
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161736
                                      (let ((__tmp161737
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161737 '()))))
                                 (declare (not safe))
                                 (cons __tmp161738 __tmp161736)))
                              (__tmp161727
                               (let ((__tmp161732
                                      (let ((__tmp161734
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161733
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159540_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161734 __tmp161733)))
                                     (__tmp161728
                                      (let ((__tmp161729
                                             (let ((__tmp161731
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161730
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159538_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161731
                                                     __tmp161730))))
                                        (declare (not safe))
                                        (cons __tmp161729 '()))))
                                 (declare (not safe))
                                 (cons __tmp161732 __tmp161728))))
                          (declare (not safe))
                          (cons __tmp161735 __tmp161727))))
                   (declare (not safe))
                   (cons __tmp161739 __tmp161726))))
              (___kont161208161209_
               (lambda (_L159485_ _L159487_)
                 (let ((__tmp161740
                        (let ((__tmp161741
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159485_ __tmp161741))))
                   (declare (not safe))
                   (cons _L159487_ __tmp161740)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161197161198_))
              (let ((_e159396159692_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161197161198_))))
                (let ((_tl159394159699_
                       (let () (declare (not safe)) (##cdr _e159396159692_)))
                      (_hd159395159696_
                       (let () (declare (not safe)) (##car _e159396159692_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159394159699_))
                      (let ((_e159399159702_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159394159699_))))
                        (let ((_tl159397159709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159399159702_)))
                              (_hd159398159706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159399159702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159397159709_))
                              (let ((_e159402159712_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159397159709_))))
                                (let ((_tl159400159719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159402159712_)))
                                      (_hd159401159716_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159402159712_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159401159716_))
                                      (let ((_e159403159722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159401159716_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159403159722_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159400159719_))
                                                (let ((_e159406159726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159400159719_))))
                                                  (let ((_tl159404159733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159406159726_)))
                                                        (_hd159405159730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159406159726_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159404159733_))
                                                        (___kont161200161201_
                                                         _hd159405159730_
                                                         _hd159398159706_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159398159706_))
                                                            (let ((_e159415159653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159398159706_))))
                      (declare (not safe))
                      (_g159390159458_))
                    (let () (declare (not safe)) (_g159390159458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159398159706_))
                                                    (let ((_e159415159653_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159398159706_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159415159653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159400159719_))
                      (___kont161202161203_ _hd159401159716_ _hd159395159696_)
                      (let () (declare (not safe)) (_g159390159458_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159400159719_))
                      (___kont161206161207_ _hd159401159716_ _hd159398159706_)
                      (let () (declare (not safe)) (_g159390159458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159400159719_))
                                                        (___kont161206161207_
                                                         _hd159401159716_
                                                         _hd159398159706_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159390159458_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159398159706_))
                                                (let ((_e159415159653_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159398159706_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159415159653_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159400159719_))
                                                          (___kont161202161203_
                                                           _hd159401159716_
                                                           _hd159395159696_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159400159719_))
                      (let ((_e159433159596_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159400159719_))))
                        (let ((_tl159431159603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159433159596_)))
                              (_hd159432159600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159433159596_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159431159603_))
                              (___kont161204161205_
                               _hd159432159600_
                               _hd159401159716_)
                              (let ()
                                (declare (not safe))
                                (_g159390159458_)))))
                      (let () (declare (not safe)) (_g159390159458_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159400159719_))
                  (___kont161206161207_ _hd159401159716_ _hd159398159706_)
                  (let () (declare (not safe)) (_g159390159458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159400159719_))
                                                    (___kont161206161207_
                                                     _hd159401159716_
                                                     _hd159398159706_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159390159458_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159398159706_))
                                          (let ((_e159415159653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159398159706_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159415159653_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159400159719_))
                                                    (___kont161202161203_
                                                     _hd159401159716_
                                                     _hd159395159696_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159400159719_))
                                                        (let ((_e159433159596_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159400159719_))))
                  (let ((_tl159431159603_
                         (let () (declare (not safe)) (##cdr _e159433159596_)))
                        (_hd159432159600_
                         (let ()
                           (declare (not safe))
                           (##car _e159433159596_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159431159603_))
                        (___kont161204161205_
                         _hd159432159600_
                         _hd159401159716_)
                        (let () (declare (not safe)) (_g159390159458_)))))
                (let () (declare (not safe)) (_g159390159458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159400159719_))
                                                    (___kont161206161207_
                                                     _hd159401159716_
                                                     _hd159398159706_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159390159458_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159400159719_))
                                              (___kont161206161207_
                                               _hd159401159716_
                                               _hd159398159706_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159390159458_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159398159706_))
                                  (let ((_e159415159653_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159398159706_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159397159709_))
                                        (___kont161208161209_
                                         _hd159398159706_
                                         _hd159395159696_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159390159458_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159397159709_))
                                      (___kont161208161209_
                                       _hd159398159706_
                                       _hd159395159696_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159390159458_)))))))
                      (let () (declare (not safe)) (_g159390159458_)))))
              (let () (declare (not safe)) (_g159390159458_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159760_)
      (let* ((___stx161337161338_ _$stx159760_)
             (_g159765159820_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161337161338_)))))
        (let ((___kont161340161341_
               (lambda (_L160005_ _L160007_)
                 (let ((__tmp161757
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161742
                        (let ((__tmp161753
                               (let ((__tmp161756
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161754
                                      (let ((__tmp161755
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161755 '()))))
                                 (declare (not safe))
                                 (cons __tmp161756 __tmp161754)))
                              (__tmp161743
                               (let ((__tmp161744
                                      (let ((__tmp161752
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161745
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160005_
                                                  _L160007_))
                                               (let ((__tmp161746
                                                      (lambda (_g160024160028_
                                                               _g160025160031_
                                                               _g160026160033_)
                                                        (let ((__tmp161747
                                                               (let ((__tmp161751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161748
                              (let ((__tmp161749
                                     (let ((__tmp161750
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160024160028_ '()))))
                                       (declare (not safe))
                                       (cons _g160025160031_ __tmp161750))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161749))))
                         (declare (not safe))
                         (cons __tmp161751 __tmp161748))))
                  (declare (not safe))
                  (cons __tmp161747 _g160026160033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161746
                                                         '()
                                                         _L160005_
                                                         _L160007_)))))
                                        (declare (not safe))
                                        (cons __tmp161752 __tmp161745))))
                                 (declare (not safe))
                                 (cons __tmp161744 '()))))
                          (declare (not safe))
                          (cons __tmp161753 __tmp161743))))
                   (declare (not safe))
                   (cons __tmp161757 __tmp161742))))
              (___kont161344161345_
               (lambda (_L159891_ _L159893_)
                 (let ((__tmp161772
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161758
                        (let ((__tmp161768
                               (let ((__tmp161771
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161769
                                      (let ((__tmp161770
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161770 '()))))
                                 (declare (not safe))
                                 (cons __tmp161771 __tmp161769)))
                              (__tmp161759
                               (let ((__tmp161760
                                      (let ((__tmp161767
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161761
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159891_
                                                  _L159893_))
                                               (let ((__tmp161762
                                                      (lambda (_g159908159912_
                                                               _g159909159915_
                                                               _g159910159917_)
                                                        (let ((__tmp161763
                                                               (let ((__tmp161766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161764
                              (let ((__tmp161765
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159908159912_ '()))))
                                (declare (not safe))
                                (cons _g159909159915_ __tmp161765))))
                         (declare (not safe))
                         (cons __tmp161766 __tmp161764))))
                  (declare (not safe))
                  (cons __tmp161763 _g159910159917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161762
                                                         '()
                                                         _L159891_
                                                         _L159893_)))))
                                        (declare (not safe))
                                        (cons __tmp161767 __tmp161761))))
                                 (declare (not safe))
                                 (cons __tmp161760 '()))))
                          (declare (not safe))
                          (cons __tmp161768 __tmp161759))))
                   (declare (not safe))
                   (cons __tmp161772 __tmp161758)))))
          (let* ((___match161388161389_
                  (lambda (_e159797159827_
                           _hd159796159831_
                           _tl159795159834_
                           ___splice161346161347_
                           _target159798159837_
                           _tl159800159840_)
                    (letrec ((_loop159801159843_
                              (lambda (_hd159799159847_
                                       _dispatch159805159850_
                                       _arity159806159852_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159799159847_))
                                    (let ((_e159802159855_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159799159847_))))
                                      (let ((_lp-tl159804159862_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159802159855_)))
                                            (_lp-hd159803159859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159802159855_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159803159859_))
                                            (let ((_e159811159865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159803159859_))))
                                              (let ((_tl159809159872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159811159865_)))
                                                    (_hd159810159869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159811159865_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159809159872_))
                                                    (let ((_e159814159875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159809159872_))))
                                                      (let ((_tl159812159882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159814159875_)))
                    (_hd159813159879_
                     (let () (declare (not safe)) (##car _e159814159875_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159812159882_))
                    (_loop159801159843_
                     _lp-tl159804159862_
                     (let ()
                       (declare (not safe))
                       (cons _hd159813159879_ _dispatch159805159850_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159810159869_ _arity159806159852_)))
                    (let () (declare (not safe)) (_g159765159820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159765159820_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159765159820_)))))
                                    (let ((_arity159808159888_
                                           (reverse _arity159806159852_))
                                          (_dispatch159807159885_
                                           (reverse _dispatch159805159850_)))
                                      (___kont161344161345_
                                       _dispatch159807159885_
                                       _arity159808159888_))))))
                      (_loop159801159843_ _target159798159837_ '() '()))))
                 (___match161380161381_
                  (lambda (_e159797159827_ _hd159796159831_ _tl159795159834_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159795159834_))
                        (let ((___splice161346161347_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159795159834_
                                  '0))))
                          (let ((_tl159800159840_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161346161347_ '1)))
                                (_target159798159837_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161346161347_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159800159840_))
                                (___match161388161389_
                                 _e159797159827_
                                 _hd159796159831_
                                 _tl159795159834_
                                 ___splice161346161347_
                                 _target159798159837_
                                 _tl159800159840_)
                                (let ()
                                  (declare (not safe))
                                  (_g159765159820_)))))
                        (let () (declare (not safe)) (_g159765159820_)))))
                 (___match161374161375_
                  (lambda (_e159771159927_
                           _hd159770159931_
                           _tl159769159934_
                           _e159774159937_
                           _hd159773159941_
                           _tl159772159944_
                           _e159775159947_
                           ___splice161342161343_
                           _target159776159951_
                           _tl159778159954_)
                    (letrec ((_loop159779159957_
                              (lambda (_hd159777159961_
                                       _dispatch159783159964_
                                       _arity159784159966_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159777159961_))
                                    (let ((_e159780159969_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159777159961_))))
                                      (let ((_lp-tl159782159976_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159780159969_)))
                                            (_lp-hd159781159973_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159780159969_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159781159973_))
                                            (let ((_e159789159979_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159781159973_))))
                                              (let ((_tl159787159986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159789159979_)))
                                                    (_hd159788159983_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159789159979_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159787159986_))
                                                    (let ((_e159792159989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159787159986_))))
                                                      (let ((_tl159790159996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159792159989_)))
                    (_hd159791159993_
                     (let () (declare (not safe)) (##car _e159792159989_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159790159996_))
                    (_loop159779159957_
                     _lp-tl159782159976_
                     (let ()
                       (declare (not safe))
                       (cons _hd159791159993_ _dispatch159783159964_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159788159983_ _arity159784159966_)))
                    (___match161380161381_
                     _e159771159927_
                     _hd159770159931_
                     _tl159769159934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161380161381_
                                                     _e159771159927_
                                                     _hd159770159931_
                                                     _tl159769159934_))))
                                            (___match161380161381_
                                             _e159771159927_
                                             _hd159770159931_
                                             _tl159769159934_))))
                                    (let ((_arity159786160002_
                                           (reverse _arity159784159966_))
                                          (_dispatch159785159999_
                                           (reverse _dispatch159783159964_)))
                                      (___kont161340161341_
                                       _dispatch159785159999_
                                       _arity159786160002_))))))
                      (_loop159779159957_ _target159776159951_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161337161338_))
                (let ((_e159771159927_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161337161338_))))
                  (let ((_tl159769159934_
                         (let () (declare (not safe)) (##cdr _e159771159927_)))
                        (_hd159770159931_
                         (let ()
                           (declare (not safe))
                           (##car _e159771159927_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159769159934_))
                        (let ((_e159774159937_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159769159934_))))
                          (let ((_tl159772159944_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159774159937_)))
                                (_hd159773159941_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159774159937_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159773159941_))
                                (let ((_e159775159947_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159773159941_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159775159947_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159772159944_))
                                          (let ((___splice161342161343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159772159944_
                                                    '0))))
                                            (let ((_tl159778159954_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161342161343_
                                                      '1)))
                                                  (_target159776159951_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161342161343_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159778159954_))
                                                  (___match161374161375_
                                                   _e159771159927_
                                                   _hd159770159931_
                                                   _tl159769159934_
                                                   _e159774159937_
                                                   _hd159773159941_
                                                   _tl159772159944_
                                                   _e159775159947_
                                                   ___splice161342161343_
                                                   _target159776159951_
                                                   _tl159778159954_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159769159934_))
                                                      (let ((___splice161346161347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159769159934_ '0))))
                (let ((_tl159800159840_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161346161347_ '1)))
                      (_target159798159837_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161346161347_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159800159840_))
                      (___match161388161389_
                       _e159771159927_
                       _hd159770159931_
                       _tl159769159934_
                       ___splice161346161347_
                       _target159798159837_
                       _tl159800159840_)
                      (let () (declare (not safe)) (_g159765159820_)))))
              (let () (declare (not safe)) (_g159765159820_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159769159934_))
                                              (let ((___splice161346161347_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159769159934_
                                                        '0))))
                                                (let ((_tl159800159840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161346161347_
                                                          '1)))
                                                      (_target159798159837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161346161347_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159800159840_))
                                                      (___match161388161389_
                                                       _e159771159927_
                                                       _hd159770159931_
                                                       _tl159769159934_
                                                       ___splice161346161347_
                                                       _target159798159837_
                                                       _tl159800159840_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159765159820_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159765159820_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159769159934_))
                                          (let ((___splice161346161347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159769159934_
                                                    '0))))
                                            (let ((_tl159800159840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161346161347_
                                                      '1)))
                                                  (_target159798159837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161346161347_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159800159840_))
                                                  (___match161388161389_
                                                   _e159771159927_
                                                   _hd159770159931_
                                                   _tl159769159934_
                                                   ___splice161346161347_
                                                   _target159798159837_
                                                   _tl159800159840_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159765159820_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159765159820_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159769159934_))
                                    (let ((___splice161346161347_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159769159934_
                                              '0))))
                                      (let ((_tl159800159840_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161346161347_
                                                '1)))
                                            (_target159798159837_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161346161347_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159800159840_))
                                            (___match161388161389_
                                             _e159771159927_
                                             _hd159770159931_
                                             _tl159769159934_
                                             ___splice161346161347_
                                             _target159798159837_
                                             _tl159800159840_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159765159820_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159765159820_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159769159934_))
                            (let ((___splice161346161347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159769159934_
                                      '0))))
                              (let ((_tl159800159840_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161346161347_
                                        '1)))
                                    (_target159798159837_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161346161347_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159800159840_))
                                    (___match161388161389_
                                     _e159771159927_
                                     _hd159770159931_
                                     _tl159769159934_
                                     ___splice161346161347_
                                     _target159798159837_
                                     _tl159800159840_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159765159820_)))))
                            (let () (declare (not safe)) (_g159765159820_))))))
                (let () (declare (not safe)) (_g159765159820_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160042_)
      (let* ((_g160046160064_
              (lambda (_g160047160060_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160047160060_))))
             (_g160045160119_
              (lambda (_g160047160068_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160047160068_))
                    (let ((_e160052160071_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160047160068_))))
                      (let ((_hd160051160075_
                             (let ()
                               (declare (not safe))
                               (##car _e160052160071_)))
                            (_tl160050160078_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160052160071_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160050160078_))
                            (let ((_e160055160081_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160050160078_))))
                              (let ((_hd160054160085_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160055160081_)))
                                    (_tl160053160088_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160055160081_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160053160088_))
                                    (let ((_e160058160091_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160053160088_))))
                                      (let ((_hd160057160095_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160058160091_)))
                                            (_tl160056160098_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160058160091_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160056160098_))
                                            ((lambda (_L160101_ _L160103_)
                                               (let ((__tmp161786
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161773
                                                      (let ((__tmp161782
                                                             (let ((__tmp161785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161783
                            (let ((__tmp161784
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161784 '()))))
                       (declare (not safe))
                       (cons __tmp161785 __tmp161783)))
                    (__tmp161774
                     (let ((__tmp161779
                            (let ((__tmp161781
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161780
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160103_ '()))))
                              (declare (not safe))
                              (cons __tmp161781 __tmp161780)))
                           (__tmp161775
                            (let ((__tmp161776
                                   (let ((__tmp161778
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161777
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160101_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161778 __tmp161777))))
                              (declare (not safe))
                              (cons __tmp161776 '()))))
                       (declare (not safe))
                       (cons __tmp161779 __tmp161775))))
                (declare (not safe))
                (cons __tmp161782 __tmp161774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161786
                                                       __tmp161773)))
                                             _hd160057160095_
                                             _hd160054160085_)
                                            (_g160046160064_
                                             _g160047160068_))))
                                    (_g160046160064_ _g160047160068_))))
                            (_g160046160064_ _g160047160068_))))
                    (_g160046160064_ _g160047160068_)))))
        (_g160045160119_ _$stx160042_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160123_)
      (let* ((_g160127160145_
              (lambda (_g160128160141_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160128160141_))))
             (_g160126160200_
              (lambda (_g160128160149_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160128160149_))
                    (let ((_e160133160152_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160128160149_))))
                      (let ((_hd160132160156_
                             (let ()
                               (declare (not safe))
                               (##car _e160133160152_)))
                            (_tl160131160159_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160133160152_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160131160159_))
                            (let ((_e160136160162_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160131160159_))))
                              (let ((_hd160135160166_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160136160162_)))
                                    (_tl160134160169_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160136160162_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160134160169_))
                                    (let ((_e160139160172_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160134160169_))))
                                      (let ((_hd160138160176_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160139160172_)))
                                            (_tl160137160179_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160139160172_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160137160179_))
                                            ((lambda (_L160182_ _L160184_)
                                               (let ((__tmp161800
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161787
                                                      (let ((__tmp161796
                                                             (let ((__tmp161799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161797
                            (let ((__tmp161798
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161798 '()))))
                       (declare (not safe))
                       (cons __tmp161799 __tmp161797)))
                    (__tmp161788
                     (let ((__tmp161793
                            (let ((__tmp161795
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161794
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160184_ '()))))
                              (declare (not safe))
                              (cons __tmp161795 __tmp161794)))
                           (__tmp161789
                            (let ((__tmp161790
                                   (let ((__tmp161792
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161791
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160182_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161792 __tmp161791))))
                              (declare (not safe))
                              (cons __tmp161790 '()))))
                       (declare (not safe))
                       (cons __tmp161793 __tmp161789))))
                (declare (not safe))
                (cons __tmp161796 __tmp161788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161800
                                                       __tmp161787)))
                                             _hd160138160176_
                                             _hd160135160166_)
                                            (_g160127160145_
                                             _g160128160149_))))
                                    (_g160127160145_ _g160128160149_))))
                            (_g160127160145_ _g160128160149_))))
                    (_g160127160145_ _g160128160149_)))))
        (_g160126160200_ _$stx160123_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160204_)
      (let* ((___stx161391161392_ _$stx160204_)
             (_g160211160282_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161391161392_)))))
        (let ((___kont161394161395_
               (lambda (_L160573_ _L160575_)
                 (let ((__tmp161806
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161801
                        (let ((__tmp161802
                               (let ((__tmp161803
                                      (let ((__tmp161805
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161804
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160573_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161805 __tmp161804))))
                                 (declare (not safe))
                                 (cons __tmp161803 '()))))
                          (declare (not safe))
                          (cons _L160575_ __tmp161802))))
                   (declare (not safe))
                   (cons __tmp161806 __tmp161801))))
              (___kont161396161397_
               (lambda (_L160492_ _L160494_)
                 (let ((__tmp161815
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161807
                        (let ((__tmp161808
                               (let ((__tmp161809
                                      (let ((__tmp161814
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161810
                                             (let ((__tmp161811
                                                    (lambda (_g160513160516_
                                                             _g160514160519_)
                                                      (let ((__tmp161812
                                                             (let ((__tmp161813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160513160516_ __tmp161813))))
                (declare (not safe))
                (cons __tmp161812 _g160514160519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161811
                                                       '()
                                                       _L160492_))))
                                        (declare (not safe))
                                        (cons __tmp161814 __tmp161810))))
                                 (declare (not safe))
                                 (cons __tmp161809 '()))))
                          (declare (not safe))
                          (cons _L160494_ __tmp161808))))
                   (declare (not safe))
                   (cons __tmp161815 __tmp161807))))
              (___kont161400161401_
               (lambda (_L160404_ _L160406_)
                 (let ((__tmp161822
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161816
                        (let ((__tmp161817
                               (let ((__tmp161818
                                      (let ((__tmp161821
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161819
                                             (let ((__tmp161820
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160404_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161820))))
                                        (declare (not safe))
                                        (cons __tmp161821 __tmp161819))))
                                 (declare (not safe))
                                 (cons __tmp161818 '()))))
                          (declare (not safe))
                          (cons _L160406_ __tmp161817))))
                   (declare (not safe))
                   (cons __tmp161822 __tmp161816))))
              (___kont161402161403_
               (lambda (_L160339_ _L160341_)
                 (let ((__tmp161832
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161823
                        (let ((__tmp161824
                               (let ((__tmp161825
                                      (let ((__tmp161831
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161826
                                             (let ((__tmp161827
                                                    (let ((__tmp161828
                                                           (lambda (_g160358160361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160359160364_)
                     (let ((__tmp161829
                            (let ((__tmp161830
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160358160361_ __tmp161830))))
                       (declare (not safe))
                       (cons __tmp161829 _g160359160364_)))))
              (declare (not safe))
              (foldr1 __tmp161828 '() _L160339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161827))))
                                        (declare (not safe))
                                        (cons __tmp161831 __tmp161826))))
                                 (declare (not safe))
                                 (cons __tmp161825 '()))))
                          (declare (not safe))
                          (cons _L160341_ __tmp161824))))
                   (declare (not safe))
                   (cons __tmp161832 __tmp161823)))))
          (let* ((___match161510161511_
                  (lambda (_e160264160289_
                           _hd160263160293_
                           _tl160262160296_
                           _e160267160299_
                           _hd160266160303_
                           _tl160265160306_
                           ___splice161404161405_
                           _target160268160309_
                           _tl160270160312_)
                    (letrec ((_loop160271160315_
                              (lambda (_hd160269160319_ _arity160275160322_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160269160319_))
                                    (let ((_e160272160325_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160269160319_))))
                                      (let ((_lp-tl160274160332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160272160325_)))
                                            (_lp-hd160273160329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160272160325_))))
                                        (_loop160271160315_
                                         _lp-tl160274160332_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160273160329_
                                                 _arity160275160322_)))))
                                    (let ((_arity160276160335_
                                           (reverse _arity160275160322_)))
                                      (___kont161402161403_
                                       _arity160276160335_
                                       _hd160266160303_))))))
                      (_loop160271160315_ _target160268160309_ '()))))
                 (___match161470161471_
                  (lambda (_e160232160428_
                           _hd160231160432_
                           _tl160230160435_
                           _e160235160438_
                           _hd160234160442_
                           _tl160233160445_
                           _e160238160448_
                           _hd160237160452_
                           _tl160236160455_
                           _e160239160458_
                           ___splice161398161399_
                           _target160240160462_
                           _tl160242160465_)
                    (letrec ((_loop160243160468_
                              (lambda (_hd160241160472_ _arity160247160475_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160241160472_))
                                    (let ((_e160244160478_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160241160472_))))
                                      (let ((_lp-tl160246160485_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160244160478_)))
                                            (_lp-hd160245160482_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160244160478_))))
                                        (_loop160243160468_
                                         _lp-tl160246160485_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160245160482_
                                                 _arity160247160475_)))))
                                    (let ((_arity160248160488_
                                           (reverse _arity160247160475_)))
                                      (___kont161396161397_
                                       _arity160248160488_
                                       _hd160234160442_))))))
                      (_loop160243160468_ _target160240160462_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161391161392_))
                (let ((_e160217160529_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161391161392_))))
                  (let ((_tl160215160536_
                         (let () (declare (not safe)) (##cdr _e160217160529_)))
                        (_hd160216160533_
                         (let ()
                           (declare (not safe))
                           (##car _e160217160529_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160215160536_))
                        (let ((_e160220160539_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160215160536_))))
                          (let ((_tl160218160546_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160220160539_)))
                                (_hd160219160543_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160220160539_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160218160546_))
                                (let ((_e160223160549_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160218160546_))))
                                  (let ((_tl160221160556_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160223160549_)))
                                        (_hd160222160553_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160223160549_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160222160553_))
                                        (let ((_e160224160559_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160222160553_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160224160559_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160221160556_))
                                                  (let ((_e160227160563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160221160556_))))
                                                    (let ((_tl160225160570_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160227160563_)))
                                                          (_hd160226160567_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160227160563_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160225160570_))
                                                          (___kont161394161395_
                                                           _hd160226160567_
                                                           _hd160219160543_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160221160556_))
                      (let ((___splice161398161399_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160221160556_ '0))))
                        (let ((_tl160242160465_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161398161399_ '1)))
                              (_target160240160462_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161398161399_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160242160465_))
                              (___match161470161471_
                               _e160217160529_
                               _hd160216160533_
                               _tl160215160536_
                               _e160220160539_
                               _hd160219160543_
                               _tl160218160546_
                               _e160223160549_
                               _hd160222160553_
                               _tl160221160556_
                               _e160224160559_
                               ___splice161398161399_
                               _target160240160462_
                               _tl160242160465_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160218160546_))
                                  (let ((___splice161404161405_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160218160546_
                                            '0))))
                                    (let ((_tl160270160312_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161404161405_
                                              '1)))
                                          (_target160268160309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161404161405_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160270160312_))
                                          (___match161510161511_
                                           _e160217160529_
                                           _hd160216160533_
                                           _tl160215160536_
                                           _e160220160539_
                                           _hd160219160543_
                                           _tl160218160546_
                                           ___splice161404161405_
                                           _target160268160309_
                                           _tl160270160312_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160211160282_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160211160282_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160218160546_))
                          (let ((___splice161404161405_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160218160546_
                                    '0))))
                            (let ((_tl160270160312_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161404161405_ '1)))
                                  (_target160268160309_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161404161405_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160270160312_))
                                  (___match161510161511_
                                   _e160217160529_
                                   _hd160216160533_
                                   _tl160215160536_
                                   _e160220160539_
                                   _hd160219160543_
                                   _tl160218160546_
                                   ___splice161404161405_
                                   _target160268160309_
                                   _tl160270160312_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160211160282_)))))
                          (let () (declare (not safe)) (_g160211160282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160221160556_))
                                                      (let ((___splice161398161399_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160221160556_ '0))))
                (let ((_tl160242160465_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161398161399_ '1)))
                      (_target160240160462_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161398161399_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160242160465_))
                      (___match161470161471_
                       _e160217160529_
                       _hd160216160533_
                       _tl160215160536_
                       _e160220160539_
                       _hd160219160543_
                       _tl160218160546_
                       _e160223160549_
                       _hd160222160553_
                       _tl160221160556_
                       _e160224160559_
                       ___splice161398161399_
                       _target160240160462_
                       _tl160242160465_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160221160556_))
                          (___kont161400161401_
                           _hd160222160553_
                           _hd160219160543_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160218160546_))
                              (let ((___splice161404161405_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160218160546_
                                        '0))))
                                (let ((_tl160270160312_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161404161405_
                                          '1)))
                                      (_target160268160309_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161404161405_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160270160312_))
                                      (___match161510161511_
                                       _e160217160529_
                                       _hd160216160533_
                                       _tl160215160536_
                                       _e160220160539_
                                       _hd160219160543_
                                       _tl160218160546_
                                       ___splice161404161405_
                                       _target160268160309_
                                       _tl160270160312_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160211160282_)))))
                              (let ()
                                (declare (not safe))
                                (_g160211160282_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160221160556_))
                  (___kont161400161401_ _hd160222160553_ _hd160219160543_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160218160546_))
                      (let ((___splice161404161405_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160218160546_ '0))))
                        (let ((_tl160270160312_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161404161405_ '1)))
                              (_target160268160309_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161404161405_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160270160312_))
                              (___match161510161511_
                               _e160217160529_
                               _hd160216160533_
                               _tl160215160536_
                               _e160220160539_
                               _hd160219160543_
                               _tl160218160546_
                               ___splice161404161405_
                               _target160268160309_
                               _tl160270160312_)
                              (let ()
                                (declare (not safe))
                                (_g160211160282_)))))
                      (let () (declare (not safe)) (_g160211160282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160221160556_))
                                                  (___kont161400161401_
                                                   _hd160222160553_
                                                   _hd160219160543_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160218160546_))
                                                      (let ((___splice161404161405_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160218160546_ '0))))
                (let ((_tl160270160312_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161404161405_ '1)))
                      (_target160268160309_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161404161405_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160270160312_))
                      (___match161510161511_
                       _e160217160529_
                       _hd160216160533_
                       _tl160215160536_
                       _e160220160539_
                       _hd160219160543_
                       _tl160218160546_
                       ___splice161404161405_
                       _target160268160309_
                       _tl160270160312_)
                      (let () (declare (not safe)) (_g160211160282_)))))
              (let () (declare (not safe)) (_g160211160282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160221160556_))
                                            (___kont161400161401_
                                             _hd160222160553_
                                             _hd160219160543_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160218160546_))
                                                (let ((___splice161404161405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160218160546_
                                                          '0))))
                                                  (let ((_tl160270160312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161404161405_
                                                            '1)))
                                                        (_target160268160309_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161404161405_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160270160312_))
                                                        (___match161510161511_
                                                         _e160217160529_
                                                         _hd160216160533_
                                                         _tl160215160536_
                                                         _e160220160539_
                                                         _hd160219160543_
                                                         _tl160218160546_
                                                         ___splice161404161405_
                                                         _target160268160309_
                                                         _tl160270160312_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160211160282_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160211160282_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160218160546_))
                                    (let ((___splice161404161405_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160218160546_
                                              '0))))
                                      (let ((_tl160270160312_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161404161405_
                                                '1)))
                                            (_target160268160309_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161404161405_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160270160312_))
                                            (___match161510161511_
                                             _e160217160529_
                                             _hd160216160533_
                                             _tl160215160536_
                                             _e160220160539_
                                             _hd160219160543_
                                             _tl160218160546_
                                             ___splice161404161405_
                                             _target160268160309_
                                             _tl160270160312_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160211160282_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160211160282_))))))
                        (let () (declare (not safe)) (_g160211160282_)))))
                (let () (declare (not safe)) (_g160211160282_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160599_)
      (let* ((___stx161513161514_ _$stx160599_)
             (_g160604160639_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161513161514_)))))
        (let ((___kont161516161517_
               (lambda (_L160761_ _L160763_)
                 (let ((__tmp161838
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161833
                        (let ((__tmp161834
                               (let ((__tmp161835
                                      (let ((__tmp161837
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161836
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160761_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161837 __tmp161836))))
                                 (declare (not safe))
                                 (cons __tmp161835 '()))))
                          (declare (not safe))
                          (cons _L160763_ __tmp161834))))
                   (declare (not safe))
                   (cons __tmp161838 __tmp161833))))
              (___kont161518161519_
               (lambda (_L160696_ _L160698_)
                 (let ((__tmp161847
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161839
                        (let ((__tmp161840
                               (let ((__tmp161841
                                      (let ((__tmp161846
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161842
                                             (let ((__tmp161843
                                                    (lambda (_g160715160718_
                                                             _g160716160721_)
                                                      (let ((__tmp161844
                                                             (let ((__tmp161845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160715160718_ __tmp161845))))
                (declare (not safe))
                (cons __tmp161844 _g160716160721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161843
                                                       '()
                                                       _L160696_))))
                                        (declare (not safe))
                                        (cons __tmp161846 __tmp161842))))
                                 (declare (not safe))
                                 (cons __tmp161841 '()))))
                          (declare (not safe))
                          (cons _L160698_ __tmp161840))))
                   (declare (not safe))
                   (cons __tmp161847 __tmp161839)))))
          (let ((___match161562161563_
                 (lambda (_e160621160646_
                          _hd160620160650_
                          _tl160619160653_
                          _e160624160656_
                          _hd160623160660_
                          _tl160622160663_
                          ___splice161520161521_
                          _target160625160666_
                          _tl160627160669_)
                   (letrec ((_loop160628160672_
                             (lambda (_hd160626160676_ _arity160632160679_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160626160676_))
                                   (let ((_e160629160682_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160626160676_))))
                                     (let ((_lp-tl160631160689_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160629160682_)))
                                           (_lp-hd160630160686_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160629160682_))))
                                       (_loop160628160672_
                                        _lp-tl160631160689_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160630160686_
                                                _arity160632160679_)))))
                                   (let ((_arity160633160692_
                                          (reverse _arity160632160679_)))
                                     (___kont161518161519_
                                      _arity160633160692_
                                      _hd160623160660_))))))
                     (_loop160628160672_ _target160625160666_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161513161514_))
                (let ((_e160610160731_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161513161514_))))
                  (let ((_tl160608160738_
                         (let () (declare (not safe)) (##cdr _e160610160731_)))
                        (_hd160609160735_
                         (let ()
                           (declare (not safe))
                           (##car _e160610160731_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160608160738_))
                        (let ((_e160613160741_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160608160738_))))
                          (let ((_tl160611160748_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160613160741_)))
                                (_hd160612160745_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160613160741_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160611160748_))
                                (let ((_e160616160751_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160611160748_))))
                                  (let ((_tl160614160758_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160616160751_)))
                                        (_hd160615160755_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160616160751_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160614160758_))
                                        (___kont161516161517_
                                         _hd160615160755_
                                         _hd160612160745_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160611160748_))
                                            (let ((___splice161520161521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160611160748_
                                                      '0))))
                                              (let ((_tl160627160669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161520161521_
                                                        '1)))
                                                    (_target160625160666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161520161521_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160627160669_))
                                                    (___match161562161563_
                                                     _e160610160731_
                                                     _hd160609160735_
                                                     _tl160608160738_
                                                     _e160613160741_
                                                     _hd160612160745_
                                                     _tl160611160748_
                                                     ___splice161520161521_
                                                     _target160625160666_
                                                     _tl160627160669_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160604160639_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160604160639_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160611160748_))
                                    (let ((___splice161520161521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160611160748_
                                              '0))))
                                      (let ((_tl160627160669_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161520161521_
                                                '1)))
                                            (_target160625160666_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161520161521_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160627160669_))
                                            (___match161562161563_
                                             _e160610160731_
                                             _hd160609160735_
                                             _tl160608160738_
                                             _e160613160741_
                                             _hd160612160745_
                                             _tl160611160748_
                                             ___splice161520161521_
                                             _target160625160666_
                                             _tl160627160669_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160604160639_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160604160639_))))))
                        (let () (declare (not safe)) (_g160604160639_)))))
                (let () (declare (not safe)) (_g160604160639_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160783_)
      (let* ((_g160787160822_
              (lambda (_g160788160818_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160788160818_))))
             (_g160786160950_
              (lambda (_g160788160826_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160788160826_))
                    (let ((_e160793160829_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160788160826_))))
                      (let ((_hd160792160833_
                             (let ()
                               (declare (not safe))
                               (##car _e160793160829_)))
                            (_tl160791160836_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160793160829_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160791160836_))
                            (let ((_g161848_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160791160836_
                                      '0))))
                              (begin
                                (let ((_g161849_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161848_)
                                             (##vector-length _g161848_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161849_ 2)))
                                      (error "Context expects 2 values"
                                             _g161849_)))
                                (let ((_target160794160839_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161848_ 0)))
                                      (_tl160796160842_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161848_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160796160842_))
                                      (letrec ((_loop160797160845_
                                                (lambda (_hd160795160849_
                                                         _arity160801160852_
                                                         _prim160802160854_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160795160849_))
                                                      (let ((_e160798160857_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160795160849_))))
                (let ((_lp-hd160799160861_
                       (let () (declare (not safe)) (##car _e160798160857_)))
                      (_lp-tl160800160864_
                       (let () (declare (not safe)) (##cdr _e160798160857_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160799160861_))
                      (let ((_e160807160867_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160799160861_))))
                        (let ((_hd160806160871_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160807160867_)))
                              (_tl160805160874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160807160867_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160805160874_))
                              (let ((_g161858_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160805160874_
                                        '0))))
                                (begin
                                  (let ((_g161859_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161858_)
                                               (##vector-length _g161858_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161859_ 2)))
                                        (error "Context expects 2 values"
                                               _g161859_)))
                                  (let ((_target160808160877_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161858_ 0)))
                                        (_tl160810160880_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161858_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160810160880_))
                                        (letrec ((_loop160811160883_
                                                  (lambda (_hd160809160887_
                                                           _arity160815160890_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160809160887_))
                                                        (let ((_e160812160893_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160809160887_))))
                  (let ((_lp-hd160813160897_
                         (let () (declare (not safe)) (##car _e160812160893_)))
                        (_lp-tl160814160900_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160812160893_))))
                    (_loop160811160883_
                     _lp-tl160814160900_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160813160897_ _arity160815160890_)))))
                (let ((_arity160816160903_ (reverse _arity160815160890_)))
                  (_loop160797160845_
                   _lp-tl160800160864_
                   (let ()
                     (declare (not safe))
                     (cons _arity160816160903_ _arity160801160852_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160806160871_ _prim160802160854_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160811160883_
                                           _target160808160877_
                                           '()))
                                        (_g160787160822_ _g160788160826_)))))
                              (_g160787160822_ _g160788160826_))))
                      (_g160787160822_ _g160788160826_))))
              (let ((_arity160803160907_ (reverse _arity160801160852_))
                    (_prim160804160910_ (reverse _prim160802160854_)))
                ((lambda (_L160913_ _L160915_)
                   (let ((__tmp161857
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161850
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160913_
                               _L160915_))
                            (let ((__tmp161851
                                   (lambda (_g160930160936_
                                            _g160931160939_
                                            _g160932160941_)
                                     (let ((__tmp161852
                                            (let ((__tmp161856
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161853
                                                   (let ((__tmp161854
                                                          (let ((__tmp161855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160933160944_ _g160934160947_)
                           (let ()
                             (declare (not safe))
                             (cons _g160933160944_ _g160934160947_)))))
                    (declare (not safe))
                    (foldr1 __tmp161855 '() _g160930160936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160931160939_
                                                           __tmp161854))))
                                              (declare (not safe))
                                              (cons __tmp161856 __tmp161853))))
                                       (declare (not safe))
                                       (cons __tmp161852 _g160932160941_)))))
                              (declare (not safe))
                              (foldr2 __tmp161851 '() _L160913_ _L160915_)))))
                     (declare (not safe))
                     (cons __tmp161857 __tmp161850)))
                 _arity160803160907_
                 _prim160804160910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160797160845_
                                         _target160794160839_
                                         '()
                                         '()))
                                      (_g160787160822_ _g160788160826_)))))
                            (_g160787160822_ _g160788160826_))))
                    (_g160787160822_ _g160788160826_)))))
        (_g160786160950_ _$stx160783_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160956_)
      (let* ((_g160960160995_
              (lambda (_g160961160991_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160961160991_))))
             (_g160959161123_
              (lambda (_g160961160999_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160961160999_))
                    (let ((_e160966161002_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160961160999_))))
                      (let ((_hd160965161006_
                             (let ()
                               (declare (not safe))
                               (##car _e160966161002_)))
                            (_tl160964161009_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160966161002_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160964161009_))
                            (let ((_g161860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160964161009_
                                      '0))))
                              (begin
                                (let ((_g161861_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161860_)
                                             (##vector-length _g161860_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161861_ 2)))
                                      (error "Context expects 2 values"
                                             _g161861_)))
                                (let ((_target160967161012_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161860_ 0)))
                                      (_tl160969161015_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161860_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160969161015_))
                                      (letrec ((_loop160970161018_
                                                (lambda (_hd160968161022_
                                                         _arity160974161025_
                                                         _prim160975161027_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160968161022_))
                                                      (let ((_e160971161030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160968161022_))))
                (let ((_lp-hd160972161034_
                       (let () (declare (not safe)) (##car _e160971161030_)))
                      (_lp-tl160973161037_
                       (let () (declare (not safe)) (##cdr _e160971161030_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160972161034_))
                      (let ((_e160980161040_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160972161034_))))
                        (let ((_hd160979161044_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160980161040_)))
                              (_tl160978161047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160980161040_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160978161047_))
                              (let ((_g161870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160978161047_
                                        '0))))
                                (begin
                                  (let ((_g161871_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161870_)
                                               (##vector-length _g161870_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161871_ 2)))
                                        (error "Context expects 2 values"
                                               _g161871_)))
                                  (let ((_target160981161050_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161870_ 0)))
                                        (_tl160983161053_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161870_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160983161053_))
                                        (letrec ((_loop160984161056_
                                                  (lambda (_hd160982161060_
                                                           _arity160988161063_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160982161060_))
                                                        (let ((_e160985161066_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160982161060_))))
                  (let ((_lp-hd160986161070_
                         (let () (declare (not safe)) (##car _e160985161066_)))
                        (_lp-tl160987161073_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160985161066_))))
                    (_loop160984161056_
                     _lp-tl160987161073_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160986161070_ _arity160988161063_)))))
                (let ((_arity160989161076_ (reverse _arity160988161063_)))
                  (_loop160970161018_
                   _lp-tl160973161037_
                   (let ()
                     (declare (not safe))
                     (cons _arity160989161076_ _arity160974161025_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160979161044_ _prim160975161027_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160984161056_
                                           _target160981161050_
                                           '()))
                                        (_g160960160995_ _g160961160999_)))))
                              (_g160960160995_ _g160961160999_))))
                      (_g160960160995_ _g160961160999_))))
              (let ((_arity160976161080_ (reverse _arity160974161025_))
                    (_prim160977161083_ (reverse _prim160975161027_)))
                ((lambda (_L161086_ _L161088_)
                   (let ((__tmp161869
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161862
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161086_
                               _L161088_))
                            (let ((__tmp161863
                                   (lambda (_g161103161109_
                                            _g161104161112_
                                            _g161105161114_)
                                     (let ((__tmp161864
                                            (let ((__tmp161868
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161865
                                                   (let ((__tmp161866
                                                          (let ((__tmp161867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161106161117_ _g161107161120_)
                           (let ()
                             (declare (not safe))
                             (cons _g161106161117_ _g161107161120_)))))
                    (declare (not safe))
                    (foldr1 __tmp161867 '() _g161103161109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161104161112_
                                                           __tmp161866))))
                                              (declare (not safe))
                                              (cons __tmp161868 __tmp161865))))
                                       (declare (not safe))
                                       (cons __tmp161864 _g161105161114_)))))
                              (declare (not safe))
                              (foldr2 __tmp161863 '() _L161086_ _L161088_)))))
                     (declare (not safe))
                     (cons __tmp161869 __tmp161862)))
                 _arity160976161080_
                 _prim160977161083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160970161018_
                                         _target160967161012_
                                         '()
                                         '()))
                                      (_g160960160995_ _g160961160999_)))))
                            (_g160960160995_ _g160961160999_))))
                    (_g160960160995_ _g160961160999_)))))
        (_g160959161123_ _$stx160956_)))))
