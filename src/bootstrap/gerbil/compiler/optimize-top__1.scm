(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx226248_)
      (let* ((_g226252226281_
              (lambda (_g226253226277_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226253226277_))))
             (_g226251226382_
              (lambda (_g226253226285_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226253226285_))
                    (let ((_e226258226288_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226253226285_))))
                      (let ((_hd226257226292_
                             (let ()
                               (declare (not safe))
                               (##car _e226258226288_)))
                            (_tl226256226295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226258226288_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226256226295_))
                            (let ((_g241642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226256226295_
                                      '0))))
                              (begin
                                (let ((_g241643_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241642_)
                                             (##vector-length _g241642_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241643_ 2)))
                                      (error "Context expects 2 values"
                                             _g241643_)))
                                (let ((_target226259226298_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241642_ 0)))
                                      (_tl226261226301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241642_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226261226301_))
                                      (letrec ((_loop226262226304_
                                                (lambda (_hd226260226308_
                                                         _type-e226266226311_
                                                         _id226267226313_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226260226308_))
                                                      (let ((_e226263226316_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226260226308_))))
                (let ((_lp-hd226264226320_
                       (let () (declare (not safe)) (##car _e226263226316_)))
                      (_lp-tl226265226323_
                       (let () (declare (not safe)) (##cdr _e226263226316_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226264226320_))
                      (let ((_e226272226326_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226264226320_))))
                        (let ((_hd226271226330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226272226326_)))
                              (_tl226270226333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226272226326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226270226333_))
                              (let ((_e226275226336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226270226333_))))
                                (let ((_hd226274226340_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226275226336_)))
                                      (_tl226273226343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226275226336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226273226343_))
                                      (_loop226262226304_
                                       _lp-tl226265226323_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226274226340_
                                               _type-e226266226311_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226271226330_
                                               _id226267226313_)))
                                      (_g226252226281_ _g226253226285_))))
                              (_g226252226281_ _g226253226285_))))
                      (_g226252226281_ _g226253226285_))))
              (let ((_type-e226268226346_ (reverse _type-e226266226311_))
                    (_id226269226349_ (reverse _id226267226313_)))
                ((lambda (_L226352_ _L226354_)
                   (let ((__tmp241655
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241644
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226352_
                               _L226354_))
                            (let ((__tmp241645
                                   (lambda (_g226370226374_
                                            _g226371226377_
                                            _g226372226379_)
                                     (let ((__tmp241646
                                            (let ((__tmp241654
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241647
                                                   (let ((__tmp241653
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241648
                                                          (let ((__tmp241650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241652
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241651
                                (let ()
                                  (declare (not safe))
                                  (cons _g226371226377_ '()))))
                           (declare (not safe))
                           (cons __tmp241652 __tmp241651)))
                        (__tmp241649
                         (let ()
                           (declare (not safe))
                           (cons _g226370226374_ '()))))
                    (declare (not safe))
                    (cons __tmp241650 __tmp241649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241653
                                                           __tmp241648))))
                                              (declare (not safe))
                                              (cons __tmp241654 __tmp241647))))
                                       (declare (not safe))
                                       (cons __tmp241646 _g226372226379_)))))
                              (declare (not safe))
                              (foldr2 __tmp241645 '() _L226352_ _L226354_)))))
                     (declare (not safe))
                     (cons __tmp241655 __tmp241644)))
                 _type-e226268226346_
                 _id226269226349_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226262226304_
                                         _target226259226298_
                                         '()
                                         '()))
                                      (_g226252226281_ _g226253226285_)))))
                            (_g226252226281_ _g226253226285_))))
                    (_g226252226281_ _g226253226285_)))))
        (_g226251226382_ _$stx226248_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx226387_)
      (let* ((_g226391226420_
              (lambda (_g226392226416_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226392226416_))))
             (_g226390226520_
              (lambda (_g226392226424_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226392226424_))
                    (let ((_e226397226427_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226392226424_))))
                      (let ((_hd226396226431_
                             (let ()
                               (declare (not safe))
                               (##car _e226397226427_)))
                            (_tl226395226434_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226397226427_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226395226434_))
                            (let ((_g241656_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226395226434_
                                      '0))))
                              (begin
                                (let ((_g241657_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241656_)
                                             (##vector-length _g241656_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241657_ 2)))
                                      (error "Context expects 2 values"
                                             _g241657_)))
                                (let ((_target226398226437_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241656_ 0)))
                                      (_tl226400226440_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241656_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226400226440_))
                                      (letrec ((_loop226401226443_
                                                (lambda (_hd226399226447_
                                                         _type-e226405226450_
                                                         _id226406226452_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226399226447_))
                                                      (let ((_e226402226455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226399226447_))))
                (let ((_lp-hd226403226459_
                       (let () (declare (not safe)) (##car _e226402226455_)))
                      (_lp-tl226404226462_
                       (let () (declare (not safe)) (##cdr _e226402226455_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226403226459_))
                      (let ((_e226411226465_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226403226459_))))
                        (let ((_hd226410226469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226411226465_)))
                              (_tl226409226472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226411226465_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226409226472_))
                              (let ((_e226414226475_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226409226472_))))
                                (let ((_hd226413226479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226414226475_)))
                                      (_tl226412226482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226414226475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226412226482_))
                                      (_loop226401226443_
                                       _lp-tl226404226462_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226413226479_
                                               _type-e226405226450_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226410226469_
                                               _id226406226452_)))
                                      (_g226391226420_ _g226392226424_))))
                              (_g226391226420_ _g226392226424_))))
                      (_g226391226420_ _g226392226424_))))
              (let ((_type-e226407226485_ (reverse _type-e226405226450_))
                    (_id226408226488_ (reverse _id226406226452_)))
                ((lambda (_L226491_ _L226493_)
                   (let ((__tmp241669
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241658
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226491_
                               _L226493_))
                            (let ((__tmp241659
                                   (lambda (_g226508226512_
                                            _g226509226515_
                                            _g226510226517_)
                                     (let ((__tmp241660
                                            (let ((__tmp241668
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241661
                                                   (let ((__tmp241667
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241662
                                                          (let ((__tmp241664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241666
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241665
                                (let ()
                                  (declare (not safe))
                                  (cons _g226509226515_ '()))))
                           (declare (not safe))
                           (cons __tmp241666 __tmp241665)))
                        (__tmp241663
                         (let ()
                           (declare (not safe))
                           (cons _g226508226512_ '()))))
                    (declare (not safe))
                    (cons __tmp241664 __tmp241663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241667
                                                           __tmp241662))))
                                              (declare (not safe))
                                              (cons __tmp241668 __tmp241661))))
                                       (declare (not safe))
                                       (cons __tmp241660 _g226510226517_)))))
                              (declare (not safe))
                              (foldr2 __tmp241659 '() _L226491_ _L226493_)))))
                     (declare (not safe))
                     (cons __tmp241669 __tmp241658)))
                 _type-e226407226485_
                 _id226408226488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226401226443_
                                         _target226398226437_
                                         '()
                                         '()))
                                      (_g226391226420_ _g226392226424_)))))
                            (_g226391226420_ _g226392226424_))))
                    (_g226391226420_ _g226392226424_)))))
        (_g226390226520_ _$stx226387_)))))
