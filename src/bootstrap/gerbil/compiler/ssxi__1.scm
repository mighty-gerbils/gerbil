(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158034_)
      (let* ((_g158038158056_
              (lambda (_g158039158052_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158039158052_))))
             (_g158037158111_
              (lambda (_g158039158060_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158039158060_))
                    (let ((_e158044158063_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158039158060_))))
                      (let ((_hd158043158067_
                             (let ()
                               (declare (not safe))
                               (##car _e158044158063_)))
                            (_tl158042158070_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158044158063_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158042158070_))
                            (let ((_e158047158073_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158042158070_))))
                              (let ((_hd158046158077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158047158073_)))
                                    (_tl158045158080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158047158073_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158045158080_))
                                    (let ((_e158050158083_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158045158080_))))
                                      (let ((_hd158049158087_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158050158083_)))
                                            (_tl158048158090_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158050158083_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158048158090_))
                                            ((lambda (_L158093_ _L158095_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158095_))
                                                   (let ((__tmp161575
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161570
                                                          (let ((__tmp161572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161574
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161573
                                (let ()
                                  (declare (not safe))
                                  (cons _L158095_ '()))))
                           (declare (not safe))
                           (cons __tmp161574 __tmp161573)))
                        (__tmp161571
                         (let () (declare (not safe)) (cons _L158093_ '()))))
                    (declare (not safe))
                    (cons __tmp161572 __tmp161571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161575
                                                           __tmp161570))
                                                   (_g158038158056_
                                                    _g158039158060_)))
                                             _hd158049158087_
                                             _hd158046158077_)
                                            (_g158038158056_
                                             _g158039158060_))))
                                    (_g158038158056_ _g158039158060_))))
                            (_g158038158056_ _g158039158060_))))
                    (_g158038158056_ _g158039158060_)))))
        (_g158037158111_ _$stx158034_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158115_)
      (let* ((_g158119158148_
              (lambda (_g158120158144_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158120158144_))))
             (_g158118158248_
              (lambda (_g158120158152_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158120158152_))
                    (let ((_e158125158155_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158120158152_))))
                      (let ((_hd158124158159_
                             (let ()
                               (declare (not safe))
                               (##car _e158125158155_)))
                            (_tl158123158162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158125158155_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158123158162_))
                            (let ((_g161576_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158123158162_
                                      '0))))
                              (begin
                                (let ((_g161577_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161576_)
                                             (##vector-length _g161576_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161577_ 2)))
                                      (error "Context expects 2 values"
                                             _g161577_)))
                                (let ((_target158126158165_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161576_ 0)))
                                      (_tl158128158168_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161576_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158128158168_))
                                      (letrec ((_loop158129158171_
                                                (lambda (_hd158127158175_
                                                         _type158133158178_
                                                         _symbol158134158180_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158127158175_))
                                                      (let ((_e158130158183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158127158175_))))
                (let ((_lp-hd158131158187_
                       (let () (declare (not safe)) (##car _e158130158183_)))
                      (_lp-tl158132158190_
                       (let () (declare (not safe)) (##cdr _e158130158183_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158131158187_))
                      (let ((_e158139158193_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158131158187_))))
                        (let ((_hd158138158197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158139158193_)))
                              (_tl158137158200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158139158193_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158137158200_))
                              (let ((_e158142158203_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158137158200_))))
                                (let ((_hd158141158207_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158142158203_)))
                                      (_tl158140158210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158142158203_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158140158210_))
                                      (_loop158129158171_
                                       _lp-tl158132158190_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158141158207_
                                               _type158133158178_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158138158197_
                                               _symbol158134158180_)))
                                      (_g158119158148_ _g158120158152_))))
                              (_g158119158148_ _g158120158152_))))
                      (_g158119158148_ _g158120158152_))))
              (let ((_type158135158213_ (reverse _type158133158178_))
                    (_symbol158136158216_ (reverse _symbol158134158180_)))
                ((lambda (_L158219_ _L158221_)
                   (let ((__tmp161584
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161578
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158219_
                               _L158221_))
                            (let ((__tmp161579
                                   (lambda (_g158236158240_
                                            _g158237158243_
                                            _g158238158245_)
                                     (let ((__tmp161580
                                            (let ((__tmp161583
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161581
                                                   (let ((__tmp161582
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158236158240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158237158243_
                                                           __tmp161582))))
                                              (declare (not safe))
                                              (cons __tmp161583 __tmp161581))))
                                       (declare (not safe))
                                       (cons __tmp161580 _g158238158245_)))))
                              (declare (not safe))
                              (foldr2 __tmp161579 '() _L158219_ _L158221_)))))
                     (declare (not safe))
                     (cons __tmp161584 __tmp161578)))
                 _type158135158213_
                 _symbol158136158216_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158129158171_
                                         _target158126158165_
                                         '()
                                         '()))
                                      (_g158119158148_ _g158120158152_)))))
                            (_g158119158148_ _g158120158152_))))
                    (_g158119158148_ _g158120158152_)))))
        (_g158118158248_ _$stx158115_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158253_)
      (let* ((___stx161135161136_ _$stx158253_)
             (_g158258158300_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161135161136_)))))
        (let ((___kont161138161139_
               (lambda (_L158428_ _L158430_ _L158431_ _L158432_)
                 (let ((__tmp161598
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161585
                        (let ((__tmp161595
                               (let ((__tmp161597
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161596
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158432_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161597 __tmp161596)))
                              (__tmp161586
                               (let ((__tmp161592
                                      (let ((__tmp161594
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161593
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158431_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161594 __tmp161593)))
                                     (__tmp161587
                                      (let ((__tmp161589
                                             (let ((__tmp161591
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161590
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158430_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161591 __tmp161590)))
                                            (__tmp161588
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158428_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161589 __tmp161588))))
                                 (declare (not safe))
                                 (cons __tmp161592 __tmp161587))))
                          (declare (not safe))
                          (cons __tmp161595 __tmp161586))))
                   (declare (not safe))
                   (cons __tmp161598 __tmp161585))))
              (___kont161140161141_
               (lambda (_L158347_ _L158349_ _L158350_ _L158351_)
                 (let ((__tmp161599
                        (let ((__tmp161600
                               (let ((__tmp161601
                                      (let ((__tmp161602
                                             (let ((__tmp161603
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161603 '()))))
                                        (declare (not safe))
                                        (cons _L158347_ __tmp161602))))
                                 (declare (not safe))
                                 (cons _L158349_ __tmp161601))))
                          (declare (not safe))
                          (cons _L158350_ __tmp161600))))
                   (declare (not safe))
                   (cons _L158351_ __tmp161599)))))
          (let ((___match161174161175_
                 (lambda (_e158266158378_
                          _hd158265158382_
                          _tl158264158385_
                          _e158269158388_
                          _hd158268158392_
                          _tl158267158395_
                          _e158272158398_
                          _hd158271158402_
                          _tl158270158405_
                          _e158275158408_
                          _hd158274158412_
                          _tl158273158415_
                          _e158278158418_
                          _hd158277158422_
                          _tl158276158425_)
                   (let ((_L158428_ _hd158277158422_)
                         (_L158430_ _hd158274158412_)
                         (_L158431_ _hd158271158402_)
                         (_L158432_ _hd158268158392_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158432_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158431_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158430_)))
                         (___kont161138161139_
                          _L158428_
                          _L158430_
                          _L158431_
                          _L158432_)
                         (let () (declare (not safe)) (_g158258158300_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161135161136_))
                (let ((_e158266158378_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161135161136_))))
                  (let ((_tl158264158385_
                         (let () (declare (not safe)) (##cdr _e158266158378_)))
                        (_hd158265158382_
                         (let ()
                           (declare (not safe))
                           (##car _e158266158378_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158264158385_))
                        (let ((_e158269158388_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158264158385_))))
                          (let ((_tl158267158395_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158269158388_)))
                                (_hd158268158392_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158269158388_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158267158395_))
                                (let ((_e158272158398_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158267158395_))))
                                  (let ((_tl158270158405_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158272158398_)))
                                        (_hd158271158402_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158272158398_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158270158405_))
                                        (let ((_e158275158408_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158270158405_))))
                                          (let ((_tl158273158415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158275158408_)))
                                                (_hd158274158412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158275158408_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158273158415_))
                                                (let ((_e158278158418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158273158415_))))
                                                  (let ((_tl158276158425_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158278158418_)))
                                                        (_hd158277158422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158278158418_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158276158425_))
                                                        (___match161174161175_
                                                         _e158266158378_
                                                         _hd158265158382_
                                                         _tl158264158385_
                                                         _e158269158388_
                                                         _hd158268158392_
                                                         _tl158267158395_
                                                         _e158272158398_
                                                         _hd158271158402_
                                                         _tl158270158405_
                                                         _e158275158408_
                                                         _hd158274158412_
                                                         _tl158273158415_
                                                         _e158278158418_
                                                         _hd158277158422_
                                                         _tl158276158425_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158258158300_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158273158415_))
                                                    (___kont161140161141_
                                                     _hd158274158412_
                                                     _hd158271158402_
                                                     _hd158268158392_
                                                     _hd158265158382_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158258158300_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158258158300_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158258158300_)))))
                        (let () (declare (not safe)) (_g158258158300_)))))
                (let () (declare (not safe)) (_g158258158300_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158457_)
      (let* ((_g158461158496_
              (lambda (_g158462158492_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158462158492_))))
             (_g158460158615_
              (lambda (_g158462158500_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158462158500_))
                    (let ((_e158468158503_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158462158500_))))
                      (let ((_hd158467158507_
                             (let ()
                               (declare (not safe))
                               (##car _e158468158503_)))
                            (_tl158466158510_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158468158503_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158466158510_))
                            (let ((_g161604_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158466158510_
                                      '0))))
                              (begin
                                (let ((_g161605_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161604_)
                                             (##vector-length _g161604_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161605_ 2)))
                                      (error "Context expects 2 values"
                                             _g161605_)))
                                (let ((_target158469158513_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161604_ 0)))
                                      (_tl158471158516_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161604_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158471158516_))
                                      (letrec ((_loop158472158519_
                                                (lambda (_hd158470158523_
                                                         _symbol158476158526_
                                                         _method158477158528_
                                                         _type-t158478158530_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158470158523_))
                                                      (let ((_e158473158533_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158470158523_))))
                (let ((_lp-hd158474158537_
                       (let () (declare (not safe)) (##car _e158473158533_)))
                      (_lp-tl158475158540_
                       (let () (declare (not safe)) (##cdr _e158473158533_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158474158537_))
                      (let ((_e158484158543_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158474158537_))))
                        (let ((_hd158483158547_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158484158543_)))
                              (_tl158482158550_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158484158543_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158482158550_))
                              (let ((_e158487158553_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158482158550_))))
                                (let ((_hd158486158557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158487158553_)))
                                      (_tl158485158560_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158487158553_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158485158560_))
                                      (let ((_e158490158563_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158485158560_))))
                                        (let ((_hd158489158567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158490158563_)))
                                              (_tl158488158570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158490158563_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158488158570_))
                                              (_loop158472158519_
                                               _lp-tl158475158540_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158489158567_
                                                       _symbol158476158526_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158486158557_
                                                       _method158477158528_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158483158547_
                                                       _type-t158478158530_)))
                                              (_g158461158496_
                                               _g158462158500_))))
                                      (_g158461158496_ _g158462158500_))))
                              (_g158461158496_ _g158462158500_))))
                      (_g158461158496_ _g158462158500_))))
              (let ((_symbol158479158573_ (reverse _symbol158476158526_))
                    (_method158480158576_ (reverse _method158477158528_))
                    (_type-t158481158578_ (reverse _type-t158478158530_)))
                ((lambda (_L158581_ _L158583_ _L158584_)
                   (let ((__tmp161613
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161606
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158581_
                               _L158583_
                               _L158584_))
                            (let ((__tmp161607
                                   (lambda (_g158600158605_
                                            _g158601158608_
                                            _g158602158610_
                                            _g158603158612_)
                                     (let ((__tmp161608
                                            (let ((__tmp161612
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161609
                                                   (let ((__tmp161610
                                                          (let ((__tmp161611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158600158605_ '()))))
                    (declare (not safe))
                    (cons _g158601158608_ __tmp161611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158602158610_
                                                           __tmp161610))))
                                              (declare (not safe))
                                              (cons __tmp161612 __tmp161609))))
                                       (declare (not safe))
                                       (cons __tmp161608 _g158603158612_)))))
                              (declare (not safe))
                              (foldr* __tmp161607
                                      '()
                                      _L158581_
                                      _L158583_
                                      _L158584_)))))
                     (declare (not safe))
                     (cons __tmp161613 __tmp161606)))
                 _symbol158479158573_
                 _method158480158576_
                 _type-t158481158578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158472158519_
                                         _target158469158513_
                                         '()
                                         '()
                                         '()))
                                      (_g158461158496_ _g158462158500_)))))
                            (_g158461158496_ _g158462158500_))))
                    (_g158461158496_ _g158462158500_)))))
        (_g158460158615_ _$stx158457_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158620_)
      (let* ((_g158624158657_
              (lambda (_g158625158653_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158625158653_))))
             (_g158623158771_
              (lambda (_g158625158661_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158625158661_))
                    (let ((_e158631158664_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158625158661_))))
                      (let ((_hd158630158668_
                             (let ()
                               (declare (not safe))
                               (##car _e158631158664_)))
                            (_tl158629158671_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158631158664_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158629158671_))
                            (let ((_e158634158674_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158629158671_))))
                              (let ((_hd158633158678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158634158674_)))
                                    (_tl158632158681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158634158674_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158632158681_))
                                    (let ((_g161614_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158632158681_
                                              '0))))
                                      (begin
                                        (let ((_g161615_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161614_)
                                                     (##vector-length
                                                      _g161614_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161615_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161615_)))
                                        (let ((_target158635158684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161614_ 0)))
                                              (_tl158637158687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161614_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158637158687_))
                                              (letrec ((_loop158638158690_
                                                        (lambda (_hd158636158694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158642158697_
                         _method158643158699_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158636158694_))
                      (let ((_e158639158702_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158636158694_))))
                        (let ((_lp-hd158640158706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158639158702_)))
                              (_lp-tl158641158709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158639158702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158640158706_))
                              (let ((_e158648158712_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158640158706_))))
                                (let ((_hd158647158716_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158648158712_)))
                                      (_tl158646158719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158648158712_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158646158719_))
                                      (let ((_e158651158722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158646158719_))))
                                        (let ((_hd158650158726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158651158722_)))
                                              (_tl158649158729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158651158722_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158649158729_))
                                              (_loop158638158690_
                                               _lp-tl158641158709_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158650158726_
                                                       _symbol158642158697_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158647158716_
                                                       _method158643158699_)))
                                              (_g158624158657_
                                               _g158625158661_))))
                                      (_g158624158657_ _g158625158661_))))
                              (_g158624158657_ _g158625158661_))))
                      (let ((_symbol158644158732_
                             (reverse _symbol158642158697_))
                            (_method158645158735_
                             (reverse _method158643158699_)))
                        ((lambda (_L158738_ _L158740_ _L158741_)
                           (let ((__tmp161623
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161616
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158738_
                                       _L158740_))
                                    (let ((__tmp161617
                                           (lambda (_g158759158763_
                                                    _g158760158766_
                                                    _g158761158768_)
                                             (let ((__tmp161618
                                                    (let ((__tmp161622
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161619
                                                           (let ((__tmp161620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161621
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158759158763_ '()))))
                            (declare (not safe))
                            (cons _g158760158766_ __tmp161621))))
                     (declare (not safe))
                     (cons _L158741_ __tmp161620))))
              (declare (not safe))
              (cons __tmp161622 __tmp161619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161618
                                                     _g158761158768_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161617
                                              '()
                                              _L158738_
                                              _L158740_)))))
                             (declare (not safe))
                             (cons __tmp161623 __tmp161616)))
                         _symbol158644158732_
                         _method158645158735_
                         _hd158633158678_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158638158690_
                                                 _target158635158684_
                                                 '()
                                                 '()))
                                              (_g158624158657_
                                               _g158625158661_)))))
                                    (_g158624158657_ _g158625158661_))))
                            (_g158624158657_ _g158625158661_))))
                    (_g158624158657_ _g158625158661_)))))
        (_g158623158771_ _$stx158620_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158776_)
      (let* ((_g158780158794_
              (lambda (_g158781158790_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158781158790_))))
             (_g158779158835_
              (lambda (_g158781158798_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158781158798_))
                    (let ((_e158785158801_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158781158798_))))
                      (let ((_hd158784158805_
                             (let ()
                               (declare (not safe))
                               (##car _e158785158801_)))
                            (_tl158783158808_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158785158801_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158783158808_))
                            (let ((_e158788158811_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158783158808_))))
                              (let ((_hd158787158815_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158788158811_)))
                                    (_tl158786158818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158788158811_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158786158818_))
                                    ((lambda (_L158821_)
                                       (let ((__tmp161628
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161624
                                              (let ((__tmp161625
                                                     (let ((__tmp161627
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161626
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161627 __tmp161626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161625 '()))))
                                         (declare (not safe))
                                         (cons __tmp161628 __tmp161624)))
                                     _hd158787158815_)
                                    (_g158780158794_ _g158781158798_))))
                            (_g158780158794_ _g158781158798_))))
                    (_g158780158794_ _g158781158798_)))))
        (_g158779158835_ _$stx158776_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158839_)
      (let* ((_g158843158893_
              (lambda (_g158844158889_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158844158889_))))
             (_g158842159060_
              (lambda (_g158844158897_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158844158897_))
                    (let ((_e158857158900_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158844158897_))))
                      (let ((_hd158856158904_
                             (let ()
                               (declare (not safe))
                               (##car _e158857158900_)))
                            (_tl158855158907_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158857158900_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158855158907_))
                            (let ((_e158860158910_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158855158907_))))
                              (let ((_hd158859158914_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158860158910_)))
                                    (_tl158858158917_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158860158910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158858158917_))
                                    (let ((_e158863158920_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158858158917_))))
                                      (let ((_hd158862158924_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158863158920_)))
                                            (_tl158861158927_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158863158920_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158861158927_))
                                            (let ((_e158866158930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158861158927_))))
                                              (let ((_hd158865158934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158866158930_)))
                                                    (_tl158864158937_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158866158930_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158864158937_))
                                                    (let ((_e158869158940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158864158937_))))
                                                      (let ((_hd158868158944_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158869158940_)))
                    (_tl158867158947_
                     (let () (declare (not safe)) (##cdr _e158869158940_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158867158947_))
                    (let ((_e158872158950_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158867158947_))))
                      (let ((_hd158871158954_
                             (let ()
                               (declare (not safe))
                               (##car _e158872158950_)))
                            (_tl158870158957_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158872158950_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158870158957_))
                            (let ((_e158875158960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158870158957_))))
                              (let ((_hd158874158964_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158875158960_)))
                                    (_tl158873158967_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158875158960_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158873158967_))
                                    (let ((_e158878158970_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158873158967_))))
                                      (let ((_hd158877158974_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158878158970_)))
                                            (_tl158876158977_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158878158970_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158876158977_))
                                            (let ((_e158881158980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158876158977_))))
                                              (let ((_hd158880158984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158881158980_)))
                                                    (_tl158879158987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158881158980_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158879158987_))
                                                    (let ((_e158884158990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158879158987_))))
                                                      (let ((_hd158883158994_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158884158990_)))
                    (_tl158882158997_
                     (let () (declare (not safe)) (##cdr _e158884158990_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158882158997_))
                    (let ((_e158887159000_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158882158997_))))
                      (let ((_hd158886159004_
                             (let ()
                               (declare (not safe))
                               (##car _e158887159000_)))
                            (_tl158885159007_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158887159000_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158885159007_))
                            ((lambda (_L159010_
                                      _L159012_
                                      _L159013_
                                      _L159014_
                                      _L159015_
                                      _L159016_
                                      _L159017_
                                      _L159018_
                                      _L159019_
                                      _L159020_)
                               (let ((__tmp161663
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161629
                                      (let ((__tmp161660
                                             (let ((__tmp161662
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161661
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159020_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161662 __tmp161661)))
                                            (__tmp161630
                                             (let ((__tmp161657
                                                    (let ((__tmp161659
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161658
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161659 __tmp161658)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161631
                                                    (let ((__tmp161654
                                                           (let ((__tmp161656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161655
                          (let () (declare (not safe)) (cons _L159018_ '()))))
                     (declare (not safe))
                     (cons __tmp161656 __tmp161655)))
                  (__tmp161632
                   (let ((__tmp161651
                          (let ((__tmp161653
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161652
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159017_ '()))))
                            (declare (not safe))
                            (cons __tmp161653 __tmp161652)))
                         (__tmp161633
                          (let ((__tmp161648
                                 (let ((__tmp161650
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161649
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159016_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161650 __tmp161649)))
                                (__tmp161634
                                 (let ((__tmp161645
                                        (let ((__tmp161647
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161646
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159015_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161647 __tmp161646)))
                                       (__tmp161635
                                        (let ((__tmp161636
                                               (let ((__tmp161637
                                                      (let ((__tmp161642
                                                             (let ((__tmp161644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161643
                            (let ()
                              (declare (not safe))
                              (cons _L159012_ '()))))
                       (declare (not safe))
                       (cons __tmp161644 __tmp161643)))
                    (__tmp161638
                     (let ((__tmp161639
                            (let ((__tmp161641
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161640
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159010_ '()))))
                              (declare (not safe))
                              (cons __tmp161641 __tmp161640))))
                       (declare (not safe))
                       (cons __tmp161639 '()))))
                (declare (not safe))
                (cons __tmp161642 __tmp161638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159013_
                                                       __tmp161637))))
                                          (declare (not safe))
                                          (cons _L159014_ __tmp161636))))
                                   (declare (not safe))
                                   (cons __tmp161645 __tmp161635))))
                            (declare (not safe))
                            (cons __tmp161648 __tmp161634))))
                     (declare (not safe))
                     (cons __tmp161651 __tmp161633))))
              (declare (not safe))
              (cons __tmp161654 __tmp161632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161657
                                                     __tmp161631))))
                                        (declare (not safe))
                                        (cons __tmp161660 __tmp161630))))
                                 (declare (not safe))
                                 (cons __tmp161663 __tmp161629)))
                             _hd158886159004_
                             _hd158883158994_
                             _hd158880158984_
                             _hd158877158974_
                             _hd158874158964_
                             _hd158871158954_
                             _hd158868158944_
                             _hd158865158934_
                             _hd158862158924_
                             _hd158859158914_)
                            (_g158843158893_ _g158844158897_))))
                    (_g158843158893_ _g158844158897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158843158893_
                                                     _g158844158897_))))
                                            (_g158843158893_
                                             _g158844158897_))))
                                    (_g158843158893_ _g158844158897_))))
                            (_g158843158893_ _g158844158897_))))
                    (_g158843158893_ _g158844158897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158843158893_
                                                     _g158844158897_))))
                                            (_g158843158893_
                                             _g158844158897_))))
                                    (_g158843158893_ _g158844158897_))))
                            (_g158843158893_ _g158844158897_))))
                    (_g158843158893_ _g158844158897_)))))
        (_g158842159060_ _$stx158839_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159064_)
      (let* ((_g159068159082_
              (lambda (_g159069159078_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159069159078_))))
             (_g159067159123_
              (lambda (_g159069159086_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159069159086_))
                    (let ((_e159073159089_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159069159086_))))
                      (let ((_hd159072159093_
                             (let ()
                               (declare (not safe))
                               (##car _e159073159089_)))
                            (_tl159071159096_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159073159089_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159071159096_))
                            (let ((_e159076159099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159071159096_))))
                              (let ((_hd159075159103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159076159099_)))
                                    (_tl159074159106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159076159099_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159074159106_))
                                    ((lambda (_L159109_)
                                       (let ((__tmp161668
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161664
                                              (let ((__tmp161665
                                                     (let ((__tmp161667
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161666
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161667 __tmp161666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161665 '()))))
                                         (declare (not safe))
                                         (cons __tmp161668 __tmp161664)))
                                     _hd159075159103_)
                                    (_g159068159082_ _g159069159086_))))
                            (_g159068159082_ _g159069159086_))))
                    (_g159068159082_ _g159069159086_)))))
        (_g159067159123_ _$stx159064_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159127_)
      (let* ((_g159131159145_
              (lambda (_g159132159141_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159132159141_))))
             (_g159130159186_
              (lambda (_g159132159149_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159132159149_))
                    (let ((_e159136159152_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159132159149_))))
                      (let ((_hd159135159156_
                             (let ()
                               (declare (not safe))
                               (##car _e159136159152_)))
                            (_tl159134159159_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159136159152_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159134159159_))
                            (let ((_e159139159162_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159134159159_))))
                              (let ((_hd159138159166_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159139159162_)))
                                    (_tl159137159169_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159139159162_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159137159169_))
                                    ((lambda (_L159172_)
                                       (let ((__tmp161673
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161669
                                              (let ((__tmp161670
                                                     (let ((__tmp161672
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161671
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161672 __tmp161671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161670 '()))))
                                         (declare (not safe))
                                         (cons __tmp161673 __tmp161669)))
                                     _hd159138159166_)
                                    (_g159131159145_ _g159132159149_))))
                            (_g159131159145_ _g159132159149_))))
                    (_g159131159145_ _g159132159149_)))))
        (_g159130159186_ _$stx159127_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159190_)
      (let* ((_g159194159216_
              (lambda (_g159195159212_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159195159212_))))
             (_g159193159285_
              (lambda (_g159195159220_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159195159220_))
                    (let ((_e159201159223_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159195159220_))))
                      (let ((_hd159200159227_
                             (let ()
                               (declare (not safe))
                               (##car _e159201159223_)))
                            (_tl159199159230_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159201159223_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159199159230_))
                            (let ((_e159204159233_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159199159230_))))
                              (let ((_hd159203159237_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159204159233_)))
                                    (_tl159202159240_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159204159233_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159202159240_))
                                    (let ((_e159207159243_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159202159240_))))
                                      (let ((_hd159206159247_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159207159243_)))
                                            (_tl159205159250_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159207159243_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159205159250_))
                                            (let ((_e159210159253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159205159250_))))
                                              (let ((_hd159209159257_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159210159253_)))
                                                    (_tl159208159260_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159210159253_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159208159260_))
                                                    ((lambda (_L159263_
                                                              _L159265_
                                                              _L159266_)
                                                       (let ((__tmp161683
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161674
                      (let ((__tmp161680
                             (let ((__tmp161682
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161681
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159266_ '()))))
                               (declare (not safe))
                               (cons __tmp161682 __tmp161681)))
                            (__tmp161675
                             (let ((__tmp161677
                                    (let ((__tmp161679
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161678
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159265_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161679 __tmp161678)))
                                   (__tmp161676
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159263_ '()))))
                               (declare (not safe))
                               (cons __tmp161677 __tmp161676))))
                        (declare (not safe))
                        (cons __tmp161680 __tmp161675))))
                 (declare (not safe))
                 (cons __tmp161683 __tmp161674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159209159257_
                                                     _hd159206159247_
                                                     _hd159203159237_)
                                                    (_g159194159216_
                                                     _g159195159220_))))
                                            (_g159194159216_
                                             _g159195159220_))))
                                    (_g159194159216_ _g159195159220_))))
                            (_g159194159216_ _g159195159220_))))
                    (_g159194159216_ _g159195159220_)))))
        (_g159193159285_ _$stx159190_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159289_)
      (let* ((_g159293159315_
              (lambda (_g159294159311_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159294159311_))))
             (_g159292159384_
              (lambda (_g159294159319_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159294159319_))
                    (let ((_e159300159322_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159294159319_))))
                      (let ((_hd159299159326_
                             (let ()
                               (declare (not safe))
                               (##car _e159300159322_)))
                            (_tl159298159329_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159300159322_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159298159329_))
                            (let ((_e159303159332_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159298159329_))))
                              (let ((_hd159302159336_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159303159332_)))
                                    (_tl159301159339_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159303159332_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159301159339_))
                                    (let ((_e159306159342_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159301159339_))))
                                      (let ((_hd159305159346_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159306159342_)))
                                            (_tl159304159349_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159306159342_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159304159349_))
                                            (let ((_e159309159352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159304159349_))))
                                              (let ((_hd159308159356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159309159352_)))
                                                    (_tl159307159359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159309159352_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159307159359_))
                                                    ((lambda (_L159362_
                                                              _L159364_
                                                              _L159365_)
                                                       (let ((__tmp161693
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161684
                      (let ((__tmp161690
                             (let ((__tmp161692
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161691
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159365_ '()))))
                               (declare (not safe))
                               (cons __tmp161692 __tmp161691)))
                            (__tmp161685
                             (let ((__tmp161687
                                    (let ((__tmp161689
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161688
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159364_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161689 __tmp161688)))
                                   (__tmp161686
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159362_ '()))))
                               (declare (not safe))
                               (cons __tmp161687 __tmp161686))))
                        (declare (not safe))
                        (cons __tmp161690 __tmp161685))))
                 (declare (not safe))
                 (cons __tmp161693 __tmp161684)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159308159356_
                                                     _hd159305159346_
                                                     _hd159302159336_)
                                                    (_g159293159315_
                                                     _g159294159319_))))
                                            (_g159293159315_
                                             _g159294159319_))))
                                    (_g159293159315_ _g159294159319_))))
                            (_g159293159315_ _g159294159319_))))
                    (_g159293159315_ _g159294159319_)))))
        (_g159292159384_ _$stx159289_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159388_)
      (let* ((___stx161203161204_ _$stx159388_)
             (_g159396159464_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161203161204_)))))
        (let ((___kont161206161207_
               (lambda (_L159742_ _L159744_)
                 (let ((__tmp161709
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161694
                        (let ((__tmp161705
                               (let ((__tmp161708
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161706
                                      (let ((__tmp161707
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161707 '()))))
                                 (declare (not safe))
                                 (cons __tmp161708 __tmp161706)))
                              (__tmp161695
                               (let ((__tmp161702
                                      (let ((__tmp161704
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161703
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159744_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161704 __tmp161703)))
                                     (__tmp161696
                                      (let ((__tmp161697
                                             (let ((__tmp161698
                                                    (let ((__tmp161699
                                                           (let ((__tmp161701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161700
                          (let () (declare (not safe)) (cons _L159742_ '()))))
                     (declare (not safe))
                     (cons __tmp161701 __tmp161700))))
              (declare (not safe))
              (cons __tmp161699 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159742_ __tmp161698))))
                                        (declare (not safe))
                                        (cons '#f __tmp161697))))
                                 (declare (not safe))
                                 (cons __tmp161702 __tmp161696))))
                          (declare (not safe))
                          (cons __tmp161705 __tmp161695))))
                   (declare (not safe))
                   (cons __tmp161709 __tmp161694))))
              (___kont161208161209_
               (lambda (_L159673_ _L159675_)
                 (let ((__tmp161710
                        (let ((__tmp161711
                               (let ((__tmp161712
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159673_ __tmp161712))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161711))))
                   (declare (not safe))
                   (cons _L159675_ __tmp161710))))
              (___kont161210161211_
               (lambda (_L159612_ _L159614_)
                 (let ((__tmp161726
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161713
                        (let ((__tmp161722
                               (let ((__tmp161725
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161723
                                      (let ((__tmp161724
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161724 '()))))
                                 (declare (not safe))
                                 (cons __tmp161725 __tmp161723)))
                              (__tmp161714
                               (let ((__tmp161719
                                      (let ((__tmp161721
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161720
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159614_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161721 __tmp161720)))
                                     (__tmp161715
                                      (let ((__tmp161716
                                             (let ((__tmp161718
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161717
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159612_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161718
                                                     __tmp161717))))
                                        (declare (not safe))
                                        (cons __tmp161716 '()))))
                                 (declare (not safe))
                                 (cons __tmp161719 __tmp161715))))
                          (declare (not safe))
                          (cons __tmp161722 __tmp161714))))
                   (declare (not safe))
                   (cons __tmp161726 __tmp161713))))
              (___kont161212161213_
               (lambda (_L159544_ _L159546_)
                 (let ((__tmp161740
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161727
                        (let ((__tmp161736
                               (let ((__tmp161739
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161737
                                      (let ((__tmp161738
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161738 '()))))
                                 (declare (not safe))
                                 (cons __tmp161739 __tmp161737)))
                              (__tmp161728
                               (let ((__tmp161733
                                      (let ((__tmp161735
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161734
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159546_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161735 __tmp161734)))
                                     (__tmp161729
                                      (let ((__tmp161730
                                             (let ((__tmp161732
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161731
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159544_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161732
                                                     __tmp161731))))
                                        (declare (not safe))
                                        (cons __tmp161730 '()))))
                                 (declare (not safe))
                                 (cons __tmp161733 __tmp161729))))
                          (declare (not safe))
                          (cons __tmp161736 __tmp161728))))
                   (declare (not safe))
                   (cons __tmp161740 __tmp161727))))
              (___kont161214161215_
               (lambda (_L159491_ _L159493_)
                 (let ((__tmp161741
                        (let ((__tmp161742
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159491_ __tmp161742))))
                   (declare (not safe))
                   (cons _L159493_ __tmp161741)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161203161204_))
              (let ((_e159402159698_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161203161204_))))
                (let ((_tl159400159705_
                       (let () (declare (not safe)) (##cdr _e159402159698_)))
                      (_hd159401159702_
                       (let () (declare (not safe)) (##car _e159402159698_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159400159705_))
                      (let ((_e159405159708_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159400159705_))))
                        (let ((_tl159403159715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159405159708_)))
                              (_hd159404159712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159405159708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159403159715_))
                              (let ((_e159408159718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159403159715_))))
                                (let ((_tl159406159725_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159408159718_)))
                                      (_hd159407159722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159408159718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159407159722_))
                                      (let ((_e159409159728_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159407159722_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159409159728_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159406159725_))
                                                (let ((_e159412159732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159406159725_))))
                                                  (let ((_tl159410159739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159412159732_)))
                                                        (_hd159411159736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159412159732_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159410159739_))
                                                        (___kont161206161207_
                                                         _hd159411159736_
                                                         _hd159404159712_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159404159712_))
                                                            (let ((_e159421159659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159404159712_))))
                      (declare (not safe))
                      (_g159396159464_))
                    (let () (declare (not safe)) (_g159396159464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159404159712_))
                                                    (let ((_e159421159659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159404159712_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159421159659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159406159725_))
                      (___kont161208161209_ _hd159407159722_ _hd159401159702_)
                      (let () (declare (not safe)) (_g159396159464_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159406159725_))
                      (___kont161212161213_ _hd159407159722_ _hd159404159712_)
                      (let () (declare (not safe)) (_g159396159464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159406159725_))
                                                        (___kont161212161213_
                                                         _hd159407159722_
                                                         _hd159404159712_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159396159464_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159404159712_))
                                                (let ((_e159421159659_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159404159712_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159421159659_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159406159725_))
                                                          (___kont161208161209_
                                                           _hd159407159722_
                                                           _hd159401159702_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159406159725_))
                      (let ((_e159439159602_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159406159725_))))
                        (let ((_tl159437159609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159439159602_)))
                              (_hd159438159606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159439159602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159437159609_))
                              (___kont161210161211_
                               _hd159438159606_
                               _hd159407159722_)
                              (let ()
                                (declare (not safe))
                                (_g159396159464_)))))
                      (let () (declare (not safe)) (_g159396159464_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159406159725_))
                  (___kont161212161213_ _hd159407159722_ _hd159404159712_)
                  (let () (declare (not safe)) (_g159396159464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159406159725_))
                                                    (___kont161212161213_
                                                     _hd159407159722_
                                                     _hd159404159712_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159396159464_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159404159712_))
                                          (let ((_e159421159659_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159404159712_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159421159659_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159406159725_))
                                                    (___kont161208161209_
                                                     _hd159407159722_
                                                     _hd159401159702_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159406159725_))
                                                        (let ((_e159439159602_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159406159725_))))
                  (let ((_tl159437159609_
                         (let () (declare (not safe)) (##cdr _e159439159602_)))
                        (_hd159438159606_
                         (let ()
                           (declare (not safe))
                           (##car _e159439159602_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159437159609_))
                        (___kont161210161211_
                         _hd159438159606_
                         _hd159407159722_)
                        (let () (declare (not safe)) (_g159396159464_)))))
                (let () (declare (not safe)) (_g159396159464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159406159725_))
                                                    (___kont161212161213_
                                                     _hd159407159722_
                                                     _hd159404159712_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159396159464_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159406159725_))
                                              (___kont161212161213_
                                               _hd159407159722_
                                               _hd159404159712_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159396159464_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159404159712_))
                                  (let ((_e159421159659_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159404159712_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159403159715_))
                                        (___kont161214161215_
                                         _hd159404159712_
                                         _hd159401159702_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159396159464_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159403159715_))
                                      (___kont161214161215_
                                       _hd159404159712_
                                       _hd159401159702_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159396159464_)))))))
                      (let () (declare (not safe)) (_g159396159464_)))))
              (let () (declare (not safe)) (_g159396159464_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159766_)
      (let* ((___stx161343161344_ _$stx159766_)
             (_g159771159826_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161343161344_)))))
        (let ((___kont161346161347_
               (lambda (_L160011_ _L160013_)
                 (let ((__tmp161758
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161743
                        (let ((__tmp161754
                               (let ((__tmp161757
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161755
                                      (let ((__tmp161756
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161756 '()))))
                                 (declare (not safe))
                                 (cons __tmp161757 __tmp161755)))
                              (__tmp161744
                               (let ((__tmp161745
                                      (let ((__tmp161753
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161746
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160011_
                                                  _L160013_))
                                               (let ((__tmp161747
                                                      (lambda (_g160030160034_
                                                               _g160031160037_
                                                               _g160032160039_)
                                                        (let ((__tmp161748
                                                               (let ((__tmp161752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161749
                              (let ((__tmp161750
                                     (let ((__tmp161751
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160030160034_ '()))))
                                       (declare (not safe))
                                       (cons _g160031160037_ __tmp161751))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161750))))
                         (declare (not safe))
                         (cons __tmp161752 __tmp161749))))
                  (declare (not safe))
                  (cons __tmp161748 _g160032160039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161747
                                                         '()
                                                         _L160011_
                                                         _L160013_)))))
                                        (declare (not safe))
                                        (cons __tmp161753 __tmp161746))))
                                 (declare (not safe))
                                 (cons __tmp161745 '()))))
                          (declare (not safe))
                          (cons __tmp161754 __tmp161744))))
                   (declare (not safe))
                   (cons __tmp161758 __tmp161743))))
              (___kont161350161351_
               (lambda (_L159897_ _L159899_)
                 (let ((__tmp161773
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161759
                        (let ((__tmp161769
                               (let ((__tmp161772
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161770
                                      (let ((__tmp161771
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161771 '()))))
                                 (declare (not safe))
                                 (cons __tmp161772 __tmp161770)))
                              (__tmp161760
                               (let ((__tmp161761
                                      (let ((__tmp161768
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161762
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159897_
                                                  _L159899_))
                                               (let ((__tmp161763
                                                      (lambda (_g159914159918_
                                                               _g159915159921_
                                                               _g159916159923_)
                                                        (let ((__tmp161764
                                                               (let ((__tmp161767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161765
                              (let ((__tmp161766
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159914159918_ '()))))
                                (declare (not safe))
                                (cons _g159915159921_ __tmp161766))))
                         (declare (not safe))
                         (cons __tmp161767 __tmp161765))))
                  (declare (not safe))
                  (cons __tmp161764 _g159916159923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161763
                                                         '()
                                                         _L159897_
                                                         _L159899_)))))
                                        (declare (not safe))
                                        (cons __tmp161768 __tmp161762))))
                                 (declare (not safe))
                                 (cons __tmp161761 '()))))
                          (declare (not safe))
                          (cons __tmp161769 __tmp161760))))
                   (declare (not safe))
                   (cons __tmp161773 __tmp161759)))))
          (let* ((___match161394161395_
                  (lambda (_e159803159833_
                           _hd159802159837_
                           _tl159801159840_
                           ___splice161352161353_
                           _target159804159843_
                           _tl159806159846_)
                    (letrec ((_loop159807159849_
                              (lambda (_hd159805159853_
                                       _dispatch159811159856_
                                       _arity159812159858_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159805159853_))
                                    (let ((_e159808159861_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159805159853_))))
                                      (let ((_lp-tl159810159868_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159808159861_)))
                                            (_lp-hd159809159865_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159808159861_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159809159865_))
                                            (let ((_e159817159871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159809159865_))))
                                              (let ((_tl159815159878_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159817159871_)))
                                                    (_hd159816159875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159817159871_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159815159878_))
                                                    (let ((_e159820159881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159815159878_))))
                                                      (let ((_tl159818159888_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159820159881_)))
                    (_hd159819159885_
                     (let () (declare (not safe)) (##car _e159820159881_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159818159888_))
                    (_loop159807159849_
                     _lp-tl159810159868_
                     (let ()
                       (declare (not safe))
                       (cons _hd159819159885_ _dispatch159811159856_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159816159875_ _arity159812159858_)))
                    (let () (declare (not safe)) (_g159771159826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159771159826_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159771159826_)))))
                                    (let ((_arity159814159894_
                                           (reverse _arity159812159858_))
                                          (_dispatch159813159891_
                                           (reverse _dispatch159811159856_)))
                                      (___kont161350161351_
                                       _dispatch159813159891_
                                       _arity159814159894_))))))
                      (_loop159807159849_ _target159804159843_ '() '()))))
                 (___match161386161387_
                  (lambda (_e159803159833_ _hd159802159837_ _tl159801159840_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159801159840_))
                        (let ((___splice161352161353_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159801159840_
                                  '0))))
                          (let ((_tl159806159846_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161352161353_ '1)))
                                (_target159804159843_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161352161353_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159806159846_))
                                (___match161394161395_
                                 _e159803159833_
                                 _hd159802159837_
                                 _tl159801159840_
                                 ___splice161352161353_
                                 _target159804159843_
                                 _tl159806159846_)
                                (let ()
                                  (declare (not safe))
                                  (_g159771159826_)))))
                        (let () (declare (not safe)) (_g159771159826_)))))
                 (___match161380161381_
                  (lambda (_e159777159933_
                           _hd159776159937_
                           _tl159775159940_
                           _e159780159943_
                           _hd159779159947_
                           _tl159778159950_
                           _e159781159953_
                           ___splice161348161349_
                           _target159782159957_
                           _tl159784159960_)
                    (letrec ((_loop159785159963_
                              (lambda (_hd159783159967_
                                       _dispatch159789159970_
                                       _arity159790159972_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159783159967_))
                                    (let ((_e159786159975_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159783159967_))))
                                      (let ((_lp-tl159788159982_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159786159975_)))
                                            (_lp-hd159787159979_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159786159975_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159787159979_))
                                            (let ((_e159795159985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159787159979_))))
                                              (let ((_tl159793159992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159795159985_)))
                                                    (_hd159794159989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159795159985_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159793159992_))
                                                    (let ((_e159798159995_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159793159992_))))
                                                      (let ((_tl159796160002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159798159995_)))
                    (_hd159797159999_
                     (let () (declare (not safe)) (##car _e159798159995_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159796160002_))
                    (_loop159785159963_
                     _lp-tl159788159982_
                     (let ()
                       (declare (not safe))
                       (cons _hd159797159999_ _dispatch159789159970_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159794159989_ _arity159790159972_)))
                    (___match161386161387_
                     _e159777159933_
                     _hd159776159937_
                     _tl159775159940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161386161387_
                                                     _e159777159933_
                                                     _hd159776159937_
                                                     _tl159775159940_))))
                                            (___match161386161387_
                                             _e159777159933_
                                             _hd159776159937_
                                             _tl159775159940_))))
                                    (let ((_arity159792160008_
                                           (reverse _arity159790159972_))
                                          (_dispatch159791160005_
                                           (reverse _dispatch159789159970_)))
                                      (___kont161346161347_
                                       _dispatch159791160005_
                                       _arity159792160008_))))))
                      (_loop159785159963_ _target159782159957_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161343161344_))
                (let ((_e159777159933_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161343161344_))))
                  (let ((_tl159775159940_
                         (let () (declare (not safe)) (##cdr _e159777159933_)))
                        (_hd159776159937_
                         (let ()
                           (declare (not safe))
                           (##car _e159777159933_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159775159940_))
                        (let ((_e159780159943_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159775159940_))))
                          (let ((_tl159778159950_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159780159943_)))
                                (_hd159779159947_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159780159943_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159779159947_))
                                (let ((_e159781159953_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159779159947_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159781159953_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159778159950_))
                                          (let ((___splice161348161349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159778159950_
                                                    '0))))
                                            (let ((_tl159784159960_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161348161349_
                                                      '1)))
                                                  (_target159782159957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161348161349_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159784159960_))
                                                  (___match161380161381_
                                                   _e159777159933_
                                                   _hd159776159937_
                                                   _tl159775159940_
                                                   _e159780159943_
                                                   _hd159779159947_
                                                   _tl159778159950_
                                                   _e159781159953_
                                                   ___splice161348161349_
                                                   _target159782159957_
                                                   _tl159784159960_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159775159940_))
                                                      (let ((___splice161352161353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159775159940_ '0))))
                (let ((_tl159806159846_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161352161353_ '1)))
                      (_target159804159843_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161352161353_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159806159846_))
                      (___match161394161395_
                       _e159777159933_
                       _hd159776159937_
                       _tl159775159940_
                       ___splice161352161353_
                       _target159804159843_
                       _tl159806159846_)
                      (let () (declare (not safe)) (_g159771159826_)))))
              (let () (declare (not safe)) (_g159771159826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159775159940_))
                                              (let ((___splice161352161353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159775159940_
                                                        '0))))
                                                (let ((_tl159806159846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161352161353_
                                                          '1)))
                                                      (_target159804159843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161352161353_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159806159846_))
                                                      (___match161394161395_
                                                       _e159777159933_
                                                       _hd159776159937_
                                                       _tl159775159940_
                                                       ___splice161352161353_
                                                       _target159804159843_
                                                       _tl159806159846_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159771159826_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159771159826_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159775159940_))
                                          (let ((___splice161352161353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159775159940_
                                                    '0))))
                                            (let ((_tl159806159846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161352161353_
                                                      '1)))
                                                  (_target159804159843_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161352161353_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159806159846_))
                                                  (___match161394161395_
                                                   _e159777159933_
                                                   _hd159776159937_
                                                   _tl159775159940_
                                                   ___splice161352161353_
                                                   _target159804159843_
                                                   _tl159806159846_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159771159826_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159771159826_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159775159940_))
                                    (let ((___splice161352161353_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159775159940_
                                              '0))))
                                      (let ((_tl159806159846_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161352161353_
                                                '1)))
                                            (_target159804159843_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161352161353_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159806159846_))
                                            (___match161394161395_
                                             _e159777159933_
                                             _hd159776159937_
                                             _tl159775159940_
                                             ___splice161352161353_
                                             _target159804159843_
                                             _tl159806159846_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159771159826_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159771159826_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159775159940_))
                            (let ((___splice161352161353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159775159940_
                                      '0))))
                              (let ((_tl159806159846_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161352161353_
                                        '1)))
                                    (_target159804159843_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161352161353_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159806159846_))
                                    (___match161394161395_
                                     _e159777159933_
                                     _hd159776159937_
                                     _tl159775159940_
                                     ___splice161352161353_
                                     _target159804159843_
                                     _tl159806159846_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159771159826_)))))
                            (let () (declare (not safe)) (_g159771159826_))))))
                (let () (declare (not safe)) (_g159771159826_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160048_)
      (let* ((_g160052160070_
              (lambda (_g160053160066_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160053160066_))))
             (_g160051160125_
              (lambda (_g160053160074_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160053160074_))
                    (let ((_e160058160077_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160053160074_))))
                      (let ((_hd160057160081_
                             (let ()
                               (declare (not safe))
                               (##car _e160058160077_)))
                            (_tl160056160084_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160058160077_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160056160084_))
                            (let ((_e160061160087_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160056160084_))))
                              (let ((_hd160060160091_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160061160087_)))
                                    (_tl160059160094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160061160087_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160059160094_))
                                    (let ((_e160064160097_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160059160094_))))
                                      (let ((_hd160063160101_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160064160097_)))
                                            (_tl160062160104_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160064160097_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160062160104_))
                                            ((lambda (_L160107_ _L160109_)
                                               (let ((__tmp161787
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161774
                                                      (let ((__tmp161783
                                                             (let ((__tmp161786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161784
                            (let ((__tmp161785
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161785 '()))))
                       (declare (not safe))
                       (cons __tmp161786 __tmp161784)))
                    (__tmp161775
                     (let ((__tmp161780
                            (let ((__tmp161782
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161781
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160109_ '()))))
                              (declare (not safe))
                              (cons __tmp161782 __tmp161781)))
                           (__tmp161776
                            (let ((__tmp161777
                                   (let ((__tmp161779
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161778
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160107_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161779 __tmp161778))))
                              (declare (not safe))
                              (cons __tmp161777 '()))))
                       (declare (not safe))
                       (cons __tmp161780 __tmp161776))))
                (declare (not safe))
                (cons __tmp161783 __tmp161775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161787
                                                       __tmp161774)))
                                             _hd160063160101_
                                             _hd160060160091_)
                                            (_g160052160070_
                                             _g160053160074_))))
                                    (_g160052160070_ _g160053160074_))))
                            (_g160052160070_ _g160053160074_))))
                    (_g160052160070_ _g160053160074_)))))
        (_g160051160125_ _$stx160048_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160129_)
      (let* ((_g160133160151_
              (lambda (_g160134160147_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160134160147_))))
             (_g160132160206_
              (lambda (_g160134160155_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160134160155_))
                    (let ((_e160139160158_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160134160155_))))
                      (let ((_hd160138160162_
                             (let ()
                               (declare (not safe))
                               (##car _e160139160158_)))
                            (_tl160137160165_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160139160158_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160137160165_))
                            (let ((_e160142160168_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160137160165_))))
                              (let ((_hd160141160172_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160142160168_)))
                                    (_tl160140160175_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160142160168_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160140160175_))
                                    (let ((_e160145160178_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160140160175_))))
                                      (let ((_hd160144160182_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160145160178_)))
                                            (_tl160143160185_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160145160178_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160143160185_))
                                            ((lambda (_L160188_ _L160190_)
                                               (let ((__tmp161801
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161788
                                                      (let ((__tmp161797
                                                             (let ((__tmp161800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161798
                            (let ((__tmp161799
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161799 '()))))
                       (declare (not safe))
                       (cons __tmp161800 __tmp161798)))
                    (__tmp161789
                     (let ((__tmp161794
                            (let ((__tmp161796
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161795
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160190_ '()))))
                              (declare (not safe))
                              (cons __tmp161796 __tmp161795)))
                           (__tmp161790
                            (let ((__tmp161791
                                   (let ((__tmp161793
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161792
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160188_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161793 __tmp161792))))
                              (declare (not safe))
                              (cons __tmp161791 '()))))
                       (declare (not safe))
                       (cons __tmp161794 __tmp161790))))
                (declare (not safe))
                (cons __tmp161797 __tmp161789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161801
                                                       __tmp161788)))
                                             _hd160144160182_
                                             _hd160141160172_)
                                            (_g160133160151_
                                             _g160134160155_))))
                                    (_g160133160151_ _g160134160155_))))
                            (_g160133160151_ _g160134160155_))))
                    (_g160133160151_ _g160134160155_)))))
        (_g160132160206_ _$stx160129_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160210_)
      (let* ((___stx161397161398_ _$stx160210_)
             (_g160217160288_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161397161398_)))))
        (let ((___kont161400161401_
               (lambda (_L160579_ _L160581_)
                 (let ((__tmp161807
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161802
                        (let ((__tmp161803
                               (let ((__tmp161804
                                      (let ((__tmp161806
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161805
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160579_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161806 __tmp161805))))
                                 (declare (not safe))
                                 (cons __tmp161804 '()))))
                          (declare (not safe))
                          (cons _L160581_ __tmp161803))))
                   (declare (not safe))
                   (cons __tmp161807 __tmp161802))))
              (___kont161402161403_
               (lambda (_L160498_ _L160500_)
                 (let ((__tmp161816
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161808
                        (let ((__tmp161809
                               (let ((__tmp161810
                                      (let ((__tmp161815
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161811
                                             (let ((__tmp161812
                                                    (lambda (_g160519160522_
                                                             _g160520160525_)
                                                      (let ((__tmp161813
                                                             (let ((__tmp161814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160519160522_ __tmp161814))))
                (declare (not safe))
                (cons __tmp161813 _g160520160525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161812
                                                       '()
                                                       _L160498_))))
                                        (declare (not safe))
                                        (cons __tmp161815 __tmp161811))))
                                 (declare (not safe))
                                 (cons __tmp161810 '()))))
                          (declare (not safe))
                          (cons _L160500_ __tmp161809))))
                   (declare (not safe))
                   (cons __tmp161816 __tmp161808))))
              (___kont161406161407_
               (lambda (_L160410_ _L160412_)
                 (let ((__tmp161823
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161817
                        (let ((__tmp161818
                               (let ((__tmp161819
                                      (let ((__tmp161822
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161820
                                             (let ((__tmp161821
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160410_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161821))))
                                        (declare (not safe))
                                        (cons __tmp161822 __tmp161820))))
                                 (declare (not safe))
                                 (cons __tmp161819 '()))))
                          (declare (not safe))
                          (cons _L160412_ __tmp161818))))
                   (declare (not safe))
                   (cons __tmp161823 __tmp161817))))
              (___kont161408161409_
               (lambda (_L160345_ _L160347_)
                 (let ((__tmp161833
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161824
                        (let ((__tmp161825
                               (let ((__tmp161826
                                      (let ((__tmp161832
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161827
                                             (let ((__tmp161828
                                                    (let ((__tmp161829
                                                           (lambda (_g160364160367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160365160370_)
                     (let ((__tmp161830
                            (let ((__tmp161831
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160364160367_ __tmp161831))))
                       (declare (not safe))
                       (cons __tmp161830 _g160365160370_)))))
              (declare (not safe))
              (foldr1 __tmp161829 '() _L160345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161828))))
                                        (declare (not safe))
                                        (cons __tmp161832 __tmp161827))))
                                 (declare (not safe))
                                 (cons __tmp161826 '()))))
                          (declare (not safe))
                          (cons _L160347_ __tmp161825))))
                   (declare (not safe))
                   (cons __tmp161833 __tmp161824)))))
          (let* ((___match161516161517_
                  (lambda (_e160270160295_
                           _hd160269160299_
                           _tl160268160302_
                           _e160273160305_
                           _hd160272160309_
                           _tl160271160312_
                           ___splice161410161411_
                           _target160274160315_
                           _tl160276160318_)
                    (letrec ((_loop160277160321_
                              (lambda (_hd160275160325_ _arity160281160328_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160275160325_))
                                    (let ((_e160278160331_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160275160325_))))
                                      (let ((_lp-tl160280160338_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160278160331_)))
                                            (_lp-hd160279160335_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160278160331_))))
                                        (_loop160277160321_
                                         _lp-tl160280160338_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160279160335_
                                                 _arity160281160328_)))))
                                    (let ((_arity160282160341_
                                           (reverse _arity160281160328_)))
                                      (___kont161408161409_
                                       _arity160282160341_
                                       _hd160272160309_))))))
                      (_loop160277160321_ _target160274160315_ '()))))
                 (___match161476161477_
                  (lambda (_e160238160434_
                           _hd160237160438_
                           _tl160236160441_
                           _e160241160444_
                           _hd160240160448_
                           _tl160239160451_
                           _e160244160454_
                           _hd160243160458_
                           _tl160242160461_
                           _e160245160464_
                           ___splice161404161405_
                           _target160246160468_
                           _tl160248160471_)
                    (letrec ((_loop160249160474_
                              (lambda (_hd160247160478_ _arity160253160481_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160247160478_))
                                    (let ((_e160250160484_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160247160478_))))
                                      (let ((_lp-tl160252160491_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160250160484_)))
                                            (_lp-hd160251160488_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160250160484_))))
                                        (_loop160249160474_
                                         _lp-tl160252160491_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160251160488_
                                                 _arity160253160481_)))))
                                    (let ((_arity160254160494_
                                           (reverse _arity160253160481_)))
                                      (___kont161402161403_
                                       _arity160254160494_
                                       _hd160240160448_))))))
                      (_loop160249160474_ _target160246160468_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161397161398_))
                (let ((_e160223160535_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161397161398_))))
                  (let ((_tl160221160542_
                         (let () (declare (not safe)) (##cdr _e160223160535_)))
                        (_hd160222160539_
                         (let ()
                           (declare (not safe))
                           (##car _e160223160535_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160221160542_))
                        (let ((_e160226160545_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160221160542_))))
                          (let ((_tl160224160552_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160226160545_)))
                                (_hd160225160549_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160226160545_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160224160552_))
                                (let ((_e160229160555_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160224160552_))))
                                  (let ((_tl160227160562_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160229160555_)))
                                        (_hd160228160559_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160229160555_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160228160559_))
                                        (let ((_e160230160565_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160228160559_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160230160565_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160227160562_))
                                                  (let ((_e160233160569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160227160562_))))
                                                    (let ((_tl160231160576_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160233160569_)))
                                                          (_hd160232160573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160233160569_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160231160576_))
                                                          (___kont161400161401_
                                                           _hd160232160573_
                                                           _hd160225160549_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160227160562_))
                      (let ((___splice161404161405_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160227160562_ '0))))
                        (let ((_tl160248160471_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161404161405_ '1)))
                              (_target160246160468_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161404161405_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160248160471_))
                              (___match161476161477_
                               _e160223160535_
                               _hd160222160539_
                               _tl160221160542_
                               _e160226160545_
                               _hd160225160549_
                               _tl160224160552_
                               _e160229160555_
                               _hd160228160559_
                               _tl160227160562_
                               _e160230160565_
                               ___splice161404161405_
                               _target160246160468_
                               _tl160248160471_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160224160552_))
                                  (let ((___splice161410161411_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160224160552_
                                            '0))))
                                    (let ((_tl160276160318_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161410161411_
                                              '1)))
                                          (_target160274160315_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161410161411_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160276160318_))
                                          (___match161516161517_
                                           _e160223160535_
                                           _hd160222160539_
                                           _tl160221160542_
                                           _e160226160545_
                                           _hd160225160549_
                                           _tl160224160552_
                                           ___splice161410161411_
                                           _target160274160315_
                                           _tl160276160318_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160217160288_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160217160288_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160224160552_))
                          (let ((___splice161410161411_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160224160552_
                                    '0))))
                            (let ((_tl160276160318_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161410161411_ '1)))
                                  (_target160274160315_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161410161411_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160276160318_))
                                  (___match161516161517_
                                   _e160223160535_
                                   _hd160222160539_
                                   _tl160221160542_
                                   _e160226160545_
                                   _hd160225160549_
                                   _tl160224160552_
                                   ___splice161410161411_
                                   _target160274160315_
                                   _tl160276160318_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160217160288_)))))
                          (let () (declare (not safe)) (_g160217160288_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160227160562_))
                                                      (let ((___splice161404161405_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160227160562_ '0))))
                (let ((_tl160248160471_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161404161405_ '1)))
                      (_target160246160468_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161404161405_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160248160471_))
                      (___match161476161477_
                       _e160223160535_
                       _hd160222160539_
                       _tl160221160542_
                       _e160226160545_
                       _hd160225160549_
                       _tl160224160552_
                       _e160229160555_
                       _hd160228160559_
                       _tl160227160562_
                       _e160230160565_
                       ___splice161404161405_
                       _target160246160468_
                       _tl160248160471_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160227160562_))
                          (___kont161406161407_
                           _hd160228160559_
                           _hd160225160549_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160224160552_))
                              (let ((___splice161410161411_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160224160552_
                                        '0))))
                                (let ((_tl160276160318_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161410161411_
                                          '1)))
                                      (_target160274160315_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161410161411_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160276160318_))
                                      (___match161516161517_
                                       _e160223160535_
                                       _hd160222160539_
                                       _tl160221160542_
                                       _e160226160545_
                                       _hd160225160549_
                                       _tl160224160552_
                                       ___splice161410161411_
                                       _target160274160315_
                                       _tl160276160318_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160217160288_)))))
                              (let ()
                                (declare (not safe))
                                (_g160217160288_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160227160562_))
                  (___kont161406161407_ _hd160228160559_ _hd160225160549_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160224160552_))
                      (let ((___splice161410161411_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160224160552_ '0))))
                        (let ((_tl160276160318_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161410161411_ '1)))
                              (_target160274160315_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161410161411_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160276160318_))
                              (___match161516161517_
                               _e160223160535_
                               _hd160222160539_
                               _tl160221160542_
                               _e160226160545_
                               _hd160225160549_
                               _tl160224160552_
                               ___splice161410161411_
                               _target160274160315_
                               _tl160276160318_)
                              (let ()
                                (declare (not safe))
                                (_g160217160288_)))))
                      (let () (declare (not safe)) (_g160217160288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160227160562_))
                                                  (___kont161406161407_
                                                   _hd160228160559_
                                                   _hd160225160549_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160224160552_))
                                                      (let ((___splice161410161411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160224160552_ '0))))
                (let ((_tl160276160318_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161410161411_ '1)))
                      (_target160274160315_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161410161411_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160276160318_))
                      (___match161516161517_
                       _e160223160535_
                       _hd160222160539_
                       _tl160221160542_
                       _e160226160545_
                       _hd160225160549_
                       _tl160224160552_
                       ___splice161410161411_
                       _target160274160315_
                       _tl160276160318_)
                      (let () (declare (not safe)) (_g160217160288_)))))
              (let () (declare (not safe)) (_g160217160288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160227160562_))
                                            (___kont161406161407_
                                             _hd160228160559_
                                             _hd160225160549_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160224160552_))
                                                (let ((___splice161410161411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160224160552_
                                                          '0))))
                                                  (let ((_tl160276160318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161410161411_
                                                            '1)))
                                                        (_target160274160315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161410161411_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160276160318_))
                                                        (___match161516161517_
                                                         _e160223160535_
                                                         _hd160222160539_
                                                         _tl160221160542_
                                                         _e160226160545_
                                                         _hd160225160549_
                                                         _tl160224160552_
                                                         ___splice161410161411_
                                                         _target160274160315_
                                                         _tl160276160318_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160217160288_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160217160288_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160224160552_))
                                    (let ((___splice161410161411_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160224160552_
                                              '0))))
                                      (let ((_tl160276160318_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161410161411_
                                                '1)))
                                            (_target160274160315_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161410161411_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160276160318_))
                                            (___match161516161517_
                                             _e160223160535_
                                             _hd160222160539_
                                             _tl160221160542_
                                             _e160226160545_
                                             _hd160225160549_
                                             _tl160224160552_
                                             ___splice161410161411_
                                             _target160274160315_
                                             _tl160276160318_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160217160288_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160217160288_))))))
                        (let () (declare (not safe)) (_g160217160288_)))))
                (let () (declare (not safe)) (_g160217160288_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160605_)
      (let* ((___stx161519161520_ _$stx160605_)
             (_g160610160645_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161519161520_)))))
        (let ((___kont161522161523_
               (lambda (_L160767_ _L160769_)
                 (let ((__tmp161839
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161834
                        (let ((__tmp161835
                               (let ((__tmp161836
                                      (let ((__tmp161838
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160767_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161838 __tmp161837))))
                                 (declare (not safe))
                                 (cons __tmp161836 '()))))
                          (declare (not safe))
                          (cons _L160769_ __tmp161835))))
                   (declare (not safe))
                   (cons __tmp161839 __tmp161834))))
              (___kont161524161525_
               (lambda (_L160702_ _L160704_)
                 (let ((__tmp161848
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161840
                        (let ((__tmp161841
                               (let ((__tmp161842
                                      (let ((__tmp161847
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161843
                                             (let ((__tmp161844
                                                    (lambda (_g160721160724_
                                                             _g160722160727_)
                                                      (let ((__tmp161845
                                                             (let ((__tmp161846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160721160724_ __tmp161846))))
                (declare (not safe))
                (cons __tmp161845 _g160722160727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161844
                                                       '()
                                                       _L160702_))))
                                        (declare (not safe))
                                        (cons __tmp161847 __tmp161843))))
                                 (declare (not safe))
                                 (cons __tmp161842 '()))))
                          (declare (not safe))
                          (cons _L160704_ __tmp161841))))
                   (declare (not safe))
                   (cons __tmp161848 __tmp161840)))))
          (let ((___match161568161569_
                 (lambda (_e160627160652_
                          _hd160626160656_
                          _tl160625160659_
                          _e160630160662_
                          _hd160629160666_
                          _tl160628160669_
                          ___splice161526161527_
                          _target160631160672_
                          _tl160633160675_)
                   (letrec ((_loop160634160678_
                             (lambda (_hd160632160682_ _arity160638160685_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160632160682_))
                                   (let ((_e160635160688_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160632160682_))))
                                     (let ((_lp-tl160637160695_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160635160688_)))
                                           (_lp-hd160636160692_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160635160688_))))
                                       (_loop160634160678_
                                        _lp-tl160637160695_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160636160692_
                                                _arity160638160685_)))))
                                   (let ((_arity160639160698_
                                          (reverse _arity160638160685_)))
                                     (___kont161524161525_
                                      _arity160639160698_
                                      _hd160629160666_))))))
                     (_loop160634160678_ _target160631160672_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161519161520_))
                (let ((_e160616160737_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161519161520_))))
                  (let ((_tl160614160744_
                         (let () (declare (not safe)) (##cdr _e160616160737_)))
                        (_hd160615160741_
                         (let ()
                           (declare (not safe))
                           (##car _e160616160737_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160614160744_))
                        (let ((_e160619160747_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160614160744_))))
                          (let ((_tl160617160754_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160619160747_)))
                                (_hd160618160751_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160619160747_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160617160754_))
                                (let ((_e160622160757_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160617160754_))))
                                  (let ((_tl160620160764_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160622160757_)))
                                        (_hd160621160761_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160622160757_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160620160764_))
                                        (___kont161522161523_
                                         _hd160621160761_
                                         _hd160618160751_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160617160754_))
                                            (let ((___splice161526161527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160617160754_
                                                      '0))))
                                              (let ((_tl160633160675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161526161527_
                                                        '1)))
                                                    (_target160631160672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161526161527_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160633160675_))
                                                    (___match161568161569_
                                                     _e160616160737_
                                                     _hd160615160741_
                                                     _tl160614160744_
                                                     _e160619160747_
                                                     _hd160618160751_
                                                     _tl160617160754_
                                                     ___splice161526161527_
                                                     _target160631160672_
                                                     _tl160633160675_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160610160645_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160610160645_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160617160754_))
                                    (let ((___splice161526161527_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160617160754_
                                              '0))))
                                      (let ((_tl160633160675_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161526161527_
                                                '1)))
                                            (_target160631160672_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161526161527_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160633160675_))
                                            (___match161568161569_
                                             _e160616160737_
                                             _hd160615160741_
                                             _tl160614160744_
                                             _e160619160747_
                                             _hd160618160751_
                                             _tl160617160754_
                                             ___splice161526161527_
                                             _target160631160672_
                                             _tl160633160675_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160610160645_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160610160645_))))))
                        (let () (declare (not safe)) (_g160610160645_)))))
                (let () (declare (not safe)) (_g160610160645_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160789_)
      (let* ((_g160793160828_
              (lambda (_g160794160824_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160794160824_))))
             (_g160792160956_
              (lambda (_g160794160832_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160794160832_))
                    (let ((_e160799160835_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160794160832_))))
                      (let ((_hd160798160839_
                             (let ()
                               (declare (not safe))
                               (##car _e160799160835_)))
                            (_tl160797160842_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160799160835_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160797160842_))
                            (let ((_g161849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160797160842_
                                      '0))))
                              (begin
                                (let ((_g161850_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161849_)
                                             (##vector-length _g161849_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161850_ 2)))
                                      (error "Context expects 2 values"
                                             _g161850_)))
                                (let ((_target160800160845_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161849_ 0)))
                                      (_tl160802160848_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161849_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160802160848_))
                                      (letrec ((_loop160803160851_
                                                (lambda (_hd160801160855_
                                                         _arity160807160858_
                                                         _prim160808160860_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160801160855_))
                                                      (let ((_e160804160863_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160801160855_))))
                (let ((_lp-hd160805160867_
                       (let () (declare (not safe)) (##car _e160804160863_)))
                      (_lp-tl160806160870_
                       (let () (declare (not safe)) (##cdr _e160804160863_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160805160867_))
                      (let ((_e160813160873_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160805160867_))))
                        (let ((_hd160812160877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160813160873_)))
                              (_tl160811160880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160813160873_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160811160880_))
                              (let ((_g161859_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160811160880_
                                        '0))))
                                (begin
                                  (let ((_g161860_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161859_)
                                               (##vector-length _g161859_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161860_ 2)))
                                        (error "Context expects 2 values"
                                               _g161860_)))
                                  (let ((_target160814160883_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161859_ 0)))
                                        (_tl160816160886_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161859_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160816160886_))
                                        (letrec ((_loop160817160889_
                                                  (lambda (_hd160815160893_
                                                           _arity160821160896_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160815160893_))
                                                        (let ((_e160818160899_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160815160893_))))
                  (let ((_lp-hd160819160903_
                         (let () (declare (not safe)) (##car _e160818160899_)))
                        (_lp-tl160820160906_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160818160899_))))
                    (_loop160817160889_
                     _lp-tl160820160906_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160819160903_ _arity160821160896_)))))
                (let ((_arity160822160909_ (reverse _arity160821160896_)))
                  (_loop160803160851_
                   _lp-tl160806160870_
                   (let ()
                     (declare (not safe))
                     (cons _arity160822160909_ _arity160807160858_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160812160877_ _prim160808160860_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160817160889_
                                           _target160814160883_
                                           '()))
                                        (_g160793160828_ _g160794160832_)))))
                              (_g160793160828_ _g160794160832_))))
                      (_g160793160828_ _g160794160832_))))
              (let ((_arity160809160913_ (reverse _arity160807160858_))
                    (_prim160810160916_ (reverse _prim160808160860_)))
                ((lambda (_L160919_ _L160921_)
                   (let ((__tmp161858
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161851
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160919_
                               _L160921_))
                            (let ((__tmp161852
                                   (lambda (_g160936160942_
                                            _g160937160945_
                                            _g160938160947_)
                                     (let ((__tmp161853
                                            (let ((__tmp161857
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161854
                                                   (let ((__tmp161855
                                                          (let ((__tmp161856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160939160950_ _g160940160953_)
                           (let ()
                             (declare (not safe))
                             (cons _g160939160950_ _g160940160953_)))))
                    (declare (not safe))
                    (foldr1 __tmp161856 '() _g160936160942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160937160945_
                                                           __tmp161855))))
                                              (declare (not safe))
                                              (cons __tmp161857 __tmp161854))))
                                       (declare (not safe))
                                       (cons __tmp161853 _g160938160947_)))))
                              (declare (not safe))
                              (foldr2 __tmp161852 '() _L160919_ _L160921_)))))
                     (declare (not safe))
                     (cons __tmp161858 __tmp161851)))
                 _arity160809160913_
                 _prim160810160916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160803160851_
                                         _target160800160845_
                                         '()
                                         '()))
                                      (_g160793160828_ _g160794160832_)))))
                            (_g160793160828_ _g160794160832_))))
                    (_g160793160828_ _g160794160832_)))))
        (_g160792160956_ _$stx160789_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160962_)
      (let* ((_g160966161001_
              (lambda (_g160967160997_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160967160997_))))
             (_g160965161129_
              (lambda (_g160967161005_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160967161005_))
                    (let ((_e160972161008_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160967161005_))))
                      (let ((_hd160971161012_
                             (let ()
                               (declare (not safe))
                               (##car _e160972161008_)))
                            (_tl160970161015_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160972161008_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160970161015_))
                            (let ((_g161861_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160970161015_
                                      '0))))
                              (begin
                                (let ((_g161862_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161861_)
                                             (##vector-length _g161861_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161862_ 2)))
                                      (error "Context expects 2 values"
                                             _g161862_)))
                                (let ((_target160973161018_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161861_ 0)))
                                      (_tl160975161021_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161861_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160975161021_))
                                      (letrec ((_loop160976161024_
                                                (lambda (_hd160974161028_
                                                         _arity160980161031_
                                                         _prim160981161033_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160974161028_))
                                                      (let ((_e160977161036_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160974161028_))))
                (let ((_lp-hd160978161040_
                       (let () (declare (not safe)) (##car _e160977161036_)))
                      (_lp-tl160979161043_
                       (let () (declare (not safe)) (##cdr _e160977161036_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160978161040_))
                      (let ((_e160986161046_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160978161040_))))
                        (let ((_hd160985161050_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160986161046_)))
                              (_tl160984161053_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160986161046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160984161053_))
                              (let ((_g161871_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160984161053_
                                        '0))))
                                (begin
                                  (let ((_g161872_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161871_)
                                               (##vector-length _g161871_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161872_ 2)))
                                        (error "Context expects 2 values"
                                               _g161872_)))
                                  (let ((_target160987161056_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161871_ 0)))
                                        (_tl160989161059_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161871_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160989161059_))
                                        (letrec ((_loop160990161062_
                                                  (lambda (_hd160988161066_
                                                           _arity160994161069_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160988161066_))
                                                        (let ((_e160991161072_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160988161066_))))
                  (let ((_lp-hd160992161076_
                         (let () (declare (not safe)) (##car _e160991161072_)))
                        (_lp-tl160993161079_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160991161072_))))
                    (_loop160990161062_
                     _lp-tl160993161079_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160992161076_ _arity160994161069_)))))
                (let ((_arity160995161082_ (reverse _arity160994161069_)))
                  (_loop160976161024_
                   _lp-tl160979161043_
                   (let ()
                     (declare (not safe))
                     (cons _arity160995161082_ _arity160980161031_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160985161050_ _prim160981161033_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160990161062_
                                           _target160987161056_
                                           '()))
                                        (_g160966161001_ _g160967161005_)))))
                              (_g160966161001_ _g160967161005_))))
                      (_g160966161001_ _g160967161005_))))
              (let ((_arity160982161086_ (reverse _arity160980161031_))
                    (_prim160983161089_ (reverse _prim160981161033_)))
                ((lambda (_L161092_ _L161094_)
                   (let ((__tmp161870
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161863
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161092_
                               _L161094_))
                            (let ((__tmp161864
                                   (lambda (_g161109161115_
                                            _g161110161118_
                                            _g161111161120_)
                                     (let ((__tmp161865
                                            (let ((__tmp161869
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161866
                                                   (let ((__tmp161867
                                                          (let ((__tmp161868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161112161123_ _g161113161126_)
                           (let ()
                             (declare (not safe))
                             (cons _g161112161123_ _g161113161126_)))))
                    (declare (not safe))
                    (foldr1 __tmp161868 '() _g161109161115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161110161118_
                                                           __tmp161867))))
                                              (declare (not safe))
                                              (cons __tmp161869 __tmp161866))))
                                       (declare (not safe))
                                       (cons __tmp161865 _g161111161120_)))))
                              (declare (not safe))
                              (foldr2 __tmp161864 '() _L161092_ _L161094_)))))
                     (declare (not safe))
                     (cons __tmp161870 __tmp161863)))
                 _arity160982161086_
                 _prim160983161089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160976161024_
                                         _target160973161018_
                                         '()
                                         '()))
                                      (_g160966161001_ _g160967161005_)))))
                            (_g160966161001_ _g160967161005_))))
                    (_g160966161001_ _g160967161005_)))))
        (_g160965161129_ _$stx160962_)))))
