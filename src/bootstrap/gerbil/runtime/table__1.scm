(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57045_)
      (let* ((_g5704957063_
              (lambda (_g5705057059_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5705057059_)))
             (_g5704857105_
              (lambda (_g5705057067_)
                (if (gx#stx-pair? _g5705057067_)
                    (let ((_e5705457070_ (gx#syntax-e _g5705057067_)))
                      (let ((_hd5705357074_
                             (let ()
                               (declare (not safe))
                               (##car _e5705457070_)))
                            (_tl5705257077_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5705457070_))))
                        (if (gx#stx-pair? _tl5705257077_)
                            (let ((_e5705757080_ (gx#syntax-e _tl5705257077_)))
                              (let ((_hd5705657084_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5705757080_)))
                                    (_tl5705557087_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5705757080_))))
                                (if (gx#stx-null? _tl5705557087_)
                                    ((lambda (_L57090_)
                                       (let ((__tmp59627
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp59625
                                              (let ((__tmp59626
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57090_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp59626))))
                                         (declare (not safe))
                                         (cons __tmp59627 __tmp59625)))
                                     _hd5705657084_)
                                    (_g5704957063_ _g5705057067_))))
                            (_g5704957063_ _g5705057067_))))
                    (_g5704957063_ _g5705057067_)))))
        (_g5704857105_ _$stx57045_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57109_)
      (let* ((_g5711357159_
              (lambda (_g5711457155_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5711457155_)))
             (_g5711257312_
              (lambda (_g5711457163_)
                (if (gx#stx-pair? _g5711457163_)
                    (let ((_e5712657166_ (gx#syntax-e _g5711457163_)))
                      (let ((_hd5712557170_
                             (let ()
                               (declare (not safe))
                               (##car _e5712657166_)))
                            (_tl5712457173_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5712657166_))))
                        (if (gx#stx-pair? _tl5712457173_)
                            (let ((_e5712957176_ (gx#syntax-e _tl5712457173_)))
                              (let ((_hd5712857180_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5712957176_)))
                                    (_tl5712757183_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5712957176_))))
                                (if (gx#stx-pair? _tl5712757183_)
                                    (let ((_e5713257186_
                                           (gx#syntax-e _tl5712757183_)))
                                      (let ((_hd5713157190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5713257186_)))
                                            (_tl5713057193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5713257186_))))
                                        (if (gx#stx-pair? _tl5713057193_)
                                            (let ((_e5713557196_
                                                   (gx#syntax-e
                                                    _tl5713057193_)))
                                              (let ((_hd5713457200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5713557196_)))
                                                    (_tl5713357203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5713557196_))))
                                                (if (gx#stx-pair?
                                                     _tl5713357203_)
                                                    (let ((_e5713857206_
                                                           (gx#syntax-e
                                                            _tl5713357203_)))
                                                      (let ((_hd5713757210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5713857206_)))
                    (_tl5713657213_
                     (let () (declare (not safe)) (##cdr _e5713857206_))))
                (if (gx#stx-pair? _tl5713657213_)
                    (let ((_e5714157216_ (gx#syntax-e _tl5713657213_)))
                      (let ((_hd5714057220_
                             (let ()
                               (declare (not safe))
                               (##car _e5714157216_)))
                            (_tl5713957223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5714157216_))))
                        (if (gx#stx-pair? _tl5713957223_)
                            (let ((_e5714457226_ (gx#syntax-e _tl5713957223_)))
                              (let ((_hd5714357230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5714457226_)))
                                    (_tl5714257233_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5714457226_))))
                                (if (gx#stx-pair? _tl5714257233_)
                                    (let ((_e5714757236_
                                           (gx#syntax-e _tl5714257233_)))
                                      (let ((_hd5714657240_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5714757236_)))
                                            (_tl5714557243_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5714757236_))))
                                        (if (gx#stx-pair? _tl5714557243_)
                                            (let ((_e5715057246_
                                                   (gx#syntax-e
                                                    _tl5714557243_)))
                                              (let ((_hd5714957250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5715057246_)))
                                                    (_tl5714857253_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5715057246_))))
                                                (if (gx#stx-pair?
                                                     _tl5714857253_)
                                                    (let ((_e5715357256_
                                                           (gx#syntax-e
                                                            _tl5714857253_)))
                                                      (let ((_hd5715257260_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5715357256_)))
                    (_tl5715157263_
                     (let () (declare (not safe)) (##cdr _e5715357256_))))
                (if (gx#stx-null? _tl5715157263_)
                    ((lambda (_L57266_
                              _L57268_
                              _L57269_
                              _L57270_
                              _L57271_
                              _L57272_
                              _L57273_
                              _L57274_
                              _L57275_)
                       (let ((__tmp60059 (gx#datum->syntax '#f 'begin))
                             (__tmp59628
                              (let ((__tmp60038
                                     (let ((__tmp60058
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60039
                                            (let ((__tmp60049
                                                   (let ((__tmp60050
                                                          (let ((__tmp60055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60057 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60056
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60057 __tmp60056)))
                        (__tmp60051
                         (let ((__tmp60052
                                (let ((__tmp60054 (gx#datum->syntax '#f 'seed))
                                      (__tmp60053
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60054 __tmp60053))))
                           (declare (not safe))
                           (cons __tmp60052 '()))))
                    (declare (not safe))
                    (cons __tmp60055 __tmp60051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57275_
                                                           __tmp60050)))
                                                  (__tmp60040
                                                   (let ((__tmp60041
                                                          (let ((__tmp60048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60042
                         (let ((__tmp60047 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60043
                                (let ((__tmp60044
                                       (let ((__tmp60045
                                              (let ((__tmp60046
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60046 '()))))
                                         (declare (not safe))
                                         (cons _L57266_ __tmp60045))))
                                  (declare (not safe))
                                  (cons _L57268_ __tmp60044))))
                           (declare (not safe))
                           (cons __tmp60047 __tmp60043))))
                    (declare (not safe))
                    (cons __tmp60048 __tmp60042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60041 '()))))
                                              (declare (not safe))
                                              (cons __tmp60049 __tmp60040))))
                                       (declare (not safe))
                                       (cons __tmp60058 __tmp60039)))
                                    (__tmp59629
                                     (let ((__tmp59995
                                            (let ((__tmp60037
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp59996
                                                   (let ((__tmp60030
                                                          (let ((__tmp60031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60036 (gx#datum->syntax '#f 'tab))
                               (__tmp60032
                                (let ((__tmp60035 (gx#datum->syntax '#f 'key))
                                      (__tmp60033
                                       (let ((__tmp60034
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60034 '()))))
                                  (declare (not safe))
                                  (cons __tmp60035 __tmp60033))))
                           (declare (not safe))
                           (cons __tmp60036 __tmp60032))))
                    (declare (not safe))
                    (cons _L57274_ __tmp60031)))
                 (__tmp59997
                  (let ((__tmp59998
                         (let ((__tmp60029 (gx#datum->syntax '#f 'let))
                               (__tmp59999
                                (let ((__tmp60013
                                       (let ((__tmp60022
                                              (let ((__tmp60028
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60023
                                                     (let ((__tmp60024
                                                            (let ((__tmp60027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60025
                           (let ((__tmp60026 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60026 '()))))
                      (declare (not safe))
                      (cons __tmp60027 __tmp60025))))
               (declare (not safe))
               (cons __tmp60024 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60028 __tmp60023)))
                                             (__tmp60014
                                              (let ((__tmp60015
                                                     (let ((__tmp60021
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60016
                                                            (let ((__tmp60017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60020
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60018
                                  (let ((__tmp60019
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60019 '()))))
                             (declare (not safe))
                             (cons __tmp60020 __tmp60018))))
                      (declare (not safe))
                      (cons __tmp60017 '()))))
               (declare (not safe))
               (cons __tmp60021 __tmp60016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60015 '()))))
                                         (declare (not safe))
                                         (cons __tmp60022 __tmp60014)))
                                      (__tmp60000
                                       (let ((__tmp60001
                                              (let ((__tmp60012
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60002
                                                     (let ((__tmp60011
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60003
                                                            (let ((__tmp60010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60004
                           (let ((__tmp60005
                                  (let ((__tmp60006
                                         (let ((__tmp60009
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60007
                                                (let ((__tmp60008
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60008 '()))))
                                           (declare (not safe))
                                           (cons __tmp60009 __tmp60007))))
                                    (declare (not safe))
                                    (cons _L57266_ __tmp60006))))
                             (declare (not safe))
                             (cons _L57268_ __tmp60005))))
                      (declare (not safe))
                      (cons __tmp60010 __tmp60004))))
               (declare (not safe))
               (cons __tmp60011 __tmp60003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60012 __tmp60002))))
                                         (declare (not safe))
                                         (cons __tmp60001 '()))))
                                  (declare (not safe))
                                  (cons __tmp60013 __tmp60000))))
                           (declare (not safe))
                           (cons __tmp60029 __tmp59999))))
                    (declare (not safe))
                    (cons __tmp59998 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60030
                                                           __tmp59997))))
                                              (declare (not safe))
                                              (cons __tmp60037 __tmp59996)))
                                           (__tmp59630
                                            (let ((__tmp59949
                                                   (let ((__tmp59994
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp59950
                                                          (let ((__tmp59987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59988
                                (let ((__tmp59993 (gx#datum->syntax '#f 'tab))
                                      (__tmp59989
                                       (let ((__tmp59992
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp59990
                                              (let ((__tmp59991
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp59991 '()))))
                                         (declare (not safe))
                                         (cons __tmp59992 __tmp59990))))
                                  (declare (not safe))
                                  (cons __tmp59993 __tmp59989))))
                           (declare (not safe))
                           (cons _L57273_ __tmp59988)))
                        (__tmp59951
                         (let ((__tmp59960
                                (let ((__tmp59986 (gx#datum->syntax '#f 'when))
                                      (__tmp59961
                                       (let ((__tmp59967
                                              (let ((__tmp59985
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp59968
                                                     (let ((__tmp59981
                                                            (let ((__tmp59984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp59982
                           (let ((__tmp59983 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp59983 '()))))
                      (declare (not safe))
                      (cons __tmp59984 __tmp59982)))
                   (__tmp59969
                    (let ((__tmp59970
                           (let ((__tmp59980
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp59971
                                  (let ((__tmp59973
                                         (let ((__tmp59979
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp59974
                                                (let ((__tmp59975
                                                       (let ((__tmp59978
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59976
                                                              (let ((__tmp59977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59977 '()))))
                 (declare (not safe))
                 (cons __tmp59978 __tmp59976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59975 '()))))
                                           (declare (not safe))
                                           (cons __tmp59979 __tmp59974)))
                                        (__tmp59972
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp59973 __tmp59972))))
                             (declare (not safe))
                             (cons __tmp59980 __tmp59971))))
                      (declare (not safe))
                      (cons __tmp59970 '()))))
               (declare (not safe))
               (cons __tmp59981 __tmp59969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59985 __tmp59968)))
                                             (__tmp59962
                                              (let ((__tmp59963
                                                     (let ((__tmp59966
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp59964
                                                            (let ((__tmp59965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp59965 '()))))
               (declare (not safe))
               (cons __tmp59966 __tmp59964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59963 '()))))
                                         (declare (not safe))
                                         (cons __tmp59967 __tmp59962))))
                                  (declare (not safe))
                                  (cons __tmp59986 __tmp59961)))
                               (__tmp59952
                                (let ((__tmp59953
                                       (let ((__tmp59954
                                              (let ((__tmp59959
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59955
                                                     (let ((__tmp59958
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59956
                                                            (let ((__tmp59957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp59957 '()))))
               (declare (not safe))
               (cons __tmp59958 __tmp59956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59959 __tmp59955))))
                                         (declare (not safe))
                                         (cons _L57272_ __tmp59954))))
                                  (declare (not safe))
                                  (cons __tmp59953 '()))))
                           (declare (not safe))
                           (cons __tmp59960 __tmp59952))))
                    (declare (not safe))
                    (cons __tmp59987 __tmp59951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59994
                                                           __tmp59950)))
                                                  (__tmp59631
                                                   (let ((__tmp59847
                                                          (let ((__tmp59948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp59848
                         (let ((__tmp59941
                                (let ((__tmp59942
                                       (let ((__tmp59947
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp59943
                                              (let ((__tmp59946
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp59944
                                                     (let ((__tmp59945
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp59945 '()))))
                                                (declare (not safe))
                                                (cons __tmp59946 __tmp59944))))
                                         (declare (not safe))
                                         (cons __tmp59947 __tmp59943))))
                                  (declare (not safe))
                                  (cons _L57272_ __tmp59942)))
                               (__tmp59849
                                (let ((__tmp59850
                                       (let ((__tmp59940
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp59851
                                              (let ((__tmp59924
                                                     (let ((__tmp59933
                                                            (let ((__tmp59939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp59934
                           (let ((__tmp59935
                                  (let ((__tmp59938
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp59936
                                         (let ((__tmp59937
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59937 '()))))
                                    (declare (not safe))
                                    (cons __tmp59938 __tmp59936))))
                             (declare (not safe))
                             (cons __tmp59935 '()))))
                      (declare (not safe))
                      (cons __tmp59939 __tmp59934)))
                   (__tmp59925
                    (let ((__tmp59926
                           (let ((__tmp59932 (gx#datum->syntax '#f 'seed))
                                 (__tmp59927
                                  (let ((__tmp59928
                                         (let ((__tmp59931
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp59929
                                                (let ((__tmp59930
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp59930 '()))))
                                           (declare (not safe))
                                           (cons __tmp59931 __tmp59929))))
                                    (declare (not safe))
                                    (cons __tmp59928 '()))))
                             (declare (not safe))
                             (cons __tmp59932 __tmp59927))))
                      (declare (not safe))
                      (cons __tmp59926 '()))))
               (declare (not safe))
               (cons __tmp59933 __tmp59925)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59852
                                                     (let ((__tmp59853
                                                            (let ((__tmp59923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp59854
                           (let ((__tmp59922 (gx#datum->syntax '#f 'table))
                                 (__tmp59855
                                  (let ((__tmp59921
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp59856
                                         (let ((__tmp59857
                                                (let ((__tmp59858
                                                       (let ((__tmp59920
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp59859
                                                              (let ((__tmp59919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp59860
                             (let ((__tmp59882
                                    (let ((__tmp59918
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp59883
                                           (let ((__tmp59884
                                                  (let ((__tmp59902
                                                         (let ((__tmp59917
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp59903
                        (let ((__tmp59913
                               (let ((__tmp59916
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp59914
                                      (let ((__tmp59915
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp59915 '()))))
                                 (declare (not safe))
                                 (cons __tmp59916 __tmp59914)))
                              (__tmp59904
                               (let ((__tmp59905
                                      (let ((__tmp59912
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp59906
                                             (let ((__tmp59908
                                                    (let ((__tmp59911
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59909
                                                           (let ((__tmp59910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59910 '()))))
              (declare (not safe))
              (cons __tmp59911 __tmp59909)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59907
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp59908 __tmp59907))))
                                        (declare (not safe))
                                        (cons __tmp59912 __tmp59906))))
                                 (declare (not safe))
                                 (cons __tmp59905 '()))))
                          (declare (not safe))
                          (cons __tmp59913 __tmp59904))))
                   (declare (not safe))
                   (cons __tmp59917 __tmp59903)))
                (__tmp59885
                 (let ((__tmp59886
                        (let ((__tmp59901 (gx#datum->syntax '#f 'set!))
                              (__tmp59887
                               (let ((__tmp59897
                                      (let ((__tmp59900
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59898
                                             (let ((__tmp59899
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59899 '()))))
                                        (declare (not safe))
                                        (cons __tmp59900 __tmp59898)))
                                     (__tmp59888
                                      (let ((__tmp59889
                                             (let ((__tmp59896
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59890
                                                    (let ((__tmp59892
                                                           (let ((__tmp59895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59893
                          (let ((__tmp59894 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59894 '()))))
                     (declare (not safe))
                     (cons __tmp59895 __tmp59893)))
                  (__tmp59891 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59892 __tmp59891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59896 __tmp59890))))
                                        (declare (not safe))
                                        (cons __tmp59889 '()))))
                                 (declare (not safe))
                                 (cons __tmp59897 __tmp59888))))
                          (declare (not safe))
                          (cons __tmp59901 __tmp59887))))
                   (declare (not safe))
                   (cons __tmp59886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59902
                                                          __tmp59885))))
                                             (declare (not safe))
                                             (cons '() __tmp59884))))
                                      (declare (not safe))
                                      (cons __tmp59918 __tmp59883)))
                                   (__tmp59861
                                    (let ((__tmp59862
                                           (let ((__tmp59881
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp59863
                                                  (let ((__tmp59864
                                                         (let ((__tmp59865
                                                                (let ((__tmp59880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp59866
                               (let ((__tmp59876
                                      (let ((__tmp59879
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59877
                                             (let ((__tmp59878
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59878 '()))))
                                        (declare (not safe))
                                        (cons __tmp59879 __tmp59877)))
                                     (__tmp59867
                                      (let ((__tmp59868
                                             (let ((__tmp59875
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59869
                                                    (let ((__tmp59871
                                                           (let ((__tmp59874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59872
                          (let ((__tmp59873 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59873 '()))))
                     (declare (not safe))
                     (cons __tmp59874 __tmp59872)))
                  (__tmp59870 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59871 __tmp59870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59875 __tmp59869))))
                                        (declare (not safe))
                                        (cons __tmp59868 '()))))
                                 (declare (not safe))
                                 (cons __tmp59876 __tmp59867))))
                          (declare (not safe))
                          (cons __tmp59880 __tmp59866))))
                   (declare (not safe))
                   (cons __tmp59865 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp59864))))
                                             (declare (not safe))
                                             (cons __tmp59881 __tmp59863))))
                                      (declare (not safe))
                                      (cons __tmp59862 '()))))
                               (declare (not safe))
                               (cons __tmp59882 __tmp59861))))
                        (declare (not safe))
                        (cons __tmp59919 __tmp59860))))
                 (declare (not safe))
                 (cons __tmp59920 __tmp59859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57266_ __tmp59858))))
                                           (declare (not safe))
                                           (cons _L57268_ __tmp59857))))
                                    (declare (not safe))
                                    (cons __tmp59921 __tmp59856))))
                             (declare (not safe))
                             (cons __tmp59922 __tmp59855))))
                      (declare (not safe))
                      (cons __tmp59923 __tmp59854))))
               (declare (not safe))
               (cons __tmp59853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59924 __tmp59852))))
                                         (declare (not safe))
                                         (cons __tmp59940 __tmp59851))))
                                  (declare (not safe))
                                  (cons __tmp59850 '()))))
                           (declare (not safe))
                           (cons __tmp59941 __tmp59849))))
                    (declare (not safe))
                    (cons __tmp59948 __tmp59848)))
                 (__tmp59632
                  (let ((__tmp59799
                         (let ((__tmp59846 (gx#datum->syntax '#f 'def))
                               (__tmp59800
                                (let ((__tmp59838
                                       (let ((__tmp59839
                                              (let ((__tmp59845
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59840
                                                     (let ((__tmp59844
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59841
                                                            (let ((__tmp59842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59843 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp59843 '()))))
                      (declare (not safe))
                      (cons _L57271_ __tmp59842))))
               (declare (not safe))
               (cons __tmp59844 __tmp59841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59845 __tmp59840))))
                                         (declare (not safe))
                                         (cons _L57271_ __tmp59839)))
                                      (__tmp59801
                                       (let ((__tmp59811
                                              (let ((__tmp59837
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp59812
                                                     (let ((__tmp59818
                                                            (let ((__tmp59836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp59819
                           (let ((__tmp59832
                                  (let ((__tmp59835
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp59833
                                         (let ((__tmp59834
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59834 '()))))
                                    (declare (not safe))
                                    (cons __tmp59835 __tmp59833)))
                                 (__tmp59820
                                  (let ((__tmp59821
                                         (let ((__tmp59831
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp59822
                                                (let ((__tmp59824
                                                       (let ((__tmp59830
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp59825
                                                              (let ((__tmp59826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59829
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp59827
                                    (let ((__tmp59828
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp59828 '()))))
                               (declare (not safe))
                               (cons __tmp59829 __tmp59827))))
                        (declare (not safe))
                        (cons __tmp59826 '()))))
                 (declare (not safe))
                 (cons __tmp59830 __tmp59825)))
              (__tmp59823 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59824
                                                        __tmp59823))))
                                           (declare (not safe))
                                           (cons __tmp59831 __tmp59822))))
                                    (declare (not safe))
                                    (cons __tmp59821 '()))))
                             (declare (not safe))
                             (cons __tmp59832 __tmp59820))))
                      (declare (not safe))
                      (cons __tmp59836 __tmp59819)))
                   (__tmp59813
                    (let ((__tmp59814
                           (let ((__tmp59817
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp59815
                                  (let ((__tmp59816
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59816 '()))))
                             (declare (not safe))
                             (cons __tmp59817 __tmp59815))))
                      (declare (not safe))
                      (cons __tmp59814 '()))))
               (declare (not safe))
               (cons __tmp59818 __tmp59813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59837 __tmp59812)))
                                             (__tmp59802
                                              (let ((__tmp59803
                                                     (let ((__tmp59804
                                                            (let ((__tmp59810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59805
                           (let ((__tmp59809 (gx#datum->syntax '#f 'key))
                                 (__tmp59806
                                  (let ((__tmp59807
                                         (let ((__tmp59808
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp59808 '()))))
                                    (declare (not safe))
                                    (cons _L57271_ __tmp59807))))
                             (declare (not safe))
                             (cons __tmp59809 __tmp59806))))
                      (declare (not safe))
                      (cons __tmp59810 __tmp59805))))
               (declare (not safe))
               (cons _L57270_ __tmp59804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59803 '()))))
                                         (declare (not safe))
                                         (cons __tmp59811 __tmp59802))))
                                  (declare (not safe))
                                  (cons __tmp59838 __tmp59801))))
                           (declare (not safe))
                           (cons __tmp59846 __tmp59800)))
                        (__tmp59633
                         (let ((__tmp59695
                                (let ((__tmp59798 (gx#datum->syntax '#f 'def))
                                      (__tmp59696
                                       (let ((__tmp59790
                                              (let ((__tmp59791
                                                     (let ((__tmp59797
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp59792
                                                            (let ((__tmp59796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp59793
                           (let ((__tmp59794
                                  (let ((__tmp59795
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp59795 '()))))
                             (declare (not safe))
                             (cons _L57271_ __tmp59794))))
                      (declare (not safe))
                      (cons __tmp59796 __tmp59793))))
               (declare (not safe))
               (cons __tmp59797 __tmp59792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57270_ __tmp59791)))
                                             (__tmp59697
                                              (let ((__tmp59698
                                                     (let ((__tmp59789
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp59699
                                                            (let ((__tmp59773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59782
                                  (let ((__tmp59788
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp59783
                                         (let ((__tmp59784
                                                (let ((__tmp59787
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp59785
                                                       (let ((__tmp59786
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp59786
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp59787
                                                        __tmp59785))))
                                           (declare (not safe))
                                           (cons __tmp59784 '()))))
                                    (declare (not safe))
                                    (cons __tmp59788 __tmp59783)))
                                 (__tmp59774
                                  (let ((__tmp59775
                                         (let ((__tmp59781
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp59776
                                                (let ((__tmp59777
                                                       (let ((__tmp59780
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp59778
                                                              (let ((__tmp59779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59779 '()))))
                 (declare (not safe))
                 (cons __tmp59780 __tmp59778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59777 '()))))
                                           (declare (not safe))
                                           (cons __tmp59781 __tmp59776))))
                                    (declare (not safe))
                                    (cons __tmp59775 '()))))
                             (declare (not safe))
                             (cons __tmp59782 __tmp59774)))
                          (__tmp59700
                           (let ((__tmp59701
                                  (let ((__tmp59772
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp59702
                                         (let ((__tmp59771
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59703
                                                (let ((__tmp59770
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59704
                                                       (let ((__tmp59705
                                                              (let ((__tmp59706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59769 (gx#datum->syntax '#f 'key))
                                   (__tmp59707
                                    (let ((__tmp59708
                                           (let ((__tmp59768
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp59709
                                                  (let ((__tmp59731
                                                         (let ((__tmp59767
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp59732
                        (let ((__tmp59733
                               (let ((__tmp59751
                                      (let ((__tmp59766
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp59752
                                             (let ((__tmp59762
                                                    (let ((__tmp59765
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59763
                                                           (let ((__tmp59764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59764 '()))))
              (declare (not safe))
              (cons __tmp59765 __tmp59763)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59753
                                                    (let ((__tmp59754
                                                           (let ((__tmp59761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp59755
                          (let ((__tmp59757
                                 (let ((__tmp59760
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp59758
                                        (let ((__tmp59759
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp59759 '()))))
                                   (declare (not safe))
                                   (cons __tmp59760 __tmp59758)))
                                (__tmp59756
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59757 __tmp59756))))
                     (declare (not safe))
                     (cons __tmp59761 __tmp59755))))
              (declare (not safe))
              (cons __tmp59754 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59762 __tmp59753))))
                                        (declare (not safe))
                                        (cons __tmp59766 __tmp59752)))
                                     (__tmp59734
                                      (let ((__tmp59735
                                             (let ((__tmp59750
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59736
                                                    (let ((__tmp59746
                                                           (let ((__tmp59749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59747
                          (let ((__tmp59748 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59748 '()))))
                     (declare (not safe))
                     (cons __tmp59749 __tmp59747)))
                  (__tmp59737
                   (let ((__tmp59738
                          (let ((__tmp59745 (gx#datum->syntax '#f 'fx+))
                                (__tmp59739
                                 (let ((__tmp59741
                                        (let ((__tmp59744
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59742
                                               (let ((__tmp59743
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59743 '()))))
                                          (declare (not safe))
                                          (cons __tmp59744 __tmp59742)))
                                       (__tmp59740
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59741 __tmp59740))))
                            (declare (not safe))
                            (cons __tmp59745 __tmp59739))))
                     (declare (not safe))
                     (cons __tmp59738 '()))))
              (declare (not safe))
              (cons __tmp59746 __tmp59737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59750 __tmp59736))))
                                        (declare (not safe))
                                        (cons __tmp59735 '()))))
                                 (declare (not safe))
                                 (cons __tmp59751 __tmp59734))))
                          (declare (not safe))
                          (cons '() __tmp59733))))
                   (declare (not safe))
                   (cons __tmp59767 __tmp59732)))
                (__tmp59710
                 (let ((__tmp59711
                        (let ((__tmp59730 (gx#datum->syntax '#f 'lambda))
                              (__tmp59712
                               (let ((__tmp59713
                                      (let ((__tmp59714
                                             (let ((__tmp59729
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59715
                                                    (let ((__tmp59725
                                                           (let ((__tmp59728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59726
                          (let ((__tmp59727 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59727 '()))))
                     (declare (not safe))
                     (cons __tmp59728 __tmp59726)))
                  (__tmp59716
                   (let ((__tmp59717
                          (let ((__tmp59724 (gx#datum->syntax '#f 'fx+))
                                (__tmp59718
                                 (let ((__tmp59720
                                        (let ((__tmp59723
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59721
                                               (let ((__tmp59722
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59722 '()))))
                                          (declare (not safe))
                                          (cons __tmp59723 __tmp59721)))
                                       (__tmp59719
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59720 __tmp59719))))
                            (declare (not safe))
                            (cons __tmp59724 __tmp59718))))
                     (declare (not safe))
                     (cons __tmp59717 '()))))
              (declare (not safe))
              (cons __tmp59725 __tmp59716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59729 __tmp59715))))
                                        (declare (not safe))
                                        (cons __tmp59714 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp59713))))
                          (declare (not safe))
                          (cons __tmp59730 __tmp59712))))
                   (declare (not safe))
                   (cons __tmp59711 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59731
                                                          __tmp59710))))
                                             (declare (not safe))
                                             (cons __tmp59768 __tmp59709))))
                                      (declare (not safe))
                                      (cons _L57271_ __tmp59708))))
                               (declare (not safe))
                               (cons __tmp59769 __tmp59707))))
                        (declare (not safe))
                        (cons _L57266_ __tmp59706))))
                 (declare (not safe))
                 (cons _L57268_ __tmp59705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59770
                                                        __tmp59704))))
                                           (declare (not safe))
                                           (cons __tmp59771 __tmp59703))))
                                    (declare (not safe))
                                    (cons __tmp59772 __tmp59702))))
                             (declare (not safe))
                             (cons __tmp59701 '()))))
                      (declare (not safe))
                      (cons __tmp59773 __tmp59700))))
               (declare (not safe))
               (cons __tmp59789 __tmp59699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59698 '()))))
                                         (declare (not safe))
                                         (cons __tmp59790 __tmp59697))))
                                  (declare (not safe))
                                  (cons __tmp59798 __tmp59696)))
                               (__tmp59634
                                (let ((__tmp59635
                                       (let ((__tmp59694
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp59636
                                              (let ((__tmp59689
                                                     (let ((__tmp59690
                                                            (let ((__tmp59693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59691
                           (let ((__tmp59692 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp59692 '()))))
                      (declare (not safe))
                      (cons __tmp59693 __tmp59691))))
               (declare (not safe))
               (cons _L57269_ __tmp59690)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59637
                                                     (let ((__tmp59638
                                                            (let ((__tmp59688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59639
                           (let ((__tmp59672
                                  (let ((__tmp59681
                                         (let ((__tmp59687
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59682
                                                (let ((__tmp59683
                                                       (let ((__tmp59686
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59684
                                                              (let ((__tmp59685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59685 '()))))
                 (declare (not safe))
                 (cons __tmp59686 __tmp59684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59683 '()))))
                                           (declare (not safe))
                                           (cons __tmp59687 __tmp59682)))
                                        (__tmp59673
                                         (let ((__tmp59674
                                                (let ((__tmp59680
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59675
                                                       (let ((__tmp59676
                                                              (let ((__tmp59679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp59677
                             (let ((__tmp59678 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp59678 '()))))
                        (declare (not safe))
                        (cons __tmp59679 __tmp59677))))
                 (declare (not safe))
                 (cons __tmp59676 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59680
                                                        __tmp59675))))
                                           (declare (not safe))
                                           (cons __tmp59674 '()))))
                                    (declare (not safe))
                                    (cons __tmp59681 __tmp59673)))
                                 (__tmp59640
                                  (let ((__tmp59641
                                         (let ((__tmp59671
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp59642
                                                (let ((__tmp59670
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp59643
                                                       (let ((__tmp59669
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp59644
                                                              (let ((__tmp59645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59646
                                    (let ((__tmp59668
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp59647
                                           (let ((__tmp59648
                                                  (let ((__tmp59667
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp59649
                                                         (let ((__tmp59650
                                                                (let ((__tmp59651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59666 (gx#datum->syntax '#f 'set!))
                                     (__tmp59652
                                      (let ((__tmp59662
                                             (let ((__tmp59665
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp59663
                                                    (let ((__tmp59664
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp59664 '()))))
                                               (declare (not safe))
                                               (cons __tmp59665 __tmp59663)))
                                            (__tmp59653
                                             (let ((__tmp59654
                                                    (let ((__tmp59661
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp59655
                                                           (let ((__tmp59657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp59660
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp59658
                                 (let ((__tmp59659
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp59659 '()))))
                            (declare (not safe))
                            (cons __tmp59660 __tmp59658)))
                         (__tmp59656
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59657 __tmp59656))))
              (declare (not safe))
              (cons __tmp59661 __tmp59655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59654 '()))))
                                        (declare (not safe))
                                        (cons __tmp59662 __tmp59653))))
                                 (declare (not safe))
                                 (cons __tmp59666 __tmp59652))))
                          (declare (not safe))
                          (cons __tmp59651 '()))))
                   (declare (not safe))
                   (cons '() __tmp59650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59667
                                                          __tmp59649))))
                                             (declare (not safe))
                                             (cons __tmp59648 '()))))
                                      (declare (not safe))
                                      (cons __tmp59668 __tmp59647))))
                               (declare (not safe))
                               (cons _L57266_ __tmp59646))))
                        (declare (not safe))
                        (cons _L57268_ __tmp59645))))
                 (declare (not safe))
                 (cons __tmp59669 __tmp59644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59670
                                                        __tmp59643))))
                                           (declare (not safe))
                                           (cons __tmp59671 __tmp59642))))
                                    (declare (not safe))
                                    (cons __tmp59641 '()))))
                             (declare (not safe))
                             (cons __tmp59672 __tmp59640))))
                      (declare (not safe))
                      (cons __tmp59688 __tmp59639))))
               (declare (not safe))
               (cons __tmp59638 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59689 __tmp59637))))
                                         (declare (not safe))
                                         (cons __tmp59694 __tmp59636))))
                                  (declare (not safe))
                                  (cons __tmp59635 '()))))
                           (declare (not safe))
                           (cons __tmp59695 __tmp59634))))
                    (declare (not safe))
                    (cons __tmp59799 __tmp59633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59847
                                                           __tmp59632))))
                                              (declare (not safe))
                                              (cons __tmp59949 __tmp59631))))
                                       (declare (not safe))
                                       (cons __tmp59995 __tmp59630))))
                                (declare (not safe))
                                (cons __tmp60038 __tmp59629))))
                         (declare (not safe))
                         (cons __tmp60059 __tmp59628)))
                     _hd5715257260_
                     _hd5714957250_
                     _hd5714657240_
                     _hd5714357230_
                     _hd5714057220_
                     _hd5713757210_
                     _hd5713457200_
                     _hd5713157190_
                     _hd5712857180_)
                    (_g5711357159_ _g5711457163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5711357159_
                                                     _g5711457163_))))
                                            (_g5711357159_ _g5711457163_))))
                                    (_g5711357159_ _g5711457163_))))
                            (_g5711357159_ _g5711457163_))))
                    (_g5711357159_ _g5711457163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5711357159_
                                                     _g5711457163_))))
                                            (_g5711357159_ _g5711457163_))))
                                    (_g5711357159_ _g5711457163_))))
                            (_g5711357159_ _g5711457163_))))
                    (_g5711357159_ _g5711457163_)))))
        (_g5711257312_ _$stx57109_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx57316_)
      (let* ((_g5732057342_
              (lambda (_g5732157338_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5732157338_)))
             (_g5731957411_
              (lambda (_g5732157346_)
                (if (gx#stx-pair? _g5732157346_)
                    (let ((_e5732757349_ (gx#syntax-e _g5732157346_)))
                      (let ((_hd5732657353_
                             (let ()
                               (declare (not safe))
                               (##car _e5732757349_)))
                            (_tl5732557356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5732757349_))))
                        (if (gx#stx-pair? _tl5732557356_)
                            (let ((_e5733057359_ (gx#syntax-e _tl5732557356_)))
                              (let ((_hd5732957363_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5733057359_)))
                                    (_tl5732857366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5733057359_))))
                                (if (gx#stx-pair? _tl5732857366_)
                                    (let ((_e5733357369_
                                           (gx#syntax-e _tl5732857366_)))
                                      (let ((_hd5733257373_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5733357369_)))
                                            (_tl5733157376_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5733357369_))))
                                        (if (gx#stx-pair? _tl5733157376_)
                                            (let ((_e5733657379_
                                                   (gx#syntax-e
                                                    _tl5733157376_)))
                                              (let ((_hd5733557383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5733657379_)))
                                                    (_tl5733457386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5733657379_))))
                                                (if (gx#stx-null?
                                                     _tl5733457386_)
                                                    ((lambda (_L57389_
                                                              _L57391_
                                                              _L57392_)
                                                       (let ((__tmp60079
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60060
                                                              (let ((__tmp60067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60078
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60068
                                    (let ((__tmp60069
                                           (let ((__tmp60077
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60070
                                                  (let ((__tmp60071
                                                         (let ((__tmp60072
                                                                (let ((__tmp60073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60076 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60074
                                      (let ((__tmp60075
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57391_ '()))))
                                        (declare (not safe))
                                        (cons _L57391_ __tmp60075))))
                                 (declare (not safe))
                                 (cons __tmp60076 __tmp60074))))
                          (declare (not safe))
                          (cons __tmp60073 '()))))
                   (declare (not safe))
                   (cons _L57391_ __tmp60072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57392_
                                                          __tmp60071))))
                                             (declare (not safe))
                                             (cons __tmp60077 __tmp60070))))
                                      (declare (not safe))
                                      (cons __tmp60069 '()))))
                               (declare (not safe))
                               (cons __tmp60078 __tmp60068)))
                            (__tmp60061
                             (let ((__tmp60062
                                    (let ((__tmp60066
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60063
                                           (let ((__tmp60065
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60064
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57389_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60065 __tmp60064))))
                                      (declare (not safe))
                                      (cons __tmp60066 __tmp60063))))
                               (declare (not safe))
                               (cons __tmp60062 '()))))
                        (declare (not safe))
                        (cons __tmp60067 __tmp60061))))
                 (declare (not safe))
                 (cons __tmp60079 __tmp60060)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5733557383_
                                                     _hd5733257373_
                                                     _hd5732957363_)
                                                    (_g5732057342_
                                                     _g5732157346_))))
                                            (_g5732057342_ _g5732157346_))))
                                    (_g5732057342_ _g5732157346_))))
                            (_g5732057342_ _g5732157346_))))
                    (_g5732057342_ _g5732157346_)))))
        (_g5731957411_ _$stx57316_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx57415_)
      (let* ((_g5741957453_
              (lambda (_g5742057449_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5742057449_)))
             (_g5741857564_
              (lambda (_g5742057457_)
                (if (gx#stx-pair? _g5742057457_)
                    (let ((_e5742957460_ (gx#syntax-e _g5742057457_)))
                      (let ((_hd5742857464_
                             (let ()
                               (declare (not safe))
                               (##car _e5742957460_)))
                            (_tl5742757467_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5742957460_))))
                        (if (gx#stx-pair? _tl5742757467_)
                            (let ((_e5743257470_ (gx#syntax-e _tl5742757467_)))
                              (let ((_hd5743157474_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5743257470_)))
                                    (_tl5743057477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5743257470_))))
                                (if (gx#stx-pair? _tl5743057477_)
                                    (let ((_e5743557480_
                                           (gx#syntax-e _tl5743057477_)))
                                      (let ((_hd5743457484_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5743557480_)))
                                            (_tl5743357487_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5743557480_))))
                                        (if (gx#stx-pair? _tl5743357487_)
                                            (let ((_e5743857490_
                                                   (gx#syntax-e
                                                    _tl5743357487_)))
                                              (let ((_hd5743757494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5743857490_)))
                                                    (_tl5743657497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5743857490_))))
                                                (if (gx#stx-pair?
                                                     _tl5743657497_)
                                                    (let ((_e5744157500_
                                                           (gx#syntax-e
                                                            _tl5743657497_)))
                                                      (let ((_hd5744057504_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5744157500_)))
                    (_tl5743957507_
                     (let () (declare (not safe)) (##cdr _e5744157500_))))
                (if (gx#stx-pair? _tl5743957507_)
                    (let ((_e5744457510_ (gx#syntax-e _tl5743957507_)))
                      (let ((_hd5744357514_
                             (let ()
                               (declare (not safe))
                               (##car _e5744457510_)))
                            (_tl5744257517_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5744457510_))))
                        (if (gx#stx-pair? _tl5744257517_)
                            (let ((_e5744757520_ (gx#syntax-e _tl5744257517_)))
                              (let ((_hd5744657524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5744757520_)))
                                    (_tl5744557527_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5744757520_))))
                                (if (gx#stx-null? _tl5744557527_)
                                    ((lambda (_L57530_
                                              _L57532_
                                              _L57533_
                                              _L57534_
                                              _L57535_
                                              _L57536_)
                                       (let ((__tmp60238
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60080
                                              (let ((__tmp60198
                                                     (let ((__tmp60229
                                                            (let ((__tmp60237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60230
                           (let ((__tmp60231
                                  (let ((__tmp60236
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60232
                                         (let ((__tmp60234
                                                (let ((__tmp60235
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57532_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57534_ __tmp60235)))
                                               (__tmp60233
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57535_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60234 __tmp60233))))
                                    (declare (not safe))
                                    (cons __tmp60236 __tmp60232))))
                             (declare (not safe))
                             (cons __tmp60231 '()))))
                      (declare (not safe))
                      (cons __tmp60237 __tmp60230)))
                   (__tmp60199
                    (let ((__tmp60223
                           (let ((__tmp60228 (gx#datum->syntax '#f 'size))
                                 (__tmp60224
                                  (let ((__tmp60225
                                         (let ((__tmp60227
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60226
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57536_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60227 __tmp60226))))
                                    (declare (not safe))
                                    (cons __tmp60225 '()))))
                             (declare (not safe))
                             (cons __tmp60228 __tmp60224)))
                          (__tmp60200
                           (let ((__tmp60215
                                  (let ((__tmp60222
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60216
                                         (let ((__tmp60217
                                                (let ((__tmp60221
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60218
                                                       (let ((__tmp60220
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60219
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60220 __tmp60219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60221
                                                        __tmp60218))))
                                           (declare (not safe))
                                           (cons __tmp60217 '()))))
                                    (declare (not safe))
                                    (cons __tmp60222 __tmp60216)))
                                 (__tmp60201
                                  (let ((__tmp60202
                                         (let ((__tmp60214
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60203
                                                (let ((__tmp60204
                                                       (let ((__tmp60213
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60205
                                                              (let ((__tmp60207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60212
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60208
                                    (let ((__tmp60211
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60209
                                           (let ((__tmp60210
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60210 '()))))
                                      (declare (not safe))
                                      (cons __tmp60211 __tmp60209))))
                               (declare (not safe))
                               (cons __tmp60212 __tmp60208)))
                            (__tmp60206
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60207 __tmp60206))))
                 (declare (not safe))
                 (cons __tmp60213 __tmp60205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60204 '()))))
                                           (declare (not safe))
                                           (cons __tmp60214 __tmp60203))))
                                    (declare (not safe))
                                    (cons __tmp60202 '()))))
                             (declare (not safe))
                             (cons __tmp60215 __tmp60201))))
                      (declare (not safe))
                      (cons __tmp60223 __tmp60200))))
               (declare (not safe))
               (cons __tmp60229 __tmp60199)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60081
                                                     (let ((__tmp60082
                                                            (let ((__tmp60197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60083
                           (let ((__tmp60196 (gx#datum->syntax '#f 'loop))
                                 (__tmp60084
                                  (let ((__tmp60183
                                         (let ((__tmp60192
                                                (let ((__tmp60195
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60193
                                                       (let ((__tmp60194
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60194
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60195
                                                        __tmp60193)))
                                               (__tmp60184
                                                (let ((__tmp60189
                                                       (let ((__tmp60191
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60190
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60191 __tmp60190)))
              (__tmp60185
               (let ((__tmp60186
                      (let ((__tmp60188 (gx#datum->syntax '#f 'deleted))
                            (__tmp60187
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60188 __tmp60187))))
                 (declare (not safe))
                 (cons __tmp60186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60189
                                                        __tmp60185))))
                                           (declare (not safe))
                                           (cons __tmp60192 __tmp60184)))
                                        (__tmp60085
                                         (let ((__tmp60086
                                                (let ((__tmp60182
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60087
                                                       (let ((__tmp60174
                                                              (let ((__tmp60181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60175
                             (let ((__tmp60176
                                    (let ((__tmp60180
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60177
                                           (let ((__tmp60178
                                                  (let ((__tmp60179
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60179 '()))))
                                             (declare (not safe))
                                             (cons _L57536_ __tmp60178))))
                                      (declare (not safe))
                                      (cons __tmp60180 __tmp60177))))
                               (declare (not safe))
                               (cons __tmp60176 '()))))
                        (declare (not safe))
                        (cons __tmp60181 __tmp60175)))
                     (__tmp60088
                      (let ((__tmp60089
                             (let ((__tmp60173 (gx#datum->syntax '#f 'cond))
                                   (__tmp60090
                                    (let ((__tmp60164
                                           (let ((__tmp60166
                                                  (let ((__tmp60172
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60167
                                                         (let ((__tmp60171
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60168
                        (let ((__tmp60169
                               (let ((__tmp60170
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60170 '()))))
                          (declare (not safe))
                          (cons __tmp60169 '()))))
                   (declare (not safe))
                   (cons __tmp60171 __tmp60168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60172
                                                          __tmp60167)))
                                                 (__tmp60165
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57530_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60166 __tmp60165)))
                                          (__tmp60091
                                           (let ((__tmp60131
                                                  (let ((__tmp60157
                                                         (let ((__tmp60163
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60158
                        (let ((__tmp60162 (gx#datum->syntax '#f 'k))
                              (__tmp60159
                               (let ((__tmp60160
                                      (let ((__tmp60161
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60161 '()))))
                                 (declare (not safe))
                                 (cons __tmp60160 '()))))
                          (declare (not safe))
                          (cons __tmp60162 __tmp60159))))
                   (declare (not safe))
                   (cons __tmp60163 __tmp60158)))
                (__tmp60132
                 (let ((__tmp60133
                        (let ((__tmp60156 (gx#datum->syntax '#f 'loop))
                              (__tmp60134
                               (let ((__tmp60148
                                      (let ((__tmp60155
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60149
                                             (let ((__tmp60154
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60150
                                                    (let ((__tmp60153
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60151
                                                           (let ((__tmp60152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60152 '()))))
              (declare (not safe))
              (cons __tmp60153 __tmp60151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60154 __tmp60150))))
                                        (declare (not safe))
                                        (cons __tmp60155 __tmp60149)))
                                     (__tmp60135
                                      (let ((__tmp60143
                                             (let ((__tmp60147
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60144
                                                    (let ((__tmp60146
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60145
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60146
                                                            __tmp60145))))
                                               (declare (not safe))
                                               (cons __tmp60147 __tmp60144)))
                                            (__tmp60136
                                             (let ((__tmp60137
                                                    (let ((__tmp60142
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60138
                                                           (let ((__tmp60141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60139
                          (let ((__tmp60140 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60140 '()))))
                     (declare (not safe))
                     (cons __tmp60141 __tmp60139))))
              (declare (not safe))
              (cons __tmp60142 __tmp60138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60137 '()))))
                                        (declare (not safe))
                                        (cons __tmp60143 __tmp60136))))
                                 (declare (not safe))
                                 (cons __tmp60148 __tmp60135))))
                          (declare (not safe))
                          (cons __tmp60156 __tmp60134))))
                   (declare (not safe))
                   (cons __tmp60133 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60157
                                                          __tmp60132)))
                                                 (__tmp60092
                                                  (let ((__tmp60116
                                                         (let ((__tmp60127
                                                                (let ((__tmp60128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60129
                                      (let ((__tmp60130
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60130 '()))))
                                 (declare (not safe))
                                 (cons _L57532_ __tmp60129))))
                          (declare (not safe))
                          (cons _L57533_ __tmp60128)))
                       (__tmp60117
                        (let ((__tmp60118
                               (let ((__tmp60126
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60119
                                      (let ((__tmp60120
                                             (let ((__tmp60121
                                                    (let ((__tmp60125
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60122
                                                           (let ((__tmp60124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60123
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60124 __tmp60123))))
              (declare (not safe))
              (cons __tmp60125 __tmp60122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60121 '()))))
                                        (declare (not safe))
                                        (cons _L57536_ __tmp60120))))
                                 (declare (not safe))
                                 (cons __tmp60126 __tmp60119))))
                          (declare (not safe))
                          (cons __tmp60118 '()))))
                   (declare (not safe))
                   (cons __tmp60127 __tmp60117)))
                (__tmp60093
                 (let ((__tmp60094
                        (let ((__tmp60115 (gx#datum->syntax '#f 'else))
                              (__tmp60095
                               (let ((__tmp60096
                                      (let ((__tmp60114
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60097
                                             (let ((__tmp60106
                                                    (let ((__tmp60113
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60107
                                                           (let ((__tmp60112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60108
                          (let ((__tmp60111 (gx#datum->syntax '#f 'i))
                                (__tmp60109
                                 (let ((__tmp60110
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60110 '()))))
                            (declare (not safe))
                            (cons __tmp60111 __tmp60109))))
                     (declare (not safe))
                     (cons __tmp60112 __tmp60108))))
              (declare (not safe))
              (cons __tmp60113 __tmp60107)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60098
                                                    (let ((__tmp60101
                                                           (let ((__tmp60105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60102
                          (let ((__tmp60104 (gx#datum->syntax '#f 'i))
                                (__tmp60103
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60104 __tmp60103))))
                     (declare (not safe))
                     (cons __tmp60105 __tmp60102)))
                  (__tmp60099
                   (let ((__tmp60100 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60100 '()))))
              (declare (not safe))
              (cons __tmp60101 __tmp60099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60106 __tmp60098))))
                                        (declare (not safe))
                                        (cons __tmp60114 __tmp60097))))
                                 (declare (not safe))
                                 (cons __tmp60096 '()))))
                          (declare (not safe))
                          (cons __tmp60115 __tmp60095))))
                   (declare (not safe))
                   (cons __tmp60094 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60116
                                                          __tmp60093))))
                                             (declare (not safe))
                                             (cons __tmp60131 __tmp60092))))
                                      (declare (not safe))
                                      (cons __tmp60164 __tmp60091))))
                               (declare (not safe))
                               (cons __tmp60173 __tmp60090))))
                        (declare (not safe))
                        (cons __tmp60089 '()))))
                 (declare (not safe))
                 (cons __tmp60174 __tmp60088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60182
                                                        __tmp60087))))
                                           (declare (not safe))
                                           (cons __tmp60086 '()))))
                                    (declare (not safe))
                                    (cons __tmp60183 __tmp60085))))
                             (declare (not safe))
                             (cons __tmp60196 __tmp60084))))
                      (declare (not safe))
                      (cons __tmp60197 __tmp60083))))
               (declare (not safe))
               (cons __tmp60082 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60198 __tmp60081))))
                                         (declare (not safe))
                                         (cons __tmp60238 __tmp60080)))
                                     _hd5744657524_
                                     _hd5744357514_
                                     _hd5744057504_
                                     _hd5743757494_
                                     _hd5743457484_
                                     _hd5743157474_)
                                    (_g5741957453_ _g5742057457_))))
                            (_g5741957453_ _g5742057457_))))
                    (_g5741957453_ _g5742057457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5741957453_
                                                     _g5742057457_))))
                                            (_g5741957453_ _g5742057457_))))
                                    (_g5741957453_ _g5742057457_))))
                            (_g5741957453_ _g5742057457_))))
                    (_g5741957453_ _g5742057457_)))))
        (_g5741857564_ _$stx57415_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx57568_)
      (let* ((_g5757257614_
              (lambda (_g5757357610_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5757357610_)))
             (_g5757157753_
              (lambda (_g5757357618_)
                (if (gx#stx-pair? _g5757357618_)
                    (let ((_e5758457621_ (gx#syntax-e _g5757357618_)))
                      (let ((_hd5758357625_
                             (let ()
                               (declare (not safe))
                               (##car _e5758457621_)))
                            (_tl5758257628_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5758457621_))))
                        (if (gx#stx-pair? _tl5758257628_)
                            (let ((_e5758757631_ (gx#syntax-e _tl5758257628_)))
                              (let ((_hd5758657635_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5758757631_)))
                                    (_tl5758557638_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5758757631_))))
                                (if (gx#stx-pair? _tl5758557638_)
                                    (let ((_e5759057641_
                                           (gx#syntax-e _tl5758557638_)))
                                      (let ((_hd5758957645_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5759057641_)))
                                            (_tl5758857648_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5759057641_))))
                                        (if (gx#stx-pair? _tl5758857648_)
                                            (let ((_e5759357651_
                                                   (gx#syntax-e
                                                    _tl5758857648_)))
                                              (let ((_hd5759257655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5759357651_)))
                                                    (_tl5759157658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5759357651_))))
                                                (if (gx#stx-pair?
                                                     _tl5759157658_)
                                                    (let ((_e5759657661_
                                                           (gx#syntax-e
                                                            _tl5759157658_)))
                                                      (let ((_hd5759557665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5759657661_)))
                    (_tl5759457668_
                     (let () (declare (not safe)) (##cdr _e5759657661_))))
                (if (gx#stx-pair? _tl5759457668_)
                    (let ((_e5759957671_ (gx#syntax-e _tl5759457668_)))
                      (let ((_hd5759857675_
                             (let ()
                               (declare (not safe))
                               (##car _e5759957671_)))
                            (_tl5759757678_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5759957671_))))
                        (if (gx#stx-pair? _tl5759757678_)
                            (let ((_e5760257681_ (gx#syntax-e _tl5759757678_)))
                              (let ((_hd5760157685_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5760257681_)))
                                    (_tl5760057688_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5760257681_))))
                                (if (gx#stx-pair? _tl5760057688_)
                                    (let ((_e5760557691_
                                           (gx#syntax-e _tl5760057688_)))
                                      (let ((_hd5760457695_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5760557691_)))
                                            (_tl5760357698_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5760557691_))))
                                        (if (gx#stx-pair? _tl5760357698_)
                                            (let ((_e5760857701_
                                                   (gx#syntax-e
                                                    _tl5760357698_)))
                                              (let ((_hd5760757705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5760857701_)))
                                                    (_tl5760657708_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5760857701_))))
                                                (if (gx#stx-null?
                                                     _tl5760657708_)
                                                    ((lambda (_L57711_
                                                              _L57713_
                                                              _L57714_
                                                              _L57715_
                                                              _L57716_
                                                              _L57717_
                                                              _L57718_
                                                              _L57719_)
                                                       (let ((__tmp60455
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60239
                                                              (let ((__tmp60415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60446
                                    (let ((__tmp60454
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60447
                                           (let ((__tmp60448
                                                  (let ((__tmp60453
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60449
                                                         (let ((__tmp60451
                                                                (let ((__tmp60452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L57715_ '()))))
                          (declare (not safe))
                          (cons _L57717_ __tmp60452)))
                       (__tmp60450
                        (let () (declare (not safe)) (cons _L57718_ '()))))
                   (declare (not safe))
                   (cons __tmp60451 __tmp60450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60453
                                                          __tmp60449))))
                                             (declare (not safe))
                                             (cons __tmp60448 '()))))
                                      (declare (not safe))
                                      (cons __tmp60454 __tmp60447)))
                                   (__tmp60416
                                    (let ((__tmp60440
                                           (let ((__tmp60445
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60441
                                                  (let ((__tmp60442
                                                         (let ((__tmp60444
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60443
                        (let () (declare (not safe)) (cons _L57719_ '()))))
                   (declare (not safe))
                   (cons __tmp60444 __tmp60443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60442 '()))))
                                             (declare (not safe))
                                             (cons __tmp60445 __tmp60441)))
                                          (__tmp60417
                                           (let ((__tmp60432
                                                  (let ((__tmp60439
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60433
                                                         (let ((__tmp60434
                                                                (let ((__tmp60438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60435
                               (let ((__tmp60437 (gx#datum->syntax '#f 'size))
                                     (__tmp60436
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60437 __tmp60436))))
                          (declare (not safe))
                          (cons __tmp60438 __tmp60435))))
                   (declare (not safe))
                   (cons __tmp60434 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60439
                                                          __tmp60433)))
                                                 (__tmp60418
                                                  (let ((__tmp60419
                                                         (let ((__tmp60431
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60420
                        (let ((__tmp60421
                               (let ((__tmp60430
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60422
                                      (let ((__tmp60424
                                             (let ((__tmp60429
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60425
                                                    (let ((__tmp60428
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60426
                                                           (let ((__tmp60427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60427 '()))))
              (declare (not safe))
              (cons __tmp60428 __tmp60426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60429 __tmp60425)))
                                            (__tmp60423
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60424 __tmp60423))))
                                 (declare (not safe))
                                 (cons __tmp60430 __tmp60422))))
                          (declare (not safe))
                          (cons __tmp60421 '()))))
                   (declare (not safe))
                   (cons __tmp60431 __tmp60420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60419 '()))))
                                             (declare (not safe))
                                             (cons __tmp60432 __tmp60418))))
                                      (declare (not safe))
                                      (cons __tmp60440 __tmp60417))))
                               (declare (not safe))
                               (cons __tmp60446 __tmp60416)))
                            (__tmp60240
                             (let ((__tmp60241
                                    (let ((__tmp60414
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60242
                                           (let ((__tmp60413
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60243
                                                  (let ((__tmp60400
                                                         (let ((__tmp60409
                                                                (let ((__tmp60412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60410
                               (let ((__tmp60411
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60411 '()))))
                          (declare (not safe))
                          (cons __tmp60412 __tmp60410)))
                       (__tmp60401
                        (let ((__tmp60406
                               (let ((__tmp60408 (gx#datum->syntax '#f 'i))
                                     (__tmp60407
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60408 __tmp60407)))
                              (__tmp60402
                               (let ((__tmp60403
                                      (let ((__tmp60405
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60404
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60405 __tmp60404))))
                                 (declare (not safe))
                                 (cons __tmp60403 '()))))
                          (declare (not safe))
                          (cons __tmp60406 __tmp60402))))
                   (declare (not safe))
                   (cons __tmp60409 __tmp60401)))
                (__tmp60244
                 (let ((__tmp60245
                        (let ((__tmp60399 (gx#datum->syntax '#f 'let))
                              (__tmp60246
                               (let ((__tmp60391
                                      (let ((__tmp60398
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60392
                                             (let ((__tmp60393
                                                    (let ((__tmp60397
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60394
                                                           (let ((__tmp60395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60396 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60396 '()))))
                     (declare (not safe))
                     (cons _L57719_ __tmp60395))))
              (declare (not safe))
              (cons __tmp60397 __tmp60394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60393 '()))))
                                        (declare (not safe))
                                        (cons __tmp60398 __tmp60392)))
                                     (__tmp60247
                                      (let ((__tmp60248
                                             (let ((__tmp60390
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60249
                                                    (let ((__tmp60331
                                                           (let ((__tmp60383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60389 (gx#datum->syntax '#f 'eq?))
                                (__tmp60384
                                 (let ((__tmp60388 (gx#datum->syntax '#f 'k))
                                       (__tmp60385
                                        (let ((__tmp60386
                                               (let ((__tmp60387
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60387 '()))))
                                          (declare (not safe))
                                          (cons __tmp60386 '()))))
                                   (declare (not safe))
                                   (cons __tmp60388 __tmp60385))))
                            (declare (not safe))
                            (cons __tmp60389 __tmp60384)))
                         (__tmp60332
                          (let ((__tmp60333
                                 (let ((__tmp60382 (gx#datum->syntax '#f 'if))
                                       (__tmp60334
                                        (let ((__tmp60381
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60335
                                               (let ((__tmp60359
                                                      (let ((__tmp60380
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60360
                                                             (let ((__tmp60374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60379
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60375
                                   (let ((__tmp60376
                                          (let ((__tmp60378
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60377
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L57715_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60378 __tmp60377))))
                                     (declare (not safe))
                                     (cons _L57719_ __tmp60376))))
                              (declare (not safe))
                              (cons __tmp60379 __tmp60375)))
                           (__tmp60361
                            (let ((__tmp60364
                                   (let ((__tmp60373
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60365
                                          (let ((__tmp60366
                                                 (let ((__tmp60368
                                                        (let ((__tmp60372
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60369
                                                               (let ((__tmp60371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60370
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60371 __tmp60370))))
                  (declare (not safe))
                  (cons __tmp60372 __tmp60369)))
               (__tmp60367 (let () (declare (not safe)) (cons _L57714_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60368
                                                         __tmp60367))))
                                            (declare (not safe))
                                            (cons _L57719_ __tmp60366))))
                                     (declare (not safe))
                                     (cons __tmp60373 __tmp60365)))
                                  (__tmp60362
                                   (let ((__tmp60363
                                          (let ()
                                            (declare (not safe))
                                            (cons _L57711_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60363 '()))))
                              (declare (not safe))
                              (cons __tmp60364 __tmp60362))))
                       (declare (not safe))
                       (cons __tmp60374 __tmp60361))))
                (declare (not safe))
                (cons __tmp60380 __tmp60360)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60336
                                                      (let ((__tmp60337
                                                             (let ((__tmp60358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60338
                            (let ((__tmp60352
                                   (let ((__tmp60357
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60353
                                          (let ((__tmp60354
                                                 (let ((__tmp60356
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60355
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L57715_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60356
                                                         __tmp60355))))
                                            (declare (not safe))
                                            (cons _L57719_ __tmp60354))))
                                     (declare (not safe))
                                     (cons __tmp60357 __tmp60353)))
                                  (__tmp60339
                                   (let ((__tmp60342
                                          (let ((__tmp60351
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60343
                                                 (let ((__tmp60344
                                                        (let ((__tmp60346
                                                               (let ((__tmp60350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60347
                              (let ((__tmp60349 (gx#datum->syntax '#f 'probe))
                                    (__tmp60348
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60349 __tmp60348))))
                         (declare (not safe))
                         (cons __tmp60350 __tmp60347)))
                      (__tmp60345
                       (let () (declare (not safe)) (cons _L57714_ '()))))
                  (declare (not safe))
                  (cons __tmp60346 __tmp60345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L57719_
                                                         __tmp60344))))
                                            (declare (not safe))
                                            (cons __tmp60351 __tmp60343)))
                                         (__tmp60340
                                          (let ((__tmp60341
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L57713_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60341 '()))))
                                     (declare (not safe))
                                     (cons __tmp60342 __tmp60340))))
                              (declare (not safe))
                              (cons __tmp60352 __tmp60339))))
                       (declare (not safe))
                       (cons __tmp60358 __tmp60338))))
                (declare (not safe))
                (cons __tmp60337 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60359
                                                       __tmp60336))))
                                          (declare (not safe))
                                          (cons __tmp60381 __tmp60335))))
                                   (declare (not safe))
                                   (cons __tmp60382 __tmp60334))))
                            (declare (not safe))
                            (cons __tmp60333 '()))))
                     (declare (not safe))
                     (cons __tmp60383 __tmp60332)))
                  (__tmp60250
                   (let ((__tmp60298
                          (let ((__tmp60324
                                 (let ((__tmp60330 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60325
                                        (let ((__tmp60329
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60326
                                               (let ((__tmp60327
                                                      (let ((__tmp60328
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60328
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60327 '()))))
                                          (declare (not safe))
                                          (cons __tmp60329 __tmp60326))))
                                   (declare (not safe))
                                   (cons __tmp60330 __tmp60325)))
                                (__tmp60299
                                 (let ((__tmp60300
                                        (let ((__tmp60323
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60301
                                               (let ((__tmp60315
                                                      (let ((__tmp60322
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60316
                                                             (let ((__tmp60321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60317
                            (let ((__tmp60320 (gx#datum->syntax '#f 'i))
                                  (__tmp60318
                                   (let ((__tmp60319
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60319 '()))))
                              (declare (not safe))
                              (cons __tmp60320 __tmp60318))))
                       (declare (not safe))
                       (cons __tmp60321 __tmp60317))))
                (declare (not safe))
                (cons __tmp60322 __tmp60316)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60302
                                                      (let ((__tmp60310
                                                             (let ((__tmp60314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60311
                            (let ((__tmp60313 (gx#datum->syntax '#f 'i))
                                  (__tmp60312
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60313 __tmp60312))))
                       (declare (not safe))
                       (cons __tmp60314 __tmp60311)))
                    (__tmp60303
                     (let ((__tmp60304
                            (let ((__tmp60309 (gx#datum->syntax '#f 'or))
                                  (__tmp60305
                                   (let ((__tmp60308
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60306
                                          (let ((__tmp60307
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60307 '()))))
                                     (declare (not safe))
                                     (cons __tmp60308 __tmp60306))))
                              (declare (not safe))
                              (cons __tmp60309 __tmp60305))))
                       (declare (not safe))
                       (cons __tmp60304 '()))))
                (declare (not safe))
                (cons __tmp60310 __tmp60303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60315
                                                       __tmp60302))))
                                          (declare (not safe))
                                          (cons __tmp60323 __tmp60301))))
                                   (declare (not safe))
                                   (cons __tmp60300 '()))))
                            (declare (not safe))
                            (cons __tmp60324 __tmp60299)))
                         (__tmp60251
                          (let ((__tmp60275
                                 (let ((__tmp60294
                                        (let ((__tmp60295
                                               (let ((__tmp60296
                                                      (let ((__tmp60297
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60297
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L57715_ __tmp60296))))
                                          (declare (not safe))
                                          (cons _L57716_ __tmp60295)))
                                       (__tmp60276
                                        (let ((__tmp60288
                                               (let ((__tmp60293
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60289
                                                      (let ((__tmp60290
                                                             (let ((__tmp60292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60291
                            (let () (declare (not safe)) (cons _L57715_ '()))))
                       (declare (not safe))
                       (cons __tmp60292 __tmp60291))))
                (declare (not safe))
                (cons _L57719_ __tmp60290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60293 __tmp60289)))
                                              (__tmp60277
                                               (let ((__tmp60278
                                                      (let ((__tmp60287
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60279
                                                             (let ((__tmp60280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60282
                                   (let ((__tmp60286
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60283
                                          (let ((__tmp60285
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60284
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60285 __tmp60284))))
                                     (declare (not safe))
                                     (cons __tmp60286 __tmp60283)))
                                  (__tmp60281
                                   (let ()
                                     (declare (not safe))
                                     (cons _L57714_ '()))))
                              (declare (not safe))
                              (cons __tmp60282 __tmp60281))))
                       (declare (not safe))
                       (cons _L57719_ __tmp60280))))
                (declare (not safe))
                (cons __tmp60287 __tmp60279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60278 '()))))
                                          (declare (not safe))
                                          (cons __tmp60288 __tmp60277))))
                                   (declare (not safe))
                                   (cons __tmp60294 __tmp60276)))
                                (__tmp60252
                                 (let ((__tmp60253
                                        (let ((__tmp60274
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60254
                                               (let ((__tmp60255
                                                      (let ((__tmp60273
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60256
                                                             (let ((__tmp60265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60272
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60266
                                   (let ((__tmp60271
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60267
                                          (let ((__tmp60270
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60268
                                                 (let ((__tmp60269
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60269 '()))))
                                            (declare (not safe))
                                            (cons __tmp60270 __tmp60268))))
                                     (declare (not safe))
                                     (cons __tmp60271 __tmp60267))))
                              (declare (not safe))
                              (cons __tmp60272 __tmp60266)))
                           (__tmp60257
                            (let ((__tmp60260
                                   (let ((__tmp60264
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60261
                                          (let ((__tmp60263
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60262
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60263 __tmp60262))))
                                     (declare (not safe))
                                     (cons __tmp60264 __tmp60261)))
                                  (__tmp60258
                                   (let ((__tmp60259
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60259 '()))))
                              (declare (not safe))
                              (cons __tmp60260 __tmp60258))))
                       (declare (not safe))
                       (cons __tmp60265 __tmp60257))))
                (declare (not safe))
                (cons __tmp60273 __tmp60256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60255 '()))))
                                          (declare (not safe))
                                          (cons __tmp60274 __tmp60254))))
                                   (declare (not safe))
                                   (cons __tmp60253 '()))))
                            (declare (not safe))
                            (cons __tmp60275 __tmp60252))))
                     (declare (not safe))
                     (cons __tmp60298 __tmp60251))))
              (declare (not safe))
              (cons __tmp60331 __tmp60250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60390 __tmp60249))))
                                        (declare (not safe))
                                        (cons __tmp60248 '()))))
                                 (declare (not safe))
                                 (cons __tmp60391 __tmp60247))))
                          (declare (not safe))
                          (cons __tmp60399 __tmp60246))))
                   (declare (not safe))
                   (cons __tmp60245 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60400
                                                          __tmp60244))))
                                             (declare (not safe))
                                             (cons __tmp60413 __tmp60243))))
                                      (declare (not safe))
                                      (cons __tmp60414 __tmp60242))))
                               (declare (not safe))
                               (cons __tmp60241 '()))))
                        (declare (not safe))
                        (cons __tmp60415 __tmp60240))))
                 (declare (not safe))
                 (cons __tmp60455 __tmp60239)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5760757705_
                                                     _hd5760457695_
                                                     _hd5760157685_
                                                     _hd5759857675_
                                                     _hd5759557665_
                                                     _hd5759257655_
                                                     _hd5758957645_
                                                     _hd5758657635_)
                                                    (_g5757257614_
                                                     _g5757357618_))))
                                            (_g5757257614_ _g5757357618_))))
                                    (_g5757257614_ _g5757357618_))))
                            (_g5757257614_ _g5757357618_))))
                    (_g5757257614_ _g5757357618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5757257614_
                                                     _g5757357618_))))
                                            (_g5757257614_ _g5757357618_))))
                                    (_g5757257614_ _g5757357618_))))
                            (_g5757257614_ _g5757357618_))))
                    (_g5757257614_ _g5757357618_)))))
        (_g5757157753_ _$stx57568_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx57757_)
      (let* ((_g5776157807_
              (lambda (_g5776257803_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5776257803_)))
             (_g5776057960_
              (lambda (_g5776257811_)
                (if (gx#stx-pair? _g5776257811_)
                    (let ((_e5777457814_ (gx#syntax-e _g5776257811_)))
                      (let ((_hd5777357818_
                             (let ()
                               (declare (not safe))
                               (##car _e5777457814_)))
                            (_tl5777257821_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5777457814_))))
                        (if (gx#stx-pair? _tl5777257821_)
                            (let ((_e5777757824_ (gx#syntax-e _tl5777257821_)))
                              (let ((_hd5777657828_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5777757824_)))
                                    (_tl5777557831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5777757824_))))
                                (if (gx#stx-pair? _tl5777557831_)
                                    (let ((_e5778057834_
                                           (gx#syntax-e _tl5777557831_)))
                                      (let ((_hd5777957838_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5778057834_)))
                                            (_tl5777857841_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5778057834_))))
                                        (if (gx#stx-pair? _tl5777857841_)
                                            (let ((_e5778357844_
                                                   (gx#syntax-e
                                                    _tl5777857841_)))
                                              (let ((_hd5778257848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5778357844_)))
                                                    (_tl5778157851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5778357844_))))
                                                (if (gx#stx-pair?
                                                     _tl5778157851_)
                                                    (let ((_e5778657854_
                                                           (gx#syntax-e
                                                            _tl5778157851_)))
                                                      (let ((_hd5778557858_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5778657854_)))
                    (_tl5778457861_
                     (let () (declare (not safe)) (##cdr _e5778657854_))))
                (if (gx#stx-pair? _tl5778457861_)
                    (let ((_e5778957864_ (gx#syntax-e _tl5778457861_)))
                      (let ((_hd5778857868_
                             (let ()
                               (declare (not safe))
                               (##car _e5778957864_)))
                            (_tl5778757871_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5778957864_))))
                        (if (gx#stx-pair? _tl5778757871_)
                            (let ((_e5779257874_ (gx#syntax-e _tl5778757871_)))
                              (let ((_hd5779157878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5779257874_)))
                                    (_tl5779057881_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5779257874_))))
                                (if (gx#stx-pair? _tl5779057881_)
                                    (let ((_e5779557884_
                                           (gx#syntax-e _tl5779057881_)))
                                      (let ((_hd5779457888_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5779557884_)))
                                            (_tl5779357891_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5779557884_))))
                                        (if (gx#stx-pair? _tl5779357891_)
                                            (let ((_e5779857894_
                                                   (gx#syntax-e
                                                    _tl5779357891_)))
                                              (let ((_hd5779757898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5779857894_)))
                                                    (_tl5779657901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5779857894_))))
                                                (if (gx#stx-pair?
                                                     _tl5779657901_)
                                                    (let ((_e5780157904_
                                                           (gx#syntax-e
                                                            _tl5779657901_)))
                                                      (let ((_hd5780057908_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5780157904_)))
                    (_tl5779957911_
                     (let () (declare (not safe)) (##cdr _e5780157904_))))
                (if (gx#stx-null? _tl5779957911_)
                    ((lambda (_L57914_
                              _L57916_
                              _L57917_
                              _L57918_
                              _L57919_
                              _L57920_
                              _L57921_
                              _L57922_
                              _L57923_)
                       (let ((__tmp60687 (gx#datum->syntax '#f 'let*))
                             (__tmp60456
                              (let ((__tmp60647
                                     (let ((__tmp60678
                                            (let ((__tmp60686
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp60679
                                                   (let ((__tmp60680
                                                          (let ((__tmp60685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp60681
                         (let ((__tmp60683
                                (let ((__tmp60684
                                       (let ()
                                         (declare (not safe))
                                         (cons _L57919_ '()))))
                                  (declare (not safe))
                                  (cons _L57921_ __tmp60684)))
                               (__tmp60682
                                (let ()
                                  (declare (not safe))
                                  (cons _L57922_ '()))))
                           (declare (not safe))
                           (cons __tmp60683 __tmp60682))))
                    (declare (not safe))
                    (cons __tmp60685 __tmp60681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60680 '()))))
                                              (declare (not safe))
                                              (cons __tmp60686 __tmp60679)))
                                           (__tmp60648
                                            (let ((__tmp60672
                                                   (let ((__tmp60677
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp60673
                                                          (let ((__tmp60674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60676
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp60675
                                (let ()
                                  (declare (not safe))
                                  (cons _L57923_ '()))))
                           (declare (not safe))
                           (cons __tmp60676 __tmp60675))))
                    (declare (not safe))
                    (cons __tmp60674 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60677
                                                           __tmp60673)))
                                                  (__tmp60649
                                                   (let ((__tmp60664
                                                          (let ((__tmp60671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp60665
                         (let ((__tmp60666
                                (let ((__tmp60670
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp60667
                                       (let ((__tmp60669
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp60668
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp60669 __tmp60668))))
                                  (declare (not safe))
                                  (cons __tmp60670 __tmp60667))))
                           (declare (not safe))
                           (cons __tmp60666 '()))))
                    (declare (not safe))
                    (cons __tmp60671 __tmp60665)))
                 (__tmp60650
                  (let ((__tmp60651
                         (let ((__tmp60663 (gx#datum->syntax '#f 'start))
                               (__tmp60652
                                (let ((__tmp60653
                                       (let ((__tmp60662
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp60654
                                              (let ((__tmp60656
                                                     (let ((__tmp60661
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp60657
                                                            (let ((__tmp60660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60658
                           (let ((__tmp60659 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp60659 '()))))
                      (declare (not safe))
                      (cons __tmp60660 __tmp60658))))
               (declare (not safe))
               (cons __tmp60661 __tmp60657)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60655
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp60656 __tmp60655))))
                                         (declare (not safe))
                                         (cons __tmp60662 __tmp60654))))
                                  (declare (not safe))
                                  (cons __tmp60653 '()))))
                           (declare (not safe))
                           (cons __tmp60663 __tmp60652))))
                    (declare (not safe))
                    (cons __tmp60651 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60664
                                                           __tmp60650))))
                                              (declare (not safe))
                                              (cons __tmp60672 __tmp60649))))
                                       (declare (not safe))
                                       (cons __tmp60678 __tmp60648)))
                                    (__tmp60457
                                     (let ((__tmp60458
                                            (let ((__tmp60646
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60459
                                                   (let ((__tmp60645
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60460
                                                          (let ((__tmp60632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60641
                                (let ((__tmp60644
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp60642
                                       (let ((__tmp60643
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp60643 '()))))
                                  (declare (not safe))
                                  (cons __tmp60644 __tmp60642)))
                               (__tmp60633
                                (let ((__tmp60638
                                       (let ((__tmp60640
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp60639
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp60640 __tmp60639)))
                                      (__tmp60634
                                       (let ((__tmp60635
                                              (let ((__tmp60637
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp60636
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp60637 __tmp60636))))
                                         (declare (not safe))
                                         (cons __tmp60635 '()))))
                                  (declare (not safe))
                                  (cons __tmp60638 __tmp60634))))
                           (declare (not safe))
                           (cons __tmp60641 __tmp60633)))
                        (__tmp60461
                         (let ((__tmp60462
                                (let ((__tmp60631 (gx#datum->syntax '#f 'let))
                                      (__tmp60463
                                       (let ((__tmp60623
                                              (let ((__tmp60630
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp60624
                                                     (let ((__tmp60625
                                                            (let ((__tmp60629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp60626
                           (let ((__tmp60627
                                  (let ((__tmp60628
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp60628 '()))))
                             (declare (not safe))
                             (cons _L57923_ __tmp60627))))
                      (declare (not safe))
                      (cons __tmp60629 __tmp60626))))
               (declare (not safe))
               (cons __tmp60625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60630 __tmp60624)))
                                             (__tmp60464
                                              (let ((__tmp60465
                                                     (let ((__tmp60622
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60466
                                                            (let ((__tmp60559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60615
                                  (let ((__tmp60621
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp60616
                                         (let ((__tmp60620
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp60617
                                                (let ((__tmp60618
                                                       (let ((__tmp60619
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp60619
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60618 '()))))
                                           (declare (not safe))
                                           (cons __tmp60620 __tmp60617))))
                                    (declare (not safe))
                                    (cons __tmp60621 __tmp60616)))
                                 (__tmp60560
                                  (let ((__tmp60561
                                         (let ((__tmp60614
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60562
                                                (let ((__tmp60613
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60563
                                                       (let ((__tmp60589
                                                              (let ((__tmp60612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60590
                             (let ((__tmp60606
                                    (let ((__tmp60611
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp60607
                                           (let ((__tmp60608
                                                  (let ((__tmp60610
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp60609
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L57919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60610
                                                          __tmp60609))))
                                             (declare (not safe))
                                             (cons _L57923_ __tmp60608))))
                                      (declare (not safe))
                                      (cons __tmp60611 __tmp60607)))
                                   (__tmp60591
                                    (let ((__tmp60594
                                           (let ((__tmp60605
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60595
                                                  (let ((__tmp60596
                                                         (let ((__tmp60600
                                                                (let ((__tmp60604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp60601
                               (let ((__tmp60603
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp60602
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60603 __tmp60602))))
                          (declare (not safe))
                          (cons __tmp60604 __tmp60601)))
                       (__tmp60597
                        (let ((__tmp60598
                               (let ((__tmp60599
                                      (let ()
                                        (declare (not safe))
                                        (cons _L57917_ '()))))
                                 (declare (not safe))
                                 (cons _L57918_ __tmp60599))))
                          (declare (not safe))
                          (cons __tmp60598 '()))))
                   (declare (not safe))
                   (cons __tmp60600 __tmp60597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57923_
                                                          __tmp60596))))
                                             (declare (not safe))
                                             (cons __tmp60605 __tmp60595)))
                                          (__tmp60592
                                           (let ((__tmp60593
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57914_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60593 '()))))
                                      (declare (not safe))
                                      (cons __tmp60594 __tmp60592))))
                               (declare (not safe))
                               (cons __tmp60606 __tmp60591))))
                        (declare (not safe))
                        (cons __tmp60612 __tmp60590)))
                     (__tmp60564
                      (let ((__tmp60565
                             (let ((__tmp60588 (gx#datum->syntax '#f 'begin))
                                   (__tmp60566
                                    (let ((__tmp60582
                                           (let ((__tmp60587
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60583
                                                  (let ((__tmp60584
                                                         (let ((__tmp60586
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60585
                        (let () (declare (not safe)) (cons _L57919_ '()))))
                   (declare (not safe))
                   (cons __tmp60586 __tmp60585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57923_
                                                          __tmp60584))))
                                             (declare (not safe))
                                             (cons __tmp60587 __tmp60583)))
                                          (__tmp60567
                                           (let ((__tmp60570
                                                  (let ((__tmp60581
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60571
                                                         (let ((__tmp60572
                                                                (let ((__tmp60576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60580 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60577
                                      (let ((__tmp60579
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60578
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60579 __tmp60578))))
                                 (declare (not safe))
                                 (cons __tmp60580 __tmp60577)))
                              (__tmp60573
                               (let ((__tmp60574
                                      (let ((__tmp60575
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57917_ '()))))
                                        (declare (not safe))
                                        (cons _L57918_ __tmp60575))))
                                 (declare (not safe))
                                 (cons __tmp60574 '()))))
                          (declare (not safe))
                          (cons __tmp60576 __tmp60573))))
                   (declare (not safe))
                   (cons _L57923_ __tmp60572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60581
                                                          __tmp60571)))
                                                 (__tmp60568
                                                  (let ((__tmp60569
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L57916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60569 '()))))
                                             (declare (not safe))
                                             (cons __tmp60570 __tmp60568))))
                                      (declare (not safe))
                                      (cons __tmp60582 __tmp60567))))
                               (declare (not safe))
                               (cons __tmp60588 __tmp60566))))
                        (declare (not safe))
                        (cons __tmp60565 '()))))
                 (declare (not safe))
                 (cons __tmp60589 __tmp60564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60613
                                                        __tmp60563))))
                                           (declare (not safe))
                                           (cons __tmp60614 __tmp60562))))
                                    (declare (not safe))
                                    (cons __tmp60561 '()))))
                             (declare (not safe))
                             (cons __tmp60615 __tmp60560)))
                          (__tmp60467
                           (let ((__tmp60526
                                  (let ((__tmp60552
                                         (let ((__tmp60558
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60553
                                                (let ((__tmp60557
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60554
                                                       (let ((__tmp60555
                                                              (let ((__tmp60556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60556 '()))))
                 (declare (not safe))
                 (cons __tmp60555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60557
                                                        __tmp60554))))
                                           (declare (not safe))
                                           (cons __tmp60558 __tmp60553)))
                                        (__tmp60527
                                         (let ((__tmp60528
                                                (let ((__tmp60551
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60529
                                                       (let ((__tmp60543
                                                              (let ((__tmp60550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60544
                             (let ((__tmp60549 (gx#datum->syntax '#f 'start))
                                   (__tmp60545
                                    (let ((__tmp60548
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60546
                                           (let ((__tmp60547
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60547 '()))))
                                      (declare (not safe))
                                      (cons __tmp60548 __tmp60546))))
                               (declare (not safe))
                               (cons __tmp60549 __tmp60545))))
                        (declare (not safe))
                        (cons __tmp60550 __tmp60544)))
                     (__tmp60530
                      (let ((__tmp60538
                             (let ((__tmp60542 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60539
                                    (let ((__tmp60541
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60540
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60541 __tmp60540))))
                               (declare (not safe))
                               (cons __tmp60542 __tmp60539)))
                            (__tmp60531
                             (let ((__tmp60532
                                    (let ((__tmp60537
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60533
                                           (let ((__tmp60536
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60534
                                                  (let ((__tmp60535
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60535 '()))))
                                             (declare (not safe))
                                             (cons __tmp60536 __tmp60534))))
                                      (declare (not safe))
                                      (cons __tmp60537 __tmp60533))))
                               (declare (not safe))
                               (cons __tmp60532 '()))))
                        (declare (not safe))
                        (cons __tmp60538 __tmp60531))))
                 (declare (not safe))
                 (cons __tmp60543 __tmp60530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60551
                                                        __tmp60529))))
                                           (declare (not safe))
                                           (cons __tmp60528 '()))))
                                    (declare (not safe))
                                    (cons __tmp60552 __tmp60527)))
                                 (__tmp60468
                                  (let ((__tmp60492
                                         (let ((__tmp60522
                                                (let ((__tmp60523
                                                       (let ((__tmp60524
                                                              (let ((__tmp60525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60525 '()))))
                 (declare (not safe))
                 (cons _L57919_ __tmp60524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57920_ __tmp60523)))
                                               (__tmp60493
                                                (let ((__tmp60516
                                                       (let ((__tmp60521
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60517
                                                              (let ((__tmp60518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60520 (gx#datum->syntax '#f 'probe))
                                   (__tmp60519
                                    (let ()
                                      (declare (not safe))
                                      (cons _L57919_ '()))))
                               (declare (not safe))
                               (cons __tmp60520 __tmp60519))))
                        (declare (not safe))
                        (cons _L57923_ __tmp60518))))
                 (declare (not safe))
                 (cons __tmp60521 __tmp60517)))
              (__tmp60494
               (let ((__tmp60495
                      (let ((__tmp60515 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60496
                             (let ((__tmp60497
                                    (let ((__tmp60510
                                           (let ((__tmp60514
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60511
                                                  (let ((__tmp60513
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60512
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60513
                                                          __tmp60512))))
                                             (declare (not safe))
                                             (cons __tmp60514 __tmp60511)))
                                          (__tmp60498
                                           (let ((__tmp60499
                                                  (let ((__tmp60500
                                                         (let ((__tmp60501
                                                                (let ((__tmp60509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60502
                               (let ((__tmp60503
                                      (let ((__tmp60504
                                             (let ((__tmp60508
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60505
                                                    (let ((__tmp60507
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60506
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60507
                                                            __tmp60506))))
                                               (declare (not safe))
                                               (cons __tmp60508 __tmp60505))))
                                        (declare (not safe))
                                        (cons __tmp60504 '()))))
                                 (declare (not safe))
                                 (cons _L57923_ __tmp60503))))
                          (declare (not safe))
                          (cons __tmp60509 __tmp60502))))
                   (declare (not safe))
                   (cons __tmp60501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57918_
                                                          __tmp60500))))
                                             (declare (not safe))
                                             (cons __tmp60499 '()))))
                                      (declare (not safe))
                                      (cons __tmp60510 __tmp60498))))
                               (declare (not safe))
                               (cons _L57923_ __tmp60497))))
                        (declare (not safe))
                        (cons __tmp60515 __tmp60496))))
                 (declare (not safe))
                 (cons __tmp60495 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60516
                                                        __tmp60494))))
                                           (declare (not safe))
                                           (cons __tmp60522 __tmp60493)))
                                        (__tmp60469
                                         (let ((__tmp60470
                                                (let ((__tmp60491
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60471
                                                       (let ((__tmp60472
                                                              (let ((__tmp60490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60473
                             (let ((__tmp60482
                                    (let ((__tmp60489
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60483
                                           (let ((__tmp60488
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60484
                                                  (let ((__tmp60487
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60485
                                                         (let ((__tmp60486
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60486 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60487
                                                          __tmp60485))))
                                             (declare (not safe))
                                             (cons __tmp60488 __tmp60484))))
                                      (declare (not safe))
                                      (cons __tmp60489 __tmp60483)))
                                   (__tmp60474
                                    (let ((__tmp60477
                                           (let ((__tmp60481
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60478
                                                  (let ((__tmp60480
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60479
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60480
                                                          __tmp60479))))
                                             (declare (not safe))
                                             (cons __tmp60481 __tmp60478)))
                                          (__tmp60475
                                           (let ((__tmp60476
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60476 '()))))
                                      (declare (not safe))
                                      (cons __tmp60477 __tmp60475))))
                               (declare (not safe))
                               (cons __tmp60482 __tmp60474))))
                        (declare (not safe))
                        (cons __tmp60490 __tmp60473))))
                 (declare (not safe))
                 (cons __tmp60472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60491
                                                        __tmp60471))))
                                           (declare (not safe))
                                           (cons __tmp60470 '()))))
                                    (declare (not safe))
                                    (cons __tmp60492 __tmp60469))))
                             (declare (not safe))
                             (cons __tmp60526 __tmp60468))))
                      (declare (not safe))
                      (cons __tmp60559 __tmp60467))))
               (declare (not safe))
               (cons __tmp60622 __tmp60466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60465 '()))))
                                         (declare (not safe))
                                         (cons __tmp60623 __tmp60464))))
                                  (declare (not safe))
                                  (cons __tmp60631 __tmp60463))))
                           (declare (not safe))
                           (cons __tmp60462 '()))))
                    (declare (not safe))
                    (cons __tmp60632 __tmp60461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60645
                                                           __tmp60460))))
                                              (declare (not safe))
                                              (cons __tmp60646 __tmp60459))))
                                       (declare (not safe))
                                       (cons __tmp60458 '()))))
                                (declare (not safe))
                                (cons __tmp60647 __tmp60457))))
                         (declare (not safe))
                         (cons __tmp60687 __tmp60456)))
                     _hd5780057908_
                     _hd5779757898_
                     _hd5779457888_
                     _hd5779157878_
                     _hd5778857868_
                     _hd5778557858_
                     _hd5778257848_
                     _hd5777957838_
                     _hd5777657828_)
                    (_g5776157807_ _g5776257811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5776157807_
                                                     _g5776257811_))))
                                            (_g5776157807_ _g5776257811_))))
                                    (_g5776157807_ _g5776257811_))))
                            (_g5776157807_ _g5776257811_))))
                    (_g5776157807_ _g5776257811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5776157807_
                                                     _g5776257811_))))
                                            (_g5776157807_ _g5776257811_))))
                                    (_g5776157807_ _g5776257811_))))
                            (_g5776157807_ _g5776257811_))))
                    (_g5776157807_ _g5776257811_)))))
        (_g5776057960_ _$stx57757_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx57964_)
      (let* ((_g5796858002_
              (lambda (_g5796957998_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5796957998_)))
             (_g5796758113_
              (lambda (_g5796958006_)
                (if (gx#stx-pair? _g5796958006_)
                    (let ((_e5797858009_ (gx#syntax-e _g5796958006_)))
                      (let ((_hd5797758013_
                             (let ()
                               (declare (not safe))
                               (##car _e5797858009_)))
                            (_tl5797658016_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5797858009_))))
                        (if (gx#stx-pair? _tl5797658016_)
                            (let ((_e5798158019_ (gx#syntax-e _tl5797658016_)))
                              (let ((_hd5798058023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5798158019_)))
                                    (_tl5797958026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5798158019_))))
                                (if (gx#stx-pair? _tl5797958026_)
                                    (let ((_e5798458029_
                                           (gx#syntax-e _tl5797958026_)))
                                      (let ((_hd5798358033_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5798458029_)))
                                            (_tl5798258036_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5798458029_))))
                                        (if (gx#stx-pair? _tl5798258036_)
                                            (let ((_e5798758039_
                                                   (gx#syntax-e
                                                    _tl5798258036_)))
                                              (let ((_hd5798658043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5798758039_)))
                                                    (_tl5798558046_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5798758039_))))
                                                (if (gx#stx-pair?
                                                     _tl5798558046_)
                                                    (let ((_e5799058049_
                                                           (gx#syntax-e
                                                            _tl5798558046_)))
                                                      (let ((_hd5798958053_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5799058049_)))
                    (_tl5798858056_
                     (let () (declare (not safe)) (##cdr _e5799058049_))))
                (if (gx#stx-pair? _tl5798858056_)
                    (let ((_e5799358059_ (gx#syntax-e _tl5798858056_)))
                      (let ((_hd5799258063_
                             (let ()
                               (declare (not safe))
                               (##car _e5799358059_)))
                            (_tl5799158066_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5799358059_))))
                        (if (gx#stx-pair? _tl5799158066_)
                            (let ((_e5799658069_ (gx#syntax-e _tl5799158066_)))
                              (let ((_hd5799558073_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5799658069_)))
                                    (_tl5799458076_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5799658069_))))
                                (if (gx#stx-null? _tl5799458076_)
                                    ((lambda (_L58079_
                                              _L58081_
                                              _L58082_
                                              _L58083_
                                              _L58084_
                                              _L58085_)
                                       (let ((__tmp60849
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60688
                                              (let ((__tmp60809
                                                     (let ((__tmp60840
                                                            (let ((__tmp60848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60841
                           (let ((__tmp60842
                                  (let ((__tmp60847
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60843
                                         (let ((__tmp60845
                                                (let ((__tmp60846
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58081_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58083_ __tmp60846)))
                                               (__tmp60844
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58084_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60845 __tmp60844))))
                                    (declare (not safe))
                                    (cons __tmp60847 __tmp60843))))
                             (declare (not safe))
                             (cons __tmp60842 '()))))
                      (declare (not safe))
                      (cons __tmp60848 __tmp60841)))
                   (__tmp60810
                    (let ((__tmp60834
                           (let ((__tmp60839 (gx#datum->syntax '#f 'size))
                                 (__tmp60835
                                  (let ((__tmp60836
                                         (let ((__tmp60838
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60837
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58085_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60838 __tmp60837))))
                                    (declare (not safe))
                                    (cons __tmp60836 '()))))
                             (declare (not safe))
                             (cons __tmp60839 __tmp60835)))
                          (__tmp60811
                           (let ((__tmp60826
                                  (let ((__tmp60833
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60827
                                         (let ((__tmp60828
                                                (let ((__tmp60832
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60829
                                                       (let ((__tmp60831
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60830
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60831 __tmp60830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60832
                                                        __tmp60829))))
                                           (declare (not safe))
                                           (cons __tmp60828 '()))))
                                    (declare (not safe))
                                    (cons __tmp60833 __tmp60827)))
                                 (__tmp60812
                                  (let ((__tmp60813
                                         (let ((__tmp60825
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60814
                                                (let ((__tmp60815
                                                       (let ((__tmp60824
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60816
                                                              (let ((__tmp60818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60823
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60819
                                    (let ((__tmp60822
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60820
                                           (let ((__tmp60821
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60821 '()))))
                                      (declare (not safe))
                                      (cons __tmp60822 __tmp60820))))
                               (declare (not safe))
                               (cons __tmp60823 __tmp60819)))
                            (__tmp60817
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60818 __tmp60817))))
                 (declare (not safe))
                 (cons __tmp60824 __tmp60816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60815 '()))))
                                           (declare (not safe))
                                           (cons __tmp60825 __tmp60814))))
                                    (declare (not safe))
                                    (cons __tmp60813 '()))))
                             (declare (not safe))
                             (cons __tmp60826 __tmp60812))))
                      (declare (not safe))
                      (cons __tmp60834 __tmp60811))))
               (declare (not safe))
               (cons __tmp60840 __tmp60810)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60689
                                                     (let ((__tmp60690
                                                            (let ((__tmp60808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60691
                           (let ((__tmp60807 (gx#datum->syntax '#f 'loop))
                                 (__tmp60692
                                  (let ((__tmp60798
                                         (let ((__tmp60803
                                                (let ((__tmp60806
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60804
                                                       (let ((__tmp60805
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60805
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60806
                                                        __tmp60804)))
                                               (__tmp60799
                                                (let ((__tmp60800
                                                       (let ((__tmp60802
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60801
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60802 __tmp60801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60800 '()))))
                                           (declare (not safe))
                                           (cons __tmp60803 __tmp60799)))
                                        (__tmp60693
                                         (let ((__tmp60694
                                                (let ((__tmp60797
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60695
                                                       (let ((__tmp60789
                                                              (let ((__tmp60796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60790
                             (let ((__tmp60791
                                    (let ((__tmp60795
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60792
                                           (let ((__tmp60793
                                                  (let ((__tmp60794
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60794 '()))))
                                             (declare (not safe))
                                             (cons _L58085_ __tmp60793))))
                                      (declare (not safe))
                                      (cons __tmp60795 __tmp60792))))
                               (declare (not safe))
                               (cons __tmp60791 '()))))
                        (declare (not safe))
                        (cons __tmp60796 __tmp60790)))
                     (__tmp60696
                      (let ((__tmp60697
                             (let ((__tmp60788 (gx#datum->syntax '#f 'cond))
                                   (__tmp60698
                                    (let ((__tmp60777
                                           (let ((__tmp60781
                                                  (let ((__tmp60787
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60782
                                                         (let ((__tmp60786
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60783
                        (let ((__tmp60784
                               (let ((__tmp60785
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60785 '()))))
                          (declare (not safe))
                          (cons __tmp60784 '()))))
                   (declare (not safe))
                   (cons __tmp60786 __tmp60783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60787
                                                          __tmp60782)))
                                                 (__tmp60778
                                                  (let ((__tmp60779
                                                         (let ((__tmp60780
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp60780 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60779 '()))))
                                             (declare (not safe))
                                             (cons __tmp60781 __tmp60778)))
                                          (__tmp60699
                                           (let ((__tmp60751
                                                  (let ((__tmp60770
                                                         (let ((__tmp60776
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60771
                        (let ((__tmp60775 (gx#datum->syntax '#f 'k))
                              (__tmp60772
                               (let ((__tmp60773
                                      (let ((__tmp60774
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60774 '()))))
                                 (declare (not safe))
                                 (cons __tmp60773 '()))))
                          (declare (not safe))
                          (cons __tmp60775 __tmp60772))))
                   (declare (not safe))
                   (cons __tmp60776 __tmp60771)))
                (__tmp60752
                 (let ((__tmp60753
                        (let ((__tmp60769 (gx#datum->syntax '#f 'loop))
                              (__tmp60754
                               (let ((__tmp60761
                                      (let ((__tmp60768
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60762
                                             (let ((__tmp60767
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60763
                                                    (let ((__tmp60766
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60764
                                                           (let ((__tmp60765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60765 '()))))
              (declare (not safe))
              (cons __tmp60766 __tmp60764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60767 __tmp60763))))
                                        (declare (not safe))
                                        (cons __tmp60768 __tmp60762)))
                                     (__tmp60755
                                      (let ((__tmp60756
                                             (let ((__tmp60760
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60757
                                                    (let ((__tmp60759
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60758
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60759
                                                            __tmp60758))))
                                               (declare (not safe))
                                               (cons __tmp60760 __tmp60757))))
                                        (declare (not safe))
                                        (cons __tmp60756 '()))))
                                 (declare (not safe))
                                 (cons __tmp60761 __tmp60755))))
                          (declare (not safe))
                          (cons __tmp60769 __tmp60754))))
                   (declare (not safe))
                   (cons __tmp60753 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60770
                                                          __tmp60752)))
                                                 (__tmp60700
                                                  (let ((__tmp60722
                                                         (let ((__tmp60747
                                                                (let ((__tmp60748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60749
                                      (let ((__tmp60750
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60750 '()))))
                                 (declare (not safe))
                                 (cons _L58081_ __tmp60749))))
                          (declare (not safe))
                          (cons _L58082_ __tmp60748)))
                       (__tmp60723
                        (let ((__tmp60739
                               (let ((__tmp60746
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp60740
                                      (let ((__tmp60741
                                             (let ((__tmp60745
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp60742
                                                    (let ((__tmp60743
                                                           (let ((__tmp60744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp60744 '()))))
              (declare (not safe))
              (cons __tmp60743 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60745 __tmp60742))))
                                        (declare (not safe))
                                        (cons _L58085_ __tmp60741))))
                                 (declare (not safe))
                                 (cons __tmp60746 __tmp60740)))
                              (__tmp60724
                               (let ((__tmp60727
                                      (let ((__tmp60738
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp60728
                                             (let ((__tmp60729
                                                    (let ((__tmp60733
                                                           (let ((__tmp60737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60734
                          (let ((__tmp60736 (gx#datum->syntax '#f 'probe))
                                (__tmp60735
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60736 __tmp60735))))
                     (declare (not safe))
                     (cons __tmp60737 __tmp60734)))
                  (__tmp60730
                   (let ((__tmp60731
                          (let ((__tmp60732
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp60732 '()))))
                     (declare (not safe))
                     (cons __tmp60731 '()))))
              (declare (not safe))
              (cons __tmp60733 __tmp60730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58085_ __tmp60729))))
                                        (declare (not safe))
                                        (cons __tmp60738 __tmp60728)))
                                     (__tmp60725
                                      (let ((__tmp60726
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58079_ '()))))
                                        (declare (not safe))
                                        (cons __tmp60726 '()))))
                                 (declare (not safe))
                                 (cons __tmp60727 __tmp60725))))
                          (declare (not safe))
                          (cons __tmp60739 __tmp60724))))
                   (declare (not safe))
                   (cons __tmp60747 __tmp60723)))
                (__tmp60701
                 (let ((__tmp60702
                        (let ((__tmp60721 (gx#datum->syntax '#f 'else))
                              (__tmp60703
                               (let ((__tmp60704
                                      (let ((__tmp60720
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60705
                                             (let ((__tmp60712
                                                    (let ((__tmp60719
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60713
                                                           (let ((__tmp60718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60714
                          (let ((__tmp60717 (gx#datum->syntax '#f 'i))
                                (__tmp60715
                                 (let ((__tmp60716
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60716 '()))))
                            (declare (not safe))
                            (cons __tmp60717 __tmp60715))))
                     (declare (not safe))
                     (cons __tmp60718 __tmp60714))))
              (declare (not safe))
              (cons __tmp60719 __tmp60713)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60706
                                                    (let ((__tmp60707
                                                           (let ((__tmp60711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60708
                          (let ((__tmp60710 (gx#datum->syntax '#f 'i))
                                (__tmp60709
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60710 __tmp60709))))
                     (declare (not safe))
                     (cons __tmp60711 __tmp60708))))
              (declare (not safe))
              (cons __tmp60707 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60712 __tmp60706))))
                                        (declare (not safe))
                                        (cons __tmp60720 __tmp60705))))
                                 (declare (not safe))
                                 (cons __tmp60704 '()))))
                          (declare (not safe))
                          (cons __tmp60721 __tmp60703))))
                   (declare (not safe))
                   (cons __tmp60702 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60722
                                                          __tmp60701))))
                                             (declare (not safe))
                                             (cons __tmp60751 __tmp60700))))
                                      (declare (not safe))
                                      (cons __tmp60777 __tmp60699))))
                               (declare (not safe))
                               (cons __tmp60788 __tmp60698))))
                        (declare (not safe))
                        (cons __tmp60697 '()))))
                 (declare (not safe))
                 (cons __tmp60789 __tmp60696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60797
                                                        __tmp60695))))
                                           (declare (not safe))
                                           (cons __tmp60694 '()))))
                                    (declare (not safe))
                                    (cons __tmp60798 __tmp60693))))
                             (declare (not safe))
                             (cons __tmp60807 __tmp60692))))
                      (declare (not safe))
                      (cons __tmp60808 __tmp60691))))
               (declare (not safe))
               (cons __tmp60690 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60809 __tmp60689))))
                                         (declare (not safe))
                                         (cons __tmp60849 __tmp60688)))
                                     _hd5799558073_
                                     _hd5799258063_
                                     _hd5798958053_
                                     _hd5798658043_
                                     _hd5798358033_
                                     _hd5798058023_)
                                    (_g5796858002_ _g5796958006_))))
                            (_g5796858002_ _g5796958006_))))
                    (_g5796858002_ _g5796958006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5796858002_
                                                     _g5796958006_))))
                                            (_g5796858002_ _g5796958006_))))
                                    (_g5796858002_ _g5796958006_))))
                            (_g5796858002_ _g5796958006_))))
                    (_g5796858002_ _g5796958006_)))))
        (_g5796758113_ _$stx57964_)))))
