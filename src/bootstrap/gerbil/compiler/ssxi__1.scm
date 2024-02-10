(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293679_)
      (let* ((_g293683293701_
              (lambda (_g293684293697_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293684293697_))))
             (_g293682293756_
              (lambda (_g293684293705_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293684293705_))
                    (let ((_e293689293708_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293684293705_))))
                      (let ((_hd293688293712_
                             (let ()
                               (declare (not safe))
                               (##car _e293689293708_)))
                            (_tl293687293715_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293689293708_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293687293715_))
                            (let ((_e293692293718_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293687293715_))))
                              (let ((_hd293691293722_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293692293718_)))
                                    (_tl293690293725_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293692293718_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293690293725_))
                                    (let ((_e293695293728_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293690293725_))))
                                      (let ((_hd293694293732_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293695293728_)))
                                            (_tl293693293735_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293695293728_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293693293735_))
                                            ((lambda (_L293738_ _L293740_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293740_))
                                                   (let ((__tmp301670
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301665
                                                          (let ((__tmp301667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301669
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301668
                                (let ()
                                  (declare (not safe))
                                  (cons _L293740_ '()))))
                           (declare (not safe))
                           (cons __tmp301669 __tmp301668)))
                        (__tmp301666
                         (let () (declare (not safe)) (cons _L293738_ '()))))
                    (declare (not safe))
                    (cons __tmp301667 __tmp301666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301670
                                                           __tmp301665))
                                                   (_g293683293701_
                                                    _g293684293705_)))
                                             _hd293694293732_
                                             _hd293691293722_)
                                            (_g293683293701_
                                             _g293684293705_))))
                                    (_g293683293701_ _g293684293705_))))
                            (_g293683293701_ _g293684293705_))))
                    (_g293683293701_ _g293684293705_)))))
        (_g293682293756_ _$stx293679_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293760_)
      (let* ((_g293764293793_
              (lambda (_g293765293789_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293765293789_))))
             (_g293763293893_
              (lambda (_g293765293797_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293765293797_))
                    (let ((_e293770293800_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293765293797_))))
                      (let ((_hd293769293804_
                             (let ()
                               (declare (not safe))
                               (##car _e293770293800_)))
                            (_tl293768293807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293770293800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293768293807_))
                            (let ((_g301671_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293768293807_
                                      '0))))
                              (begin
                                (let ((_g301672_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301671_)
                                             (##vector-length _g301671_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301672_ 2)))
                                      (error "Context expects 2 values"
                                             _g301672_)))
                                (let ((_target293771293810_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301671_ 0)))
                                      (_tl293773293813_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301671_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293773293813_))
                                      (letrec ((_loop293774293816_
                                                (lambda (_hd293772293820_
                                                         _type293778293823_
                                                         _symbol293779293825_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293772293820_))
                                                      (let ((_e293775293828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293772293820_))))
                (let ((_lp-hd293776293832_
                       (let () (declare (not safe)) (##car _e293775293828_)))
                      (_lp-tl293777293835_
                       (let () (declare (not safe)) (##cdr _e293775293828_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293776293832_))
                      (let ((_e293784293838_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293776293832_))))
                        (let ((_hd293783293842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293784293838_)))
                              (_tl293782293845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293784293838_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293782293845_))
                              (let ((_e293787293848_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293782293845_))))
                                (let ((_hd293786293852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293787293848_)))
                                      (_tl293785293855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293787293848_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293785293855_))
                                      (_loop293774293816_
                                       _lp-tl293777293835_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293786293852_
                                               _type293778293823_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293783293842_
                                               _symbol293779293825_)))
                                      (_g293764293793_ _g293765293797_))))
                              (_g293764293793_ _g293765293797_))))
                      (_g293764293793_ _g293765293797_))))
              (let ((_type293780293858_ (reverse _type293778293823_))
                    (_symbol293781293861_ (reverse _symbol293779293825_)))
                ((lambda (_L293864_ _L293866_)
                   (let ((__tmp301679
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301673
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293864_
                               _L293866_))
                            (let ((__tmp301674
                                   (lambda (_g293881293885_
                                            _g293882293888_
                                            _g293883293890_)
                                     (let ((__tmp301675
                                            (let ((__tmp301678
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301676
                                                   (let ((__tmp301677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293881293885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293882293888_
                                                           __tmp301677))))
                                              (declare (not safe))
                                              (cons __tmp301678 __tmp301676))))
                                       (declare (not safe))
                                       (cons __tmp301675 _g293883293890_)))))
                              (declare (not safe))
                              (foldr2 __tmp301674 '() _L293864_ _L293866_)))))
                     (declare (not safe))
                     (cons __tmp301679 __tmp301673)))
                 _type293780293858_
                 _symbol293781293861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293774293816_
                                         _target293771293810_
                                         '()
                                         '()))
                                      (_g293764293793_ _g293765293797_)))))
                            (_g293764293793_ _g293765293797_))))
                    (_g293764293793_ _g293765293797_)))))
        (_g293763293893_ _$stx293760_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293898_)
      (let* ((___stx301230301231_ _$stx293898_)
             (_g293903293945_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301230301231_)))))
        (let ((___kont301233301234_
               (lambda (_L294073_ _L294075_ _L294076_ _L294077_)
                 (let ((__tmp301693
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301680
                        (let ((__tmp301690
                               (let ((__tmp301692
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301691
                                      (let ()
                                        (declare (not safe))
                                        (cons _L294077_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301692 __tmp301691)))
                              (__tmp301681
                               (let ((__tmp301687
                                      (let ((__tmp301689
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301688
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294076_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301689 __tmp301688)))
                                     (__tmp301682
                                      (let ((__tmp301684
                                             (let ((__tmp301686
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301685
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294075_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301686 __tmp301685)))
                                            (__tmp301683
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294073_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301684 __tmp301683))))
                                 (declare (not safe))
                                 (cons __tmp301687 __tmp301682))))
                          (declare (not safe))
                          (cons __tmp301690 __tmp301681))))
                   (declare (not safe))
                   (cons __tmp301693 __tmp301680))))
              (___kont301235301236_
               (lambda (_L293992_ _L293994_ _L293995_ _L293996_)
                 (let ((__tmp301694
                        (let ((__tmp301695
                               (let ((__tmp301696
                                      (let ((__tmp301697
                                             (let ((__tmp301698
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301698 '()))))
                                        (declare (not safe))
                                        (cons _L293992_ __tmp301697))))
                                 (declare (not safe))
                                 (cons _L293994_ __tmp301696))))
                          (declare (not safe))
                          (cons _L293995_ __tmp301695))))
                   (declare (not safe))
                   (cons _L293996_ __tmp301694)))))
          (let ((___match301269301270_
                 (lambda (_e293911294023_
                          _hd293910294027_
                          _tl293909294030_
                          _e293914294033_
                          _hd293913294037_
                          _tl293912294040_
                          _e293917294043_
                          _hd293916294047_
                          _tl293915294050_
                          _e293920294053_
                          _hd293919294057_
                          _tl293918294060_
                          _e293923294063_
                          _hd293922294067_
                          _tl293921294070_)
                   (let ((_L294073_ _hd293922294067_)
                         (_L294075_ _hd293919294057_)
                         (_L294076_ _hd293916294047_)
                         (_L294077_ _hd293913294037_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L294077_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L294076_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L294075_)))
                         (___kont301233301234_
                          _L294073_
                          _L294075_
                          _L294076_
                          _L294077_)
                         (let () (declare (not safe)) (_g293903293945_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301230301231_))
                (let ((_e293911294023_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301230301231_))))
                  (let ((_tl293909294030_
                         (let () (declare (not safe)) (##cdr _e293911294023_)))
                        (_hd293910294027_
                         (let ()
                           (declare (not safe))
                           (##car _e293911294023_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293909294030_))
                        (let ((_e293914294033_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293909294030_))))
                          (let ((_tl293912294040_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293914294033_)))
                                (_hd293913294037_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293914294033_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293912294040_))
                                (let ((_e293917294043_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293912294040_))))
                                  (let ((_tl293915294050_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293917294043_)))
                                        (_hd293916294047_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293917294043_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293915294050_))
                                        (let ((_e293920294053_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293915294050_))))
                                          (let ((_tl293918294060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293920294053_)))
                                                (_hd293919294057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293920294053_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293918294060_))
                                                (let ((_e293923294063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293918294060_))))
                                                  (let ((_tl293921294070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293923294063_)))
                                                        (_hd293922294067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293923294063_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293921294070_))
                                                        (___match301269301270_
                                                         _e293911294023_
                                                         _hd293910294027_
                                                         _tl293909294030_
                                                         _e293914294033_
                                                         _hd293913294037_
                                                         _tl293912294040_
                                                         _e293917294043_
                                                         _hd293916294047_
                                                         _tl293915294050_
                                                         _e293920294053_
                                                         _hd293919294057_
                                                         _tl293918294060_
                                                         _e293923294063_
                                                         _hd293922294067_
                                                         _tl293921294070_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293903293945_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293918294060_))
                                                    (___kont301235301236_
                                                     _hd293919294057_
                                                     _hd293916294047_
                                                     _hd293913294037_
                                                     _hd293910294027_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293903293945_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293903293945_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293903293945_)))))
                        (let () (declare (not safe)) (_g293903293945_)))))
                (let () (declare (not safe)) (_g293903293945_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx294102_)
      (let* ((_g294106294141_
              (lambda (_g294107294137_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294107294137_))))
             (_g294105294260_
              (lambda (_g294107294145_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294107294145_))
                    (let ((_e294113294148_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294107294145_))))
                      (let ((_hd294112294152_
                             (let ()
                               (declare (not safe))
                               (##car _e294113294148_)))
                            (_tl294111294155_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294113294148_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl294111294155_))
                            (let ((_g301699_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl294111294155_
                                      '0))))
                              (begin
                                (let ((_g301700_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301699_)
                                             (##vector-length _g301699_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301700_ 2)))
                                      (error "Context expects 2 values"
                                             _g301700_)))
                                (let ((_target294114294158_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301699_ 0)))
                                      (_tl294116294161_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301699_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294116294161_))
                                      (letrec ((_loop294117294164_
                                                (lambda (_hd294115294168_
                                                         _symbol294121294171_
                                                         _method294122294173_
                                                         _type-t294123294175_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd294115294168_))
                                                      (let ((_e294118294178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd294115294168_))))
                (let ((_lp-hd294119294182_
                       (let () (declare (not safe)) (##car _e294118294178_)))
                      (_lp-tl294120294185_
                       (let () (declare (not safe)) (##cdr _e294118294178_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd294119294182_))
                      (let ((_e294129294188_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd294119294182_))))
                        (let ((_hd294128294192_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294129294188_)))
                              (_tl294127294195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294129294188_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294127294195_))
                              (let ((_e294132294198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294127294195_))))
                                (let ((_hd294131294202_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294132294198_)))
                                      (_tl294130294205_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294132294198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294130294205_))
                                      (let ((_e294135294208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294130294205_))))
                                        (let ((_hd294134294212_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294135294208_)))
                                              (_tl294133294215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294135294208_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294133294215_))
                                              (_loop294117294164_
                                               _lp-tl294120294185_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294134294212_
                                                       _symbol294121294171_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294131294202_
                                                       _method294122294173_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294128294192_
                                                       _type-t294123294175_)))
                                              (_g294106294141_
                                               _g294107294145_))))
                                      (_g294106294141_ _g294107294145_))))
                              (_g294106294141_ _g294107294145_))))
                      (_g294106294141_ _g294107294145_))))
              (let ((_symbol294124294218_ (reverse _symbol294121294171_))
                    (_method294125294221_ (reverse _method294122294173_))
                    (_type-t294126294223_ (reverse _type-t294123294175_)))
                ((lambda (_L294226_ _L294228_ _L294229_)
                   (let ((__tmp301708
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301701
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L294226_
                               _L294228_
                               _L294229_))
                            (let ((__tmp301702
                                   (lambda (_g294245294250_
                                            _g294246294253_
                                            _g294247294255_
                                            _g294248294257_)
                                     (let ((__tmp301703
                                            (let ((__tmp301707
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301704
                                                   (let ((__tmp301705
                                                          (let ((__tmp301706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g294245294250_ '()))))
                    (declare (not safe))
                    (cons _g294246294253_ __tmp301706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g294247294255_
                                                           __tmp301705))))
                                              (declare (not safe))
                                              (cons __tmp301707 __tmp301704))))
                                       (declare (not safe))
                                       (cons __tmp301703 _g294248294257_)))))
                              (declare (not safe))
                              (foldr* __tmp301702
                                      '()
                                      _L294226_
                                      _L294228_
                                      _L294229_)))))
                     (declare (not safe))
                     (cons __tmp301708 __tmp301701)))
                 _symbol294124294218_
                 _method294125294221_
                 _type-t294126294223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop294117294164_
                                         _target294114294158_
                                         '()
                                         '()
                                         '()))
                                      (_g294106294141_ _g294107294145_)))))
                            (_g294106294141_ _g294107294145_))))
                    (_g294106294141_ _g294107294145_)))))
        (_g294105294260_ _$stx294102_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx294265_)
      (let* ((_g294269294302_
              (lambda (_g294270294298_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294270294298_))))
             (_g294268294416_
              (lambda (_g294270294306_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294270294306_))
                    (let ((_e294276294309_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294270294306_))))
                      (let ((_hd294275294313_
                             (let ()
                               (declare (not safe))
                               (##car _e294276294309_)))
                            (_tl294274294316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294276294309_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294274294316_))
                            (let ((_e294279294319_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294274294316_))))
                              (let ((_hd294278294323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294279294319_)))
                                    (_tl294277294326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294279294319_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294277294326_))
                                    (let ((_g301709_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294277294326_
                                              '0))))
                                      (begin
                                        (let ((_g301710_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301709_)
                                                     (##vector-length
                                                      _g301709_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301710_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301710_)))
                                        (let ((_target294280294329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301709_ 0)))
                                              (_tl294282294332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301709_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294282294332_))
                                              (letrec ((_loop294283294335_
                                                        (lambda (_hd294281294339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol294287294342_
                         _method294288294344_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd294281294339_))
                      (let ((_e294284294347_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd294281294339_))))
                        (let ((_lp-hd294285294351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294284294347_)))
                              (_lp-tl294286294354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294284294347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd294285294351_))
                              (let ((_e294293294357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd294285294351_))))
                                (let ((_hd294292294361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294293294357_)))
                                      (_tl294291294364_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294293294357_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294291294364_))
                                      (let ((_e294296294367_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294291294364_))))
                                        (let ((_hd294295294371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294296294367_)))
                                              (_tl294294294374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294296294367_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294294294374_))
                                              (_loop294283294335_
                                               _lp-tl294286294354_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294295294371_
                                                       _symbol294287294342_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294292294361_
                                                       _method294288294344_)))
                                              (_g294269294302_
                                               _g294270294306_))))
                                      (_g294269294302_ _g294270294306_))))
                              (_g294269294302_ _g294270294306_))))
                      (let ((_symbol294289294377_
                             (reverse _symbol294287294342_))
                            (_method294290294380_
                             (reverse _method294288294344_)))
                        ((lambda (_L294383_ _L294385_ _L294386_)
                           (let ((__tmp301718
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301711
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L294383_
                                       _L294385_))
                                    (let ((__tmp301712
                                           (lambda (_g294404294408_
                                                    _g294405294411_
                                                    _g294406294413_)
                                             (let ((__tmp301713
                                                    (let ((__tmp301717
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301714
                                                           (let ((__tmp301715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301716
                                 (let ()
                                   (declare (not safe))
                                   (cons _g294404294408_ '()))))
                            (declare (not safe))
                            (cons _g294405294411_ __tmp301716))))
                     (declare (not safe))
                     (cons _L294386_ __tmp301715))))
              (declare (not safe))
              (cons __tmp301717 __tmp301714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301713
                                                     _g294406294413_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301712
                                              '()
                                              _L294383_
                                              _L294385_)))))
                             (declare (not safe))
                             (cons __tmp301718 __tmp301711)))
                         _symbol294289294377_
                         _method294290294380_
                         _hd294278294323_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop294283294335_
                                                 _target294280294329_
                                                 '()
                                                 '()))
                                              (_g294269294302_
                                               _g294270294306_)))))
                                    (_g294269294302_ _g294270294306_))))
                            (_g294269294302_ _g294270294306_))))
                    (_g294269294302_ _g294270294306_)))))
        (_g294268294416_ _$stx294265_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx294421_)
      (let* ((_g294425294439_
              (lambda (_g294426294435_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294426294435_))))
             (_g294424294480_
              (lambda (_g294426294443_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294426294443_))
                    (let ((_e294430294446_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294426294443_))))
                      (let ((_hd294429294450_
                             (let ()
                               (declare (not safe))
                               (##car _e294430294446_)))
                            (_tl294428294453_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294430294446_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294428294453_))
                            (let ((_e294433294456_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294428294453_))))
                              (let ((_hd294432294460_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294433294456_)))
                                    (_tl294431294463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294433294456_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294431294463_))
                                    ((lambda (_L294466_)
                                       (let ((__tmp301723
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301719
                                              (let ((__tmp301720
                                                     (let ((__tmp301722
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301721
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301722 __tmp301721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301720 '()))))
                                         (declare (not safe))
                                         (cons __tmp301723 __tmp301719)))
                                     _hd294432294460_)
                                    (_g294425294439_ _g294426294443_))))
                            (_g294425294439_ _g294426294443_))))
                    (_g294425294439_ _g294426294443_)))))
        (_g294424294480_ _$stx294421_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx294484_)
      (let* ((_g294488294534_
              (lambda (_g294489294530_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294489294530_))))
             (_g294487294687_
              (lambda (_g294489294538_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294489294538_))
                    (let ((_e294501294541_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294489294538_))))
                      (let ((_hd294500294545_
                             (let ()
                               (declare (not safe))
                               (##car _e294501294541_)))
                            (_tl294499294548_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294501294541_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294499294548_))
                            (let ((_e294504294551_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294499294548_))))
                              (let ((_hd294503294555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294504294551_)))
                                    (_tl294502294558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294504294551_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294502294558_))
                                    (let ((_e294507294561_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294502294558_))))
                                      (let ((_hd294506294565_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294507294561_)))
                                            (_tl294505294568_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294507294561_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294505294568_))
                                            (let ((_e294510294571_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294505294568_))))
                                              (let ((_hd294509294575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294510294571_)))
                                                    (_tl294508294578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294510294571_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294508294578_))
                                                    (let ((_e294513294581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294508294578_))))
                                                      (let ((_hd294512294585_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294513294581_)))
                    (_tl294511294588_
                     (let () (declare (not safe)) (##cdr _e294513294581_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294511294588_))
                    (let ((_e294516294591_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294511294588_))))
                      (let ((_hd294515294595_
                             (let ()
                               (declare (not safe))
                               (##car _e294516294591_)))
                            (_tl294514294598_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294516294591_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294514294598_))
                            (let ((_e294519294601_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294514294598_))))
                              (let ((_hd294518294605_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294519294601_)))
                                    (_tl294517294608_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294519294601_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294517294608_))
                                    (let ((_e294522294611_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294517294608_))))
                                      (let ((_hd294521294615_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294522294611_)))
                                            (_tl294520294618_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294522294611_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294520294618_))
                                            (let ((_e294525294621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294520294618_))))
                                              (let ((_hd294524294625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294525294621_)))
                                                    (_tl294523294628_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294525294621_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294523294628_))
                                                    (let ((_e294528294631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294523294628_))))
                                                      (let ((_hd294527294635_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294528294631_)))
                    (_tl294526294638_
                     (let () (declare (not safe)) (##cdr _e294528294631_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294526294638_))
                    ((lambda (_L294641_
                              _L294643_
                              _L294644_
                              _L294645_
                              _L294646_
                              _L294647_
                              _L294648_
                              _L294649_
                              _L294650_)
                       (let ((__tmp301760
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301724
                              (let ((__tmp301757
                                     (let ((__tmp301759
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301758
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294650_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301759 __tmp301758)))
                                    (__tmp301725
                                     (let ((__tmp301754
                                            (let ((__tmp301756
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301755
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294649_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301756 __tmp301755)))
                                           (__tmp301726
                                            (let ((__tmp301751
                                                   (let ((__tmp301753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301752
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301753
                                                           __tmp301752)))
                                                  (__tmp301727
                                                   (let ((__tmp301748
                                                          (let ((__tmp301750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301749
                         (let () (declare (not safe)) (cons _L294647_ '()))))
                    (declare (not safe))
                    (cons __tmp301750 __tmp301749)))
                 (__tmp301728
                  (let ((__tmp301745
                         (let ((__tmp301747
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301746
                                (let ()
                                  (declare (not safe))
                                  (cons _L294646_ '()))))
                           (declare (not safe))
                           (cons __tmp301747 __tmp301746)))
                        (__tmp301729
                         (let ((__tmp301742
                                (let ((__tmp301744
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301743
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294645_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301744 __tmp301743)))
                               (__tmp301730
                                (let ((__tmp301739
                                       (let ((__tmp301741
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301740
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294644_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301741 __tmp301740)))
                                      (__tmp301731
                                       (let ((__tmp301736
                                              (let ((__tmp301738
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301737
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294643_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301738
                                                      __tmp301737)))
                                             (__tmp301732
                                              (let ((__tmp301733
                                                     (let ((__tmp301735
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301734
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301735 __tmp301734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301733 '()))))
                                         (declare (not safe))
                                         (cons __tmp301736 __tmp301732))))
                                  (declare (not safe))
                                  (cons __tmp301739 __tmp301731))))
                           (declare (not safe))
                           (cons __tmp301742 __tmp301730))))
                    (declare (not safe))
                    (cons __tmp301745 __tmp301729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301748
                                                           __tmp301728))))
                                              (declare (not safe))
                                              (cons __tmp301751 __tmp301727))))
                                       (declare (not safe))
                                       (cons __tmp301754 __tmp301726))))
                                (declare (not safe))
                                (cons __tmp301757 __tmp301725))))
                         (declare (not safe))
                         (cons __tmp301760 __tmp301724)))
                     _hd294527294635_
                     _hd294524294625_
                     _hd294521294615_
                     _hd294518294605_
                     _hd294515294595_
                     _hd294512294585_
                     _hd294509294575_
                     _hd294506294565_
                     _hd294503294555_)
                    (_g294488294534_ _g294489294538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294488294534_
                                                     _g294489294538_))))
                                            (_g294488294534_
                                             _g294489294538_))))
                                    (_g294488294534_ _g294489294538_))))
                            (_g294488294534_ _g294489294538_))))
                    (_g294488294534_ _g294489294538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294488294534_
                                                     _g294489294538_))))
                                            (_g294488294534_
                                             _g294489294538_))))
                                    (_g294488294534_ _g294489294538_))))
                            (_g294488294534_ _g294489294538_))))
                    (_g294488294534_ _g294489294538_)))))
        (_g294487294687_ _$stx294484_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294691_)
      (let* ((_g294695294709_
              (lambda (_g294696294705_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294696294705_))))
             (_g294694294750_
              (lambda (_g294696294713_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294696294713_))
                    (let ((_e294700294716_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294696294713_))))
                      (let ((_hd294699294720_
                             (let ()
                               (declare (not safe))
                               (##car _e294700294716_)))
                            (_tl294698294723_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294700294716_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294698294723_))
                            (let ((_e294703294726_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294698294723_))))
                              (let ((_hd294702294730_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294703294726_)))
                                    (_tl294701294733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294703294726_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294701294733_))
                                    ((lambda (_L294736_)
                                       (let ((__tmp301765
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301761
                                              (let ((__tmp301762
                                                     (let ((__tmp301764
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301763
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301764 __tmp301763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301762 '()))))
                                         (declare (not safe))
                                         (cons __tmp301765 __tmp301761)))
                                     _hd294702294730_)
                                    (_g294695294709_ _g294696294713_))))
                            (_g294695294709_ _g294696294713_))))
                    (_g294695294709_ _g294696294713_)))))
        (_g294694294750_ _$stx294691_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294754_)
      (let* ((_g294758294772_
              (lambda (_g294759294768_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294759294768_))))
             (_g294757294813_
              (lambda (_g294759294776_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294759294776_))
                    (let ((_e294763294779_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294759294776_))))
                      (let ((_hd294762294783_
                             (let ()
                               (declare (not safe))
                               (##car _e294763294779_)))
                            (_tl294761294786_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294763294779_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294761294786_))
                            (let ((_e294766294789_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294761294786_))))
                              (let ((_hd294765294793_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294766294789_)))
                                    (_tl294764294796_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294766294789_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294764294796_))
                                    ((lambda (_L294799_)
                                       (let ((__tmp301770
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301766
                                              (let ((__tmp301767
                                                     (let ((__tmp301769
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301768
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301769 __tmp301768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301767 '()))))
                                         (declare (not safe))
                                         (cons __tmp301770 __tmp301766)))
                                     _hd294765294793_)
                                    (_g294758294772_ _g294759294776_))))
                            (_g294758294772_ _g294759294776_))))
                    (_g294758294772_ _g294759294776_)))))
        (_g294757294813_ _$stx294754_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294817_)
      (let* ((_g294821294843_
              (lambda (_g294822294839_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294822294839_))))
             (_g294820294912_
              (lambda (_g294822294847_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294822294847_))
                    (let ((_e294828294850_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294822294847_))))
                      (let ((_hd294827294854_
                             (let ()
                               (declare (not safe))
                               (##car _e294828294850_)))
                            (_tl294826294857_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294828294850_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294826294857_))
                            (let ((_e294831294860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294826294857_))))
                              (let ((_hd294830294864_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294831294860_)))
                                    (_tl294829294867_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294831294860_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294829294867_))
                                    (let ((_e294834294870_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294829294867_))))
                                      (let ((_hd294833294874_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294834294870_)))
                                            (_tl294832294877_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294834294870_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294832294877_))
                                            (let ((_e294837294880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294832294877_))))
                                              (let ((_hd294836294884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294837294880_)))
                                                    (_tl294835294887_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294837294880_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294835294887_))
                                                    ((lambda (_L294890_
                                                              _L294892_
                                                              _L294893_)
                                                       (let ((__tmp301780
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301771
                      (let ((__tmp301777
                             (let ((__tmp301779
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301778
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294893_ '()))))
                               (declare (not safe))
                               (cons __tmp301779 __tmp301778)))
                            (__tmp301772
                             (let ((__tmp301774
                                    (let ((__tmp301776
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301775
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294892_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301776 __tmp301775)))
                                   (__tmp301773
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294890_ '()))))
                               (declare (not safe))
                               (cons __tmp301774 __tmp301773))))
                        (declare (not safe))
                        (cons __tmp301777 __tmp301772))))
                 (declare (not safe))
                 (cons __tmp301780 __tmp301771)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294836294884_
                                                     _hd294833294874_
                                                     _hd294830294864_)
                                                    (_g294821294843_
                                                     _g294822294847_))))
                                            (_g294821294843_
                                             _g294822294847_))))
                                    (_g294821294843_ _g294822294847_))))
                            (_g294821294843_ _g294822294847_))))
                    (_g294821294843_ _g294822294847_)))))
        (_g294820294912_ _$stx294817_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294916_)
      (let* ((_g294920294942_
              (lambda (_g294921294938_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294921294938_))))
             (_g294919295011_
              (lambda (_g294921294946_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294921294946_))
                    (let ((_e294927294949_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294921294946_))))
                      (let ((_hd294926294953_
                             (let ()
                               (declare (not safe))
                               (##car _e294927294949_)))
                            (_tl294925294956_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294927294949_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294925294956_))
                            (let ((_e294930294959_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294925294956_))))
                              (let ((_hd294929294963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294930294959_)))
                                    (_tl294928294966_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294930294959_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294928294966_))
                                    (let ((_e294933294969_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294928294966_))))
                                      (let ((_hd294932294973_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294933294969_)))
                                            (_tl294931294976_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294933294969_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294931294976_))
                                            (let ((_e294936294979_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294931294976_))))
                                              (let ((_hd294935294983_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294936294979_)))
                                                    (_tl294934294986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294936294979_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294934294986_))
                                                    ((lambda (_L294989_
                                                              _L294991_
                                                              _L294992_)
                                                       (let ((__tmp301790
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301781
                      (let ((__tmp301787
                             (let ((__tmp301789
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301788
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294992_ '()))))
                               (declare (not safe))
                               (cons __tmp301789 __tmp301788)))
                            (__tmp301782
                             (let ((__tmp301784
                                    (let ((__tmp301786
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301785
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294991_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301786 __tmp301785)))
                                   (__tmp301783
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294989_ '()))))
                               (declare (not safe))
                               (cons __tmp301784 __tmp301783))))
                        (declare (not safe))
                        (cons __tmp301787 __tmp301782))))
                 (declare (not safe))
                 (cons __tmp301790 __tmp301781)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294935294983_
                                                     _hd294932294973_
                                                     _hd294929294963_)
                                                    (_g294920294942_
                                                     _g294921294946_))))
                                            (_g294920294942_
                                             _g294921294946_))))
                                    (_g294920294942_ _g294921294946_))))
                            (_g294920294942_ _g294921294946_))))
                    (_g294920294942_ _g294921294946_)))))
        (_g294919295011_ _$stx294916_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx295015_)
      (let* ((___stx301298301299_ _$stx295015_)
             (_g295023295091_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301298301299_)))))
        (let ((___kont301301301302_
               (lambda (_L295369_ _L295371_)
                 (let ((__tmp301806
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301791
                        (let ((__tmp301802
                               (let ((__tmp301805
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301803
                                      (let ((__tmp301804
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301804 '()))))
                                 (declare (not safe))
                                 (cons __tmp301805 __tmp301803)))
                              (__tmp301792
                               (let ((__tmp301799
                                      (let ((__tmp301801
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301800
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295371_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301801 __tmp301800)))
                                     (__tmp301793
                                      (let ((__tmp301794
                                             (let ((__tmp301795
                                                    (let ((__tmp301796
                                                           (let ((__tmp301798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301797
                          (let () (declare (not safe)) (cons _L295369_ '()))))
                     (declare (not safe))
                     (cons __tmp301798 __tmp301797))))
              (declare (not safe))
              (cons __tmp301796 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L295369_ __tmp301795))))
                                        (declare (not safe))
                                        (cons '#f __tmp301794))))
                                 (declare (not safe))
                                 (cons __tmp301799 __tmp301793))))
                          (declare (not safe))
                          (cons __tmp301802 __tmp301792))))
                   (declare (not safe))
                   (cons __tmp301806 __tmp301791))))
              (___kont301303301304_
               (lambda (_L295300_ _L295302_)
                 (let ((__tmp301807
                        (let ((__tmp301808
                               (let ((__tmp301809
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L295300_ __tmp301809))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301808))))
                   (declare (not safe))
                   (cons _L295302_ __tmp301807))))
              (___kont301305301306_
               (lambda (_L295239_ _L295241_)
                 (let ((__tmp301823
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301810
                        (let ((__tmp301819
                               (let ((__tmp301822
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301820
                                      (let ((__tmp301821
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301821 '()))))
                                 (declare (not safe))
                                 (cons __tmp301822 __tmp301820)))
                              (__tmp301811
                               (let ((__tmp301816
                                      (let ((__tmp301818
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301817
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295241_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301818 __tmp301817)))
                                     (__tmp301812
                                      (let ((__tmp301813
                                             (let ((__tmp301815
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301814
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295239_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301815
                                                     __tmp301814))))
                                        (declare (not safe))
                                        (cons __tmp301813 '()))))
                                 (declare (not safe))
                                 (cons __tmp301816 __tmp301812))))
                          (declare (not safe))
                          (cons __tmp301819 __tmp301811))))
                   (declare (not safe))
                   (cons __tmp301823 __tmp301810))))
              (___kont301307301308_
               (lambda (_L295171_ _L295173_)
                 (let ((__tmp301837
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301824
                        (let ((__tmp301833
                               (let ((__tmp301836
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301834
                                      (let ((__tmp301835
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301835 '()))))
                                 (declare (not safe))
                                 (cons __tmp301836 __tmp301834)))
                              (__tmp301825
                               (let ((__tmp301830
                                      (let ((__tmp301832
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301831
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295173_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301832 __tmp301831)))
                                     (__tmp301826
                                      (let ((__tmp301827
                                             (let ((__tmp301829
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301828
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295171_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301829
                                                     __tmp301828))))
                                        (declare (not safe))
                                        (cons __tmp301827 '()))))
                                 (declare (not safe))
                                 (cons __tmp301830 __tmp301826))))
                          (declare (not safe))
                          (cons __tmp301833 __tmp301825))))
                   (declare (not safe))
                   (cons __tmp301837 __tmp301824))))
              (___kont301309301310_
               (lambda (_L295118_ _L295120_)
                 (let ((__tmp301838
                        (let ((__tmp301839
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L295118_ __tmp301839))))
                   (declare (not safe))
                   (cons _L295120_ __tmp301838)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx301298301299_))
              (let ((_e295029295325_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx301298301299_))))
                (let ((_tl295027295332_
                       (let () (declare (not safe)) (##cdr _e295029295325_)))
                      (_hd295028295329_
                       (let () (declare (not safe)) (##car _e295029295325_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl295027295332_))
                      (let ((_e295032295335_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl295027295332_))))
                        (let ((_tl295030295342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295032295335_)))
                              (_hd295031295339_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295032295335_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl295030295342_))
                              (let ((_e295035295345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl295030295342_))))
                                (let ((_tl295033295352_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e295035295345_)))
                                      (_hd295034295349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e295035295345_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd295034295349_))
                                      (let ((_e295036295355_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd295034295349_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e295036295355_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl295033295352_))
                                                (let ((_e295039295359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl295033295352_))))
                                                  (let ((_tl295037295366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e295039295359_)))
                                                        (_hd295038295363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e295039295359_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295037295366_))
                                                        (___kont301301301302_
                                                         _hd295038295363_
                                                         _hd295031295339_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd295031295339_))
                                                            (let ((_e295048295286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd295031295339_))))
                      (declare (not safe))
                      (_g295023295091_))
                    (let () (declare (not safe)) (_g295023295091_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd295031295339_))
                                                    (let ((_e295048295286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd295031295339_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e295048295286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295033295352_))
                      (___kont301303301304_ _hd295034295349_ _hd295028295329_)
                      (let () (declare (not safe)) (_g295023295091_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295033295352_))
                      (___kont301307301308_ _hd295034295349_ _hd295031295339_)
                      (let () (declare (not safe)) (_g295023295091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295033295352_))
                                                        (___kont301307301308_
                                                         _hd295034295349_
                                                         _hd295031295339_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295023295091_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd295031295339_))
                                                (let ((_e295048295286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd295031295339_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e295048295286_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295033295352_))
                                                          (___kont301303301304_
                                                           _hd295034295349_
                                                           _hd295028295329_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl295033295352_))
                      (let ((_e295066295229_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl295033295352_))))
                        (let ((_tl295064295236_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295066295229_)))
                              (_hd295065295233_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295066295229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295064295236_))
                              (___kont301305301306_
                               _hd295065295233_
                               _hd295034295349_)
                              (let ()
                                (declare (not safe))
                                (_g295023295091_)))))
                      (let () (declare (not safe)) (_g295023295091_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295033295352_))
                  (___kont301307301308_ _hd295034295349_ _hd295031295339_)
                  (let () (declare (not safe)) (_g295023295091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295033295352_))
                                                    (___kont301307301308_
                                                     _hd295034295349_
                                                     _hd295031295339_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295023295091_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd295031295339_))
                                          (let ((_e295048295286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd295031295339_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e295048295286_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295033295352_))
                                                    (___kont301303301304_
                                                     _hd295034295349_
                                                     _hd295028295329_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl295033295352_))
                                                        (let ((_e295066295229_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl295033295352_))))
                  (let ((_tl295064295236_
                         (let () (declare (not safe)) (##cdr _e295066295229_)))
                        (_hd295065295233_
                         (let ()
                           (declare (not safe))
                           (##car _e295066295229_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl295064295236_))
                        (___kont301305301306_
                         _hd295065295233_
                         _hd295034295349_)
                        (let () (declare (not safe)) (_g295023295091_)))))
                (let () (declare (not safe)) (_g295023295091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295033295352_))
                                                    (___kont301307301308_
                                                     _hd295034295349_
                                                     _hd295031295339_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295023295091_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl295033295352_))
                                              (___kont301307301308_
                                               _hd295034295349_
                                               _hd295031295339_)
                                              (let ()
                                                (declare (not safe))
                                                (_g295023295091_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd295031295339_))
                                  (let ((_e295048295286_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd295031295339_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295030295342_))
                                        (___kont301309301310_
                                         _hd295031295339_
                                         _hd295028295329_)
                                        (let ()
                                          (declare (not safe))
                                          (_g295023295091_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295030295342_))
                                      (___kont301309301310_
                                       _hd295031295339_
                                       _hd295028295329_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295023295091_)))))))
                      (let () (declare (not safe)) (_g295023295091_)))))
              (let () (declare (not safe)) (_g295023295091_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx295393_)
      (let* ((___stx301438301439_ _$stx295393_)
             (_g295398295453_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301438301439_)))))
        (let ((___kont301441301442_
               (lambda (_L295638_ _L295640_)
                 (let ((__tmp301855
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301840
                        (let ((__tmp301851
                               (let ((__tmp301854
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301852
                                      (let ((__tmp301853
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301853 '()))))
                                 (declare (not safe))
                                 (cons __tmp301854 __tmp301852)))
                              (__tmp301841
                               (let ((__tmp301842
                                      (let ((__tmp301850
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301843
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295638_
                                                  _L295640_))
                                               (let ((__tmp301844
                                                      (lambda (_g295657295661_
                                                               _g295658295664_
                                                               _g295659295666_)
                                                        (let ((__tmp301845
                                                               (let ((__tmp301849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301846
                              (let ((__tmp301847
                                     (let ((__tmp301848
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295657295661_ '()))))
                                       (declare (not safe))
                                       (cons _g295658295664_ __tmp301848))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301847))))
                         (declare (not safe))
                         (cons __tmp301849 __tmp301846))))
                  (declare (not safe))
                  (cons __tmp301845 _g295659295666_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301844
                                                         '()
                                                         _L295638_
                                                         _L295640_)))))
                                        (declare (not safe))
                                        (cons __tmp301850 __tmp301843))))
                                 (declare (not safe))
                                 (cons __tmp301842 '()))))
                          (declare (not safe))
                          (cons __tmp301851 __tmp301841))))
                   (declare (not safe))
                   (cons __tmp301855 __tmp301840))))
              (___kont301445301446_
               (lambda (_L295524_ _L295526_)
                 (let ((__tmp301870
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301856
                        (let ((__tmp301866
                               (let ((__tmp301869
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301867
                                      (let ((__tmp301868
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301868 '()))))
                                 (declare (not safe))
                                 (cons __tmp301869 __tmp301867)))
                              (__tmp301857
                               (let ((__tmp301858
                                      (let ((__tmp301865
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301859
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295524_
                                                  _L295526_))
                                               (let ((__tmp301860
                                                      (lambda (_g295541295545_
                                                               _g295542295548_
                                                               _g295543295550_)
                                                        (let ((__tmp301861
                                                               (let ((__tmp301864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301862
                              (let ((__tmp301863
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295541295545_ '()))))
                                (declare (not safe))
                                (cons _g295542295548_ __tmp301863))))
                         (declare (not safe))
                         (cons __tmp301864 __tmp301862))))
                  (declare (not safe))
                  (cons __tmp301861 _g295543295550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301860
                                                         '()
                                                         _L295524_
                                                         _L295526_)))))
                                        (declare (not safe))
                                        (cons __tmp301865 __tmp301859))))
                                 (declare (not safe))
                                 (cons __tmp301858 '()))))
                          (declare (not safe))
                          (cons __tmp301866 __tmp301857))))
                   (declare (not safe))
                   (cons __tmp301870 __tmp301856)))))
          (let* ((___match301489301490_
                  (lambda (_e295430295460_
                           _hd295429295464_
                           _tl295428295467_
                           ___splice301447301448_
                           _target295431295470_
                           _tl295433295473_)
                    (letrec ((_loop295434295476_
                              (lambda (_hd295432295480_
                                       _dispatch295438295483_
                                       _arity295439295485_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295432295480_))
                                    (let ((_e295435295488_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295432295480_))))
                                      (let ((_lp-tl295437295495_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295435295488_)))
                                            (_lp-hd295436295492_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295435295488_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295436295492_))
                                            (let ((_e295444295498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295436295492_))))
                                              (let ((_tl295442295505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295444295498_)))
                                                    (_hd295443295502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295444295498_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295442295505_))
                                                    (let ((_e295447295508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295442295505_))))
                                                      (let ((_tl295445295515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295447295508_)))
                    (_hd295446295512_
                     (let () (declare (not safe)) (##car _e295447295508_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295445295515_))
                    (_loop295434295476_
                     _lp-tl295437295495_
                     (let ()
                       (declare (not safe))
                       (cons _hd295446295512_ _dispatch295438295483_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295443295502_ _arity295439295485_)))
                    (let () (declare (not safe)) (_g295398295453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295398295453_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295398295453_)))))
                                    (let ((_arity295441295521_
                                           (reverse _arity295439295485_))
                                          (_dispatch295440295518_
                                           (reverse _dispatch295438295483_)))
                                      (___kont301445301446_
                                       _dispatch295440295518_
                                       _arity295441295521_))))))
                      (_loop295434295476_ _target295431295470_ '() '()))))
                 (___match301481301482_
                  (lambda (_e295430295460_ _hd295429295464_ _tl295428295467_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl295428295467_))
                        (let ((___splice301447301448_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl295428295467_
                                  '0))))
                          (let ((_tl295433295473_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301447301448_ '1)))
                                (_target295431295470_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301447301448_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl295433295473_))
                                (___match301489301490_
                                 _e295430295460_
                                 _hd295429295464_
                                 _tl295428295467_
                                 ___splice301447301448_
                                 _target295431295470_
                                 _tl295433295473_)
                                (let ()
                                  (declare (not safe))
                                  (_g295398295453_)))))
                        (let () (declare (not safe)) (_g295398295453_)))))
                 (___match301475301476_
                  (lambda (_e295404295560_
                           _hd295403295564_
                           _tl295402295567_
                           _e295407295570_
                           _hd295406295574_
                           _tl295405295577_
                           _e295408295580_
                           ___splice301443301444_
                           _target295409295584_
                           _tl295411295587_)
                    (letrec ((_loop295412295590_
                              (lambda (_hd295410295594_
                                       _dispatch295416295597_
                                       _arity295417295599_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295410295594_))
                                    (let ((_e295413295602_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295410295594_))))
                                      (let ((_lp-tl295415295609_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295413295602_)))
                                            (_lp-hd295414295606_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295413295602_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295414295606_))
                                            (let ((_e295422295612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295414295606_))))
                                              (let ((_tl295420295619_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295422295612_)))
                                                    (_hd295421295616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295422295612_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295420295619_))
                                                    (let ((_e295425295622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295420295619_))))
                                                      (let ((_tl295423295629_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295425295622_)))
                    (_hd295424295626_
                     (let () (declare (not safe)) (##car _e295425295622_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295423295629_))
                    (_loop295412295590_
                     _lp-tl295415295609_
                     (let ()
                       (declare (not safe))
                       (cons _hd295424295626_ _dispatch295416295597_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295421295616_ _arity295417295599_)))
                    (___match301481301482_
                     _e295404295560_
                     _hd295403295564_
                     _tl295402295567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match301481301482_
                                                     _e295404295560_
                                                     _hd295403295564_
                                                     _tl295402295567_))))
                                            (___match301481301482_
                                             _e295404295560_
                                             _hd295403295564_
                                             _tl295402295567_))))
                                    (let ((_arity295419295635_
                                           (reverse _arity295417295599_))
                                          (_dispatch295418295632_
                                           (reverse _dispatch295416295597_)))
                                      (___kont301441301442_
                                       _dispatch295418295632_
                                       _arity295419295635_))))))
                      (_loop295412295590_ _target295409295584_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301438301439_))
                (let ((_e295404295560_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301438301439_))))
                  (let ((_tl295402295567_
                         (let () (declare (not safe)) (##cdr _e295404295560_)))
                        (_hd295403295564_
                         (let ()
                           (declare (not safe))
                           (##car _e295404295560_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295402295567_))
                        (let ((_e295407295570_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295402295567_))))
                          (let ((_tl295405295577_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295407295570_)))
                                (_hd295406295574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295407295570_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd295406295574_))
                                (let ((_e295408295580_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd295406295574_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e295408295580_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295405295577_))
                                          (let ((___splice301443301444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295405295577_
                                                    '0))))
                                            (let ((_tl295411295587_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301443301444_
                                                      '1)))
                                                  (_target295409295584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301443301444_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295411295587_))
                                                  (___match301475301476_
                                                   _e295404295560_
                                                   _hd295403295564_
                                                   _tl295402295567_
                                                   _e295407295570_
                                                   _hd295406295574_
                                                   _tl295405295577_
                                                   _e295408295580_
                                                   ___splice301443301444_
                                                   _target295409295584_
                                                   _tl295411295587_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295402295567_))
                                                      (let ((___splice301447301448_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295402295567_ '0))))
                (let ((_tl295433295473_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301447301448_ '1)))
                      (_target295431295470_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301447301448_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295433295473_))
                      (___match301489301490_
                       _e295404295560_
                       _hd295403295564_
                       _tl295402295567_
                       ___splice301447301448_
                       _target295431295470_
                       _tl295433295473_)
                      (let () (declare (not safe)) (_g295398295453_)))))
              (let () (declare (not safe)) (_g295398295453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl295402295567_))
                                              (let ((___splice301447301448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl295402295567_
                                                        '0))))
                                                (let ((_tl295433295473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301447301448_
                                                          '1)))
                                                      (_target295431295470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301447301448_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl295433295473_))
                                                      (___match301489301490_
                                                       _e295404295560_
                                                       _hd295403295564_
                                                       _tl295402295567_
                                                       ___splice301447301448_
                                                       _target295431295470_
                                                       _tl295433295473_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g295398295453_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g295398295453_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295402295567_))
                                          (let ((___splice301447301448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295402295567_
                                                    '0))))
                                            (let ((_tl295433295473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301447301448_
                                                      '1)))
                                                  (_target295431295470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301447301448_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295433295473_))
                                                  (___match301489301490_
                                                   _e295404295560_
                                                   _hd295403295564_
                                                   _tl295402295567_
                                                   ___splice301447301448_
                                                   _target295431295470_
                                                   _tl295433295473_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g295398295453_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g295398295453_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295402295567_))
                                    (let ((___splice301447301448_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295402295567_
                                              '0))))
                                      (let ((_tl295433295473_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301447301448_
                                                '1)))
                                            (_target295431295470_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301447301448_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295433295473_))
                                            (___match301489301490_
                                             _e295404295560_
                                             _hd295403295564_
                                             _tl295402295567_
                                             ___splice301447301448_
                                             _target295431295470_
                                             _tl295433295473_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295398295453_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295398295453_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295402295567_))
                            (let ((___splice301447301448_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295402295567_
                                      '0))))
                              (let ((_tl295433295473_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301447301448_
                                        '1)))
                                    (_target295431295470_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301447301448_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295433295473_))
                                    (___match301489301490_
                                     _e295404295560_
                                     _hd295403295564_
                                     _tl295402295567_
                                     ___splice301447301448_
                                     _target295431295470_
                                     _tl295433295473_)
                                    (let ()
                                      (declare (not safe))
                                      (_g295398295453_)))))
                            (let () (declare (not safe)) (_g295398295453_))))))
                (let () (declare (not safe)) (_g295398295453_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295675_)
      (let* ((_g295679295697_
              (lambda (_g295680295693_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295680295693_))))
             (_g295678295752_
              (lambda (_g295680295701_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295680295701_))
                    (let ((_e295685295704_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295680295701_))))
                      (let ((_hd295684295708_
                             (let ()
                               (declare (not safe))
                               (##car _e295685295704_)))
                            (_tl295683295711_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295685295704_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295683295711_))
                            (let ((_e295688295714_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295683295711_))))
                              (let ((_hd295687295718_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295688295714_)))
                                    (_tl295686295721_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295688295714_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295686295721_))
                                    (let ((_e295691295724_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295686295721_))))
                                      (let ((_hd295690295728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295691295724_)))
                                            (_tl295689295731_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295691295724_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295689295731_))
                                            ((lambda (_L295734_ _L295736_)
                                               (let ((__tmp301884
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301871
                                                      (let ((__tmp301880
                                                             (let ((__tmp301883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301881
                            (let ((__tmp301882
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301882 '()))))
                       (declare (not safe))
                       (cons __tmp301883 __tmp301881)))
                    (__tmp301872
                     (let ((__tmp301877
                            (let ((__tmp301879
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301878
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295736_ '()))))
                              (declare (not safe))
                              (cons __tmp301879 __tmp301878)))
                           (__tmp301873
                            (let ((__tmp301874
                                   (let ((__tmp301876
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301875
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295734_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301876 __tmp301875))))
                              (declare (not safe))
                              (cons __tmp301874 '()))))
                       (declare (not safe))
                       (cons __tmp301877 __tmp301873))))
                (declare (not safe))
                (cons __tmp301880 __tmp301872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301884
                                                       __tmp301871)))
                                             _hd295690295728_
                                             _hd295687295718_)
                                            (_g295679295697_
                                             _g295680295701_))))
                                    (_g295679295697_ _g295680295701_))))
                            (_g295679295697_ _g295680295701_))))
                    (_g295679295697_ _g295680295701_)))))
        (_g295678295752_ _$stx295675_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295756_)
      (let* ((_g295760295778_
              (lambda (_g295761295774_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295761295774_))))
             (_g295759295833_
              (lambda (_g295761295782_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295761295782_))
                    (let ((_e295766295785_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295761295782_))))
                      (let ((_hd295765295789_
                             (let ()
                               (declare (not safe))
                               (##car _e295766295785_)))
                            (_tl295764295792_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295766295785_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295764295792_))
                            (let ((_e295769295795_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295764295792_))))
                              (let ((_hd295768295799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295769295795_)))
                                    (_tl295767295802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295769295795_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295767295802_))
                                    (let ((_e295772295805_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295767295802_))))
                                      (let ((_hd295771295809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295772295805_)))
                                            (_tl295770295812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295772295805_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295770295812_))
                                            ((lambda (_L295815_ _L295817_)
                                               (let ((__tmp301898
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301885
                                                      (let ((__tmp301894
                                                             (let ((__tmp301897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301895
                            (let ((__tmp301896
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301896 '()))))
                       (declare (not safe))
                       (cons __tmp301897 __tmp301895)))
                    (__tmp301886
                     (let ((__tmp301891
                            (let ((__tmp301893
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301892
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295817_ '()))))
                              (declare (not safe))
                              (cons __tmp301893 __tmp301892)))
                           (__tmp301887
                            (let ((__tmp301888
                                   (let ((__tmp301890
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301889
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295815_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301890 __tmp301889))))
                              (declare (not safe))
                              (cons __tmp301888 '()))))
                       (declare (not safe))
                       (cons __tmp301891 __tmp301887))))
                (declare (not safe))
                (cons __tmp301894 __tmp301886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301898
                                                       __tmp301885)))
                                             _hd295771295809_
                                             _hd295768295799_)
                                            (_g295760295778_
                                             _g295761295782_))))
                                    (_g295760295778_ _g295761295782_))))
                            (_g295760295778_ _g295761295782_))))
                    (_g295760295778_ _g295761295782_)))))
        (_g295759295833_ _$stx295756_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295837_)
      (let* ((___stx301492301493_ _$stx295837_)
             (_g295844295915_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301492301493_)))))
        (let ((___kont301495301496_
               (lambda (_L296206_ _L296208_)
                 (let ((__tmp301904
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301899
                        (let ((__tmp301900
                               (let ((__tmp301901
                                      (let ((__tmp301903
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301902
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296206_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301903 __tmp301902))))
                                 (declare (not safe))
                                 (cons __tmp301901 '()))))
                          (declare (not safe))
                          (cons _L296208_ __tmp301900))))
                   (declare (not safe))
                   (cons __tmp301904 __tmp301899))))
              (___kont301497301498_
               (lambda (_L296125_ _L296127_)
                 (let ((__tmp301913
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301905
                        (let ((__tmp301906
                               (let ((__tmp301907
                                      (let ((__tmp301912
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301908
                                             (let ((__tmp301909
                                                    (lambda (_g296146296149_
                                                             _g296147296152_)
                                                      (let ((__tmp301910
                                                             (let ((__tmp301911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296146296149_ __tmp301911))))
                (declare (not safe))
                (cons __tmp301910 _g296147296152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301909
                                                       '()
                                                       _L296125_))))
                                        (declare (not safe))
                                        (cons __tmp301912 __tmp301908))))
                                 (declare (not safe))
                                 (cons __tmp301907 '()))))
                          (declare (not safe))
                          (cons _L296127_ __tmp301906))))
                   (declare (not safe))
                   (cons __tmp301913 __tmp301905))))
              (___kont301501301502_
               (lambda (_L296037_ _L296039_)
                 (let ((__tmp301920
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301914
                        (let ((__tmp301915
                               (let ((__tmp301916
                                      (let ((__tmp301919
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301917
                                             (let ((__tmp301918
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296037_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301918))))
                                        (declare (not safe))
                                        (cons __tmp301919 __tmp301917))))
                                 (declare (not safe))
                                 (cons __tmp301916 '()))))
                          (declare (not safe))
                          (cons _L296039_ __tmp301915))))
                   (declare (not safe))
                   (cons __tmp301920 __tmp301914))))
              (___kont301503301504_
               (lambda (_L295972_ _L295974_)
                 (let ((__tmp301930
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301921
                        (let ((__tmp301922
                               (let ((__tmp301923
                                      (let ((__tmp301929
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301924
                                             (let ((__tmp301925
                                                    (let ((__tmp301926
                                                           (lambda (_g295991295994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g295992295997_)
                     (let ((__tmp301927
                            (let ((__tmp301928
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g295991295994_ __tmp301928))))
                       (declare (not safe))
                       (cons __tmp301927 _g295992295997_)))))
              (declare (not safe))
              (foldr1 __tmp301926 '() _L295972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301925))))
                                        (declare (not safe))
                                        (cons __tmp301929 __tmp301924))))
                                 (declare (not safe))
                                 (cons __tmp301923 '()))))
                          (declare (not safe))
                          (cons _L295974_ __tmp301922))))
                   (declare (not safe))
                   (cons __tmp301930 __tmp301921)))))
          (let* ((___match301611301612_
                  (lambda (_e295897295922_
                           _hd295896295926_
                           _tl295895295929_
                           _e295900295932_
                           _hd295899295936_
                           _tl295898295939_
                           ___splice301505301506_
                           _target295901295942_
                           _tl295903295945_)
                    (letrec ((_loop295904295948_
                              (lambda (_hd295902295952_ _arity295908295955_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295902295952_))
                                    (let ((_e295905295958_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295902295952_))))
                                      (let ((_lp-tl295907295965_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295905295958_)))
                                            (_lp-hd295906295962_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295905295958_))))
                                        (_loop295904295948_
                                         _lp-tl295907295965_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295906295962_
                                                 _arity295908295955_)))))
                                    (let ((_arity295909295968_
                                           (reverse _arity295908295955_)))
                                      (___kont301503301504_
                                       _arity295909295968_
                                       _hd295899295936_))))))
                      (_loop295904295948_ _target295901295942_ '()))))
                 (___match301571301572_
                  (lambda (_e295865296061_
                           _hd295864296065_
                           _tl295863296068_
                           _e295868296071_
                           _hd295867296075_
                           _tl295866296078_
                           _e295871296081_
                           _hd295870296085_
                           _tl295869296088_
                           _e295872296091_
                           ___splice301499301500_
                           _target295873296095_
                           _tl295875296098_)
                    (letrec ((_loop295876296101_
                              (lambda (_hd295874296105_ _arity295880296108_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295874296105_))
                                    (let ((_e295877296111_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295874296105_))))
                                      (let ((_lp-tl295879296118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295877296111_)))
                                            (_lp-hd295878296115_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295877296111_))))
                                        (_loop295876296101_
                                         _lp-tl295879296118_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295878296115_
                                                 _arity295880296108_)))))
                                    (let ((_arity295881296121_
                                           (reverse _arity295880296108_)))
                                      (___kont301497301498_
                                       _arity295881296121_
                                       _hd295867296075_))))))
                      (_loop295876296101_ _target295873296095_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301492301493_))
                (let ((_e295850296162_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301492301493_))))
                  (let ((_tl295848296169_
                         (let () (declare (not safe)) (##cdr _e295850296162_)))
                        (_hd295849296166_
                         (let ()
                           (declare (not safe))
                           (##car _e295850296162_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295848296169_))
                        (let ((_e295853296172_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295848296169_))))
                          (let ((_tl295851296179_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295853296172_)))
                                (_hd295852296176_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295853296172_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295851296179_))
                                (let ((_e295856296182_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295851296179_))))
                                  (let ((_tl295854296189_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295856296182_)))
                                        (_hd295855296186_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295856296182_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295855296186_))
                                        (let ((_e295857296192_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295855296186_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295857296192_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295854296189_))
                                                  (let ((_e295860296196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295854296189_))))
                                                    (let ((_tl295858296203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295860296196_)))
                                                          (_hd295859296200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295860296196_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295858296203_))
                                                          (___kont301495301496_
                                                           _hd295859296200_
                                                           _hd295852296176_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295854296189_))
                      (let ((___splice301499301500_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295854296189_ '0))))
                        (let ((_tl295875296098_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301499301500_ '1)))
                              (_target295873296095_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301499301500_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295875296098_))
                              (___match301571301572_
                               _e295850296162_
                               _hd295849296166_
                               _tl295848296169_
                               _e295853296172_
                               _hd295852296176_
                               _tl295851296179_
                               _e295856296182_
                               _hd295855296186_
                               _tl295854296189_
                               _e295857296192_
                               ___splice301499301500_
                               _target295873296095_
                               _tl295875296098_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295851296179_))
                                  (let ((___splice301505301506_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295851296179_
                                            '0))))
                                    (let ((_tl295903295945_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301505301506_
                                              '1)))
                                          (_target295901295942_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301505301506_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295903295945_))
                                          (___match301611301612_
                                           _e295850296162_
                                           _hd295849296166_
                                           _tl295848296169_
                                           _e295853296172_
                                           _hd295852296176_
                                           _tl295851296179_
                                           ___splice301505301506_
                                           _target295901295942_
                                           _tl295903295945_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295844295915_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295844295915_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295851296179_))
                          (let ((___splice301505301506_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295851296179_
                                    '0))))
                            (let ((_tl295903295945_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301505301506_ '1)))
                                  (_target295901295942_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301505301506_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295903295945_))
                                  (___match301611301612_
                                   _e295850296162_
                                   _hd295849296166_
                                   _tl295848296169_
                                   _e295853296172_
                                   _hd295852296176_
                                   _tl295851296179_
                                   ___splice301505301506_
                                   _target295901295942_
                                   _tl295903295945_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295844295915_)))))
                          (let () (declare (not safe)) (_g295844295915_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295854296189_))
                                                      (let ((___splice301499301500_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295854296189_ '0))))
                (let ((_tl295875296098_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301499301500_ '1)))
                      (_target295873296095_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301499301500_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295875296098_))
                      (___match301571301572_
                       _e295850296162_
                       _hd295849296166_
                       _tl295848296169_
                       _e295853296172_
                       _hd295852296176_
                       _tl295851296179_
                       _e295856296182_
                       _hd295855296186_
                       _tl295854296189_
                       _e295857296192_
                       ___splice301499301500_
                       _target295873296095_
                       _tl295875296098_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295854296189_))
                          (___kont301501301502_
                           _hd295855296186_
                           _hd295852296176_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295851296179_))
                              (let ((___splice301505301506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295851296179_
                                        '0))))
                                (let ((_tl295903295945_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301505301506_
                                          '1)))
                                      (_target295901295942_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301505301506_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295903295945_))
                                      (___match301611301612_
                                       _e295850296162_
                                       _hd295849296166_
                                       _tl295848296169_
                                       _e295853296172_
                                       _hd295852296176_
                                       _tl295851296179_
                                       ___splice301505301506_
                                       _target295901295942_
                                       _tl295903295945_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295844295915_)))))
                              (let ()
                                (declare (not safe))
                                (_g295844295915_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295854296189_))
                  (___kont301501301502_ _hd295855296186_ _hd295852296176_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295851296179_))
                      (let ((___splice301505301506_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295851296179_ '0))))
                        (let ((_tl295903295945_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301505301506_ '1)))
                              (_target295901295942_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301505301506_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295903295945_))
                              (___match301611301612_
                               _e295850296162_
                               _hd295849296166_
                               _tl295848296169_
                               _e295853296172_
                               _hd295852296176_
                               _tl295851296179_
                               ___splice301505301506_
                               _target295901295942_
                               _tl295903295945_)
                              (let ()
                                (declare (not safe))
                                (_g295844295915_)))))
                      (let () (declare (not safe)) (_g295844295915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295854296189_))
                                                  (___kont301501301502_
                                                   _hd295855296186_
                                                   _hd295852296176_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295851296179_))
                                                      (let ((___splice301505301506_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295851296179_ '0))))
                (let ((_tl295903295945_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301505301506_ '1)))
                      (_target295901295942_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301505301506_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295903295945_))
                      (___match301611301612_
                       _e295850296162_
                       _hd295849296166_
                       _tl295848296169_
                       _e295853296172_
                       _hd295852296176_
                       _tl295851296179_
                       ___splice301505301506_
                       _target295901295942_
                       _tl295903295945_)
                      (let () (declare (not safe)) (_g295844295915_)))))
              (let () (declare (not safe)) (_g295844295915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295854296189_))
                                            (___kont301501301502_
                                             _hd295855296186_
                                             _hd295852296176_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295851296179_))
                                                (let ((___splice301505301506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295851296179_
                                                          '0))))
                                                  (let ((_tl295903295945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301505301506_
                                                            '1)))
                                                        (_target295901295942_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301505301506_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295903295945_))
                                                        (___match301611301612_
                                                         _e295850296162_
                                                         _hd295849296166_
                                                         _tl295848296169_
                                                         _e295853296172_
                                                         _hd295852296176_
                                                         _tl295851296179_
                                                         ___splice301505301506_
                                                         _target295901295942_
                                                         _tl295903295945_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295844295915_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295844295915_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295851296179_))
                                    (let ((___splice301505301506_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295851296179_
                                              '0))))
                                      (let ((_tl295903295945_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301505301506_
                                                '1)))
                                            (_target295901295942_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301505301506_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295903295945_))
                                            (___match301611301612_
                                             _e295850296162_
                                             _hd295849296166_
                                             _tl295848296169_
                                             _e295853296172_
                                             _hd295852296176_
                                             _tl295851296179_
                                             ___splice301505301506_
                                             _target295901295942_
                                             _tl295903295945_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295844295915_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295844295915_))))))
                        (let () (declare (not safe)) (_g295844295915_)))))
                (let () (declare (not safe)) (_g295844295915_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx296232_)
      (let* ((___stx301614301615_ _$stx296232_)
             (_g296237296272_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301614301615_)))))
        (let ((___kont301617301618_
               (lambda (_L296394_ _L296396_)
                 (let ((__tmp301936
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301931
                        (let ((__tmp301932
                               (let ((__tmp301933
                                      (let ((__tmp301935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301934
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296394_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301935 __tmp301934))))
                                 (declare (not safe))
                                 (cons __tmp301933 '()))))
                          (declare (not safe))
                          (cons _L296396_ __tmp301932))))
                   (declare (not safe))
                   (cons __tmp301936 __tmp301931))))
              (___kont301619301620_
               (lambda (_L296329_ _L296331_)
                 (let ((__tmp301945
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301937
                        (let ((__tmp301938
                               (let ((__tmp301939
                                      (let ((__tmp301944
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301940
                                             (let ((__tmp301941
                                                    (lambda (_g296348296351_
                                                             _g296349296354_)
                                                      (let ((__tmp301942
                                                             (let ((__tmp301943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296348296351_ __tmp301943))))
                (declare (not safe))
                (cons __tmp301942 _g296349296354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301941
                                                       '()
                                                       _L296329_))))
                                        (declare (not safe))
                                        (cons __tmp301944 __tmp301940))))
                                 (declare (not safe))
                                 (cons __tmp301939 '()))))
                          (declare (not safe))
                          (cons _L296331_ __tmp301938))))
                   (declare (not safe))
                   (cons __tmp301945 __tmp301937)))))
          (let ((___match301663301664_
                 (lambda (_e296254296279_
                          _hd296253296283_
                          _tl296252296286_
                          _e296257296289_
                          _hd296256296293_
                          _tl296255296296_
                          ___splice301621301622_
                          _target296258296299_
                          _tl296260296302_)
                   (letrec ((_loop296261296305_
                             (lambda (_hd296259296309_ _arity296265296312_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd296259296309_))
                                   (let ((_e296262296315_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd296259296309_))))
                                     (let ((_lp-tl296264296322_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e296262296315_)))
                                           (_lp-hd296263296319_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e296262296315_))))
                                       (_loop296261296305_
                                        _lp-tl296264296322_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd296263296319_
                                                _arity296265296312_)))))
                                   (let ((_arity296266296325_
                                          (reverse _arity296265296312_)))
                                     (___kont301619301620_
                                      _arity296266296325_
                                      _hd296256296293_))))))
                     (_loop296261296305_ _target296258296299_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301614301615_))
                (let ((_e296243296364_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301614301615_))))
                  (let ((_tl296241296371_
                         (let () (declare (not safe)) (##cdr _e296243296364_)))
                        (_hd296242296368_
                         (let ()
                           (declare (not safe))
                           (##car _e296243296364_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296241296371_))
                        (let ((_e296246296374_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296241296371_))))
                          (let ((_tl296244296381_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296246296374_)))
                                (_hd296245296378_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296246296374_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296244296381_))
                                (let ((_e296249296384_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296244296381_))))
                                  (let ((_tl296247296391_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296249296384_)))
                                        (_hd296248296388_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296249296384_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296247296391_))
                                        (___kont301617301618_
                                         _hd296248296388_
                                         _hd296245296378_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl296244296381_))
                                            (let ((___splice301621301622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl296244296381_
                                                      '0))))
                                              (let ((_tl296260296302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301621301622_
                                                        '1)))
                                                    (_target296258296299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301621301622_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296260296302_))
                                                    (___match301663301664_
                                                     _e296243296364_
                                                     _hd296242296368_
                                                     _tl296241296371_
                                                     _e296246296374_
                                                     _hd296245296378_
                                                     _tl296244296381_
                                                     ___splice301621301622_
                                                     _target296258296299_
                                                     _tl296260296302_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296237296272_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g296237296272_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl296244296381_))
                                    (let ((___splice301621301622_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl296244296381_
                                              '0))))
                                      (let ((_tl296260296302_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301621301622_
                                                '1)))
                                            (_target296258296299_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301621301622_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296260296302_))
                                            (___match301663301664_
                                             _e296243296364_
                                             _hd296242296368_
                                             _tl296241296371_
                                             _e296246296374_
                                             _hd296245296378_
                                             _tl296244296381_
                                             ___splice301621301622_
                                             _target296258296299_
                                             _tl296260296302_)
                                            (let ()
                                              (declare (not safe))
                                              (_g296237296272_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g296237296272_))))))
                        (let () (declare (not safe)) (_g296237296272_)))))
                (let () (declare (not safe)) (_g296237296272_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx296416_)
      (let* ((_g296420296455_
              (lambda (_g296421296451_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296421296451_))))
             (_g296419296583_
              (lambda (_g296421296459_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296421296459_))
                    (let ((_e296426296462_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296421296459_))))
                      (let ((_hd296425296466_
                             (let ()
                               (declare (not safe))
                               (##car _e296426296462_)))
                            (_tl296424296469_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296426296462_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296424296469_))
                            (let ((_g301946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296424296469_
                                      '0))))
                              (begin
                                (let ((_g301947_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301946_)
                                             (##vector-length _g301946_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301947_ 2)))
                                      (error "Context expects 2 values"
                                             _g301947_)))
                                (let ((_target296427296472_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301946_ 0)))
                                      (_tl296429296475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301946_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296429296475_))
                                      (letrec ((_loop296430296478_
                                                (lambda (_hd296428296482_
                                                         _arity296434296485_
                                                         _prim296435296487_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296428296482_))
                                                      (let ((_e296431296490_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296428296482_))))
                (let ((_lp-hd296432296494_
                       (let () (declare (not safe)) (##car _e296431296490_)))
                      (_lp-tl296433296497_
                       (let () (declare (not safe)) (##cdr _e296431296490_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296432296494_))
                      (let ((_e296440296500_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296432296494_))))
                        (let ((_hd296439296504_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296440296500_)))
                              (_tl296438296507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296440296500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296438296507_))
                              (let ((_g301956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296438296507_
                                        '0))))
                                (begin
                                  (let ((_g301957_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301956_)
                                               (##vector-length _g301956_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301957_ 2)))
                                        (error "Context expects 2 values"
                                               _g301957_)))
                                  (let ((_target296441296510_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301956_ 0)))
                                        (_tl296443296513_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301956_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296443296513_))
                                        (letrec ((_loop296444296516_
                                                  (lambda (_hd296442296520_
                                                           _arity296448296523_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296442296520_))
                                                        (let ((_e296445296526_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296442296520_))))
                  (let ((_lp-hd296446296530_
                         (let () (declare (not safe)) (##car _e296445296526_)))
                        (_lp-tl296447296533_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296445296526_))))
                    (_loop296444296516_
                     _lp-tl296447296533_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296446296530_ _arity296448296523_)))))
                (let ((_arity296449296536_ (reverse _arity296448296523_)))
                  (_loop296430296478_
                   _lp-tl296433296497_
                   (let ()
                     (declare (not safe))
                     (cons _arity296449296536_ _arity296434296485_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296439296504_ _prim296435296487_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296444296516_
                                           _target296441296510_
                                           '()))
                                        (_g296420296455_ _g296421296459_)))))
                              (_g296420296455_ _g296421296459_))))
                      (_g296420296455_ _g296421296459_))))
              (let ((_arity296436296540_ (reverse _arity296434296485_))
                    (_prim296437296543_ (reverse _prim296435296487_)))
                ((lambda (_L296546_ _L296548_)
                   (let ((__tmp301955
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301948
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296546_
                               _L296548_))
                            (let ((__tmp301949
                                   (lambda (_g296563296569_
                                            _g296564296572_
                                            _g296565296574_)
                                     (let ((__tmp301950
                                            (let ((__tmp301954
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301951
                                                   (let ((__tmp301952
                                                          (let ((__tmp301953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296566296577_ _g296567296580_)
                           (let ()
                             (declare (not safe))
                             (cons _g296566296577_ _g296567296580_)))))
                    (declare (not safe))
                    (foldr1 __tmp301953 '() _g296563296569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296564296572_
                                                           __tmp301952))))
                                              (declare (not safe))
                                              (cons __tmp301954 __tmp301951))))
                                       (declare (not safe))
                                       (cons __tmp301950 _g296565296574_)))))
                              (declare (not safe))
                              (foldr2 __tmp301949 '() _L296546_ _L296548_)))))
                     (declare (not safe))
                     (cons __tmp301955 __tmp301948)))
                 _arity296436296540_
                 _prim296437296543_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296430296478_
                                         _target296427296472_
                                         '()
                                         '()))
                                      (_g296420296455_ _g296421296459_)))))
                            (_g296420296455_ _g296421296459_))))
                    (_g296420296455_ _g296421296459_)))))
        (_g296419296583_ _$stx296416_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296589_)
      (let* ((_g296593296628_
              (lambda (_g296594296624_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296594296624_))))
             (_g296592296756_
              (lambda (_g296594296632_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296594296632_))
                    (let ((_e296599296635_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296594296632_))))
                      (let ((_hd296598296639_
                             (let ()
                               (declare (not safe))
                               (##car _e296599296635_)))
                            (_tl296597296642_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296599296635_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296597296642_))
                            (let ((_g301958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296597296642_
                                      '0))))
                              (begin
                                (let ((_g301959_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301958_)
                                             (##vector-length _g301958_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301959_ 2)))
                                      (error "Context expects 2 values"
                                             _g301959_)))
                                (let ((_target296600296645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301958_ 0)))
                                      (_tl296602296648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301958_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296602296648_))
                                      (letrec ((_loop296603296651_
                                                (lambda (_hd296601296655_
                                                         _arity296607296658_
                                                         _prim296608296660_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296601296655_))
                                                      (let ((_e296604296663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296601296655_))))
                (let ((_lp-hd296605296667_
                       (let () (declare (not safe)) (##car _e296604296663_)))
                      (_lp-tl296606296670_
                       (let () (declare (not safe)) (##cdr _e296604296663_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296605296667_))
                      (let ((_e296613296673_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296605296667_))))
                        (let ((_hd296612296677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296613296673_)))
                              (_tl296611296680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296613296673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296611296680_))
                              (let ((_g301968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296611296680_
                                        '0))))
                                (begin
                                  (let ((_g301969_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301968_)
                                               (##vector-length _g301968_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301969_ 2)))
                                        (error "Context expects 2 values"
                                               _g301969_)))
                                  (let ((_target296614296683_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301968_ 0)))
                                        (_tl296616296686_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301968_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296616296686_))
                                        (letrec ((_loop296617296689_
                                                  (lambda (_hd296615296693_
                                                           _arity296621296696_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296615296693_))
                                                        (let ((_e296618296699_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296615296693_))))
                  (let ((_lp-hd296619296703_
                         (let () (declare (not safe)) (##car _e296618296699_)))
                        (_lp-tl296620296706_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296618296699_))))
                    (_loop296617296689_
                     _lp-tl296620296706_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296619296703_ _arity296621296696_)))))
                (let ((_arity296622296709_ (reverse _arity296621296696_)))
                  (_loop296603296651_
                   _lp-tl296606296670_
                   (let ()
                     (declare (not safe))
                     (cons _arity296622296709_ _arity296607296658_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296612296677_ _prim296608296660_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296617296689_
                                           _target296614296683_
                                           '()))
                                        (_g296593296628_ _g296594296632_)))))
                              (_g296593296628_ _g296594296632_))))
                      (_g296593296628_ _g296594296632_))))
              (let ((_arity296609296713_ (reverse _arity296607296658_))
                    (_prim296610296716_ (reverse _prim296608296660_)))
                ((lambda (_L296719_ _L296721_)
                   (let ((__tmp301967
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301960
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296719_
                               _L296721_))
                            (let ((__tmp301961
                                   (lambda (_g296736296742_
                                            _g296737296745_
                                            _g296738296747_)
                                     (let ((__tmp301962
                                            (let ((__tmp301966
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301963
                                                   (let ((__tmp301964
                                                          (let ((__tmp301965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296739296750_ _g296740296753_)
                           (let ()
                             (declare (not safe))
                             (cons _g296739296750_ _g296740296753_)))))
                    (declare (not safe))
                    (foldr1 __tmp301965 '() _g296736296742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296737296745_
                                                           __tmp301964))))
                                              (declare (not safe))
                                              (cons __tmp301966 __tmp301963))))
                                       (declare (not safe))
                                       (cons __tmp301962 _g296738296747_)))))
                              (declare (not safe))
                              (foldr2 __tmp301961 '() _L296719_ _L296721_)))))
                     (declare (not safe))
                     (cons __tmp301967 __tmp301960)))
                 _arity296609296713_
                 _prim296610296716_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296603296651_
                                         _target296600296645_
                                         '()
                                         '()))
                                      (_g296593296628_ _g296594296632_)))))
                            (_g296593296628_ _g296594296632_))))
                    (_g296593296628_ _g296594296632_)))))
        (_g296592296756_ _$stx296589_)))))
