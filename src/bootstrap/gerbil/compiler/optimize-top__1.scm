(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx236187_)
      (let* ((_g236191236220_
              (lambda (_g236192236216_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236192236216_))))
             (_g236190236321_
              (lambda (_g236192236224_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236192236224_))
                    (let ((_e236197236227_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236192236224_))))
                      (let ((_hd236196236231_
                             (let ()
                               (declare (not safe))
                               (##car _e236197236227_)))
                            (_tl236195236234_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236197236227_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236195236234_))
                            (let ((_g251698_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236195236234_
                                      '0))))
                              (begin
                                (let ((_g251699_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251698_)
                                             (##vector-length _g251698_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251699_ 2)))
                                      (error "Context expects 2 values"
                                             _g251699_)))
                                (let ((_target236198236237_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251698_ 0)))
                                      (_tl236200236240_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251698_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236200236240_))
                                      (letrec ((_loop236201236243_
                                                (lambda (_hd236199236247_
                                                         _type-e236205236250_
                                                         _id236206236252_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236199236247_))
                                                      (let ((_e236202236255_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236199236247_))))
                (let ((_lp-hd236203236259_
                       (let () (declare (not safe)) (##car _e236202236255_)))
                      (_lp-tl236204236262_
                       (let () (declare (not safe)) (##cdr _e236202236255_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236203236259_))
                      (let ((_e236211236265_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236203236259_))))
                        (let ((_hd236210236269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236211236265_)))
                              (_tl236209236272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236211236265_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236209236272_))
                              (let ((_e236214236275_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236209236272_))))
                                (let ((_hd236213236279_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236214236275_)))
                                      (_tl236212236282_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236214236275_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236212236282_))
                                      (_loop236201236243_
                                       _lp-tl236204236262_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236213236279_
                                               _type-e236205236250_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236210236269_
                                               _id236206236252_)))
                                      (_g236191236220_ _g236192236224_))))
                              (_g236191236220_ _g236192236224_))))
                      (_g236191236220_ _g236192236224_))))
              (let ((_type-e236207236285_ (reverse _type-e236205236250_))
                    (_id236208236288_ (reverse _id236206236252_)))
                ((lambda (_L236291_ _L236293_)
                   (let ((__tmp251711
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp251700
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236291_
                               _L236293_))
                            (let ((__tmp251701
                                   (lambda (_g236309236313_
                                            _g236310236316_
                                            _g236311236318_)
                                     (let ((__tmp251702
                                            (let ((__tmp251710
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp251703
                                                   (let ((__tmp251709
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp251704
                                                          (let ((__tmp251706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251708
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp251707
                                (let ()
                                  (declare (not safe))
                                  (cons _g236310236316_ '()))))
                           (declare (not safe))
                           (cons __tmp251708 __tmp251707)))
                        (__tmp251705
                         (let ()
                           (declare (not safe))
                           (cons _g236309236313_ '()))))
                    (declare (not safe))
                    (cons __tmp251706 __tmp251705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251709
                                                           __tmp251704))))
                                              (declare (not safe))
                                              (cons __tmp251710 __tmp251703))))
                                       (declare (not safe))
                                       (cons __tmp251702 _g236311236318_)))))
                              (declare (not safe))
                              (foldr2 __tmp251701 '() _L236291_ _L236293_)))))
                     (declare (not safe))
                     (cons __tmp251711 __tmp251700)))
                 _type-e236207236285_
                 _id236208236288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236201236243_
                                         _target236198236237_
                                         '()
                                         '()))
                                      (_g236191236220_ _g236192236224_)))))
                            (_g236191236220_ _g236192236224_))))
                    (_g236191236220_ _g236192236224_)))))
        (_g236190236321_ _$stx236187_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx236326_)
      (let* ((_g236330236359_
              (lambda (_g236331236355_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236331236355_))))
             (_g236329236459_
              (lambda (_g236331236363_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236331236363_))
                    (let ((_e236336236366_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236331236363_))))
                      (let ((_hd236335236370_
                             (let ()
                               (declare (not safe))
                               (##car _e236336236366_)))
                            (_tl236334236373_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236336236366_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236334236373_))
                            (let ((_g251712_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236334236373_
                                      '0))))
                              (begin
                                (let ((_g251713_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251712_)
                                             (##vector-length _g251712_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251713_ 2)))
                                      (error "Context expects 2 values"
                                             _g251713_)))
                                (let ((_target236337236376_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251712_ 0)))
                                      (_tl236339236379_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251712_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236339236379_))
                                      (letrec ((_loop236340236382_
                                                (lambda (_hd236338236386_
                                                         _type-e236344236389_
                                                         _id236345236391_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236338236386_))
                                                      (let ((_e236341236394_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236338236386_))))
                (let ((_lp-hd236342236398_
                       (let () (declare (not safe)) (##car _e236341236394_)))
                      (_lp-tl236343236401_
                       (let () (declare (not safe)) (##cdr _e236341236394_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236342236398_))
                      (let ((_e236350236404_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236342236398_))))
                        (let ((_hd236349236408_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236350236404_)))
                              (_tl236348236411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236350236404_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236348236411_))
                              (let ((_e236353236414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236348236411_))))
                                (let ((_hd236352236418_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236353236414_)))
                                      (_tl236351236421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236353236414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236351236421_))
                                      (_loop236340236382_
                                       _lp-tl236343236401_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236352236418_
                                               _type-e236344236389_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236349236408_
                                               _id236345236391_)))
                                      (_g236330236359_ _g236331236363_))))
                              (_g236330236359_ _g236331236363_))))
                      (_g236330236359_ _g236331236363_))))
              (let ((_type-e236346236424_ (reverse _type-e236344236389_))
                    (_id236347236427_ (reverse _id236345236391_)))
                ((lambda (_L236430_ _L236432_)
                   (let ((__tmp251725
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp251714
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236430_
                               _L236432_))
                            (let ((__tmp251715
                                   (lambda (_g236447236451_
                                            _g236448236454_
                                            _g236449236456_)
                                     (let ((__tmp251716
                                            (let ((__tmp251724
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp251717
                                                   (let ((__tmp251723
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp251718
                                                          (let ((__tmp251720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251722
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp251721
                                (let ()
                                  (declare (not safe))
                                  (cons _g236448236454_ '()))))
                           (declare (not safe))
                           (cons __tmp251722 __tmp251721)))
                        (__tmp251719
                         (let ()
                           (declare (not safe))
                           (cons _g236447236451_ '()))))
                    (declare (not safe))
                    (cons __tmp251720 __tmp251719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251723
                                                           __tmp251718))))
                                              (declare (not safe))
                                              (cons __tmp251724 __tmp251717))))
                                       (declare (not safe))
                                       (cons __tmp251716 _g236449236456_)))))
                              (declare (not safe))
                              (foldr2 __tmp251715 '() _L236430_ _L236432_)))))
                     (declare (not safe))
                     (cons __tmp251725 __tmp251714)))
                 _type-e236346236424_
                 _id236347236427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236340236382_
                                         _target236337236376_
                                         '()
                                         '()))
                                      (_g236330236359_ _g236331236363_)))))
                            (_g236330236359_ _g236331236363_))))
                    (_g236330236359_ _g236331236363_)))))
        (_g236329236459_ _$stx236326_)))))
