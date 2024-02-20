(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61519_)
      (let* ((___stx6355163552_ _$stx61519_)
             (_g6152461553_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6355163552_))))
        (let ((___kont6355463555_
               (lambda (_L61646_ _L61648_)
                 (let ((__tmp63814 (gx#datum->syntax '#f '##fx=))
                       (__tmp63808
                        (let ((__tmp63810
                               (let ((__tmp63813
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63811
                                      (let ((__tmp63812
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61646_ '()))))
                                        (declare (not safe))
                                        (cons _L61648_ __tmp63812))))
                                 (declare (not safe))
                                 (cons __tmp63813 __tmp63811)))
                              (__tmp63809
                               (let ()
                                 (declare (not safe))
                                 (cons _L61646_ '()))))
                          (declare (not safe))
                          (cons __tmp63810 __tmp63809))))
                   (declare (not safe))
                   (cons __tmp63814 __tmp63808))))
              (___kont6355663557_
               (lambda (_L61590_ _L61592_)
                 (let ((__tmp63827 (gx#datum->syntax '#f 'let))
                       (__tmp63815
                        (let ((__tmp63825
                               (let ((__tmp63826
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61590_ '()))))
                                 (declare (not safe))
                                 (cons _L61590_ __tmp63826)))
                              (__tmp63816
                               (let ((__tmp63817
                                      (let ((__tmp63824
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63818
                                             (let ((__tmp63820
                                                    (let ((__tmp63823
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63821
                                                           (let ((__tmp63822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61590_ '()))))
                     (declare (not safe))
                     (cons _L61592_ __tmp63822))))
              (declare (not safe))
              (cons __tmp63823 __tmp63821)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63819
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61590_ '()))))
                                               (declare (not safe))
                                               (cons __tmp63820 __tmp63819))))
                                        (declare (not safe))
                                        (cons __tmp63824 __tmp63818))))
                                 (declare (not safe))
                                 (cons __tmp63817 '()))))
                          (declare (not safe))
                          (cons __tmp63825 __tmp63816))))
                   (declare (not safe))
                   (cons __tmp63827 __tmp63815)))))
          (let ((___match6357863579_
                 (lambda (_e6153061616_
                          _hd6152961620_
                          _tl6152861623_
                          _e6153361626_
                          _hd6153261630_
                          _tl6153161633_
                          _e6153661636_
                          _hd6153561640_
                          _tl6153461643_)
                   (let ((_L61646_ _hd6153561640_) (_L61648_ _hd6153261630_))
                     (if (or (gx#identifier? _L61646_)
                             (gx#stx-fixnum? _L61646_))
                         (___kont6355463555_ _L61646_ _L61648_)
                         (___kont6355663557_
                          _hd6153561640_
                          _hd6153261630_))))))
            (if (gx#stx-pair? ___stx6355163552_)
                (let ((_e6153061616_ (gx#syntax-e ___stx6355163552_)))
                  (let ((_tl6152861623_
                         (let () (declare (not safe)) (##cdr _e6153061616_)))
                        (_hd6152961620_
                         (let () (declare (not safe)) (##car _e6153061616_))))
                    (if (gx#stx-pair? _tl6152861623_)
                        (let ((_e6153361626_ (gx#syntax-e _tl6152861623_)))
                          (let ((_tl6153161633_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6153361626_)))
                                (_hd6153261630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6153361626_))))
                            (if (gx#stx-pair? _tl6153161633_)
                                (let ((_e6153661636_
                                       (gx#syntax-e _tl6153161633_)))
                                  (let ((_tl6153461643_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6153661636_)))
                                        (_hd6153561640_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6153661636_))))
                                    (if (gx#stx-null? _tl6153461643_)
                                        (___match6357863579_
                                         _e6153061616_
                                         _hd6152961620_
                                         _tl6152861623_
                                         _e6153361626_
                                         _hd6153261630_
                                         _tl6153161633_
                                         _e6153661636_
                                         _hd6153561640_
                                         _tl6153461643_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6152461553_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6152461553_)))))
                        (let () (declare (not safe)) (_g6152461553_)))))
                (let () (declare (not safe)) (_g6152461553_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61671_)
      (let* ((___stx6360163602_ _$stx61671_)
             (_g6167661705_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6360163602_))))
        (let ((___kont6360463605_
               (lambda (_L61797_ _L61799_)
                 (let ((__tmp63834 (gx#datum->syntax '#f '##fx=))
                       (__tmp63828
                        (let ((__tmp63830
                               (let ((__tmp63833
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63831
                                      (let ((__tmp63832
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61797_ '()))))
                                        (declare (not safe))
                                        (cons _L61799_ __tmp63832))))
                                 (declare (not safe))
                                 (cons __tmp63833 __tmp63831)))
                              (__tmp63829
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp63830 __tmp63829))))
                   (declare (not safe))
                   (cons __tmp63834 __tmp63828))))
              (___kont6360663607_
               (lambda (_L61742_ _L61744_)
                 (let ((__tmp63847 (gx#datum->syntax '#f 'let))
                       (__tmp63835
                        (let ((__tmp63845
                               (let ((__tmp63846
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61742_ '()))))
                                 (declare (not safe))
                                 (cons _L61742_ __tmp63846)))
                              (__tmp63836
                               (let ((__tmp63837
                                      (let ((__tmp63844
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63838
                                             (let ((__tmp63840
                                                    (let ((__tmp63843
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63841
                                                           (let ((__tmp63842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61742_ '()))))
                     (declare (not safe))
                     (cons _L61744_ __tmp63842))))
              (declare (not safe))
              (cons __tmp63843 __tmp63841)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63839
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp63840 __tmp63839))))
                                        (declare (not safe))
                                        (cons __tmp63844 __tmp63838))))
                                 (declare (not safe))
                                 (cons __tmp63837 '()))))
                          (declare (not safe))
                          (cons __tmp63845 __tmp63836))))
                   (declare (not safe))
                   (cons __tmp63847 __tmp63835)))))
          (let ((___match6362863629_
                 (lambda (_e6168261767_
                          _hd6168161771_
                          _tl6168061774_
                          _e6168561777_
                          _hd6168461781_
                          _tl6168361784_
                          _e6168861787_
                          _hd6168761791_
                          _tl6168661794_)
                   (let ((_L61797_ _hd6168761791_) (_L61799_ _hd6168461781_))
                     (if (or (gx#identifier? _L61797_)
                             (gx#stx-fixnum? _L61797_))
                         (___kont6360463605_ _L61797_ _L61799_)
                         (___kont6360663607_
                          _hd6168761791_
                          _hd6168461781_))))))
            (if (gx#stx-pair? ___stx6360163602_)
                (let ((_e6168261767_ (gx#syntax-e ___stx6360163602_)))
                  (let ((_tl6168061774_
                         (let () (declare (not safe)) (##cdr _e6168261767_)))
                        (_hd6168161771_
                         (let () (declare (not safe)) (##car _e6168261767_))))
                    (if (gx#stx-pair? _tl6168061774_)
                        (let ((_e6168561777_ (gx#syntax-e _tl6168061774_)))
                          (let ((_tl6168361784_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6168561777_)))
                                (_hd6168461781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6168561777_))))
                            (if (gx#stx-pair? _tl6168361784_)
                                (let ((_e6168861787_
                                       (gx#syntax-e _tl6168361784_)))
                                  (let ((_tl6168661794_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6168861787_)))
                                        (_hd6168761791_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6168861787_))))
                                    (if (gx#stx-null? _tl6168661794_)
                                        (___match6362863629_
                                         _e6168261767_
                                         _hd6168161771_
                                         _tl6168061774_
                                         _e6168561777_
                                         _hd6168461781_
                                         _tl6168361784_
                                         _e6168861787_
                                         _hd6168761791_
                                         _tl6168661794_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6167661705_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6167661705_)))))
                        (let () (declare (not safe)) (_g6167661705_)))))
                (let () (declare (not safe)) (_g6167661705_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61822_)
      (let* ((_g6182561846_
              (lambda (_g6182661842_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6182661842_)))
             (_g6182462074_
              (lambda (_g6182661850_)
                (if (gx#stx-pair? _g6182661850_)
                    (let ((_e6183161853_ (gx#syntax-e _g6182661850_)))
                      (let ((_hd6183061857_
                             (let ()
                               (declare (not safe))
                               (##car _e6183161853_)))
                            (_tl6182961860_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6183161853_))))
                        (if (gx#stx-pair? _tl6182961860_)
                            (let ((_e6183461863_ (gx#syntax-e _tl6182961860_)))
                              (let ((_hd6183361867_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6183461863_)))
                                    (_tl6183261870_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6183461863_))))
                                (if (gx#stx-pair? _hd6183361867_)
                                    (let ((_e6183761873_
                                           (gx#syntax-e _hd6183361867_)))
                                      (let ((_hd6183661877_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6183761873_)))
                                            (_tl6183561880_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6183761873_))))
                                        (if (gx#stx-pair? _tl6183561880_)
                                            (let ((_e6184061883_
                                                   (gx#syntax-e
                                                    _tl6183561880_)))
                                              (let ((_hd6183961887_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6184061883_)))
                                                    (_tl6183861890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6184061883_))))
                                                (if (gx#stx-null?
                                                     _tl6183861890_)
                                                    (if (gx#stx-null?
                                                         _tl6183261870_)
                                                        ((lambda (_L61893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61895_)
                   (let* ((_g6191361921_
                           (lambda (_g6191461917_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6191461917_)))
                          (_g6191262070_
                           (lambda (_g6191461925_)
                             ((lambda (_L61928_)
                                (let ()
                                  (let* ((_g6194061948_
                                          (lambda (_g6194161944_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6194161944_)))
                                         (_g6193962066_
                                          (lambda (_g6194161952_)
                                            ((lambda (_L61955_)
                                               (let ()
                                                 (let* ((_g6196861976_
                                                         (lambda (_g6196961972_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6196961972_)))
                                                        (_g6196762062_
                                                         (lambda (_g6196961980_)
                                                           ((lambda (_L61983_)
                                                              (let ()
                                                                (let* ((_g6199662004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6199762000_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6199762000_)))
                               (_g6199562058_
                                (lambda (_g6199762008_)
                                  ((lambda (_L62011_)
                                     (let ()
                                       (let* ((_g6202462032_
                                               (lambda (_g6202562028_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6202562028_)))
                                              (_g6202362054_
                                               (lambda (_g6202562036_)
                                                 ((lambda (_L62039_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp63980
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp63848
                                                               (let ((__tmp63950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63979 (gx#datum->syntax '#f 'def))
                                    (__tmp63951
                                     (let ((__tmp63952
                                            (let ((__tmp63953
                                                   (let ((__tmp63978
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp63954
                                                          (let ((__tmp63973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63977
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp63974
                                (let ((__tmp63975
                                       (let ((__tmp63976
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L61895_ __tmp63976))))
                                  (declare (not safe))
                                  (cons _L61928_ __tmp63975))))
                           (declare (not safe))
                           (cons __tmp63977 __tmp63974)))
                        (__tmp63955
                         (let ((__tmp63956
                                (let ((__tmp63972
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63957
                                       (let ((__tmp63970
                                              (let ((__tmp63971
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp63971 '())))
                                             (__tmp63958
                                              (let ((__tmp63959
                                                     (let ((__tmp63969
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp63960
                                                            (let ((__tmp63968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63961
                           (let ((__tmp63962
                                  (let ((__tmp63967
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp63963
                                         (let ((__tmp63964
                                                (let ((__tmp63966
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp63965
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L61895_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63966
                                                        __tmp63965))))
                                           (declare (not safe))
                                           (cons __tmp63964 '()))))
                                    (declare (not safe))
                                    (cons __tmp63967 __tmp63963))))
                             (declare (not safe))
                             (cons _L61893_ __tmp63962))))
                      (declare (not safe))
                      (cons __tmp63968 __tmp63961))))
               (declare (not safe))
               (cons __tmp63969 __tmp63960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63959 '()))))
                                         (declare (not safe))
                                         (cons __tmp63970 __tmp63958))))
                                  (declare (not safe))
                                  (cons __tmp63972 __tmp63957))))
                           (declare (not safe))
                           (cons __tmp63956 '()))))
                    (declare (not safe))
                    (cons __tmp63973 __tmp63955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63978
                                                           __tmp63954))))
                                              (declare (not safe))
                                              (cons __tmp63953 '()))))
                                       (declare (not safe))
                                       (cons _L61955_ __tmp63952))))
                                (declare (not safe))
                                (cons __tmp63979 __tmp63951)))
                             (__tmp63849
                              (let ((__tmp63920
                                     (let ((__tmp63949
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp63921
                                            (let ((__tmp63922
                                                   (let ((__tmp63923
                                                          (let ((__tmp63948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp63924
                         (let ((__tmp63943
                                (let ((__tmp63947
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp63944
                                       (let ((__tmp63945
                                              (let ((__tmp63946
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L61895_ __tmp63946))))
                                         (declare (not safe))
                                         (cons _L61928_ __tmp63945))))
                                  (declare (not safe))
                                  (cons __tmp63947 __tmp63944)))
                               (__tmp63925
                                (let ((__tmp63926
                                       (let ((__tmp63942
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp63927
                                              (let ((__tmp63940
                                                     (let ((__tmp63941
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp63941 '())))
                                                    (__tmp63928
                                                     (let ((__tmp63929
                                                            (let ((__tmp63939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp63930
                           (let ((__tmp63938 (gx#datum->syntax '#f 'klass))
                                 (__tmp63931
                                  (let ((__tmp63932
                                         (let ((__tmp63937
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp63933
                                                (let ((__tmp63934
                                                       (let ((__tmp63936
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp63935
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L61895_ '()))))
                 (declare (not safe))
                 (cons __tmp63936 __tmp63935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63934 '()))))
                                           (declare (not safe))
                                           (cons __tmp63937 __tmp63933))))
                                    (declare (not safe))
                                    (cons _L61893_ __tmp63932))))
                             (declare (not safe))
                             (cons __tmp63938 __tmp63931))))
                      (declare (not safe))
                      (cons __tmp63939 __tmp63930))))
               (declare (not safe))
               (cons __tmp63929 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63940 __tmp63928))))
                                         (declare (not safe))
                                         (cons __tmp63942 __tmp63927))))
                                  (declare (not safe))
                                  (cons __tmp63926 '()))))
                           (declare (not safe))
                           (cons __tmp63943 __tmp63925))))
                    (declare (not safe))
                    (cons __tmp63948 __tmp63924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63923 '()))))
                                              (declare (not safe))
                                              (cons _L61983_ __tmp63922))))
                                       (declare (not safe))
                                       (cons __tmp63949 __tmp63921)))
                                    (__tmp63850
                                     (let ((__tmp63886
                                            (let ((__tmp63919
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp63887
                                                   (let ((__tmp63888
                                                          (let ((__tmp63889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63918
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp63890
                                (let ((__tmp63913
                                       (let ((__tmp63917
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp63914
                                              (let ((__tmp63915
                                                     (let ((__tmp63916
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L61895_
                                                             __tmp63916))))
                                                (declare (not safe))
                                                (cons _L61928_ __tmp63915))))
                                         (declare (not safe))
                                         (cons __tmp63917 __tmp63914)))
                                      (__tmp63891
                                       (let ((__tmp63892
                                              (let ((__tmp63912
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp63893
                                                     (let ((__tmp63908
                                                            (let ((__tmp63911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63909
                           (let ((__tmp63910 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp63910 '()))))
                      (declare (not safe))
                      (cons __tmp63911 __tmp63909)))
                   (__tmp63894
                    (let ((__tmp63895
                           (let ((__tmp63907
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp63896
                                  (let ((__tmp63906
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63897
                                         (let ((__tmp63905
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp63898
                                                (let ((__tmp63899
                                                       (let ((__tmp63904
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp63900
                                                              (let ((__tmp63901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp63903 (gx#datum->syntax '#f 'quote))
                                   (__tmp63902
                                    (let ()
                                      (declare (not safe))
                                      (cons _L61895_ '()))))
                               (declare (not safe))
                               (cons __tmp63903 __tmp63902))))
                        (declare (not safe))
                        (cons __tmp63901 '()))))
                 (declare (not safe))
                 (cons __tmp63904 __tmp63900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L61893_ __tmp63899))))
                                           (declare (not safe))
                                           (cons __tmp63905 __tmp63898))))
                                    (declare (not safe))
                                    (cons __tmp63906 __tmp63897))))
                             (declare (not safe))
                             (cons __tmp63907 __tmp63896))))
                      (declare (not safe))
                      (cons __tmp63895 '()))))
               (declare (not safe))
               (cons __tmp63908 __tmp63894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63912 __tmp63893))))
                                         (declare (not safe))
                                         (cons __tmp63892 '()))))
                                  (declare (not safe))
                                  (cons __tmp63913 __tmp63891))))
                           (declare (not safe))
                           (cons __tmp63918 __tmp63890))))
                    (declare (not safe))
                    (cons __tmp63889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62011_
                                                           __tmp63888))))
                                              (declare (not safe))
                                              (cons __tmp63919 __tmp63887)))
                                           (__tmp63851
                                            (let ((__tmp63852
                                                   (let ((__tmp63885
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp63853
                                                          (let ((__tmp63854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63855
                                (let ((__tmp63884
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp63856
                                       (let ((__tmp63879
                                              (let ((__tmp63883
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp63880
                                                     (let ((__tmp63881
                                                            (let ((__tmp63882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L61895_ __tmp63882))))
               (declare (not safe))
               (cons _L61928_ __tmp63881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63883 __tmp63880)))
                                             (__tmp63857
                                              (let ((__tmp63858
                                                     (let ((__tmp63878
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp63859
                                                            (let ((__tmp63874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63877 (gx#datum->syntax '#f 'klass))
                                 (__tmp63875
                                  (let ((__tmp63876
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp63876 '()))))
                             (declare (not safe))
                             (cons __tmp63877 __tmp63875)))
                          (__tmp63860
                           (let ((__tmp63861
                                  (let ((__tmp63873
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp63862
                                         (let ((__tmp63872
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp63863
                                                (let ((__tmp63871
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp63864
                                                       (let ((__tmp63865
                                                              (let ((__tmp63870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp63866
                             (let ((__tmp63867
                                    (let ((__tmp63869
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp63868
                                           (let ()
                                             (declare (not safe))
                                             (cons _L61895_ '()))))
                                      (declare (not safe))
                                      (cons __tmp63869 __tmp63868))))
                               (declare (not safe))
                               (cons __tmp63867 '()))))
                        (declare (not safe))
                        (cons __tmp63870 __tmp63866))))
                 (declare (not safe))
                 (cons _L61893_ __tmp63865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63871
                                                        __tmp63864))))
                                           (declare (not safe))
                                           (cons __tmp63872 __tmp63863))))
                                    (declare (not safe))
                                    (cons __tmp63873 __tmp63862))))
                             (declare (not safe))
                             (cons __tmp63861 '()))))
                      (declare (not safe))
                      (cons __tmp63874 __tmp63860))))
               (declare (not safe))
               (cons __tmp63878 __tmp63859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63858 '()))))
                                         (declare (not safe))
                                         (cons __tmp63879 __tmp63857))))
                                  (declare (not safe))
                                  (cons __tmp63884 __tmp63856))))
                           (declare (not safe))
                           (cons __tmp63855 '()))))
                    (declare (not safe))
                    (cons _L62039_ __tmp63854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63885
                                                           __tmp63853))))
                                              (declare (not safe))
                                              (cons __tmp63852 '()))))
                                       (declare (not safe))
                                       (cons __tmp63886 __tmp63851))))
                                (declare (not safe))
                                (cons __tmp63920 __tmp63850))))
                         (declare (not safe))
                         (cons __tmp63950 __tmp63849))))
                  (declare (not safe))
                  (cons __tmp63980 __tmp63848)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6202562036_))))
                                         (_g6202362054_
                                          (gx#stx-identifier
                                           _L61895_
                                           '"&"
                                           _L62011_)))))
                                   _g6199762008_))))
                          (_g6199562058_
                           (gx#stx-identifier _L61895_ _L61955_ '"-set!")))))
                    _g6196961980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6196762062_
                                                    (gx#stx-identifier
                                                     _L61895_
                                                     '"&"
                                                     _L61955_)))))
                                             _g6194161952_))))
                                    (_g6193962066_
                                     (gx#stx-identifier
                                      _L61895_
                                      '"class-type-"
                                      _L61895_)))))
                              _g6191461925_))))
                     (_g6191262070_ (gx#core-quote-syntax 'class::t))))
                 _hd6183961887_
                 _hd6183661877_)
                (_g6182561846_ _g6182661850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6182561846_
                                                     _g6182661850_))))
                                            (_g6182561846_ _g6182661850_))))
                                    (_g6182561846_ _g6182661850_))))
                            (_g6182561846_ _g6182661850_))))
                    (_g6182561846_ _g6182661850_)))))
        (_g6182462074_ _stx61822_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62078_)
      (let* ((_g6208262111_
              (lambda (_g6208362107_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6208362107_)))
             (_g6208162211_
              (lambda (_g6208362115_)
                (if (gx#stx-pair? _g6208362115_)
                    (let ((_e6208862118_ (gx#syntax-e _g6208362115_)))
                      (let ((_hd6208762122_
                             (let ()
                               (declare (not safe))
                               (##car _e6208862118_)))
                            (_tl6208662125_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6208862118_))))
                        (if (gx#stx-pair/null? _tl6208662125_)
                            (let ((_g63981_
                                   (gx#syntax-split-splice _tl6208662125_ '0)))
                              (begin
                                (let ((_g63982_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63981_)
                                             (##vector-length _g63981_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63982_ 2)))
                                      (error "Context expects 2 values"
                                             _g63982_)))
                                (let ((_target6208962128_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63981_ 0)))
                                      (_tl6209162131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63981_ 1))))
                                  (if (gx#stx-null? _tl6209162131_)
                                      (letrec ((_loop6209262134_
                                                (lambda (_hd6209062138_
                                                         _field6209662141_
                                                         _slot6209762143_)
                                                  (if (gx#stx-pair?
                                                       _hd6209062138_)
                                                      (let ((_e6209362146_
                                                             (gx#syntax-e
                                                              _hd6209062138_)))
                                                        (let ((_lp-hd6209462150_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6209362146_)))
                      (_lp-tl6209562153_
                       (let () (declare (not safe)) (##cdr _e6209362146_))))
                  (if (gx#stx-pair? _lp-hd6209462150_)
                      (let ((_e6210262156_ (gx#syntax-e _lp-hd6209462150_)))
                        (let ((_hd6210162160_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6210262156_)))
                              (_tl6210062163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6210262156_))))
                          (if (gx#stx-pair? _tl6210062163_)
                              (let ((_e6210562166_
                                     (gx#syntax-e _tl6210062163_)))
                                (let ((_hd6210462170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6210562166_)))
                                      (_tl6210362173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6210562166_))))
                                  (if (gx#stx-null? _tl6210362173_)
                                      (_loop6209262134_
                                       _lp-tl6209562153_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6210462170_
                                               _field6209662141_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6210162160_
                                               _slot6209762143_)))
                                      (_g6208262111_ _g6208362115_))))
                              (_g6208262111_ _g6208362115_))))
                      (_g6208262111_ _g6208362115_))))
              (let ((_field6209862176_ (reverse _field6209662141_))
                    (_slot6209962179_ (reverse _slot6209762143_)))
                ((lambda (_L62182_ _L62184_)
                   (let ((__tmp63990 (gx#datum->syntax '#f 'begin))
                         (__tmp63983
                          (begin
                            (gx#syntax-check-splice-targets _L62182_ _L62184_)
                            (let ((__tmp63984
                                   (lambda (_g6219962203_
                                            _g6220062206_
                                            _g6220162208_)
                                     (let ((__tmp63985
                                            (let ((__tmp63989
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp63986
                                                   (let ((__tmp63987
                                                          (let ((__tmp63988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6219962203_ '()))))
                    (declare (not safe))
                    (cons _g6220062206_ __tmp63988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63987 '()))))
                                              (declare (not safe))
                                              (cons __tmp63989 __tmp63986))))
                                       (declare (not safe))
                                       (cons __tmp63985 _g6220162208_)))))
                              (declare (not safe))
                              (foldr2 __tmp63984 '() _L62182_ _L62184_)))))
                     (declare (not safe))
                     (cons __tmp63990 __tmp63983)))
                 _field6209862176_
                 _slot6209962179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6209262134_
                                         _target6208962128_
                                         '()
                                         '()))
                                      (_g6208262111_ _g6208362115_)))))
                            (_g6208262111_ _g6208362115_))))
                    (_g6208262111_ _g6208362115_)))))
        (_g6208162211_ _$stx62078_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62216_)
      (let* ((_g6222062246_
              (lambda (_g6222162242_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6222162242_)))
             (_g6221962329_
              (lambda (_g6222162250_)
                (if (gx#stx-pair? _g6222162250_)
                    (let ((_e6222862253_ (gx#syntax-e _g6222162250_)))
                      (let ((_hd6222762257_
                             (let ()
                               (declare (not safe))
                               (##car _e6222862253_)))
                            (_tl6222662260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6222862253_))))
                        (if (gx#stx-pair? _tl6222662260_)
                            (let ((_e6223162263_ (gx#syntax-e _tl6222662260_)))
                              (let ((_hd6223062267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6223162263_)))
                                    (_tl6222962270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6223162263_))))
                                (if (gx#stx-pair? _tl6222962270_)
                                    (let ((_e6223462273_
                                           (gx#syntax-e _tl6222962270_)))
                                      (let ((_hd6223362277_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6223462273_)))
                                            (_tl6223262280_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6223462273_))))
                                        (if (gx#stx-pair? _tl6223262280_)
                                            (let ((_e6223762283_
                                                   (gx#syntax-e
                                                    _tl6223262280_)))
                                              (let ((_hd6223662287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6223762283_)))
                                                    (_tl6223562290_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6223762283_))))
                                                (if (gx#stx-pair?
                                                     _tl6223562290_)
                                                    (let ((_e6224062293_
                                                           (gx#syntax-e
                                                            _tl6223562290_)))
                                                      (let ((_hd6223962297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6224062293_)))
                    (_tl6223862300_
                     (let () (declare (not safe)) (##cdr _e6224062293_))))
                (if (gx#stx-null? _tl6223862300_)
                    ((lambda (_L62303_ _L62305_ _L62306_ _L62307_)
                       (let ((__tmp64037 (gx#datum->syntax '#f 'if))
                             (__tmp63991
                              (let ((__tmp64034
                                     (let ((__tmp64036
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp64035
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62307_ '()))))
                                       (declare (not safe))
                                       (cons __tmp64036 __tmp64035)))
                                    (__tmp63992
                                     (let ((__tmp63997
                                            (let ((__tmp64033
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp63998
                                                   (let ((__tmp64027
                                                          (let ((__tmp64032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp64028
                         (let ((__tmp64029
                                (let ((__tmp64031
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp64030
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62307_ '()))))
                                  (declare (not safe))
                                  (cons __tmp64031 __tmp64030))))
                           (declare (not safe))
                           (cons __tmp64029 '()))))
                    (declare (not safe))
                    (cons __tmp64032 __tmp64028)))
                 (__tmp63999
                  (let ((__tmp64000
                         (let ((__tmp64026 (gx#datum->syntax '#f 'cond))
                               (__tmp64001
                                (let ((__tmp64009
                                       (let ((__tmp64013
                                              (let ((__tmp64025
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp64014
                                                     (let ((__tmp64021
                                                            (let ((__tmp64024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp64022
                           (let ((__tmp64023 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp64023 '()))))
                      (declare (not safe))
                      (cons __tmp64024 __tmp64022)))
                   (__tmp64015
                    (let ((__tmp64016
                           (let ((__tmp64020
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp64017
                                  (let ((__tmp64019
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64018
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62306_ '()))))
                                    (declare (not safe))
                                    (cons __tmp64019 __tmp64018))))
                             (declare (not safe))
                             (cons __tmp64020 __tmp64017))))
                      (declare (not safe))
                      (cons __tmp64016 '()))))
               (declare (not safe))
               (cons __tmp64021 __tmp64015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64025 __tmp64014)))
                                             (__tmp64010
                                              (let ((__tmp64012
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp64011
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62305_ '()))))
                                                (declare (not safe))
                                                (cons __tmp64012 __tmp64011))))
                                         (declare (not safe))
                                         (cons __tmp64013 __tmp64010)))
                                      (__tmp64002
                                       (let ((__tmp64003
                                              (let ((__tmp64008
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64004
                                                     (let ((__tmp64005
                                                            (let ((__tmp64006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64007
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62306_ '()))))
                             (declare (not safe))
                             (cons _L62307_ __tmp64007))))
                      (declare (not safe))
                      (cons _L62303_ __tmp64006))))
               (declare (not safe))
               (cons __tmp64005 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64008 __tmp64004))))
                                         (declare (not safe))
                                         (cons __tmp64003 '()))))
                                  (declare (not safe))
                                  (cons __tmp64009 __tmp64002))))
                           (declare (not safe))
                           (cons __tmp64026 __tmp64001))))
                    (declare (not safe))
                    (cons __tmp64000 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64027
                                                           __tmp63999))))
                                              (declare (not safe))
                                              (cons __tmp64033 __tmp63998)))
                                           (__tmp63993
                                            (let ((__tmp63994
                                                   (let ((__tmp63995
                                                          (let ((__tmp63996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62306_ '()))))
                    (declare (not safe))
                    (cons _L62307_ __tmp63996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62303_
                                                           __tmp63995))))
                                              (declare (not safe))
                                              (cons __tmp63994 '()))))
                                       (declare (not safe))
                                       (cons __tmp63997 __tmp63993))))
                                (declare (not safe))
                                (cons __tmp64034 __tmp63992))))
                         (declare (not safe))
                         (cons __tmp64037 __tmp63991)))
                     _hd6223962297_
                     _hd6223662287_
                     _hd6223362277_
                     _hd6223062267_)
                    (_g6222062246_ _g6222162250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6222062246_
                                                     _g6222162250_))))
                                            (_g6222062246_ _g6222162250_))))
                                    (_g6222062246_ _g6222162250_))))
                            (_g6222062246_ _g6222162250_))))
                    (_g6222062246_ _g6222162250_)))))
        (_g6221962329_ _$stx62216_)))))
