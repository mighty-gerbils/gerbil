(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx82544_)
      (let* ((___stx8864388644_ _$stx82544_)
             (_g8254982578_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8864388644_))))
        (let ((___kont8864688647_
               (lambda (_L82671_ _L82673_)
                 (let ((__tmp88905 (gx#datum->syntax '#f '##fx=))
                       (__tmp88899
                        (let ((__tmp88901
                               (let ((__tmp88904
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88902
                                      (let ((__tmp88903
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82671_ '()))))
                                        (declare (not safe))
                                        (cons _L82673_ __tmp88903))))
                                 (declare (not safe))
                                 (cons __tmp88904 __tmp88902)))
                              (__tmp88900
                               (let ()
                                 (declare (not safe))
                                 (cons _L82671_ '()))))
                          (declare (not safe))
                          (cons __tmp88901 __tmp88900))))
                   (declare (not safe))
                   (cons __tmp88905 __tmp88899))))
              (___kont8864888649_
               (lambda (_L82615_ _L82617_)
                 (let ((__tmp88918 (gx#datum->syntax '#f 'let))
                       (__tmp88906
                        (let ((__tmp88916
                               (let ((__tmp88917
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82615_ '()))))
                                 (declare (not safe))
                                 (cons _L82615_ __tmp88917)))
                              (__tmp88907
                               (let ((__tmp88908
                                      (let ((__tmp88915
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88909
                                             (let ((__tmp88911
                                                    (let ((__tmp88914
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88912
                                                           (let ((__tmp88913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82615_ '()))))
                     (declare (not safe))
                     (cons _L82617_ __tmp88913))))
              (declare (not safe))
              (cons __tmp88914 __tmp88912)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88910
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L82615_ '()))))
                                               (declare (not safe))
                                               (cons __tmp88911 __tmp88910))))
                                        (declare (not safe))
                                        (cons __tmp88915 __tmp88909))))
                                 (declare (not safe))
                                 (cons __tmp88908 '()))))
                          (declare (not safe))
                          (cons __tmp88916 __tmp88907))))
                   (declare (not safe))
                   (cons __tmp88918 __tmp88906)))))
          (let ((___match8867088671_
                 (lambda (_e8255582641_
                          _hd8255482645_
                          _tl8255382648_
                          _e8255882651_
                          _hd8255782655_
                          _tl8255682658_
                          _e8256182661_
                          _hd8256082665_
                          _tl8255982668_)
                   (let ((_L82671_ _hd8256082665_) (_L82673_ _hd8255782655_))
                     (if (or (gx#identifier? _L82671_)
                             (gx#stx-fixnum? _L82671_))
                         (___kont8864688647_ _L82671_ _L82673_)
                         (___kont8864888649_
                          _hd8256082665_
                          _hd8255782655_))))))
            (if (gx#stx-pair? ___stx8864388644_)
                (let ((_e8255582641_ (gx#syntax-e ___stx8864388644_)))
                  (let ((_tl8255382648_
                         (let () (declare (not safe)) (##cdr _e8255582641_)))
                        (_hd8255482645_
                         (let () (declare (not safe)) (##car _e8255582641_))))
                    (if (gx#stx-pair? _tl8255382648_)
                        (let ((_e8255882651_ (gx#syntax-e _tl8255382648_)))
                          (let ((_tl8255682658_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8255882651_)))
                                (_hd8255782655_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8255882651_))))
                            (if (gx#stx-pair? _tl8255682658_)
                                (let ((_e8256182661_
                                       (gx#syntax-e _tl8255682658_)))
                                  (let ((_tl8255982668_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8256182661_)))
                                        (_hd8256082665_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8256182661_))))
                                    (if (gx#stx-null? _tl8255982668_)
                                        (___match8867088671_
                                         _e8255582641_
                                         _hd8255482645_
                                         _tl8255382648_
                                         _e8255882651_
                                         _hd8255782655_
                                         _tl8255682658_
                                         _e8256182661_
                                         _hd8256082665_
                                         _tl8255982668_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8254982578_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8254982578_)))))
                        (let () (declare (not safe)) (_g8254982578_)))))
                (let () (declare (not safe)) (_g8254982578_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx82696_)
      (let* ((___stx8869388694_ _$stx82696_)
             (_g8270182730_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8869388694_))))
        (let ((___kont8869688697_
               (lambda (_L82822_ _L82824_)
                 (let ((__tmp88925 (gx#datum->syntax '#f '##fx=))
                       (__tmp88919
                        (let ((__tmp88921
                               (let ((__tmp88924
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88922
                                      (let ((__tmp88923
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82822_ '()))))
                                        (declare (not safe))
                                        (cons _L82824_ __tmp88923))))
                                 (declare (not safe))
                                 (cons __tmp88924 __tmp88922)))
                              (__tmp88920
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp88921 __tmp88920))))
                   (declare (not safe))
                   (cons __tmp88925 __tmp88919))))
              (___kont8869888699_
               (lambda (_L82767_ _L82769_)
                 (let ((__tmp88938 (gx#datum->syntax '#f 'let))
                       (__tmp88926
                        (let ((__tmp88936
                               (let ((__tmp88937
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82767_ '()))))
                                 (declare (not safe))
                                 (cons _L82767_ __tmp88937)))
                              (__tmp88927
                               (let ((__tmp88928
                                      (let ((__tmp88935
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88929
                                             (let ((__tmp88931
                                                    (let ((__tmp88934
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88932
                                                           (let ((__tmp88933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82767_ '()))))
                     (declare (not safe))
                     (cons _L82769_ __tmp88933))))
              (declare (not safe))
              (cons __tmp88934 __tmp88932)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88930
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp88931 __tmp88930))))
                                        (declare (not safe))
                                        (cons __tmp88935 __tmp88929))))
                                 (declare (not safe))
                                 (cons __tmp88928 '()))))
                          (declare (not safe))
                          (cons __tmp88936 __tmp88927))))
                   (declare (not safe))
                   (cons __tmp88938 __tmp88926)))))
          (let ((___match8872088721_
                 (lambda (_e8270782792_
                          _hd8270682796_
                          _tl8270582799_
                          _e8271082802_
                          _hd8270982806_
                          _tl8270882809_
                          _e8271382812_
                          _hd8271282816_
                          _tl8271182819_)
                   (let ((_L82822_ _hd8271282816_) (_L82824_ _hd8270982806_))
                     (if (or (gx#identifier? _L82822_)
                             (gx#stx-fixnum? _L82822_))
                         (___kont8869688697_ _L82822_ _L82824_)
                         (___kont8869888699_
                          _hd8271282816_
                          _hd8270982806_))))))
            (if (gx#stx-pair? ___stx8869388694_)
                (let ((_e8270782792_ (gx#syntax-e ___stx8869388694_)))
                  (let ((_tl8270582799_
                         (let () (declare (not safe)) (##cdr _e8270782792_)))
                        (_hd8270682796_
                         (let () (declare (not safe)) (##car _e8270782792_))))
                    (if (gx#stx-pair? _tl8270582799_)
                        (let ((_e8271082802_ (gx#syntax-e _tl8270582799_)))
                          (let ((_tl8270882809_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8271082802_)))
                                (_hd8270982806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8271082802_))))
                            (if (gx#stx-pair? _tl8270882809_)
                                (let ((_e8271382812_
                                       (gx#syntax-e _tl8270882809_)))
                                  (let ((_tl8271182819_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8271382812_)))
                                        (_hd8271282816_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8271382812_))))
                                    (if (gx#stx-null? _tl8271182819_)
                                        (___match8872088721_
                                         _e8270782792_
                                         _hd8270682796_
                                         _tl8270582799_
                                         _e8271082802_
                                         _hd8270982806_
                                         _tl8270882809_
                                         _e8271382812_
                                         _hd8271282816_
                                         _tl8271182819_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8270182730_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8270182730_)))))
                        (let () (declare (not safe)) (_g8270182730_)))))
                (let () (declare (not safe)) (_g8270182730_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx82847_)
      (let* ((_g8285082871_
              (lambda (_g8285182867_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8285182867_)))
             (_g8284983099_
              (lambda (_g8285182875_)
                (if (gx#stx-pair? _g8285182875_)
                    (let ((_e8285682878_ (gx#syntax-e _g8285182875_)))
                      (let ((_hd8285582882_
                             (let ()
                               (declare (not safe))
                               (##car _e8285682878_)))
                            (_tl8285482885_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8285682878_))))
                        (if (gx#stx-pair? _tl8285482885_)
                            (let ((_e8285982888_ (gx#syntax-e _tl8285482885_)))
                              (let ((_hd8285882892_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8285982888_)))
                                    (_tl8285782895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8285982888_))))
                                (if (gx#stx-pair? _hd8285882892_)
                                    (let ((_e8286282898_
                                           (gx#syntax-e _hd8285882892_)))
                                      (let ((_hd8286182902_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8286282898_)))
                                            (_tl8286082905_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8286282898_))))
                                        (if (gx#stx-pair? _tl8286082905_)
                                            (let ((_e8286582908_
                                                   (gx#syntax-e
                                                    _tl8286082905_)))
                                              (let ((_hd8286482912_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8286582908_)))
                                                    (_tl8286382915_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8286582908_))))
                                                (if (gx#stx-null?
                                                     _tl8286382915_)
                                                    (if (gx#stx-null?
                                                         _tl8285782895_)
                                                        ((lambda (_L82918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L82920_)
                   (let* ((_g8293882946_
                           (lambda (_g8293982942_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8293982942_)))
                          (_g8293783095_
                           (lambda (_g8293982950_)
                             ((lambda (_L82953_)
                                (let ()
                                  (let* ((_g8296582973_
                                          (lambda (_g8296682969_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8296682969_)))
                                         (_g8296483091_
                                          (lambda (_g8296682977_)
                                            ((lambda (_L82980_)
                                               (let ()
                                                 (let* ((_g8299383001_
                                                         (lambda (_g8299482997_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8299482997_)))
                                                        (_g8299283087_
                                                         (lambda (_g8299483005_)
                                                           ((lambda (_L83008_)
                                                              (let ()
                                                                (let* ((_g8302183029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8302283025_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8302283025_)))
                               (_g8302083083_
                                (lambda (_g8302283033_)
                                  ((lambda (_L83036_)
                                     (let ()
                                       (let* ((_g8304983057_
                                               (lambda (_g8305083053_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8305083053_)))
                                              (_g8304883079_
                                               (lambda (_g8305083061_)
                                                 ((lambda (_L83064_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp89071
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp88939
                                                               (let ((__tmp89041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89070 (gx#datum->syntax '#f 'def))
                                    (__tmp89042
                                     (let ((__tmp89043
                                            (let ((__tmp89044
                                                   (let ((__tmp89069
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp89045
                                                          (let ((__tmp89064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89068
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp89065
                                (let ((__tmp89066
                                       (let ((__tmp89067
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L82920_ __tmp89067))))
                                  (declare (not safe))
                                  (cons _L82953_ __tmp89066))))
                           (declare (not safe))
                           (cons __tmp89068 __tmp89065)))
                        (__tmp89046
                         (let ((__tmp89047
                                (let ((__tmp89063
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp89048
                                       (let ((__tmp89061
                                              (let ((__tmp89062
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp89062 '())))
                                             (__tmp89049
                                              (let ((__tmp89050
                                                     (let ((__tmp89060
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp89051
                                                            (let ((__tmp89059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89052
                           (let ((__tmp89053
                                  (let ((__tmp89058
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp89054
                                         (let ((__tmp89055
                                                (let ((__tmp89057
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp89056
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L82920_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp89057
                                                        __tmp89056))))
                                           (declare (not safe))
                                           (cons __tmp89055 '()))))
                                    (declare (not safe))
                                    (cons __tmp89058 __tmp89054))))
                             (declare (not safe))
                             (cons _L82918_ __tmp89053))))
                      (declare (not safe))
                      (cons __tmp89059 __tmp89052))))
               (declare (not safe))
               (cons __tmp89060 __tmp89051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89050 '()))))
                                         (declare (not safe))
                                         (cons __tmp89061 __tmp89049))))
                                  (declare (not safe))
                                  (cons __tmp89063 __tmp89048))))
                           (declare (not safe))
                           (cons __tmp89047 '()))))
                    (declare (not safe))
                    (cons __tmp89064 __tmp89046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89069
                                                           __tmp89045))))
                                              (declare (not safe))
                                              (cons __tmp89044 '()))))
                                       (declare (not safe))
                                       (cons _L82980_ __tmp89043))))
                                (declare (not safe))
                                (cons __tmp89070 __tmp89042)))
                             (__tmp88940
                              (let ((__tmp89011
                                     (let ((__tmp89040
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp89012
                                            (let ((__tmp89013
                                                   (let ((__tmp89014
                                                          (let ((__tmp89039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp89015
                         (let ((__tmp89034
                                (let ((__tmp89038
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp89035
                                       (let ((__tmp89036
                                              (let ((__tmp89037
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L82920_ __tmp89037))))
                                         (declare (not safe))
                                         (cons _L82953_ __tmp89036))))
                                  (declare (not safe))
                                  (cons __tmp89038 __tmp89035)))
                               (__tmp89016
                                (let ((__tmp89017
                                       (let ((__tmp89033
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp89018
                                              (let ((__tmp89031
                                                     (let ((__tmp89032
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp89032 '())))
                                                    (__tmp89019
                                                     (let ((__tmp89020
                                                            (let ((__tmp89030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp89021
                           (let ((__tmp89029 (gx#datum->syntax '#f 'klass))
                                 (__tmp89022
                                  (let ((__tmp89023
                                         (let ((__tmp89028
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp89024
                                                (let ((__tmp89025
                                                       (let ((__tmp89027
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp89026
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L82920_ '()))))
                 (declare (not safe))
                 (cons __tmp89027 __tmp89026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89025 '()))))
                                           (declare (not safe))
                                           (cons __tmp89028 __tmp89024))))
                                    (declare (not safe))
                                    (cons _L82918_ __tmp89023))))
                             (declare (not safe))
                             (cons __tmp89029 __tmp89022))))
                      (declare (not safe))
                      (cons __tmp89030 __tmp89021))))
               (declare (not safe))
               (cons __tmp89020 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89031 __tmp89019))))
                                         (declare (not safe))
                                         (cons __tmp89033 __tmp89018))))
                                  (declare (not safe))
                                  (cons __tmp89017 '()))))
                           (declare (not safe))
                           (cons __tmp89034 __tmp89016))))
                    (declare (not safe))
                    (cons __tmp89039 __tmp89015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89014 '()))))
                                              (declare (not safe))
                                              (cons _L83008_ __tmp89013))))
                                       (declare (not safe))
                                       (cons __tmp89040 __tmp89012)))
                                    (__tmp88941
                                     (let ((__tmp88977
                                            (let ((__tmp89010
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp88978
                                                   (let ((__tmp88979
                                                          (let ((__tmp88980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89009
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp88981
                                (let ((__tmp89004
                                       (let ((__tmp89008
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp89005
                                              (let ((__tmp89006
                                                     (let ((__tmp89007
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L82920_
                                                             __tmp89007))))
                                                (declare (not safe))
                                                (cons _L82953_ __tmp89006))))
                                         (declare (not safe))
                                         (cons __tmp89008 __tmp89005)))
                                      (__tmp88982
                                       (let ((__tmp88983
                                              (let ((__tmp89003
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp88984
                                                     (let ((__tmp88999
                                                            (let ((__tmp89002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89000
                           (let ((__tmp89001 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp89001 '()))))
                      (declare (not safe))
                      (cons __tmp89002 __tmp89000)))
                   (__tmp88985
                    (let ((__tmp88986
                           (let ((__tmp88998
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp88987
                                  (let ((__tmp88997
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp88988
                                         (let ((__tmp88996
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp88989
                                                (let ((__tmp88990
                                                       (let ((__tmp88995
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp88991
                                                              (let ((__tmp88992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88994 (gx#datum->syntax '#f 'quote))
                                   (__tmp88993
                                    (let ()
                                      (declare (not safe))
                                      (cons _L82920_ '()))))
                               (declare (not safe))
                               (cons __tmp88994 __tmp88993))))
                        (declare (not safe))
                        (cons __tmp88992 '()))))
                 (declare (not safe))
                 (cons __tmp88995 __tmp88991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L82918_ __tmp88990))))
                                           (declare (not safe))
                                           (cons __tmp88996 __tmp88989))))
                                    (declare (not safe))
                                    (cons __tmp88997 __tmp88988))))
                             (declare (not safe))
                             (cons __tmp88998 __tmp88987))))
                      (declare (not safe))
                      (cons __tmp88986 '()))))
               (declare (not safe))
               (cons __tmp88999 __tmp88985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89003 __tmp88984))))
                                         (declare (not safe))
                                         (cons __tmp88983 '()))))
                                  (declare (not safe))
                                  (cons __tmp89004 __tmp88982))))
                           (declare (not safe))
                           (cons __tmp89009 __tmp88981))))
                    (declare (not safe))
                    (cons __tmp88980 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83036_
                                                           __tmp88979))))
                                              (declare (not safe))
                                              (cons __tmp89010 __tmp88978)))
                                           (__tmp88942
                                            (let ((__tmp88943
                                                   (let ((__tmp88976
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp88944
                                                          (let ((__tmp88945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88946
                                (let ((__tmp88975
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp88947
                                       (let ((__tmp88970
                                              (let ((__tmp88974
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp88971
                                                     (let ((__tmp88972
                                                            (let ((__tmp88973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L82920_ __tmp88973))))
               (declare (not safe))
               (cons _L82953_ __tmp88972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88974 __tmp88971)))
                                             (__tmp88948
                                              (let ((__tmp88949
                                                     (let ((__tmp88969
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp88950
                                                            (let ((__tmp88965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp88968 (gx#datum->syntax '#f 'klass))
                                 (__tmp88966
                                  (let ((__tmp88967
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp88967 '()))))
                             (declare (not safe))
                             (cons __tmp88968 __tmp88966)))
                          (__tmp88951
                           (let ((__tmp88952
                                  (let ((__tmp88964
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp88953
                                         (let ((__tmp88963
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp88954
                                                (let ((__tmp88962
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp88955
                                                       (let ((__tmp88956
                                                              (let ((__tmp88961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp88957
                             (let ((__tmp88958
                                    (let ((__tmp88960
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp88959
                                           (let ()
                                             (declare (not safe))
                                             (cons _L82920_ '()))))
                                      (declare (not safe))
                                      (cons __tmp88960 __tmp88959))))
                               (declare (not safe))
                               (cons __tmp88958 '()))))
                        (declare (not safe))
                        (cons __tmp88961 __tmp88957))))
                 (declare (not safe))
                 (cons _L82918_ __tmp88956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88962
                                                        __tmp88955))))
                                           (declare (not safe))
                                           (cons __tmp88963 __tmp88954))))
                                    (declare (not safe))
                                    (cons __tmp88964 __tmp88953))))
                             (declare (not safe))
                             (cons __tmp88952 '()))))
                      (declare (not safe))
                      (cons __tmp88965 __tmp88951))))
               (declare (not safe))
               (cons __tmp88969 __tmp88950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88949 '()))))
                                         (declare (not safe))
                                         (cons __tmp88970 __tmp88948))))
                                  (declare (not safe))
                                  (cons __tmp88975 __tmp88947))))
                           (declare (not safe))
                           (cons __tmp88946 '()))))
                    (declare (not safe))
                    (cons _L83064_ __tmp88945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88976
                                                           __tmp88944))))
                                              (declare (not safe))
                                              (cons __tmp88943 '()))))
                                       (declare (not safe))
                                       (cons __tmp88977 __tmp88942))))
                                (declare (not safe))
                                (cons __tmp89011 __tmp88941))))
                         (declare (not safe))
                         (cons __tmp89041 __tmp88940))))
                  (declare (not safe))
                  (cons __tmp89071 __tmp88939)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8305083061_))))
                                         (_g8304883079_
                                          (gx#stx-identifier
                                           _L82920_
                                           '"&"
                                           _L83036_)))))
                                   _g8302283033_))))
                          (_g8302083083_
                           (gx#stx-identifier _L82920_ _L82980_ '"-set!")))))
                    _g8299483005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8299283087_
                                                    (gx#stx-identifier
                                                     _L82920_
                                                     '"&"
                                                     _L82980_)))))
                                             _g8296682977_))))
                                    (_g8296483091_
                                     (gx#stx-identifier
                                      _L82920_
                                      '"class-type-"
                                      _L82920_)))))
                              _g8293982950_))))
                     (_g8293783095_ (gx#core-quote-syntax 'class::t))))
                 _hd8286482912_
                 _hd8286182902_)
                (_g8285082871_ _g8285182875_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8285082871_
                                                     _g8285182875_))))
                                            (_g8285082871_ _g8285182875_))))
                                    (_g8285082871_ _g8285182875_))))
                            (_g8285082871_ _g8285182875_))))
                    (_g8285082871_ _g8285182875_)))))
        (_g8284983099_ _stx82847_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx83103_)
      (let* ((_g8310783136_
              (lambda (_g8310883132_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8310883132_)))
             (_g8310683236_
              (lambda (_g8310883140_)
                (if (gx#stx-pair? _g8310883140_)
                    (let ((_e8311383143_ (gx#syntax-e _g8310883140_)))
                      (let ((_hd8311283147_
                             (let ()
                               (declare (not safe))
                               (##car _e8311383143_)))
                            (_tl8311183150_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8311383143_))))
                        (if (gx#stx-pair/null? _tl8311183150_)
                            (let ((_g89072_
                                   (gx#syntax-split-splice _tl8311183150_ '0)))
                              (begin
                                (let ((_g89073_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89072_)
                                             (##vector-length _g89072_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89073_ 2)))
                                      (error "Context expects 2 values"
                                             _g89073_)))
                                (let ((_target8311483153_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89072_ 0)))
                                      (_tl8311683156_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89072_ 1))))
                                  (if (gx#stx-null? _tl8311683156_)
                                      (letrec ((_loop8311783159_
                                                (lambda (_hd8311583163_
                                                         _field8312183166_
                                                         _slot8312283168_)
                                                  (if (gx#stx-pair?
                                                       _hd8311583163_)
                                                      (let ((_e8311883171_
                                                             (gx#syntax-e
                                                              _hd8311583163_)))
                                                        (let ((_lp-hd8311983175_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8311883171_)))
                      (_lp-tl8312083178_
                       (let () (declare (not safe)) (##cdr _e8311883171_))))
                  (if (gx#stx-pair? _lp-hd8311983175_)
                      (let ((_e8312783181_ (gx#syntax-e _lp-hd8311983175_)))
                        (let ((_hd8312683185_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8312783181_)))
                              (_tl8312583188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8312783181_))))
                          (if (gx#stx-pair? _tl8312583188_)
                              (let ((_e8313083191_
                                     (gx#syntax-e _tl8312583188_)))
                                (let ((_hd8312983195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8313083191_)))
                                      (_tl8312883198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8313083191_))))
                                  (if (gx#stx-null? _tl8312883198_)
                                      (_loop8311783159_
                                       _lp-tl8312083178_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8312983195_
                                               _field8312183166_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8312683185_
                                               _slot8312283168_)))
                                      (_g8310783136_ _g8310883140_))))
                              (_g8310783136_ _g8310883140_))))
                      (_g8310783136_ _g8310883140_))))
              (let ((_field8312383201_ (reverse _field8312183166_))
                    (_slot8312483204_ (reverse _slot8312283168_)))
                ((lambda (_L83207_ _L83209_)
                   (let ((__tmp89081 (gx#datum->syntax '#f 'begin))
                         (__tmp89074
                          (begin
                            (gx#syntax-check-splice-targets _L83207_ _L83209_)
                            (let ((__tmp89075
                                   (lambda (_g8322483228_
                                            _g8322583231_
                                            _g8322683233_)
                                     (let ((__tmp89076
                                            (let ((__tmp89080
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89077
                                                   (let ((__tmp89078
                                                          (let ((__tmp89079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8322483228_ '()))))
                    (declare (not safe))
                    (cons _g8322583231_ __tmp89079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89078 '()))))
                                              (declare (not safe))
                                              (cons __tmp89080 __tmp89077))))
                                       (declare (not safe))
                                       (cons __tmp89076 _g8322683233_)))))
                              (declare (not safe))
                              (foldr2 __tmp89075 '() _L83207_ _L83209_)))))
                     (declare (not safe))
                     (cons __tmp89081 __tmp89074)))
                 _field8312383201_
                 _slot8312483204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8311783159_
                                         _target8311483153_
                                         '()
                                         '()))
                                      (_g8310783136_ _g8310883140_)))))
                            (_g8310783136_ _g8310883140_))))
                    (_g8310783136_ _g8310883140_)))))
        (_g8310683236_ _$stx83103_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx83241_)
      (let* ((_g8324583271_
              (lambda (_g8324683267_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8324683267_)))
             (_g8324483354_
              (lambda (_g8324683275_)
                (if (gx#stx-pair? _g8324683275_)
                    (let ((_e8325383278_ (gx#syntax-e _g8324683275_)))
                      (let ((_hd8325283282_
                             (let ()
                               (declare (not safe))
                               (##car _e8325383278_)))
                            (_tl8325183285_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8325383278_))))
                        (if (gx#stx-pair? _tl8325183285_)
                            (let ((_e8325683288_ (gx#syntax-e _tl8325183285_)))
                              (let ((_hd8325583292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8325683288_)))
                                    (_tl8325483295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8325683288_))))
                                (if (gx#stx-pair? _tl8325483295_)
                                    (let ((_e8325983298_
                                           (gx#syntax-e _tl8325483295_)))
                                      (let ((_hd8325883302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8325983298_)))
                                            (_tl8325783305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8325983298_))))
                                        (if (gx#stx-pair? _tl8325783305_)
                                            (let ((_e8326283308_
                                                   (gx#syntax-e
                                                    _tl8325783305_)))
                                              (let ((_hd8326183312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8326283308_)))
                                                    (_tl8326083315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8326283308_))))
                                                (if (gx#stx-pair?
                                                     _tl8326083315_)
                                                    (let ((_e8326583318_
                                                           (gx#syntax-e
                                                            _tl8326083315_)))
                                                      (let ((_hd8326483322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8326583318_)))
                    (_tl8326383325_
                     (let () (declare (not safe)) (##cdr _e8326583318_))))
                (if (gx#stx-null? _tl8326383325_)
                    ((lambda (_L83328_ _L83330_ _L83331_ _L83332_)
                       (let ((__tmp89128 (gx#datum->syntax '#f 'if))
                             (__tmp89082
                              (let ((__tmp89125
                                     (let ((__tmp89127
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89126
                                            (let ()
                                              (declare (not safe))
                                              (cons _L83332_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89127 __tmp89126)))
                                    (__tmp89083
                                     (let ((__tmp89088
                                            (let ((__tmp89124
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89089
                                                   (let ((__tmp89118
                                                          (let ((__tmp89123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89119
                         (let ((__tmp89120
                                (let ((__tmp89122
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89121
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83332_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89122 __tmp89121))))
                           (declare (not safe))
                           (cons __tmp89120 '()))))
                    (declare (not safe))
                    (cons __tmp89123 __tmp89119)))
                 (__tmp89090
                  (let ((__tmp89091
                         (let ((__tmp89117 (gx#datum->syntax '#f 'cond))
                               (__tmp89092
                                (let ((__tmp89100
                                       (let ((__tmp89104
                                              (let ((__tmp89116
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89105
                                                     (let ((__tmp89112
                                                            (let ((__tmp89115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89113
                           (let ((__tmp89114 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89114 '()))))
                      (declare (not safe))
                      (cons __tmp89115 __tmp89113)))
                   (__tmp89106
                    (let ((__tmp89107
                           (let ((__tmp89111
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89108
                                  (let ((__tmp89110
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89109
                                         (let ()
                                           (declare (not safe))
                                           (cons _L83331_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89110 __tmp89109))))
                             (declare (not safe))
                             (cons __tmp89111 __tmp89108))))
                      (declare (not safe))
                      (cons __tmp89107 '()))))
               (declare (not safe))
               (cons __tmp89112 __tmp89106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89116 __tmp89105)))
                                             (__tmp89101
                                              (let ((__tmp89103
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89102
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L83330_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89103 __tmp89102))))
                                         (declare (not safe))
                                         (cons __tmp89104 __tmp89101)))
                                      (__tmp89093
                                       (let ((__tmp89094
                                              (let ((__tmp89099
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89095
                                                     (let ((__tmp89096
                                                            (let ((__tmp89097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89098
                                  (let ()
                                    (declare (not safe))
                                    (cons _L83331_ '()))))
                             (declare (not safe))
                             (cons _L83332_ __tmp89098))))
                      (declare (not safe))
                      (cons _L83328_ __tmp89097))))
               (declare (not safe))
               (cons __tmp89096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89099 __tmp89095))))
                                         (declare (not safe))
                                         (cons __tmp89094 '()))))
                                  (declare (not safe))
                                  (cons __tmp89100 __tmp89093))))
                           (declare (not safe))
                           (cons __tmp89117 __tmp89092))))
                    (declare (not safe))
                    (cons __tmp89091 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89118
                                                           __tmp89090))))
                                              (declare (not safe))
                                              (cons __tmp89124 __tmp89089)))
                                           (__tmp89084
                                            (let ((__tmp89085
                                                   (let ((__tmp89086
                                                          (let ((__tmp89087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L83331_ '()))))
                    (declare (not safe))
                    (cons _L83332_ __tmp89087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83328_
                                                           __tmp89086))))
                                              (declare (not safe))
                                              (cons __tmp89085 '()))))
                                       (declare (not safe))
                                       (cons __tmp89088 __tmp89084))))
                                (declare (not safe))
                                (cons __tmp89125 __tmp89083))))
                         (declare (not safe))
                         (cons __tmp89128 __tmp89082)))
                     _hd8326483322_
                     _hd8326183312_
                     _hd8325883302_
                     _hd8325583292_)
                    (_g8324583271_ _g8324683275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8324583271_
                                                     _g8324683275_))))
                                            (_g8324583271_ _g8324683275_))))
                                    (_g8324583271_ _g8324683275_))))
                            (_g8324583271_ _g8324683275_))))
                    (_g8324583271_ _g8324683275_)))))
        (_g8324483354_ _$stx83241_)))))
