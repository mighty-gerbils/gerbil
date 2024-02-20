(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158045_)
      (let* ((_g158049158067_
              (lambda (_g158050158063_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158050158063_))))
             (_g158048158122_
              (lambda (_g158050158071_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158050158071_))
                    (let ((_e158055158074_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158050158071_))))
                      (let ((_hd158054158078_
                             (let ()
                               (declare (not safe))
                               (##car _e158055158074_)))
                            (_tl158053158081_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158055158074_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158053158081_))
                            (let ((_e158058158084_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158053158081_))))
                              (let ((_hd158057158088_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158058158084_)))
                                    (_tl158056158091_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158058158084_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158056158091_))
                                    (let ((_e158061158094_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158056158091_))))
                                      (let ((_hd158060158098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158061158094_)))
                                            (_tl158059158101_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158061158094_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158059158101_))
                                            ((lambda (_L158104_ _L158106_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158106_))
                                                   (let ((__tmp161586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161581
                                                          (let ((__tmp161583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161585
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161584
                                (let ()
                                  (declare (not safe))
                                  (cons _L158106_ '()))))
                           (declare (not safe))
                           (cons __tmp161585 __tmp161584)))
                        (__tmp161582
                         (let () (declare (not safe)) (cons _L158104_ '()))))
                    (declare (not safe))
                    (cons __tmp161583 __tmp161582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161586
                                                           __tmp161581))
                                                   (_g158049158067_
                                                    _g158050158071_)))
                                             _hd158060158098_
                                             _hd158057158088_)
                                            (_g158049158067_
                                             _g158050158071_))))
                                    (_g158049158067_ _g158050158071_))))
                            (_g158049158067_ _g158050158071_))))
                    (_g158049158067_ _g158050158071_)))))
        (_g158048158122_ _$stx158045_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158126_)
      (let* ((_g158130158159_
              (lambda (_g158131158155_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158131158155_))))
             (_g158129158259_
              (lambda (_g158131158163_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158131158163_))
                    (let ((_e158136158166_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158131158163_))))
                      (let ((_hd158135158170_
                             (let ()
                               (declare (not safe))
                               (##car _e158136158166_)))
                            (_tl158134158173_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158136158166_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158134158173_))
                            (let ((_g161587_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158134158173_
                                      '0))))
                              (begin
                                (let ((_g161588_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161587_)
                                             (##vector-length _g161587_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161588_ 2)))
                                      (error "Context expects 2 values"
                                             _g161588_)))
                                (let ((_target158137158176_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161587_ 0)))
                                      (_tl158139158179_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161587_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158139158179_))
                                      (letrec ((_loop158140158182_
                                                (lambda (_hd158138158186_
                                                         _type158144158189_
                                                         _symbol158145158191_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158138158186_))
                                                      (let ((_e158141158194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158138158186_))))
                (let ((_lp-hd158142158198_
                       (let () (declare (not safe)) (##car _e158141158194_)))
                      (_lp-tl158143158201_
                       (let () (declare (not safe)) (##cdr _e158141158194_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158142158198_))
                      (let ((_e158150158204_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158142158198_))))
                        (let ((_hd158149158208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158150158204_)))
                              (_tl158148158211_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158150158204_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158148158211_))
                              (let ((_e158153158214_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158148158211_))))
                                (let ((_hd158152158218_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158153158214_)))
                                      (_tl158151158221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158153158214_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158151158221_))
                                      (_loop158140158182_
                                       _lp-tl158143158201_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158152158218_
                                               _type158144158189_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158149158208_
                                               _symbol158145158191_)))
                                      (_g158130158159_ _g158131158163_))))
                              (_g158130158159_ _g158131158163_))))
                      (_g158130158159_ _g158131158163_))))
              (let ((_type158146158224_ (reverse _type158144158189_))
                    (_symbol158147158227_ (reverse _symbol158145158191_)))
                ((lambda (_L158230_ _L158232_)
                   (let ((__tmp161595
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161589
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158230_
                               _L158232_))
                            (let ((__tmp161590
                                   (lambda (_g158247158251_
                                            _g158248158254_
                                            _g158249158256_)
                                     (let ((__tmp161591
                                            (let ((__tmp161594
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161592
                                                   (let ((__tmp161593
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158247158251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158248158254_
                                                           __tmp161593))))
                                              (declare (not safe))
                                              (cons __tmp161594 __tmp161592))))
                                       (declare (not safe))
                                       (cons __tmp161591 _g158249158256_)))))
                              (declare (not safe))
                              (foldr2 __tmp161590 '() _L158230_ _L158232_)))))
                     (declare (not safe))
                     (cons __tmp161595 __tmp161589)))
                 _type158146158224_
                 _symbol158147158227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158140158182_
                                         _target158137158176_
                                         '()
                                         '()))
                                      (_g158130158159_ _g158131158163_)))))
                            (_g158130158159_ _g158131158163_))))
                    (_g158130158159_ _g158131158163_)))))
        (_g158129158259_ _$stx158126_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158264_)
      (let* ((___stx161146161147_ _$stx158264_)
             (_g158269158311_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161146161147_)))))
        (let ((___kont161149161150_
               (lambda (_L158439_ _L158441_ _L158442_ _L158443_)
                 (let ((__tmp161609
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161596
                        (let ((__tmp161606
                               (let ((__tmp161608
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161607
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158443_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161608 __tmp161607)))
                              (__tmp161597
                               (let ((__tmp161603
                                      (let ((__tmp161605
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161604
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158442_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161605 __tmp161604)))
                                     (__tmp161598
                                      (let ((__tmp161600
                                             (let ((__tmp161602
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161601
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158441_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161602 __tmp161601)))
                                            (__tmp161599
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158439_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161600 __tmp161599))))
                                 (declare (not safe))
                                 (cons __tmp161603 __tmp161598))))
                          (declare (not safe))
                          (cons __tmp161606 __tmp161597))))
                   (declare (not safe))
                   (cons __tmp161609 __tmp161596))))
              (___kont161151161152_
               (lambda (_L158358_ _L158360_ _L158361_ _L158362_)
                 (let ((__tmp161610
                        (let ((__tmp161611
                               (let ((__tmp161612
                                      (let ((__tmp161613
                                             (let ((__tmp161614
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161614 '()))))
                                        (declare (not safe))
                                        (cons _L158358_ __tmp161613))))
                                 (declare (not safe))
                                 (cons _L158360_ __tmp161612))))
                          (declare (not safe))
                          (cons _L158361_ __tmp161611))))
                   (declare (not safe))
                   (cons _L158362_ __tmp161610)))))
          (let ((___match161185161186_
                 (lambda (_e158277158389_
                          _hd158276158393_
                          _tl158275158396_
                          _e158280158399_
                          _hd158279158403_
                          _tl158278158406_
                          _e158283158409_
                          _hd158282158413_
                          _tl158281158416_
                          _e158286158419_
                          _hd158285158423_
                          _tl158284158426_
                          _e158289158429_
                          _hd158288158433_
                          _tl158287158436_)
                   (let ((_L158439_ _hd158288158433_)
                         (_L158441_ _hd158285158423_)
                         (_L158442_ _hd158282158413_)
                         (_L158443_ _hd158279158403_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158443_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158442_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158441_)))
                         (___kont161149161150_
                          _L158439_
                          _L158441_
                          _L158442_
                          _L158443_)
                         (let () (declare (not safe)) (_g158269158311_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161146161147_))
                (let ((_e158277158389_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161146161147_))))
                  (let ((_tl158275158396_
                         (let () (declare (not safe)) (##cdr _e158277158389_)))
                        (_hd158276158393_
                         (let ()
                           (declare (not safe))
                           (##car _e158277158389_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158275158396_))
                        (let ((_e158280158399_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158275158396_))))
                          (let ((_tl158278158406_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158280158399_)))
                                (_hd158279158403_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158280158399_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158278158406_))
                                (let ((_e158283158409_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158278158406_))))
                                  (let ((_tl158281158416_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158283158409_)))
                                        (_hd158282158413_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158283158409_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158281158416_))
                                        (let ((_e158286158419_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158281158416_))))
                                          (let ((_tl158284158426_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158286158419_)))
                                                (_hd158285158423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158286158419_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158284158426_))
                                                (let ((_e158289158429_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158284158426_))))
                                                  (let ((_tl158287158436_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158289158429_)))
                                                        (_hd158288158433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158289158429_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158287158436_))
                                                        (___match161185161186_
                                                         _e158277158389_
                                                         _hd158276158393_
                                                         _tl158275158396_
                                                         _e158280158399_
                                                         _hd158279158403_
                                                         _tl158278158406_
                                                         _e158283158409_
                                                         _hd158282158413_
                                                         _tl158281158416_
                                                         _e158286158419_
                                                         _hd158285158423_
                                                         _tl158284158426_
                                                         _e158289158429_
                                                         _hd158288158433_
                                                         _tl158287158436_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158269158311_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158284158426_))
                                                    (___kont161151161152_
                                                     _hd158285158423_
                                                     _hd158282158413_
                                                     _hd158279158403_
                                                     _hd158276158393_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158269158311_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158269158311_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158269158311_)))))
                        (let () (declare (not safe)) (_g158269158311_)))))
                (let () (declare (not safe)) (_g158269158311_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158468_)
      (let* ((_g158472158507_
              (lambda (_g158473158503_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158473158503_))))
             (_g158471158626_
              (lambda (_g158473158511_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158473158511_))
                    (let ((_e158479158514_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158473158511_))))
                      (let ((_hd158478158518_
                             (let ()
                               (declare (not safe))
                               (##car _e158479158514_)))
                            (_tl158477158521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158479158514_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158477158521_))
                            (let ((_g161615_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158477158521_
                                      '0))))
                              (begin
                                (let ((_g161616_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161615_)
                                             (##vector-length _g161615_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161616_ 2)))
                                      (error "Context expects 2 values"
                                             _g161616_)))
                                (let ((_target158480158524_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161615_ 0)))
                                      (_tl158482158527_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161615_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158482158527_))
                                      (letrec ((_loop158483158530_
                                                (lambda (_hd158481158534_
                                                         _symbol158487158537_
                                                         _method158488158539_
                                                         _type-t158489158541_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158481158534_))
                                                      (let ((_e158484158544_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158481158534_))))
                (let ((_lp-hd158485158548_
                       (let () (declare (not safe)) (##car _e158484158544_)))
                      (_lp-tl158486158551_
                       (let () (declare (not safe)) (##cdr _e158484158544_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158485158548_))
                      (let ((_e158495158554_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158485158548_))))
                        (let ((_hd158494158558_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158495158554_)))
                              (_tl158493158561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158495158554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158493158561_))
                              (let ((_e158498158564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158493158561_))))
                                (let ((_hd158497158568_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158498158564_)))
                                      (_tl158496158571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158498158564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158496158571_))
                                      (let ((_e158501158574_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158496158571_))))
                                        (let ((_hd158500158578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158501158574_)))
                                              (_tl158499158581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158501158574_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158499158581_))
                                              (_loop158483158530_
                                               _lp-tl158486158551_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158500158578_
                                                       _symbol158487158537_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158497158568_
                                                       _method158488158539_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158494158558_
                                                       _type-t158489158541_)))
                                              (_g158472158507_
                                               _g158473158511_))))
                                      (_g158472158507_ _g158473158511_))))
                              (_g158472158507_ _g158473158511_))))
                      (_g158472158507_ _g158473158511_))))
              (let ((_symbol158490158584_ (reverse _symbol158487158537_))
                    (_method158491158587_ (reverse _method158488158539_))
                    (_type-t158492158589_ (reverse _type-t158489158541_)))
                ((lambda (_L158592_ _L158594_ _L158595_)
                   (let ((__tmp161624
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161617
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158592_
                               _L158594_
                               _L158595_))
                            (let ((__tmp161618
                                   (lambda (_g158611158616_
                                            _g158612158619_
                                            _g158613158621_
                                            _g158614158623_)
                                     (let ((__tmp161619
                                            (let ((__tmp161623
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161620
                                                   (let ((__tmp161621
                                                          (let ((__tmp161622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158611158616_ '()))))
                    (declare (not safe))
                    (cons _g158612158619_ __tmp161622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158613158621_
                                                           __tmp161621))))
                                              (declare (not safe))
                                              (cons __tmp161623 __tmp161620))))
                                       (declare (not safe))
                                       (cons __tmp161619 _g158614158623_)))))
                              (declare (not safe))
                              (foldr* __tmp161618
                                      '()
                                      _L158592_
                                      _L158594_
                                      _L158595_)))))
                     (declare (not safe))
                     (cons __tmp161624 __tmp161617)))
                 _symbol158490158584_
                 _method158491158587_
                 _type-t158492158589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158483158530_
                                         _target158480158524_
                                         '()
                                         '()
                                         '()))
                                      (_g158472158507_ _g158473158511_)))))
                            (_g158472158507_ _g158473158511_))))
                    (_g158472158507_ _g158473158511_)))))
        (_g158471158626_ _$stx158468_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158631_)
      (let* ((_g158635158668_
              (lambda (_g158636158664_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158636158664_))))
             (_g158634158782_
              (lambda (_g158636158672_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158636158672_))
                    (let ((_e158642158675_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158636158672_))))
                      (let ((_hd158641158679_
                             (let ()
                               (declare (not safe))
                               (##car _e158642158675_)))
                            (_tl158640158682_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158642158675_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158640158682_))
                            (let ((_e158645158685_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158640158682_))))
                              (let ((_hd158644158689_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158645158685_)))
                                    (_tl158643158692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158645158685_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158643158692_))
                                    (let ((_g161625_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158643158692_
                                              '0))))
                                      (begin
                                        (let ((_g161626_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161625_)
                                                     (##vector-length
                                                      _g161625_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161626_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161626_)))
                                        (let ((_target158646158695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161625_ 0)))
                                              (_tl158648158698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161625_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158648158698_))
                                              (letrec ((_loop158649158701_
                                                        (lambda (_hd158647158705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158653158708_
                         _method158654158710_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158647158705_))
                      (let ((_e158650158713_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158647158705_))))
                        (let ((_lp-hd158651158717_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158650158713_)))
                              (_lp-tl158652158720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158650158713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158651158717_))
                              (let ((_e158659158723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158651158717_))))
                                (let ((_hd158658158727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158659158723_)))
                                      (_tl158657158730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158659158723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158657158730_))
                                      (let ((_e158662158733_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158657158730_))))
                                        (let ((_hd158661158737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158662158733_)))
                                              (_tl158660158740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158662158733_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158660158740_))
                                              (_loop158649158701_
                                               _lp-tl158652158720_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158661158737_
                                                       _symbol158653158708_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158658158727_
                                                       _method158654158710_)))
                                              (_g158635158668_
                                               _g158636158672_))))
                                      (_g158635158668_ _g158636158672_))))
                              (_g158635158668_ _g158636158672_))))
                      (let ((_symbol158655158743_
                             (reverse _symbol158653158708_))
                            (_method158656158746_
                             (reverse _method158654158710_)))
                        ((lambda (_L158749_ _L158751_ _L158752_)
                           (let ((__tmp161634
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161627
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158749_
                                       _L158751_))
                                    (let ((__tmp161628
                                           (lambda (_g158770158774_
                                                    _g158771158777_
                                                    _g158772158779_)
                                             (let ((__tmp161629
                                                    (let ((__tmp161633
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161630
                                                           (let ((__tmp161631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161632
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158770158774_ '()))))
                            (declare (not safe))
                            (cons _g158771158777_ __tmp161632))))
                     (declare (not safe))
                     (cons _L158752_ __tmp161631))))
              (declare (not safe))
              (cons __tmp161633 __tmp161630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161629
                                                     _g158772158779_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161628
                                              '()
                                              _L158749_
                                              _L158751_)))))
                             (declare (not safe))
                             (cons __tmp161634 __tmp161627)))
                         _symbol158655158743_
                         _method158656158746_
                         _hd158644158689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158649158701_
                                                 _target158646158695_
                                                 '()
                                                 '()))
                                              (_g158635158668_
                                               _g158636158672_)))))
                                    (_g158635158668_ _g158636158672_))))
                            (_g158635158668_ _g158636158672_))))
                    (_g158635158668_ _g158636158672_)))))
        (_g158634158782_ _$stx158631_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158787_)
      (let* ((_g158791158805_
              (lambda (_g158792158801_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158792158801_))))
             (_g158790158846_
              (lambda (_g158792158809_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158792158809_))
                    (let ((_e158796158812_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158792158809_))))
                      (let ((_hd158795158816_
                             (let ()
                               (declare (not safe))
                               (##car _e158796158812_)))
                            (_tl158794158819_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158796158812_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158794158819_))
                            (let ((_e158799158822_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158794158819_))))
                              (let ((_hd158798158826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158799158822_)))
                                    (_tl158797158829_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158799158822_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158797158829_))
                                    ((lambda (_L158832_)
                                       (let ((__tmp161639
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161635
                                              (let ((__tmp161636
                                                     (let ((__tmp161638
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161637
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161638 __tmp161637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161636 '()))))
                                         (declare (not safe))
                                         (cons __tmp161639 __tmp161635)))
                                     _hd158798158826_)
                                    (_g158791158805_ _g158792158809_))))
                            (_g158791158805_ _g158792158809_))))
                    (_g158791158805_ _g158792158809_)))))
        (_g158790158846_ _$stx158787_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158850_)
      (let* ((_g158854158904_
              (lambda (_g158855158900_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158855158900_))))
             (_g158853159071_
              (lambda (_g158855158908_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158855158908_))
                    (let ((_e158868158911_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158855158908_))))
                      (let ((_hd158867158915_
                             (let ()
                               (declare (not safe))
                               (##car _e158868158911_)))
                            (_tl158866158918_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158868158911_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158866158918_))
                            (let ((_e158871158921_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158866158918_))))
                              (let ((_hd158870158925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158871158921_)))
                                    (_tl158869158928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158871158921_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158869158928_))
                                    (let ((_e158874158931_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158869158928_))))
                                      (let ((_hd158873158935_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158874158931_)))
                                            (_tl158872158938_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158874158931_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158872158938_))
                                            (let ((_e158877158941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158872158938_))))
                                              (let ((_hd158876158945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158877158941_)))
                                                    (_tl158875158948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158877158941_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158875158948_))
                                                    (let ((_e158880158951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158875158948_))))
                                                      (let ((_hd158879158955_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158880158951_)))
                    (_tl158878158958_
                     (let () (declare (not safe)) (##cdr _e158880158951_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158878158958_))
                    (let ((_e158883158961_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158878158958_))))
                      (let ((_hd158882158965_
                             (let ()
                               (declare (not safe))
                               (##car _e158883158961_)))
                            (_tl158881158968_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158883158961_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158881158968_))
                            (let ((_e158886158971_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158881158968_))))
                              (let ((_hd158885158975_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158886158971_)))
                                    (_tl158884158978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158886158971_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158884158978_))
                                    (let ((_e158889158981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158884158978_))))
                                      (let ((_hd158888158985_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158889158981_)))
                                            (_tl158887158988_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158889158981_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158887158988_))
                                            (let ((_e158892158991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158887158988_))))
                                              (let ((_hd158891158995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158892158991_)))
                                                    (_tl158890158998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158892158991_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158890158998_))
                                                    (let ((_e158895159001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158890158998_))))
                                                      (let ((_hd158894159005_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158895159001_)))
                    (_tl158893159008_
                     (let () (declare (not safe)) (##cdr _e158895159001_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158893159008_))
                    (let ((_e158898159011_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158893159008_))))
                      (let ((_hd158897159015_
                             (let ()
                               (declare (not safe))
                               (##car _e158898159011_)))
                            (_tl158896159018_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158898159011_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158896159018_))
                            ((lambda (_L159021_
                                      _L159023_
                                      _L159024_
                                      _L159025_
                                      _L159026_
                                      _L159027_
                                      _L159028_
                                      _L159029_
                                      _L159030_
                                      _L159031_)
                               (let ((__tmp161674
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161640
                                      (let ((__tmp161671
                                             (let ((__tmp161673
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161672
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159031_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161673 __tmp161672)))
                                            (__tmp161641
                                             (let ((__tmp161668
                                                    (let ((__tmp161670
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161669
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161670 __tmp161669)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161642
                                                    (let ((__tmp161665
                                                           (let ((__tmp161667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161666
                          (let () (declare (not safe)) (cons _L159029_ '()))))
                     (declare (not safe))
                     (cons __tmp161667 __tmp161666)))
                  (__tmp161643
                   (let ((__tmp161662
                          (let ((__tmp161664
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161663
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159028_ '()))))
                            (declare (not safe))
                            (cons __tmp161664 __tmp161663)))
                         (__tmp161644
                          (let ((__tmp161659
                                 (let ((__tmp161661
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161660
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159027_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161661 __tmp161660)))
                                (__tmp161645
                                 (let ((__tmp161656
                                        (let ((__tmp161658
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161657
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159026_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161658 __tmp161657)))
                                       (__tmp161646
                                        (let ((__tmp161647
                                               (let ((__tmp161648
                                                      (let ((__tmp161653
                                                             (let ((__tmp161655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161654
                            (let ()
                              (declare (not safe))
                              (cons _L159023_ '()))))
                       (declare (not safe))
                       (cons __tmp161655 __tmp161654)))
                    (__tmp161649
                     (let ((__tmp161650
                            (let ((__tmp161652
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161651
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159021_ '()))))
                              (declare (not safe))
                              (cons __tmp161652 __tmp161651))))
                       (declare (not safe))
                       (cons __tmp161650 '()))))
                (declare (not safe))
                (cons __tmp161653 __tmp161649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159024_
                                                       __tmp161648))))
                                          (declare (not safe))
                                          (cons _L159025_ __tmp161647))))
                                   (declare (not safe))
                                   (cons __tmp161656 __tmp161646))))
                            (declare (not safe))
                            (cons __tmp161659 __tmp161645))))
                     (declare (not safe))
                     (cons __tmp161662 __tmp161644))))
              (declare (not safe))
              (cons __tmp161665 __tmp161643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161668
                                                     __tmp161642))))
                                        (declare (not safe))
                                        (cons __tmp161671 __tmp161641))))
                                 (declare (not safe))
                                 (cons __tmp161674 __tmp161640)))
                             _hd158897159015_
                             _hd158894159005_
                             _hd158891158995_
                             _hd158888158985_
                             _hd158885158975_
                             _hd158882158965_
                             _hd158879158955_
                             _hd158876158945_
                             _hd158873158935_
                             _hd158870158925_)
                            (_g158854158904_ _g158855158908_))))
                    (_g158854158904_ _g158855158908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158854158904_
                                                     _g158855158908_))))
                                            (_g158854158904_
                                             _g158855158908_))))
                                    (_g158854158904_ _g158855158908_))))
                            (_g158854158904_ _g158855158908_))))
                    (_g158854158904_ _g158855158908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158854158904_
                                                     _g158855158908_))))
                                            (_g158854158904_
                                             _g158855158908_))))
                                    (_g158854158904_ _g158855158908_))))
                            (_g158854158904_ _g158855158908_))))
                    (_g158854158904_ _g158855158908_)))))
        (_g158853159071_ _$stx158850_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159075_)
      (let* ((_g159079159093_
              (lambda (_g159080159089_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159080159089_))))
             (_g159078159134_
              (lambda (_g159080159097_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159080159097_))
                    (let ((_e159084159100_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159080159097_))))
                      (let ((_hd159083159104_
                             (let ()
                               (declare (not safe))
                               (##car _e159084159100_)))
                            (_tl159082159107_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159084159100_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159082159107_))
                            (let ((_e159087159110_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159082159107_))))
                              (let ((_hd159086159114_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159087159110_)))
                                    (_tl159085159117_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159087159110_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159085159117_))
                                    ((lambda (_L159120_)
                                       (let ((__tmp161679
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161675
                                              (let ((__tmp161676
                                                     (let ((__tmp161678
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161677
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161678 __tmp161677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161676 '()))))
                                         (declare (not safe))
                                         (cons __tmp161679 __tmp161675)))
                                     _hd159086159114_)
                                    (_g159079159093_ _g159080159097_))))
                            (_g159079159093_ _g159080159097_))))
                    (_g159079159093_ _g159080159097_)))))
        (_g159078159134_ _$stx159075_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159138_)
      (let* ((_g159142159156_
              (lambda (_g159143159152_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159143159152_))))
             (_g159141159197_
              (lambda (_g159143159160_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159143159160_))
                    (let ((_e159147159163_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159143159160_))))
                      (let ((_hd159146159167_
                             (let ()
                               (declare (not safe))
                               (##car _e159147159163_)))
                            (_tl159145159170_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159147159163_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159145159170_))
                            (let ((_e159150159173_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159145159170_))))
                              (let ((_hd159149159177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159150159173_)))
                                    (_tl159148159180_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159150159173_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159148159180_))
                                    ((lambda (_L159183_)
                                       (let ((__tmp161684
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161680
                                              (let ((__tmp161681
                                                     (let ((__tmp161683
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161682
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161683 __tmp161682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161681 '()))))
                                         (declare (not safe))
                                         (cons __tmp161684 __tmp161680)))
                                     _hd159149159177_)
                                    (_g159142159156_ _g159143159160_))))
                            (_g159142159156_ _g159143159160_))))
                    (_g159142159156_ _g159143159160_)))))
        (_g159141159197_ _$stx159138_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159201_)
      (let* ((_g159205159227_
              (lambda (_g159206159223_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159206159223_))))
             (_g159204159296_
              (lambda (_g159206159231_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159206159231_))
                    (let ((_e159212159234_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159206159231_))))
                      (let ((_hd159211159238_
                             (let ()
                               (declare (not safe))
                               (##car _e159212159234_)))
                            (_tl159210159241_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159212159234_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159210159241_))
                            (let ((_e159215159244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159210159241_))))
                              (let ((_hd159214159248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159215159244_)))
                                    (_tl159213159251_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159215159244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159213159251_))
                                    (let ((_e159218159254_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159213159251_))))
                                      (let ((_hd159217159258_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159218159254_)))
                                            (_tl159216159261_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159218159254_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159216159261_))
                                            (let ((_e159221159264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159216159261_))))
                                              (let ((_hd159220159268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159221159264_)))
                                                    (_tl159219159271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159221159264_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159219159271_))
                                                    ((lambda (_L159274_
                                                              _L159276_
                                                              _L159277_)
                                                       (let ((__tmp161694
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161685
                      (let ((__tmp161691
                             (let ((__tmp161693
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161692
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159277_ '()))))
                               (declare (not safe))
                               (cons __tmp161693 __tmp161692)))
                            (__tmp161686
                             (let ((__tmp161688
                                    (let ((__tmp161690
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161689
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159276_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161690 __tmp161689)))
                                   (__tmp161687
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159274_ '()))))
                               (declare (not safe))
                               (cons __tmp161688 __tmp161687))))
                        (declare (not safe))
                        (cons __tmp161691 __tmp161686))))
                 (declare (not safe))
                 (cons __tmp161694 __tmp161685)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159220159268_
                                                     _hd159217159258_
                                                     _hd159214159248_)
                                                    (_g159205159227_
                                                     _g159206159231_))))
                                            (_g159205159227_
                                             _g159206159231_))))
                                    (_g159205159227_ _g159206159231_))))
                            (_g159205159227_ _g159206159231_))))
                    (_g159205159227_ _g159206159231_)))))
        (_g159204159296_ _$stx159201_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159300_)
      (let* ((_g159304159326_
              (lambda (_g159305159322_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159305159322_))))
             (_g159303159395_
              (lambda (_g159305159330_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159305159330_))
                    (let ((_e159311159333_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159305159330_))))
                      (let ((_hd159310159337_
                             (let ()
                               (declare (not safe))
                               (##car _e159311159333_)))
                            (_tl159309159340_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159311159333_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159309159340_))
                            (let ((_e159314159343_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159309159340_))))
                              (let ((_hd159313159347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159314159343_)))
                                    (_tl159312159350_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159314159343_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159312159350_))
                                    (let ((_e159317159353_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159312159350_))))
                                      (let ((_hd159316159357_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159317159353_)))
                                            (_tl159315159360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159317159353_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159315159360_))
                                            (let ((_e159320159363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159315159360_))))
                                              (let ((_hd159319159367_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159320159363_)))
                                                    (_tl159318159370_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159320159363_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159318159370_))
                                                    ((lambda (_L159373_
                                                              _L159375_
                                                              _L159376_)
                                                       (let ((__tmp161704
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161695
                      (let ((__tmp161701
                             (let ((__tmp161703
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161702
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159376_ '()))))
                               (declare (not safe))
                               (cons __tmp161703 __tmp161702)))
                            (__tmp161696
                             (let ((__tmp161698
                                    (let ((__tmp161700
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161699
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159375_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161700 __tmp161699)))
                                   (__tmp161697
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159373_ '()))))
                               (declare (not safe))
                               (cons __tmp161698 __tmp161697))))
                        (declare (not safe))
                        (cons __tmp161701 __tmp161696))))
                 (declare (not safe))
                 (cons __tmp161704 __tmp161695)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159319159367_
                                                     _hd159316159357_
                                                     _hd159313159347_)
                                                    (_g159304159326_
                                                     _g159305159330_))))
                                            (_g159304159326_
                                             _g159305159330_))))
                                    (_g159304159326_ _g159305159330_))))
                            (_g159304159326_ _g159305159330_))))
                    (_g159304159326_ _g159305159330_)))))
        (_g159303159395_ _$stx159300_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159399_)
      (let* ((___stx161214161215_ _$stx159399_)
             (_g159407159475_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161214161215_)))))
        (let ((___kont161217161218_
               (lambda (_L159753_ _L159755_)
                 (let ((__tmp161720
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161705
                        (let ((__tmp161716
                               (let ((__tmp161719
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161717
                                      (let ((__tmp161718
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161718 '()))))
                                 (declare (not safe))
                                 (cons __tmp161719 __tmp161717)))
                              (__tmp161706
                               (let ((__tmp161713
                                      (let ((__tmp161715
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161714
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159755_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161715 __tmp161714)))
                                     (__tmp161707
                                      (let ((__tmp161708
                                             (let ((__tmp161709
                                                    (let ((__tmp161710
                                                           (let ((__tmp161712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161711
                          (let () (declare (not safe)) (cons _L159753_ '()))))
                     (declare (not safe))
                     (cons __tmp161712 __tmp161711))))
              (declare (not safe))
              (cons __tmp161710 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159753_ __tmp161709))))
                                        (declare (not safe))
                                        (cons '#f __tmp161708))))
                                 (declare (not safe))
                                 (cons __tmp161713 __tmp161707))))
                          (declare (not safe))
                          (cons __tmp161716 __tmp161706))))
                   (declare (not safe))
                   (cons __tmp161720 __tmp161705))))
              (___kont161219161220_
               (lambda (_L159684_ _L159686_)
                 (let ((__tmp161721
                        (let ((__tmp161722
                               (let ((__tmp161723
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159684_ __tmp161723))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161722))))
                   (declare (not safe))
                   (cons _L159686_ __tmp161721))))
              (___kont161221161222_
               (lambda (_L159623_ _L159625_)
                 (let ((__tmp161737
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161724
                        (let ((__tmp161733
                               (let ((__tmp161736
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161734
                                      (let ((__tmp161735
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161735 '()))))
                                 (declare (not safe))
                                 (cons __tmp161736 __tmp161734)))
                              (__tmp161725
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
                                               (cons _L159625_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161732 __tmp161731)))
                                     (__tmp161726
                                      (let ((__tmp161727
                                             (let ((__tmp161729
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161728
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159623_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161729
                                                     __tmp161728))))
                                        (declare (not safe))
                                        (cons __tmp161727 '()))))
                                 (declare (not safe))
                                 (cons __tmp161730 __tmp161726))))
                          (declare (not safe))
                          (cons __tmp161733 __tmp161725))))
                   (declare (not safe))
                   (cons __tmp161737 __tmp161724))))
              (___kont161223161224_
               (lambda (_L159555_ _L159557_)
                 (let ((__tmp161751
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161738
                        (let ((__tmp161747
                               (let ((__tmp161750
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161748
                                      (let ((__tmp161749
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161749 '()))))
                                 (declare (not safe))
                                 (cons __tmp161750 __tmp161748)))
                              (__tmp161739
                               (let ((__tmp161744
                                      (let ((__tmp161746
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161745
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159557_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161746 __tmp161745)))
                                     (__tmp161740
                                      (let ((__tmp161741
                                             (let ((__tmp161743
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161742
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159555_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161743
                                                     __tmp161742))))
                                        (declare (not safe))
                                        (cons __tmp161741 '()))))
                                 (declare (not safe))
                                 (cons __tmp161744 __tmp161740))))
                          (declare (not safe))
                          (cons __tmp161747 __tmp161739))))
                   (declare (not safe))
                   (cons __tmp161751 __tmp161738))))
              (___kont161225161226_
               (lambda (_L159502_ _L159504_)
                 (let ((__tmp161752
                        (let ((__tmp161753
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159502_ __tmp161753))))
                   (declare (not safe))
                   (cons _L159504_ __tmp161752)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161214161215_))
              (let ((_e159413159709_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161214161215_))))
                (let ((_tl159411159716_
                       (let () (declare (not safe)) (##cdr _e159413159709_)))
                      (_hd159412159713_
                       (let () (declare (not safe)) (##car _e159413159709_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159411159716_))
                      (let ((_e159416159719_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159411159716_))))
                        (let ((_tl159414159726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159416159719_)))
                              (_hd159415159723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159416159719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159414159726_))
                              (let ((_e159419159729_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159414159726_))))
                                (let ((_tl159417159736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159419159729_)))
                                      (_hd159418159733_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159419159729_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159418159733_))
                                      (let ((_e159420159739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159418159733_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159420159739_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159417159736_))
                                                (let ((_e159423159743_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159417159736_))))
                                                  (let ((_tl159421159750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159423159743_)))
                                                        (_hd159422159747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159423159743_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159421159750_))
                                                        (___kont161217161218_
                                                         _hd159422159747_
                                                         _hd159415159723_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159415159723_))
                                                            (let ((_e159432159670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159415159723_))))
                      (declare (not safe))
                      (_g159407159475_))
                    (let () (declare (not safe)) (_g159407159475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159415159723_))
                                                    (let ((_e159432159670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159415159723_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159432159670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159417159736_))
                      (___kont161219161220_ _hd159418159733_ _hd159412159713_)
                      (let () (declare (not safe)) (_g159407159475_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159417159736_))
                      (___kont161223161224_ _hd159418159733_ _hd159415159723_)
                      (let () (declare (not safe)) (_g159407159475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159417159736_))
                                                        (___kont161223161224_
                                                         _hd159418159733_
                                                         _hd159415159723_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159407159475_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159415159723_))
                                                (let ((_e159432159670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159415159723_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159432159670_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159417159736_))
                                                          (___kont161219161220_
                                                           _hd159418159733_
                                                           _hd159412159713_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159417159736_))
                      (let ((_e159450159613_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159417159736_))))
                        (let ((_tl159448159620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159450159613_)))
                              (_hd159449159617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159450159613_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159448159620_))
                              (___kont161221161222_
                               _hd159449159617_
                               _hd159418159733_)
                              (let ()
                                (declare (not safe))
                                (_g159407159475_)))))
                      (let () (declare (not safe)) (_g159407159475_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159417159736_))
                  (___kont161223161224_ _hd159418159733_ _hd159415159723_)
                  (let () (declare (not safe)) (_g159407159475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159417159736_))
                                                    (___kont161223161224_
                                                     _hd159418159733_
                                                     _hd159415159723_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159407159475_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159415159723_))
                                          (let ((_e159432159670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159415159723_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159432159670_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159417159736_))
                                                    (___kont161219161220_
                                                     _hd159418159733_
                                                     _hd159412159713_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159417159736_))
                                                        (let ((_e159450159613_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159417159736_))))
                  (let ((_tl159448159620_
                         (let () (declare (not safe)) (##cdr _e159450159613_)))
                        (_hd159449159617_
                         (let ()
                           (declare (not safe))
                           (##car _e159450159613_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159448159620_))
                        (___kont161221161222_
                         _hd159449159617_
                         _hd159418159733_)
                        (let () (declare (not safe)) (_g159407159475_)))))
                (let () (declare (not safe)) (_g159407159475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159417159736_))
                                                    (___kont161223161224_
                                                     _hd159418159733_
                                                     _hd159415159723_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159407159475_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159417159736_))
                                              (___kont161223161224_
                                               _hd159418159733_
                                               _hd159415159723_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159407159475_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159415159723_))
                                  (let ((_e159432159670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159415159723_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159414159726_))
                                        (___kont161225161226_
                                         _hd159415159723_
                                         _hd159412159713_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159407159475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159414159726_))
                                      (___kont161225161226_
                                       _hd159415159723_
                                       _hd159412159713_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159407159475_)))))))
                      (let () (declare (not safe)) (_g159407159475_)))))
              (let () (declare (not safe)) (_g159407159475_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159777_)
      (let* ((___stx161354161355_ _$stx159777_)
             (_g159782159837_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161354161355_)))))
        (let ((___kont161357161358_
               (lambda (_L160022_ _L160024_)
                 (let ((__tmp161769
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161754
                        (let ((__tmp161765
                               (let ((__tmp161768
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161766
                                      (let ((__tmp161767
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161767 '()))))
                                 (declare (not safe))
                                 (cons __tmp161768 __tmp161766)))
                              (__tmp161755
                               (let ((__tmp161756
                                      (let ((__tmp161764
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161757
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160022_
                                                  _L160024_))
                                               (let ((__tmp161758
                                                      (lambda (_g160041160045_
                                                               _g160042160048_
                                                               _g160043160050_)
                                                        (let ((__tmp161759
                                                               (let ((__tmp161763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161760
                              (let ((__tmp161761
                                     (let ((__tmp161762
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160041160045_ '()))))
                                       (declare (not safe))
                                       (cons _g160042160048_ __tmp161762))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161761))))
                         (declare (not safe))
                         (cons __tmp161763 __tmp161760))))
                  (declare (not safe))
                  (cons __tmp161759 _g160043160050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161758
                                                         '()
                                                         _L160022_
                                                         _L160024_)))))
                                        (declare (not safe))
                                        (cons __tmp161764 __tmp161757))))
                                 (declare (not safe))
                                 (cons __tmp161756 '()))))
                          (declare (not safe))
                          (cons __tmp161765 __tmp161755))))
                   (declare (not safe))
                   (cons __tmp161769 __tmp161754))))
              (___kont161361161362_
               (lambda (_L159908_ _L159910_)
                 (let ((__tmp161784
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161770
                        (let ((__tmp161780
                               (let ((__tmp161783
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161781
                                      (let ((__tmp161782
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161782 '()))))
                                 (declare (not safe))
                                 (cons __tmp161783 __tmp161781)))
                              (__tmp161771
                               (let ((__tmp161772
                                      (let ((__tmp161779
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161773
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159908_
                                                  _L159910_))
                                               (let ((__tmp161774
                                                      (lambda (_g159925159929_
                                                               _g159926159932_
                                                               _g159927159934_)
                                                        (let ((__tmp161775
                                                               (let ((__tmp161778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161776
                              (let ((__tmp161777
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159925159929_ '()))))
                                (declare (not safe))
                                (cons _g159926159932_ __tmp161777))))
                         (declare (not safe))
                         (cons __tmp161778 __tmp161776))))
                  (declare (not safe))
                  (cons __tmp161775 _g159927159934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161774
                                                         '()
                                                         _L159908_
                                                         _L159910_)))))
                                        (declare (not safe))
                                        (cons __tmp161779 __tmp161773))))
                                 (declare (not safe))
                                 (cons __tmp161772 '()))))
                          (declare (not safe))
                          (cons __tmp161780 __tmp161771))))
                   (declare (not safe))
                   (cons __tmp161784 __tmp161770)))))
          (let* ((___match161405161406_
                  (lambda (_e159814159844_
                           _hd159813159848_
                           _tl159812159851_
                           ___splice161363161364_
                           _target159815159854_
                           _tl159817159857_)
                    (letrec ((_loop159818159860_
                              (lambda (_hd159816159864_
                                       _dispatch159822159867_
                                       _arity159823159869_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159816159864_))
                                    (let ((_e159819159872_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159816159864_))))
                                      (let ((_lp-tl159821159879_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159819159872_)))
                                            (_lp-hd159820159876_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159819159872_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159820159876_))
                                            (let ((_e159828159882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159820159876_))))
                                              (let ((_tl159826159889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159828159882_)))
                                                    (_hd159827159886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159828159882_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159826159889_))
                                                    (let ((_e159831159892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159826159889_))))
                                                      (let ((_tl159829159899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159831159892_)))
                    (_hd159830159896_
                     (let () (declare (not safe)) (##car _e159831159892_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159829159899_))
                    (_loop159818159860_
                     _lp-tl159821159879_
                     (let ()
                       (declare (not safe))
                       (cons _hd159830159896_ _dispatch159822159867_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159827159886_ _arity159823159869_)))
                    (let () (declare (not safe)) (_g159782159837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159782159837_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159782159837_)))))
                                    (let ((_arity159825159905_
                                           (reverse _arity159823159869_))
                                          (_dispatch159824159902_
                                           (reverse _dispatch159822159867_)))
                                      (___kont161361161362_
                                       _dispatch159824159902_
                                       _arity159825159905_))))))
                      (_loop159818159860_ _target159815159854_ '() '()))))
                 (___match161397161398_
                  (lambda (_e159814159844_ _hd159813159848_ _tl159812159851_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159812159851_))
                        (let ((___splice161363161364_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159812159851_
                                  '0))))
                          (let ((_tl159817159857_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161363161364_ '1)))
                                (_target159815159854_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161363161364_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159817159857_))
                                (___match161405161406_
                                 _e159814159844_
                                 _hd159813159848_
                                 _tl159812159851_
                                 ___splice161363161364_
                                 _target159815159854_
                                 _tl159817159857_)
                                (let ()
                                  (declare (not safe))
                                  (_g159782159837_)))))
                        (let () (declare (not safe)) (_g159782159837_)))))
                 (___match161391161392_
                  (lambda (_e159788159944_
                           _hd159787159948_
                           _tl159786159951_
                           _e159791159954_
                           _hd159790159958_
                           _tl159789159961_
                           _e159792159964_
                           ___splice161359161360_
                           _target159793159968_
                           _tl159795159971_)
                    (letrec ((_loop159796159974_
                              (lambda (_hd159794159978_
                                       _dispatch159800159981_
                                       _arity159801159983_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159794159978_))
                                    (let ((_e159797159986_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159794159978_))))
                                      (let ((_lp-tl159799159993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159797159986_)))
                                            (_lp-hd159798159990_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159797159986_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159798159990_))
                                            (let ((_e159806159996_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159798159990_))))
                                              (let ((_tl159804160003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159806159996_)))
                                                    (_hd159805160000_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159806159996_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159804160003_))
                                                    (let ((_e159809160006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159804160003_))))
                                                      (let ((_tl159807160013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159809160006_)))
                    (_hd159808160010_
                     (let () (declare (not safe)) (##car _e159809160006_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159807160013_))
                    (_loop159796159974_
                     _lp-tl159799159993_
                     (let ()
                       (declare (not safe))
                       (cons _hd159808160010_ _dispatch159800159981_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159805160000_ _arity159801159983_)))
                    (___match161397161398_
                     _e159788159944_
                     _hd159787159948_
                     _tl159786159951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161397161398_
                                                     _e159788159944_
                                                     _hd159787159948_
                                                     _tl159786159951_))))
                                            (___match161397161398_
                                             _e159788159944_
                                             _hd159787159948_
                                             _tl159786159951_))))
                                    (let ((_arity159803160019_
                                           (reverse _arity159801159983_))
                                          (_dispatch159802160016_
                                           (reverse _dispatch159800159981_)))
                                      (___kont161357161358_
                                       _dispatch159802160016_
                                       _arity159803160019_))))))
                      (_loop159796159974_ _target159793159968_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161354161355_))
                (let ((_e159788159944_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161354161355_))))
                  (let ((_tl159786159951_
                         (let () (declare (not safe)) (##cdr _e159788159944_)))
                        (_hd159787159948_
                         (let ()
                           (declare (not safe))
                           (##car _e159788159944_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159786159951_))
                        (let ((_e159791159954_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159786159951_))))
                          (let ((_tl159789159961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159791159954_)))
                                (_hd159790159958_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159791159954_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159790159958_))
                                (let ((_e159792159964_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159790159958_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159792159964_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159789159961_))
                                          (let ((___splice161359161360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159789159961_
                                                    '0))))
                                            (let ((_tl159795159971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161359161360_
                                                      '1)))
                                                  (_target159793159968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161359161360_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159795159971_))
                                                  (___match161391161392_
                                                   _e159788159944_
                                                   _hd159787159948_
                                                   _tl159786159951_
                                                   _e159791159954_
                                                   _hd159790159958_
                                                   _tl159789159961_
                                                   _e159792159964_
                                                   ___splice161359161360_
                                                   _target159793159968_
                                                   _tl159795159971_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159786159951_))
                                                      (let ((___splice161363161364_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159786159951_ '0))))
                (let ((_tl159817159857_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161363161364_ '1)))
                      (_target159815159854_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161363161364_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159817159857_))
                      (___match161405161406_
                       _e159788159944_
                       _hd159787159948_
                       _tl159786159951_
                       ___splice161363161364_
                       _target159815159854_
                       _tl159817159857_)
                      (let () (declare (not safe)) (_g159782159837_)))))
              (let () (declare (not safe)) (_g159782159837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159786159951_))
                                              (let ((___splice161363161364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159786159951_
                                                        '0))))
                                                (let ((_tl159817159857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161363161364_
                                                          '1)))
                                                      (_target159815159854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161363161364_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159817159857_))
                                                      (___match161405161406_
                                                       _e159788159944_
                                                       _hd159787159948_
                                                       _tl159786159951_
                                                       ___splice161363161364_
                                                       _target159815159854_
                                                       _tl159817159857_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159782159837_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159782159837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159786159951_))
                                          (let ((___splice161363161364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159786159951_
                                                    '0))))
                                            (let ((_tl159817159857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161363161364_
                                                      '1)))
                                                  (_target159815159854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161363161364_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159817159857_))
                                                  (___match161405161406_
                                                   _e159788159944_
                                                   _hd159787159948_
                                                   _tl159786159951_
                                                   ___splice161363161364_
                                                   _target159815159854_
                                                   _tl159817159857_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159782159837_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159782159837_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159786159951_))
                                    (let ((___splice161363161364_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159786159951_
                                              '0))))
                                      (let ((_tl159817159857_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161363161364_
                                                '1)))
                                            (_target159815159854_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161363161364_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159817159857_))
                                            (___match161405161406_
                                             _e159788159944_
                                             _hd159787159948_
                                             _tl159786159951_
                                             ___splice161363161364_
                                             _target159815159854_
                                             _tl159817159857_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159782159837_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159782159837_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159786159951_))
                            (let ((___splice161363161364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159786159951_
                                      '0))))
                              (let ((_tl159817159857_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161363161364_
                                        '1)))
                                    (_target159815159854_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161363161364_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159817159857_))
                                    (___match161405161406_
                                     _e159788159944_
                                     _hd159787159948_
                                     _tl159786159951_
                                     ___splice161363161364_
                                     _target159815159854_
                                     _tl159817159857_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159782159837_)))))
                            (let () (declare (not safe)) (_g159782159837_))))))
                (let () (declare (not safe)) (_g159782159837_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160059_)
      (let* ((_g160063160081_
              (lambda (_g160064160077_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160064160077_))))
             (_g160062160136_
              (lambda (_g160064160085_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160064160085_))
                    (let ((_e160069160088_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160064160085_))))
                      (let ((_hd160068160092_
                             (let ()
                               (declare (not safe))
                               (##car _e160069160088_)))
                            (_tl160067160095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160069160088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160067160095_))
                            (let ((_e160072160098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160067160095_))))
                              (let ((_hd160071160102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160072160098_)))
                                    (_tl160070160105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160072160098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160070160105_))
                                    (let ((_e160075160108_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160070160105_))))
                                      (let ((_hd160074160112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160075160108_)))
                                            (_tl160073160115_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160075160108_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160073160115_))
                                            ((lambda (_L160118_ _L160120_)
                                               (let ((__tmp161798
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161785
                                                      (let ((__tmp161794
                                                             (let ((__tmp161797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161795
                            (let ((__tmp161796
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161796 '()))))
                       (declare (not safe))
                       (cons __tmp161797 __tmp161795)))
                    (__tmp161786
                     (let ((__tmp161791
                            (let ((__tmp161793
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161792
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160120_ '()))))
                              (declare (not safe))
                              (cons __tmp161793 __tmp161792)))
                           (__tmp161787
                            (let ((__tmp161788
                                   (let ((__tmp161790
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161789
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160118_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161790 __tmp161789))))
                              (declare (not safe))
                              (cons __tmp161788 '()))))
                       (declare (not safe))
                       (cons __tmp161791 __tmp161787))))
                (declare (not safe))
                (cons __tmp161794 __tmp161786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161798
                                                       __tmp161785)))
                                             _hd160074160112_
                                             _hd160071160102_)
                                            (_g160063160081_
                                             _g160064160085_))))
                                    (_g160063160081_ _g160064160085_))))
                            (_g160063160081_ _g160064160085_))))
                    (_g160063160081_ _g160064160085_)))))
        (_g160062160136_ _$stx160059_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160140_)
      (let* ((_g160144160162_
              (lambda (_g160145160158_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160145160158_))))
             (_g160143160217_
              (lambda (_g160145160166_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160145160166_))
                    (let ((_e160150160169_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160145160166_))))
                      (let ((_hd160149160173_
                             (let ()
                               (declare (not safe))
                               (##car _e160150160169_)))
                            (_tl160148160176_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160150160169_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160148160176_))
                            (let ((_e160153160179_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160148160176_))))
                              (let ((_hd160152160183_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160153160179_)))
                                    (_tl160151160186_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160153160179_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160151160186_))
                                    (let ((_e160156160189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160151160186_))))
                                      (let ((_hd160155160193_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160156160189_)))
                                            (_tl160154160196_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160156160189_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160154160196_))
                                            ((lambda (_L160199_ _L160201_)
                                               (let ((__tmp161812
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161799
                                                      (let ((__tmp161808
                                                             (let ((__tmp161811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161809
                            (let ((__tmp161810
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161810 '()))))
                       (declare (not safe))
                       (cons __tmp161811 __tmp161809)))
                    (__tmp161800
                     (let ((__tmp161805
                            (let ((__tmp161807
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161806
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160201_ '()))))
                              (declare (not safe))
                              (cons __tmp161807 __tmp161806)))
                           (__tmp161801
                            (let ((__tmp161802
                                   (let ((__tmp161804
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161803
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160199_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161804 __tmp161803))))
                              (declare (not safe))
                              (cons __tmp161802 '()))))
                       (declare (not safe))
                       (cons __tmp161805 __tmp161801))))
                (declare (not safe))
                (cons __tmp161808 __tmp161800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161812
                                                       __tmp161799)))
                                             _hd160155160193_
                                             _hd160152160183_)
                                            (_g160144160162_
                                             _g160145160166_))))
                                    (_g160144160162_ _g160145160166_))))
                            (_g160144160162_ _g160145160166_))))
                    (_g160144160162_ _g160145160166_)))))
        (_g160143160217_ _$stx160140_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160221_)
      (let* ((___stx161408161409_ _$stx160221_)
             (_g160228160299_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161408161409_)))))
        (let ((___kont161411161412_
               (lambda (_L160590_ _L160592_)
                 (let ((__tmp161818
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161813
                        (let ((__tmp161814
                               (let ((__tmp161815
                                      (let ((__tmp161817
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161816
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160590_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161817 __tmp161816))))
                                 (declare (not safe))
                                 (cons __tmp161815 '()))))
                          (declare (not safe))
                          (cons _L160592_ __tmp161814))))
                   (declare (not safe))
                   (cons __tmp161818 __tmp161813))))
              (___kont161413161414_
               (lambda (_L160509_ _L160511_)
                 (let ((__tmp161827
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161819
                        (let ((__tmp161820
                               (let ((__tmp161821
                                      (let ((__tmp161826
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161822
                                             (let ((__tmp161823
                                                    (lambda (_g160530160533_
                                                             _g160531160536_)
                                                      (let ((__tmp161824
                                                             (let ((__tmp161825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160530160533_ __tmp161825))))
                (declare (not safe))
                (cons __tmp161824 _g160531160536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161823
                                                       '()
                                                       _L160509_))))
                                        (declare (not safe))
                                        (cons __tmp161826 __tmp161822))))
                                 (declare (not safe))
                                 (cons __tmp161821 '()))))
                          (declare (not safe))
                          (cons _L160511_ __tmp161820))))
                   (declare (not safe))
                   (cons __tmp161827 __tmp161819))))
              (___kont161417161418_
               (lambda (_L160421_ _L160423_)
                 (let ((__tmp161834
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161828
                        (let ((__tmp161829
                               (let ((__tmp161830
                                      (let ((__tmp161833
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161831
                                             (let ((__tmp161832
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160421_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161832))))
                                        (declare (not safe))
                                        (cons __tmp161833 __tmp161831))))
                                 (declare (not safe))
                                 (cons __tmp161830 '()))))
                          (declare (not safe))
                          (cons _L160423_ __tmp161829))))
                   (declare (not safe))
                   (cons __tmp161834 __tmp161828))))
              (___kont161419161420_
               (lambda (_L160356_ _L160358_)
                 (let ((__tmp161844
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161835
                        (let ((__tmp161836
                               (let ((__tmp161837
                                      (let ((__tmp161843
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161838
                                             (let ((__tmp161839
                                                    (let ((__tmp161840
                                                           (lambda (_g160375160378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160376160381_)
                     (let ((__tmp161841
                            (let ((__tmp161842
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160375160378_ __tmp161842))))
                       (declare (not safe))
                       (cons __tmp161841 _g160376160381_)))))
              (declare (not safe))
              (foldr1 __tmp161840 '() _L160356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161839))))
                                        (declare (not safe))
                                        (cons __tmp161843 __tmp161838))))
                                 (declare (not safe))
                                 (cons __tmp161837 '()))))
                          (declare (not safe))
                          (cons _L160358_ __tmp161836))))
                   (declare (not safe))
                   (cons __tmp161844 __tmp161835)))))
          (let* ((___match161527161528_
                  (lambda (_e160281160306_
                           _hd160280160310_
                           _tl160279160313_
                           _e160284160316_
                           _hd160283160320_
                           _tl160282160323_
                           ___splice161421161422_
                           _target160285160326_
                           _tl160287160329_)
                    (letrec ((_loop160288160332_
                              (lambda (_hd160286160336_ _arity160292160339_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160286160336_))
                                    (let ((_e160289160342_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160286160336_))))
                                      (let ((_lp-tl160291160349_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160289160342_)))
                                            (_lp-hd160290160346_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160289160342_))))
                                        (_loop160288160332_
                                         _lp-tl160291160349_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160290160346_
                                                 _arity160292160339_)))))
                                    (let ((_arity160293160352_
                                           (reverse _arity160292160339_)))
                                      (___kont161419161420_
                                       _arity160293160352_
                                       _hd160283160320_))))))
                      (_loop160288160332_ _target160285160326_ '()))))
                 (___match161487161488_
                  (lambda (_e160249160445_
                           _hd160248160449_
                           _tl160247160452_
                           _e160252160455_
                           _hd160251160459_
                           _tl160250160462_
                           _e160255160465_
                           _hd160254160469_
                           _tl160253160472_
                           _e160256160475_
                           ___splice161415161416_
                           _target160257160479_
                           _tl160259160482_)
                    (letrec ((_loop160260160485_
                              (lambda (_hd160258160489_ _arity160264160492_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160258160489_))
                                    (let ((_e160261160495_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160258160489_))))
                                      (let ((_lp-tl160263160502_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160261160495_)))
                                            (_lp-hd160262160499_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160261160495_))))
                                        (_loop160260160485_
                                         _lp-tl160263160502_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160262160499_
                                                 _arity160264160492_)))))
                                    (let ((_arity160265160505_
                                           (reverse _arity160264160492_)))
                                      (___kont161413161414_
                                       _arity160265160505_
                                       _hd160251160459_))))))
                      (_loop160260160485_ _target160257160479_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161408161409_))
                (let ((_e160234160546_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161408161409_))))
                  (let ((_tl160232160553_
                         (let () (declare (not safe)) (##cdr _e160234160546_)))
                        (_hd160233160550_
                         (let ()
                           (declare (not safe))
                           (##car _e160234160546_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160232160553_))
                        (let ((_e160237160556_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160232160553_))))
                          (let ((_tl160235160563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160237160556_)))
                                (_hd160236160560_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160237160556_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160235160563_))
                                (let ((_e160240160566_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160235160563_))))
                                  (let ((_tl160238160573_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160240160566_)))
                                        (_hd160239160570_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160240160566_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160239160570_))
                                        (let ((_e160241160576_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160239160570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160241160576_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160238160573_))
                                                  (let ((_e160244160580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160238160573_))))
                                                    (let ((_tl160242160587_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160244160580_)))
                                                          (_hd160243160584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160244160580_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160242160587_))
                                                          (___kont161411161412_
                                                           _hd160243160584_
                                                           _hd160236160560_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160238160573_))
                      (let ((___splice161415161416_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160238160573_ '0))))
                        (let ((_tl160259160482_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161415161416_ '1)))
                              (_target160257160479_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161415161416_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160259160482_))
                              (___match161487161488_
                               _e160234160546_
                               _hd160233160550_
                               _tl160232160553_
                               _e160237160556_
                               _hd160236160560_
                               _tl160235160563_
                               _e160240160566_
                               _hd160239160570_
                               _tl160238160573_
                               _e160241160576_
                               ___splice161415161416_
                               _target160257160479_
                               _tl160259160482_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160235160563_))
                                  (let ((___splice161421161422_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160235160563_
                                            '0))))
                                    (let ((_tl160287160329_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161421161422_
                                              '1)))
                                          (_target160285160326_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161421161422_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160287160329_))
                                          (___match161527161528_
                                           _e160234160546_
                                           _hd160233160550_
                                           _tl160232160553_
                                           _e160237160556_
                                           _hd160236160560_
                                           _tl160235160563_
                                           ___splice161421161422_
                                           _target160285160326_
                                           _tl160287160329_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160228160299_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160228160299_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160235160563_))
                          (let ((___splice161421161422_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160235160563_
                                    '0))))
                            (let ((_tl160287160329_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161421161422_ '1)))
                                  (_target160285160326_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161421161422_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160287160329_))
                                  (___match161527161528_
                                   _e160234160546_
                                   _hd160233160550_
                                   _tl160232160553_
                                   _e160237160556_
                                   _hd160236160560_
                                   _tl160235160563_
                                   ___splice161421161422_
                                   _target160285160326_
                                   _tl160287160329_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160228160299_)))))
                          (let () (declare (not safe)) (_g160228160299_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160238160573_))
                                                      (let ((___splice161415161416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160238160573_ '0))))
                (let ((_tl160259160482_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161415161416_ '1)))
                      (_target160257160479_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161415161416_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160259160482_))
                      (___match161487161488_
                       _e160234160546_
                       _hd160233160550_
                       _tl160232160553_
                       _e160237160556_
                       _hd160236160560_
                       _tl160235160563_
                       _e160240160566_
                       _hd160239160570_
                       _tl160238160573_
                       _e160241160576_
                       ___splice161415161416_
                       _target160257160479_
                       _tl160259160482_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160238160573_))
                          (___kont161417161418_
                           _hd160239160570_
                           _hd160236160560_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160235160563_))
                              (let ((___splice161421161422_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160235160563_
                                        '0))))
                                (let ((_tl160287160329_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161421161422_
                                          '1)))
                                      (_target160285160326_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161421161422_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160287160329_))
                                      (___match161527161528_
                                       _e160234160546_
                                       _hd160233160550_
                                       _tl160232160553_
                                       _e160237160556_
                                       _hd160236160560_
                                       _tl160235160563_
                                       ___splice161421161422_
                                       _target160285160326_
                                       _tl160287160329_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160228160299_)))))
                              (let ()
                                (declare (not safe))
                                (_g160228160299_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160238160573_))
                  (___kont161417161418_ _hd160239160570_ _hd160236160560_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160235160563_))
                      (let ((___splice161421161422_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160235160563_ '0))))
                        (let ((_tl160287160329_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161421161422_ '1)))
                              (_target160285160326_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161421161422_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160287160329_))
                              (___match161527161528_
                               _e160234160546_
                               _hd160233160550_
                               _tl160232160553_
                               _e160237160556_
                               _hd160236160560_
                               _tl160235160563_
                               ___splice161421161422_
                               _target160285160326_
                               _tl160287160329_)
                              (let ()
                                (declare (not safe))
                                (_g160228160299_)))))
                      (let () (declare (not safe)) (_g160228160299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160238160573_))
                                                  (___kont161417161418_
                                                   _hd160239160570_
                                                   _hd160236160560_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160235160563_))
                                                      (let ((___splice161421161422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160235160563_ '0))))
                (let ((_tl160287160329_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161421161422_ '1)))
                      (_target160285160326_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161421161422_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160287160329_))
                      (___match161527161528_
                       _e160234160546_
                       _hd160233160550_
                       _tl160232160553_
                       _e160237160556_
                       _hd160236160560_
                       _tl160235160563_
                       ___splice161421161422_
                       _target160285160326_
                       _tl160287160329_)
                      (let () (declare (not safe)) (_g160228160299_)))))
              (let () (declare (not safe)) (_g160228160299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160238160573_))
                                            (___kont161417161418_
                                             _hd160239160570_
                                             _hd160236160560_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160235160563_))
                                                (let ((___splice161421161422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160235160563_
                                                          '0))))
                                                  (let ((_tl160287160329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161421161422_
                                                            '1)))
                                                        (_target160285160326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161421161422_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160287160329_))
                                                        (___match161527161528_
                                                         _e160234160546_
                                                         _hd160233160550_
                                                         _tl160232160553_
                                                         _e160237160556_
                                                         _hd160236160560_
                                                         _tl160235160563_
                                                         ___splice161421161422_
                                                         _target160285160326_
                                                         _tl160287160329_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160228160299_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160228160299_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160235160563_))
                                    (let ((___splice161421161422_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160235160563_
                                              '0))))
                                      (let ((_tl160287160329_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161421161422_
                                                '1)))
                                            (_target160285160326_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161421161422_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160287160329_))
                                            (___match161527161528_
                                             _e160234160546_
                                             _hd160233160550_
                                             _tl160232160553_
                                             _e160237160556_
                                             _hd160236160560_
                                             _tl160235160563_
                                             ___splice161421161422_
                                             _target160285160326_
                                             _tl160287160329_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160228160299_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160228160299_))))))
                        (let () (declare (not safe)) (_g160228160299_)))))
                (let () (declare (not safe)) (_g160228160299_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160616_)
      (let* ((___stx161530161531_ _$stx160616_)
             (_g160621160656_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161530161531_)))))
        (let ((___kont161533161534_
               (lambda (_L160778_ _L160780_)
                 (let ((__tmp161850
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161845
                        (let ((__tmp161846
                               (let ((__tmp161847
                                      (let ((__tmp161849
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161848
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160778_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161849 __tmp161848))))
                                 (declare (not safe))
                                 (cons __tmp161847 '()))))
                          (declare (not safe))
                          (cons _L160780_ __tmp161846))))
                   (declare (not safe))
                   (cons __tmp161850 __tmp161845))))
              (___kont161535161536_
               (lambda (_L160713_ _L160715_)
                 (let ((__tmp161859
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161851
                        (let ((__tmp161852
                               (let ((__tmp161853
                                      (let ((__tmp161858
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161854
                                             (let ((__tmp161855
                                                    (lambda (_g160732160735_
                                                             _g160733160738_)
                                                      (let ((__tmp161856
                                                             (let ((__tmp161857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160732160735_ __tmp161857))))
                (declare (not safe))
                (cons __tmp161856 _g160733160738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161855
                                                       '()
                                                       _L160713_))))
                                        (declare (not safe))
                                        (cons __tmp161858 __tmp161854))))
                                 (declare (not safe))
                                 (cons __tmp161853 '()))))
                          (declare (not safe))
                          (cons _L160715_ __tmp161852))))
                   (declare (not safe))
                   (cons __tmp161859 __tmp161851)))))
          (let ((___match161579161580_
                 (lambda (_e160638160663_
                          _hd160637160667_
                          _tl160636160670_
                          _e160641160673_
                          _hd160640160677_
                          _tl160639160680_
                          ___splice161537161538_
                          _target160642160683_
                          _tl160644160686_)
                   (letrec ((_loop160645160689_
                             (lambda (_hd160643160693_ _arity160649160696_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160643160693_))
                                   (let ((_e160646160699_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160643160693_))))
                                     (let ((_lp-tl160648160706_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160646160699_)))
                                           (_lp-hd160647160703_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160646160699_))))
                                       (_loop160645160689_
                                        _lp-tl160648160706_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160647160703_
                                                _arity160649160696_)))))
                                   (let ((_arity160650160709_
                                          (reverse _arity160649160696_)))
                                     (___kont161535161536_
                                      _arity160650160709_
                                      _hd160640160677_))))))
                     (_loop160645160689_ _target160642160683_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161530161531_))
                (let ((_e160627160748_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161530161531_))))
                  (let ((_tl160625160755_
                         (let () (declare (not safe)) (##cdr _e160627160748_)))
                        (_hd160626160752_
                         (let ()
                           (declare (not safe))
                           (##car _e160627160748_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160625160755_))
                        (let ((_e160630160758_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160625160755_))))
                          (let ((_tl160628160765_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160630160758_)))
                                (_hd160629160762_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160630160758_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160628160765_))
                                (let ((_e160633160768_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160628160765_))))
                                  (let ((_tl160631160775_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160633160768_)))
                                        (_hd160632160772_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160633160768_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160631160775_))
                                        (___kont161533161534_
                                         _hd160632160772_
                                         _hd160629160762_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160628160765_))
                                            (let ((___splice161537161538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160628160765_
                                                      '0))))
                                              (let ((_tl160644160686_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161537161538_
                                                        '1)))
                                                    (_target160642160683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161537161538_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160644160686_))
                                                    (___match161579161580_
                                                     _e160627160748_
                                                     _hd160626160752_
                                                     _tl160625160755_
                                                     _e160630160758_
                                                     _hd160629160762_
                                                     _tl160628160765_
                                                     ___splice161537161538_
                                                     _target160642160683_
                                                     _tl160644160686_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160621160656_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160621160656_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160628160765_))
                                    (let ((___splice161537161538_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160628160765_
                                              '0))))
                                      (let ((_tl160644160686_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161537161538_
                                                '1)))
                                            (_target160642160683_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161537161538_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160644160686_))
                                            (___match161579161580_
                                             _e160627160748_
                                             _hd160626160752_
                                             _tl160625160755_
                                             _e160630160758_
                                             _hd160629160762_
                                             _tl160628160765_
                                             ___splice161537161538_
                                             _target160642160683_
                                             _tl160644160686_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160621160656_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160621160656_))))))
                        (let () (declare (not safe)) (_g160621160656_)))))
                (let () (declare (not safe)) (_g160621160656_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160800_)
      (let* ((_g160804160839_
              (lambda (_g160805160835_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160805160835_))))
             (_g160803160967_
              (lambda (_g160805160843_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160805160843_))
                    (let ((_e160810160846_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160805160843_))))
                      (let ((_hd160809160850_
                             (let ()
                               (declare (not safe))
                               (##car _e160810160846_)))
                            (_tl160808160853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160810160846_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160808160853_))
                            (let ((_g161860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160808160853_
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
                                (let ((_target160811160856_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161860_ 0)))
                                      (_tl160813160859_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161860_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160813160859_))
                                      (letrec ((_loop160814160862_
                                                (lambda (_hd160812160866_
                                                         _arity160818160869_
                                                         _prim160819160871_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160812160866_))
                                                      (let ((_e160815160874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160812160866_))))
                (let ((_lp-hd160816160878_
                       (let () (declare (not safe)) (##car _e160815160874_)))
                      (_lp-tl160817160881_
                       (let () (declare (not safe)) (##cdr _e160815160874_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160816160878_))
                      (let ((_e160824160884_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160816160878_))))
                        (let ((_hd160823160888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160824160884_)))
                              (_tl160822160891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160824160884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160822160891_))
                              (let ((_g161870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160822160891_
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
                                  (let ((_target160825160894_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161870_ 0)))
                                        (_tl160827160897_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161870_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160827160897_))
                                        (letrec ((_loop160828160900_
                                                  (lambda (_hd160826160904_
                                                           _arity160832160907_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160826160904_))
                                                        (let ((_e160829160910_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160826160904_))))
                  (let ((_lp-hd160830160914_
                         (let () (declare (not safe)) (##car _e160829160910_)))
                        (_lp-tl160831160917_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160829160910_))))
                    (_loop160828160900_
                     _lp-tl160831160917_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160830160914_ _arity160832160907_)))))
                (let ((_arity160833160920_ (reverse _arity160832160907_)))
                  (_loop160814160862_
                   _lp-tl160817160881_
                   (let ()
                     (declare (not safe))
                     (cons _arity160833160920_ _arity160818160869_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160823160888_ _prim160819160871_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160828160900_
                                           _target160825160894_
                                           '()))
                                        (_g160804160839_ _g160805160843_)))))
                              (_g160804160839_ _g160805160843_))))
                      (_g160804160839_ _g160805160843_))))
              (let ((_arity160820160924_ (reverse _arity160818160869_))
                    (_prim160821160927_ (reverse _prim160819160871_)))
                ((lambda (_L160930_ _L160932_)
                   (let ((__tmp161869
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161862
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160930_
                               _L160932_))
                            (let ((__tmp161863
                                   (lambda (_g160947160953_
                                            _g160948160956_
                                            _g160949160958_)
                                     (let ((__tmp161864
                                            (let ((__tmp161868
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161865
                                                   (let ((__tmp161866
                                                          (let ((__tmp161867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160950160961_ _g160951160964_)
                           (let ()
                             (declare (not safe))
                             (cons _g160950160961_ _g160951160964_)))))
                    (declare (not safe))
                    (foldr1 __tmp161867 '() _g160947160953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160948160956_
                                                           __tmp161866))))
                                              (declare (not safe))
                                              (cons __tmp161868 __tmp161865))))
                                       (declare (not safe))
                                       (cons __tmp161864 _g160949160958_)))))
                              (declare (not safe))
                              (foldr2 __tmp161863 '() _L160930_ _L160932_)))))
                     (declare (not safe))
                     (cons __tmp161869 __tmp161862)))
                 _arity160820160924_
                 _prim160821160927_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160814160862_
                                         _target160811160856_
                                         '()
                                         '()))
                                      (_g160804160839_ _g160805160843_)))))
                            (_g160804160839_ _g160805160843_))))
                    (_g160804160839_ _g160805160843_)))))
        (_g160803160967_ _$stx160800_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160973_)
      (let* ((_g160977161012_
              (lambda (_g160978161008_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160978161008_))))
             (_g160976161140_
              (lambda (_g160978161016_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160978161016_))
                    (let ((_e160983161019_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160978161016_))))
                      (let ((_hd160982161023_
                             (let ()
                               (declare (not safe))
                               (##car _e160983161019_)))
                            (_tl160981161026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160983161019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160981161026_))
                            (let ((_g161872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160981161026_
                                      '0))))
                              (begin
                                (let ((_g161873_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161872_)
                                             (##vector-length _g161872_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161873_ 2)))
                                      (error "Context expects 2 values"
                                             _g161873_)))
                                (let ((_target160984161029_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161872_ 0)))
                                      (_tl160986161032_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161872_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160986161032_))
                                      (letrec ((_loop160987161035_
                                                (lambda (_hd160985161039_
                                                         _arity160991161042_
                                                         _prim160992161044_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160985161039_))
                                                      (let ((_e160988161047_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160985161039_))))
                (let ((_lp-hd160989161051_
                       (let () (declare (not safe)) (##car _e160988161047_)))
                      (_lp-tl160990161054_
                       (let () (declare (not safe)) (##cdr _e160988161047_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160989161051_))
                      (let ((_e160997161057_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160989161051_))))
                        (let ((_hd160996161061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160997161057_)))
                              (_tl160995161064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160997161057_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160995161064_))
                              (let ((_g161882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160995161064_
                                        '0))))
                                (begin
                                  (let ((_g161883_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161882_)
                                               (##vector-length _g161882_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161883_ 2)))
                                        (error "Context expects 2 values"
                                               _g161883_)))
                                  (let ((_target160998161067_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161882_ 0)))
                                        (_tl161000161070_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161882_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161000161070_))
                                        (letrec ((_loop161001161073_
                                                  (lambda (_hd160999161077_
                                                           _arity161005161080_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160999161077_))
                                                        (let ((_e161002161083_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160999161077_))))
                  (let ((_lp-hd161003161087_
                         (let () (declare (not safe)) (##car _e161002161083_)))
                        (_lp-tl161004161090_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161002161083_))))
                    (_loop161001161073_
                     _lp-tl161004161090_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161003161087_ _arity161005161080_)))))
                (let ((_arity161006161093_ (reverse _arity161005161080_)))
                  (_loop160987161035_
                   _lp-tl160990161054_
                   (let ()
                     (declare (not safe))
                     (cons _arity161006161093_ _arity160991161042_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160996161061_ _prim160992161044_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161001161073_
                                           _target160998161067_
                                           '()))
                                        (_g160977161012_ _g160978161016_)))))
                              (_g160977161012_ _g160978161016_))))
                      (_g160977161012_ _g160978161016_))))
              (let ((_arity160993161097_ (reverse _arity160991161042_))
                    (_prim160994161100_ (reverse _prim160992161044_)))
                ((lambda (_L161103_ _L161105_)
                   (let ((__tmp161881
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161874
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161103_
                               _L161105_))
                            (let ((__tmp161875
                                   (lambda (_g161120161126_
                                            _g161121161129_
                                            _g161122161131_)
                                     (let ((__tmp161876
                                            (let ((__tmp161880
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161877
                                                   (let ((__tmp161878
                                                          (let ((__tmp161879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161123161134_ _g161124161137_)
                           (let ()
                             (declare (not safe))
                             (cons _g161123161134_ _g161124161137_)))))
                    (declare (not safe))
                    (foldr1 __tmp161879 '() _g161120161126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161121161129_
                                                           __tmp161878))))
                                              (declare (not safe))
                                              (cons __tmp161880 __tmp161877))))
                                       (declare (not safe))
                                       (cons __tmp161876 _g161122161131_)))))
                              (declare (not safe))
                              (foldr2 __tmp161875 '() _L161103_ _L161105_)))))
                     (declare (not safe))
                     (cons __tmp161881 __tmp161874)))
                 _arity160993161097_
                 _prim160994161100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160987161035_
                                         _target160984161029_
                                         '()
                                         '()))
                                      (_g160977161012_ _g160978161016_)))))
                            (_g160977161012_ _g160978161016_))))
                    (_g160977161012_ _g160978161016_)))))
        (_g160976161140_ _$stx160973_)))))
