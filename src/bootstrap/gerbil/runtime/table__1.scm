(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57459_)
      (let* ((_g5746357477_
              (lambda (_g5746457473_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5746457473_)))
             (_g5746257519_
              (lambda (_g5746457481_)
                (if (gx#stx-pair? _g5746457481_)
                    (let ((_e5746857484_ (gx#syntax-e _g5746457481_)))
                      (let ((_hd5746757488_
                             (let ()
                               (declare (not safe))
                               (##car _e5746857484_)))
                            (_tl5746657491_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5746857484_))))
                        (if (gx#stx-pair? _tl5746657491_)
                            (let ((_e5747157494_ (gx#syntax-e _tl5746657491_)))
                              (let ((_hd5747057498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5747157494_)))
                                    (_tl5746957501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5747157494_))))
                                (if (gx#stx-null? _tl5746957501_)
                                    ((lambda (_L57504_)
                                       (let ((__tmp59675
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp59673
                                              (let ((__tmp59674
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57504_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp59674))))
                                         (declare (not safe))
                                         (cons __tmp59675 __tmp59673)))
                                     _hd5747057498_)
                                    (_g5746357477_ _g5746457481_))))
                            (_g5746357477_ _g5746457481_))))
                    (_g5746357477_ _g5746457481_)))))
        (_g5746257519_ _$stx57459_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57523_)
      (let* ((_g5752757573_
              (lambda (_g5752857569_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5752857569_)))
             (_g5752657726_
              (lambda (_g5752857577_)
                (if (gx#stx-pair? _g5752857577_)
                    (let ((_e5754057580_ (gx#syntax-e _g5752857577_)))
                      (let ((_hd5753957584_
                             (let ()
                               (declare (not safe))
                               (##car _e5754057580_)))
                            (_tl5753857587_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5754057580_))))
                        (if (gx#stx-pair? _tl5753857587_)
                            (let ((_e5754357590_ (gx#syntax-e _tl5753857587_)))
                              (let ((_hd5754257594_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5754357590_)))
                                    (_tl5754157597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5754357590_))))
                                (if (gx#stx-pair? _tl5754157597_)
                                    (let ((_e5754657600_
                                           (gx#syntax-e _tl5754157597_)))
                                      (let ((_hd5754557604_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5754657600_)))
                                            (_tl5754457607_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5754657600_))))
                                        (if (gx#stx-pair? _tl5754457607_)
                                            (let ((_e5754957610_
                                                   (gx#syntax-e
                                                    _tl5754457607_)))
                                              (let ((_hd5754857614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5754957610_)))
                                                    (_tl5754757617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5754957610_))))
                                                (if (gx#stx-pair?
                                                     _tl5754757617_)
                                                    (let ((_e5755257620_
                                                           (gx#syntax-e
                                                            _tl5754757617_)))
                                                      (let ((_hd5755157624_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5755257620_)))
                    (_tl5755057627_
                     (let () (declare (not safe)) (##cdr _e5755257620_))))
                (if (gx#stx-pair? _tl5755057627_)
                    (let ((_e5755557630_ (gx#syntax-e _tl5755057627_)))
                      (let ((_hd5755457634_
                             (let ()
                               (declare (not safe))
                               (##car _e5755557630_)))
                            (_tl5755357637_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5755557630_))))
                        (if (gx#stx-pair? _tl5755357637_)
                            (let ((_e5755857640_ (gx#syntax-e _tl5755357637_)))
                              (let ((_hd5755757644_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5755857640_)))
                                    (_tl5755657647_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5755857640_))))
                                (if (gx#stx-pair? _tl5755657647_)
                                    (let ((_e5756157650_
                                           (gx#syntax-e _tl5755657647_)))
                                      (let ((_hd5756057654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5756157650_)))
                                            (_tl5755957657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5756157650_))))
                                        (if (gx#stx-pair? _tl5755957657_)
                                            (let ((_e5756457660_
                                                   (gx#syntax-e
                                                    _tl5755957657_)))
                                              (let ((_hd5756357664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5756457660_)))
                                                    (_tl5756257667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5756457660_))))
                                                (if (gx#stx-pair?
                                                     _tl5756257667_)
                                                    (let ((_e5756757670_
                                                           (gx#syntax-e
                                                            _tl5756257667_)))
                                                      (let ((_hd5756657674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5756757670_)))
                    (_tl5756557677_
                     (let () (declare (not safe)) (##cdr _e5756757670_))))
                (if (gx#stx-null? _tl5756557677_)
                    ((lambda (_L57680_
                              _L57682_
                              _L57683_
                              _L57684_
                              _L57685_
                              _L57686_
                              _L57687_
                              _L57688_
                              _L57689_)
                       (let ((__tmp60107 (gx#datum->syntax '#f 'begin))
                             (__tmp59676
                              (let ((__tmp60086
                                     (let ((__tmp60106
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60087
                                            (let ((__tmp60097
                                                   (let ((__tmp60098
                                                          (let ((__tmp60103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60105 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60104
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60105 __tmp60104)))
                        (__tmp60099
                         (let ((__tmp60100
                                (let ((__tmp60102 (gx#datum->syntax '#f 'seed))
                                      (__tmp60101
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60102 __tmp60101))))
                           (declare (not safe))
                           (cons __tmp60100 '()))))
                    (declare (not safe))
                    (cons __tmp60103 __tmp60099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57689_
                                                           __tmp60098)))
                                                  (__tmp60088
                                                   (let ((__tmp60089
                                                          (let ((__tmp60096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60090
                         (let ((__tmp60095 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60091
                                (let ((__tmp60092
                                       (let ((__tmp60093
                                              (let ((__tmp60094
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60094 '()))))
                                         (declare (not safe))
                                         (cons _L57680_ __tmp60093))))
                                  (declare (not safe))
                                  (cons _L57682_ __tmp60092))))
                           (declare (not safe))
                           (cons __tmp60095 __tmp60091))))
                    (declare (not safe))
                    (cons __tmp60096 __tmp60090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60089 '()))))
                                              (declare (not safe))
                                              (cons __tmp60097 __tmp60088))))
                                       (declare (not safe))
                                       (cons __tmp60106 __tmp60087)))
                                    (__tmp59677
                                     (let ((__tmp60043
                                            (let ((__tmp60085
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60044
                                                   (let ((__tmp60078
                                                          (let ((__tmp60079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60084 (gx#datum->syntax '#f 'tab))
                               (__tmp60080
                                (let ((__tmp60083 (gx#datum->syntax '#f 'key))
                                      (__tmp60081
                                       (let ((__tmp60082
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60082 '()))))
                                  (declare (not safe))
                                  (cons __tmp60083 __tmp60081))))
                           (declare (not safe))
                           (cons __tmp60084 __tmp60080))))
                    (declare (not safe))
                    (cons _L57688_ __tmp60079)))
                 (__tmp60045
                  (let ((__tmp60046
                         (let ((__tmp60077 (gx#datum->syntax '#f 'let))
                               (__tmp60047
                                (let ((__tmp60061
                                       (let ((__tmp60070
                                              (let ((__tmp60076
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60071
                                                     (let ((__tmp60072
                                                            (let ((__tmp60075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60073
                           (let ((__tmp60074 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60074 '()))))
                      (declare (not safe))
                      (cons __tmp60075 __tmp60073))))
               (declare (not safe))
               (cons __tmp60072 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60076 __tmp60071)))
                                             (__tmp60062
                                              (let ((__tmp60063
                                                     (let ((__tmp60069
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60064
                                                            (let ((__tmp60065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60068
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60066
                                  (let ((__tmp60067
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60067 '()))))
                             (declare (not safe))
                             (cons __tmp60068 __tmp60066))))
                      (declare (not safe))
                      (cons __tmp60065 '()))))
               (declare (not safe))
               (cons __tmp60069 __tmp60064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60063 '()))))
                                         (declare (not safe))
                                         (cons __tmp60070 __tmp60062)))
                                      (__tmp60048
                                       (let ((__tmp60049
                                              (let ((__tmp60060
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60050
                                                     (let ((__tmp60059
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60051
                                                            (let ((__tmp60058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60052
                           (let ((__tmp60053
                                  (let ((__tmp60054
                                         (let ((__tmp60057
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60055
                                                (let ((__tmp60056
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60056 '()))))
                                           (declare (not safe))
                                           (cons __tmp60057 __tmp60055))))
                                    (declare (not safe))
                                    (cons _L57680_ __tmp60054))))
                             (declare (not safe))
                             (cons _L57682_ __tmp60053))))
                      (declare (not safe))
                      (cons __tmp60058 __tmp60052))))
               (declare (not safe))
               (cons __tmp60059 __tmp60051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60060 __tmp60050))))
                                         (declare (not safe))
                                         (cons __tmp60049 '()))))
                                  (declare (not safe))
                                  (cons __tmp60061 __tmp60048))))
                           (declare (not safe))
                           (cons __tmp60077 __tmp60047))))
                    (declare (not safe))
                    (cons __tmp60046 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60078
                                                           __tmp60045))))
                                              (declare (not safe))
                                              (cons __tmp60085 __tmp60044)))
                                           (__tmp59678
                                            (let ((__tmp59997
                                                   (let ((__tmp60042
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp59998
                                                          (let ((__tmp60035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60036
                                (let ((__tmp60041 (gx#datum->syntax '#f 'tab))
                                      (__tmp60037
                                       (let ((__tmp60040
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60038
                                              (let ((__tmp60039
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60039 '()))))
                                         (declare (not safe))
                                         (cons __tmp60040 __tmp60038))))
                                  (declare (not safe))
                                  (cons __tmp60041 __tmp60037))))
                           (declare (not safe))
                           (cons _L57687_ __tmp60036)))
                        (__tmp59999
                         (let ((__tmp60008
                                (let ((__tmp60034 (gx#datum->syntax '#f 'when))
                                      (__tmp60009
                                       (let ((__tmp60015
                                              (let ((__tmp60033
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60016
                                                     (let ((__tmp60029
                                                            (let ((__tmp60032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60030
                           (let ((__tmp60031 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60031 '()))))
                      (declare (not safe))
                      (cons __tmp60032 __tmp60030)))
                   (__tmp60017
                    (let ((__tmp60018
                           (let ((__tmp60028
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60019
                                  (let ((__tmp60021
                                         (let ((__tmp60027
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60022
                                                (let ((__tmp60023
                                                       (let ((__tmp60026
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60024
                                                              (let ((__tmp60025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60025 '()))))
                 (declare (not safe))
                 (cons __tmp60026 __tmp60024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60023 '()))))
                                           (declare (not safe))
                                           (cons __tmp60027 __tmp60022)))
                                        (__tmp60020
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60021 __tmp60020))))
                             (declare (not safe))
                             (cons __tmp60028 __tmp60019))))
                      (declare (not safe))
                      (cons __tmp60018 '()))))
               (declare (not safe))
               (cons __tmp60029 __tmp60017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60033 __tmp60016)))
                                             (__tmp60010
                                              (let ((__tmp60011
                                                     (let ((__tmp60014
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60012
                                                            (let ((__tmp60013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60013 '()))))
               (declare (not safe))
               (cons __tmp60014 __tmp60012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60011 '()))))
                                         (declare (not safe))
                                         (cons __tmp60015 __tmp60010))))
                                  (declare (not safe))
                                  (cons __tmp60034 __tmp60009)))
                               (__tmp60000
                                (let ((__tmp60001
                                       (let ((__tmp60002
                                              (let ((__tmp60007
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60003
                                                     (let ((__tmp60006
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60004
                                                            (let ((__tmp60005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60005 '()))))
               (declare (not safe))
               (cons __tmp60006 __tmp60004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60007 __tmp60003))))
                                         (declare (not safe))
                                         (cons _L57686_ __tmp60002))))
                                  (declare (not safe))
                                  (cons __tmp60001 '()))))
                           (declare (not safe))
                           (cons __tmp60008 __tmp60000))))
                    (declare (not safe))
                    (cons __tmp60035 __tmp59999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60042
                                                           __tmp59998)))
                                                  (__tmp59679
                                                   (let ((__tmp59895
                                                          (let ((__tmp59996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp59896
                         (let ((__tmp59989
                                (let ((__tmp59990
                                       (let ((__tmp59995
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp59991
                                              (let ((__tmp59994
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp59992
                                                     (let ((__tmp59993
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp59993 '()))))
                                                (declare (not safe))
                                                (cons __tmp59994 __tmp59992))))
                                         (declare (not safe))
                                         (cons __tmp59995 __tmp59991))))
                                  (declare (not safe))
                                  (cons _L57686_ __tmp59990)))
                               (__tmp59897
                                (let ((__tmp59898
                                       (let ((__tmp59988
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp59899
                                              (let ((__tmp59972
                                                     (let ((__tmp59981
                                                            (let ((__tmp59987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp59982
                           (let ((__tmp59983
                                  (let ((__tmp59986
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp59984
                                         (let ((__tmp59985
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59985 '()))))
                                    (declare (not safe))
                                    (cons __tmp59986 __tmp59984))))
                             (declare (not safe))
                             (cons __tmp59983 '()))))
                      (declare (not safe))
                      (cons __tmp59987 __tmp59982)))
                   (__tmp59973
                    (let ((__tmp59974
                           (let ((__tmp59980 (gx#datum->syntax '#f 'seed))
                                 (__tmp59975
                                  (let ((__tmp59976
                                         (let ((__tmp59979
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp59977
                                                (let ((__tmp59978
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp59978 '()))))
                                           (declare (not safe))
                                           (cons __tmp59979 __tmp59977))))
                                    (declare (not safe))
                                    (cons __tmp59976 '()))))
                             (declare (not safe))
                             (cons __tmp59980 __tmp59975))))
                      (declare (not safe))
                      (cons __tmp59974 '()))))
               (declare (not safe))
               (cons __tmp59981 __tmp59973)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59900
                                                     (let ((__tmp59901
                                                            (let ((__tmp59971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp59902
                           (let ((__tmp59970 (gx#datum->syntax '#f 'table))
                                 (__tmp59903
                                  (let ((__tmp59969
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp59904
                                         (let ((__tmp59905
                                                (let ((__tmp59906
                                                       (let ((__tmp59968
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp59907
                                                              (let ((__tmp59967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp59908
                             (let ((__tmp59930
                                    (let ((__tmp59966
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp59931
                                           (let ((__tmp59932
                                                  (let ((__tmp59950
                                                         (let ((__tmp59965
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp59951
                        (let ((__tmp59961
                               (let ((__tmp59964
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp59962
                                      (let ((__tmp59963
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp59963 '()))))
                                 (declare (not safe))
                                 (cons __tmp59964 __tmp59962)))
                              (__tmp59952
                               (let ((__tmp59953
                                      (let ((__tmp59960
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp59954
                                             (let ((__tmp59956
                                                    (let ((__tmp59959
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59957
                                                           (let ((__tmp59958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59958 '()))))
              (declare (not safe))
              (cons __tmp59959 __tmp59957)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59955
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp59956 __tmp59955))))
                                        (declare (not safe))
                                        (cons __tmp59960 __tmp59954))))
                                 (declare (not safe))
                                 (cons __tmp59953 '()))))
                          (declare (not safe))
                          (cons __tmp59961 __tmp59952))))
                   (declare (not safe))
                   (cons __tmp59965 __tmp59951)))
                (__tmp59933
                 (let ((__tmp59934
                        (let ((__tmp59949 (gx#datum->syntax '#f 'set!))
                              (__tmp59935
                               (let ((__tmp59945
                                      (let ((__tmp59948
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59946
                                             (let ((__tmp59947
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59947 '()))))
                                        (declare (not safe))
                                        (cons __tmp59948 __tmp59946)))
                                     (__tmp59936
                                      (let ((__tmp59937
                                             (let ((__tmp59944
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59938
                                                    (let ((__tmp59940
                                                           (let ((__tmp59943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59941
                          (let ((__tmp59942 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59942 '()))))
                     (declare (not safe))
                     (cons __tmp59943 __tmp59941)))
                  (__tmp59939 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59940 __tmp59939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59944 __tmp59938))))
                                        (declare (not safe))
                                        (cons __tmp59937 '()))))
                                 (declare (not safe))
                                 (cons __tmp59945 __tmp59936))))
                          (declare (not safe))
                          (cons __tmp59949 __tmp59935))))
                   (declare (not safe))
                   (cons __tmp59934 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59950
                                                          __tmp59933))))
                                             (declare (not safe))
                                             (cons '() __tmp59932))))
                                      (declare (not safe))
                                      (cons __tmp59966 __tmp59931)))
                                   (__tmp59909
                                    (let ((__tmp59910
                                           (let ((__tmp59929
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp59911
                                                  (let ((__tmp59912
                                                         (let ((__tmp59913
                                                                (let ((__tmp59928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp59914
                               (let ((__tmp59924
                                      (let ((__tmp59927
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59925
                                             (let ((__tmp59926
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59926 '()))))
                                        (declare (not safe))
                                        (cons __tmp59927 __tmp59925)))
                                     (__tmp59915
                                      (let ((__tmp59916
                                             (let ((__tmp59923
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59917
                                                    (let ((__tmp59919
                                                           (let ((__tmp59922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59920
                          (let ((__tmp59921 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59921 '()))))
                     (declare (not safe))
                     (cons __tmp59922 __tmp59920)))
                  (__tmp59918 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59919 __tmp59918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59923 __tmp59917))))
                                        (declare (not safe))
                                        (cons __tmp59916 '()))))
                                 (declare (not safe))
                                 (cons __tmp59924 __tmp59915))))
                          (declare (not safe))
                          (cons __tmp59928 __tmp59914))))
                   (declare (not safe))
                   (cons __tmp59913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp59912))))
                                             (declare (not safe))
                                             (cons __tmp59929 __tmp59911))))
                                      (declare (not safe))
                                      (cons __tmp59910 '()))))
                               (declare (not safe))
                               (cons __tmp59930 __tmp59909))))
                        (declare (not safe))
                        (cons __tmp59967 __tmp59908))))
                 (declare (not safe))
                 (cons __tmp59968 __tmp59907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57680_ __tmp59906))))
                                           (declare (not safe))
                                           (cons _L57682_ __tmp59905))))
                                    (declare (not safe))
                                    (cons __tmp59969 __tmp59904))))
                             (declare (not safe))
                             (cons __tmp59970 __tmp59903))))
                      (declare (not safe))
                      (cons __tmp59971 __tmp59902))))
               (declare (not safe))
               (cons __tmp59901 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59972 __tmp59900))))
                                         (declare (not safe))
                                         (cons __tmp59988 __tmp59899))))
                                  (declare (not safe))
                                  (cons __tmp59898 '()))))
                           (declare (not safe))
                           (cons __tmp59989 __tmp59897))))
                    (declare (not safe))
                    (cons __tmp59996 __tmp59896)))
                 (__tmp59680
                  (let ((__tmp59847
                         (let ((__tmp59894 (gx#datum->syntax '#f 'def))
                               (__tmp59848
                                (let ((__tmp59886
                                       (let ((__tmp59887
                                              (let ((__tmp59893
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59888
                                                     (let ((__tmp59892
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59889
                                                            (let ((__tmp59890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59891 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp59891 '()))))
                      (declare (not safe))
                      (cons _L57685_ __tmp59890))))
               (declare (not safe))
               (cons __tmp59892 __tmp59889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59893 __tmp59888))))
                                         (declare (not safe))
                                         (cons _L57685_ __tmp59887)))
                                      (__tmp59849
                                       (let ((__tmp59859
                                              (let ((__tmp59885
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp59860
                                                     (let ((__tmp59866
                                                            (let ((__tmp59884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp59867
                           (let ((__tmp59880
                                  (let ((__tmp59883
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp59881
                                         (let ((__tmp59882
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59882 '()))))
                                    (declare (not safe))
                                    (cons __tmp59883 __tmp59881)))
                                 (__tmp59868
                                  (let ((__tmp59869
                                         (let ((__tmp59879
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp59870
                                                (let ((__tmp59872
                                                       (let ((__tmp59878
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp59873
                                                              (let ((__tmp59874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59877
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp59875
                                    (let ((__tmp59876
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp59876 '()))))
                               (declare (not safe))
                               (cons __tmp59877 __tmp59875))))
                        (declare (not safe))
                        (cons __tmp59874 '()))))
                 (declare (not safe))
                 (cons __tmp59878 __tmp59873)))
              (__tmp59871 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59872
                                                        __tmp59871))))
                                           (declare (not safe))
                                           (cons __tmp59879 __tmp59870))))
                                    (declare (not safe))
                                    (cons __tmp59869 '()))))
                             (declare (not safe))
                             (cons __tmp59880 __tmp59868))))
                      (declare (not safe))
                      (cons __tmp59884 __tmp59867)))
                   (__tmp59861
                    (let ((__tmp59862
                           (let ((__tmp59865
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp59863
                                  (let ((__tmp59864
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59864 '()))))
                             (declare (not safe))
                             (cons __tmp59865 __tmp59863))))
                      (declare (not safe))
                      (cons __tmp59862 '()))))
               (declare (not safe))
               (cons __tmp59866 __tmp59861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59885 __tmp59860)))
                                             (__tmp59850
                                              (let ((__tmp59851
                                                     (let ((__tmp59852
                                                            (let ((__tmp59858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59853
                           (let ((__tmp59857 (gx#datum->syntax '#f 'key))
                                 (__tmp59854
                                  (let ((__tmp59855
                                         (let ((__tmp59856
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp59856 '()))))
                                    (declare (not safe))
                                    (cons _L57685_ __tmp59855))))
                             (declare (not safe))
                             (cons __tmp59857 __tmp59854))))
                      (declare (not safe))
                      (cons __tmp59858 __tmp59853))))
               (declare (not safe))
               (cons _L57684_ __tmp59852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59851 '()))))
                                         (declare (not safe))
                                         (cons __tmp59859 __tmp59850))))
                                  (declare (not safe))
                                  (cons __tmp59886 __tmp59849))))
                           (declare (not safe))
                           (cons __tmp59894 __tmp59848)))
                        (__tmp59681
                         (let ((__tmp59743
                                (let ((__tmp59846 (gx#datum->syntax '#f 'def))
                                      (__tmp59744
                                       (let ((__tmp59838
                                              (let ((__tmp59839
                                                     (let ((__tmp59845
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp59840
                                                            (let ((__tmp59844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp59841
                           (let ((__tmp59842
                                  (let ((__tmp59843
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp59843 '()))))
                             (declare (not safe))
                             (cons _L57685_ __tmp59842))))
                      (declare (not safe))
                      (cons __tmp59844 __tmp59841))))
               (declare (not safe))
               (cons __tmp59845 __tmp59840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57684_ __tmp59839)))
                                             (__tmp59745
                                              (let ((__tmp59746
                                                     (let ((__tmp59837
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp59747
                                                            (let ((__tmp59821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59830
                                  (let ((__tmp59836
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp59831
                                         (let ((__tmp59832
                                                (let ((__tmp59835
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp59833
                                                       (let ((__tmp59834
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp59834
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp59835
                                                        __tmp59833))))
                                           (declare (not safe))
                                           (cons __tmp59832 '()))))
                                    (declare (not safe))
                                    (cons __tmp59836 __tmp59831)))
                                 (__tmp59822
                                  (let ((__tmp59823
                                         (let ((__tmp59829
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp59824
                                                (let ((__tmp59825
                                                       (let ((__tmp59828
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp59826
                                                              (let ((__tmp59827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59827 '()))))
                 (declare (not safe))
                 (cons __tmp59828 __tmp59826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59825 '()))))
                                           (declare (not safe))
                                           (cons __tmp59829 __tmp59824))))
                                    (declare (not safe))
                                    (cons __tmp59823 '()))))
                             (declare (not safe))
                             (cons __tmp59830 __tmp59822)))
                          (__tmp59748
                           (let ((__tmp59749
                                  (let ((__tmp59820
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp59750
                                         (let ((__tmp59819
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59751
                                                (let ((__tmp59818
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59752
                                                       (let ((__tmp59753
                                                              (let ((__tmp59754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59817 (gx#datum->syntax '#f 'key))
                                   (__tmp59755
                                    (let ((__tmp59756
                                           (let ((__tmp59816
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp59757
                                                  (let ((__tmp59779
                                                         (let ((__tmp59815
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp59780
                        (let ((__tmp59781
                               (let ((__tmp59799
                                      (let ((__tmp59814
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp59800
                                             (let ((__tmp59810
                                                    (let ((__tmp59813
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59811
                                                           (let ((__tmp59812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59812 '()))))
              (declare (not safe))
              (cons __tmp59813 __tmp59811)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59801
                                                    (let ((__tmp59802
                                                           (let ((__tmp59809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp59803
                          (let ((__tmp59805
                                 (let ((__tmp59808
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp59806
                                        (let ((__tmp59807
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp59807 '()))))
                                   (declare (not safe))
                                   (cons __tmp59808 __tmp59806)))
                                (__tmp59804
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59805 __tmp59804))))
                     (declare (not safe))
                     (cons __tmp59809 __tmp59803))))
              (declare (not safe))
              (cons __tmp59802 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59810 __tmp59801))))
                                        (declare (not safe))
                                        (cons __tmp59814 __tmp59800)))
                                     (__tmp59782
                                      (let ((__tmp59783
                                             (let ((__tmp59798
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59784
                                                    (let ((__tmp59794
                                                           (let ((__tmp59797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59795
                          (let ((__tmp59796 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59796 '()))))
                     (declare (not safe))
                     (cons __tmp59797 __tmp59795)))
                  (__tmp59785
                   (let ((__tmp59786
                          (let ((__tmp59793 (gx#datum->syntax '#f 'fx+))
                                (__tmp59787
                                 (let ((__tmp59789
                                        (let ((__tmp59792
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59790
                                               (let ((__tmp59791
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59791 '()))))
                                          (declare (not safe))
                                          (cons __tmp59792 __tmp59790)))
                                       (__tmp59788
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59789 __tmp59788))))
                            (declare (not safe))
                            (cons __tmp59793 __tmp59787))))
                     (declare (not safe))
                     (cons __tmp59786 '()))))
              (declare (not safe))
              (cons __tmp59794 __tmp59785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59798 __tmp59784))))
                                        (declare (not safe))
                                        (cons __tmp59783 '()))))
                                 (declare (not safe))
                                 (cons __tmp59799 __tmp59782))))
                          (declare (not safe))
                          (cons '() __tmp59781))))
                   (declare (not safe))
                   (cons __tmp59815 __tmp59780)))
                (__tmp59758
                 (let ((__tmp59759
                        (let ((__tmp59778 (gx#datum->syntax '#f 'lambda))
                              (__tmp59760
                               (let ((__tmp59761
                                      (let ((__tmp59762
                                             (let ((__tmp59777
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59763
                                                    (let ((__tmp59773
                                                           (let ((__tmp59776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59774
                          (let ((__tmp59775 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59775 '()))))
                     (declare (not safe))
                     (cons __tmp59776 __tmp59774)))
                  (__tmp59764
                   (let ((__tmp59765
                          (let ((__tmp59772 (gx#datum->syntax '#f 'fx+))
                                (__tmp59766
                                 (let ((__tmp59768
                                        (let ((__tmp59771
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59769
                                               (let ((__tmp59770
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59770 '()))))
                                          (declare (not safe))
                                          (cons __tmp59771 __tmp59769)))
                                       (__tmp59767
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59768 __tmp59767))))
                            (declare (not safe))
                            (cons __tmp59772 __tmp59766))))
                     (declare (not safe))
                     (cons __tmp59765 '()))))
              (declare (not safe))
              (cons __tmp59773 __tmp59764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59777 __tmp59763))))
                                        (declare (not safe))
                                        (cons __tmp59762 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp59761))))
                          (declare (not safe))
                          (cons __tmp59778 __tmp59760))))
                   (declare (not safe))
                   (cons __tmp59759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59779
                                                          __tmp59758))))
                                             (declare (not safe))
                                             (cons __tmp59816 __tmp59757))))
                                      (declare (not safe))
                                      (cons _L57685_ __tmp59756))))
                               (declare (not safe))
                               (cons __tmp59817 __tmp59755))))
                        (declare (not safe))
                        (cons _L57680_ __tmp59754))))
                 (declare (not safe))
                 (cons _L57682_ __tmp59753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59818
                                                        __tmp59752))))
                                           (declare (not safe))
                                           (cons __tmp59819 __tmp59751))))
                                    (declare (not safe))
                                    (cons __tmp59820 __tmp59750))))
                             (declare (not safe))
                             (cons __tmp59749 '()))))
                      (declare (not safe))
                      (cons __tmp59821 __tmp59748))))
               (declare (not safe))
               (cons __tmp59837 __tmp59747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59746 '()))))
                                         (declare (not safe))
                                         (cons __tmp59838 __tmp59745))))
                                  (declare (not safe))
                                  (cons __tmp59846 __tmp59744)))
                               (__tmp59682
                                (let ((__tmp59683
                                       (let ((__tmp59742
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp59684
                                              (let ((__tmp59737
                                                     (let ((__tmp59738
                                                            (let ((__tmp59741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59739
                           (let ((__tmp59740 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp59740 '()))))
                      (declare (not safe))
                      (cons __tmp59741 __tmp59739))))
               (declare (not safe))
               (cons _L57683_ __tmp59738)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59685
                                                     (let ((__tmp59686
                                                            (let ((__tmp59736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59687
                           (let ((__tmp59720
                                  (let ((__tmp59729
                                         (let ((__tmp59735
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59730
                                                (let ((__tmp59731
                                                       (let ((__tmp59734
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59732
                                                              (let ((__tmp59733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59733 '()))))
                 (declare (not safe))
                 (cons __tmp59734 __tmp59732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59731 '()))))
                                           (declare (not safe))
                                           (cons __tmp59735 __tmp59730)))
                                        (__tmp59721
                                         (let ((__tmp59722
                                                (let ((__tmp59728
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59723
                                                       (let ((__tmp59724
                                                              (let ((__tmp59727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp59725
                             (let ((__tmp59726 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp59726 '()))))
                        (declare (not safe))
                        (cons __tmp59727 __tmp59725))))
                 (declare (not safe))
                 (cons __tmp59724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59728
                                                        __tmp59723))))
                                           (declare (not safe))
                                           (cons __tmp59722 '()))))
                                    (declare (not safe))
                                    (cons __tmp59729 __tmp59721)))
                                 (__tmp59688
                                  (let ((__tmp59689
                                         (let ((__tmp59719
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp59690
                                                (let ((__tmp59718
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp59691
                                                       (let ((__tmp59717
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp59692
                                                              (let ((__tmp59693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59694
                                    (let ((__tmp59716
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp59695
                                           (let ((__tmp59696
                                                  (let ((__tmp59715
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp59697
                                                         (let ((__tmp59698
                                                                (let ((__tmp59699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59714 (gx#datum->syntax '#f 'set!))
                                     (__tmp59700
                                      (let ((__tmp59710
                                             (let ((__tmp59713
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp59711
                                                    (let ((__tmp59712
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp59712 '()))))
                                               (declare (not safe))
                                               (cons __tmp59713 __tmp59711)))
                                            (__tmp59701
                                             (let ((__tmp59702
                                                    (let ((__tmp59709
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp59703
                                                           (let ((__tmp59705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp59708
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp59706
                                 (let ((__tmp59707
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp59707 '()))))
                            (declare (not safe))
                            (cons __tmp59708 __tmp59706)))
                         (__tmp59704
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59705 __tmp59704))))
              (declare (not safe))
              (cons __tmp59709 __tmp59703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59702 '()))))
                                        (declare (not safe))
                                        (cons __tmp59710 __tmp59701))))
                                 (declare (not safe))
                                 (cons __tmp59714 __tmp59700))))
                          (declare (not safe))
                          (cons __tmp59699 '()))))
                   (declare (not safe))
                   (cons '() __tmp59698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59715
                                                          __tmp59697))))
                                             (declare (not safe))
                                             (cons __tmp59696 '()))))
                                      (declare (not safe))
                                      (cons __tmp59716 __tmp59695))))
                               (declare (not safe))
                               (cons _L57680_ __tmp59694))))
                        (declare (not safe))
                        (cons _L57682_ __tmp59693))))
                 (declare (not safe))
                 (cons __tmp59717 __tmp59692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59718
                                                        __tmp59691))))
                                           (declare (not safe))
                                           (cons __tmp59719 __tmp59690))))
                                    (declare (not safe))
                                    (cons __tmp59689 '()))))
                             (declare (not safe))
                             (cons __tmp59720 __tmp59688))))
                      (declare (not safe))
                      (cons __tmp59736 __tmp59687))))
               (declare (not safe))
               (cons __tmp59686 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59737 __tmp59685))))
                                         (declare (not safe))
                                         (cons __tmp59742 __tmp59684))))
                                  (declare (not safe))
                                  (cons __tmp59683 '()))))
                           (declare (not safe))
                           (cons __tmp59743 __tmp59682))))
                    (declare (not safe))
                    (cons __tmp59847 __tmp59681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59895
                                                           __tmp59680))))
                                              (declare (not safe))
                                              (cons __tmp59997 __tmp59679))))
                                       (declare (not safe))
                                       (cons __tmp60043 __tmp59678))))
                                (declare (not safe))
                                (cons __tmp60086 __tmp59677))))
                         (declare (not safe))
                         (cons __tmp60107 __tmp59676)))
                     _hd5756657674_
                     _hd5756357664_
                     _hd5756057654_
                     _hd5755757644_
                     _hd5755457634_
                     _hd5755157624_
                     _hd5754857614_
                     _hd5754557604_
                     _hd5754257594_)
                    (_g5752757573_ _g5752857577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5752757573_
                                                     _g5752857577_))))
                                            (_g5752757573_ _g5752857577_))))
                                    (_g5752757573_ _g5752857577_))))
                            (_g5752757573_ _g5752857577_))))
                    (_g5752757573_ _g5752857577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5752757573_
                                                     _g5752857577_))))
                                            (_g5752757573_ _g5752857577_))))
                                    (_g5752757573_ _g5752857577_))))
                            (_g5752757573_ _g5752857577_))))
                    (_g5752757573_ _g5752857577_)))))
        (_g5752657726_ _$stx57523_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx57730_)
      (let* ((_g5773457756_
              (lambda (_g5773557752_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5773557752_)))
             (_g5773357825_
              (lambda (_g5773557760_)
                (if (gx#stx-pair? _g5773557760_)
                    (let ((_e5774157763_ (gx#syntax-e _g5773557760_)))
                      (let ((_hd5774057767_
                             (let ()
                               (declare (not safe))
                               (##car _e5774157763_)))
                            (_tl5773957770_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5774157763_))))
                        (if (gx#stx-pair? _tl5773957770_)
                            (let ((_e5774457773_ (gx#syntax-e _tl5773957770_)))
                              (let ((_hd5774357777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5774457773_)))
                                    (_tl5774257780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5774457773_))))
                                (if (gx#stx-pair? _tl5774257780_)
                                    (let ((_e5774757783_
                                           (gx#syntax-e _tl5774257780_)))
                                      (let ((_hd5774657787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5774757783_)))
                                            (_tl5774557790_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5774757783_))))
                                        (if (gx#stx-pair? _tl5774557790_)
                                            (let ((_e5775057793_
                                                   (gx#syntax-e
                                                    _tl5774557790_)))
                                              (let ((_hd5774957797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5775057793_)))
                                                    (_tl5774857800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5775057793_))))
                                                (if (gx#stx-null?
                                                     _tl5774857800_)
                                                    ((lambda (_L57803_
                                                              _L57805_
                                                              _L57806_)
                                                       (let ((__tmp60127
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60108
                                                              (let ((__tmp60115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60126
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60116
                                    (let ((__tmp60117
                                           (let ((__tmp60125
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60118
                                                  (let ((__tmp60119
                                                         (let ((__tmp60120
                                                                (let ((__tmp60121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60124 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60122
                                      (let ((__tmp60123
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57805_ '()))))
                                        (declare (not safe))
                                        (cons _L57805_ __tmp60123))))
                                 (declare (not safe))
                                 (cons __tmp60124 __tmp60122))))
                          (declare (not safe))
                          (cons __tmp60121 '()))))
                   (declare (not safe))
                   (cons _L57805_ __tmp60120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57806_
                                                          __tmp60119))))
                                             (declare (not safe))
                                             (cons __tmp60125 __tmp60118))))
                                      (declare (not safe))
                                      (cons __tmp60117 '()))))
                               (declare (not safe))
                               (cons __tmp60126 __tmp60116)))
                            (__tmp60109
                             (let ((__tmp60110
                                    (let ((__tmp60114
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60111
                                           (let ((__tmp60113
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60112
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57803_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60113 __tmp60112))))
                                      (declare (not safe))
                                      (cons __tmp60114 __tmp60111))))
                               (declare (not safe))
                               (cons __tmp60110 '()))))
                        (declare (not safe))
                        (cons __tmp60115 __tmp60109))))
                 (declare (not safe))
                 (cons __tmp60127 __tmp60108)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5774957797_
                                                     _hd5774657787_
                                                     _hd5774357777_)
                                                    (_g5773457756_
                                                     _g5773557760_))))
                                            (_g5773457756_ _g5773557760_))))
                                    (_g5773457756_ _g5773557760_))))
                            (_g5773457756_ _g5773557760_))))
                    (_g5773457756_ _g5773557760_)))))
        (_g5773357825_ _$stx57730_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx57829_)
      (let* ((_g5783357867_
              (lambda (_g5783457863_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5783457863_)))
             (_g5783257978_
              (lambda (_g5783457871_)
                (if (gx#stx-pair? _g5783457871_)
                    (let ((_e5784357874_ (gx#syntax-e _g5783457871_)))
                      (let ((_hd5784257878_
                             (let ()
                               (declare (not safe))
                               (##car _e5784357874_)))
                            (_tl5784157881_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5784357874_))))
                        (if (gx#stx-pair? _tl5784157881_)
                            (let ((_e5784657884_ (gx#syntax-e _tl5784157881_)))
                              (let ((_hd5784557888_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5784657884_)))
                                    (_tl5784457891_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5784657884_))))
                                (if (gx#stx-pair? _tl5784457891_)
                                    (let ((_e5784957894_
                                           (gx#syntax-e _tl5784457891_)))
                                      (let ((_hd5784857898_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5784957894_)))
                                            (_tl5784757901_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5784957894_))))
                                        (if (gx#stx-pair? _tl5784757901_)
                                            (let ((_e5785257904_
                                                   (gx#syntax-e
                                                    _tl5784757901_)))
                                              (let ((_hd5785157908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5785257904_)))
                                                    (_tl5785057911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5785257904_))))
                                                (if (gx#stx-pair?
                                                     _tl5785057911_)
                                                    (let ((_e5785557914_
                                                           (gx#syntax-e
                                                            _tl5785057911_)))
                                                      (let ((_hd5785457918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5785557914_)))
                    (_tl5785357921_
                     (let () (declare (not safe)) (##cdr _e5785557914_))))
                (if (gx#stx-pair? _tl5785357921_)
                    (let ((_e5785857924_ (gx#syntax-e _tl5785357921_)))
                      (let ((_hd5785757928_
                             (let ()
                               (declare (not safe))
                               (##car _e5785857924_)))
                            (_tl5785657931_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5785857924_))))
                        (if (gx#stx-pair? _tl5785657931_)
                            (let ((_e5786157934_ (gx#syntax-e _tl5785657931_)))
                              (let ((_hd5786057938_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5786157934_)))
                                    (_tl5785957941_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5786157934_))))
                                (if (gx#stx-null? _tl5785957941_)
                                    ((lambda (_L57944_
                                              _L57946_
                                              _L57947_
                                              _L57948_
                                              _L57949_
                                              _L57950_)
                                       (let ((__tmp60286
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60128
                                              (let ((__tmp60246
                                                     (let ((__tmp60277
                                                            (let ((__tmp60285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60278
                           (let ((__tmp60279
                                  (let ((__tmp60284
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60280
                                         (let ((__tmp60282
                                                (let ((__tmp60283
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57946_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57948_ __tmp60283)))
                                               (__tmp60281
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57949_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60282 __tmp60281))))
                                    (declare (not safe))
                                    (cons __tmp60284 __tmp60280))))
                             (declare (not safe))
                             (cons __tmp60279 '()))))
                      (declare (not safe))
                      (cons __tmp60285 __tmp60278)))
                   (__tmp60247
                    (let ((__tmp60271
                           (let ((__tmp60276 (gx#datum->syntax '#f 'size))
                                 (__tmp60272
                                  (let ((__tmp60273
                                         (let ((__tmp60275
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60274
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57950_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60275 __tmp60274))))
                                    (declare (not safe))
                                    (cons __tmp60273 '()))))
                             (declare (not safe))
                             (cons __tmp60276 __tmp60272)))
                          (__tmp60248
                           (let ((__tmp60263
                                  (let ((__tmp60270
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60264
                                         (let ((__tmp60265
                                                (let ((__tmp60269
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60266
                                                       (let ((__tmp60268
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60267
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60268 __tmp60267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60269
                                                        __tmp60266))))
                                           (declare (not safe))
                                           (cons __tmp60265 '()))))
                                    (declare (not safe))
                                    (cons __tmp60270 __tmp60264)))
                                 (__tmp60249
                                  (let ((__tmp60250
                                         (let ((__tmp60262
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60251
                                                (let ((__tmp60252
                                                       (let ((__tmp60261
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60253
                                                              (let ((__tmp60255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60260
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60256
                                    (let ((__tmp60259
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60257
                                           (let ((__tmp60258
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60258 '()))))
                                      (declare (not safe))
                                      (cons __tmp60259 __tmp60257))))
                               (declare (not safe))
                               (cons __tmp60260 __tmp60256)))
                            (__tmp60254
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60255 __tmp60254))))
                 (declare (not safe))
                 (cons __tmp60261 __tmp60253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60252 '()))))
                                           (declare (not safe))
                                           (cons __tmp60262 __tmp60251))))
                                    (declare (not safe))
                                    (cons __tmp60250 '()))))
                             (declare (not safe))
                             (cons __tmp60263 __tmp60249))))
                      (declare (not safe))
                      (cons __tmp60271 __tmp60248))))
               (declare (not safe))
               (cons __tmp60277 __tmp60247)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60129
                                                     (let ((__tmp60130
                                                            (let ((__tmp60245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60131
                           (let ((__tmp60244 (gx#datum->syntax '#f 'loop))
                                 (__tmp60132
                                  (let ((__tmp60231
                                         (let ((__tmp60240
                                                (let ((__tmp60243
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60241
                                                       (let ((__tmp60242
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60242
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60243
                                                        __tmp60241)))
                                               (__tmp60232
                                                (let ((__tmp60237
                                                       (let ((__tmp60239
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60238
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60239 __tmp60238)))
              (__tmp60233
               (let ((__tmp60234
                      (let ((__tmp60236 (gx#datum->syntax '#f 'deleted))
                            (__tmp60235
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60236 __tmp60235))))
                 (declare (not safe))
                 (cons __tmp60234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60237
                                                        __tmp60233))))
                                           (declare (not safe))
                                           (cons __tmp60240 __tmp60232)))
                                        (__tmp60133
                                         (let ((__tmp60134
                                                (let ((__tmp60230
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60135
                                                       (let ((__tmp60222
                                                              (let ((__tmp60229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60223
                             (let ((__tmp60224
                                    (let ((__tmp60228
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60225
                                           (let ((__tmp60226
                                                  (let ((__tmp60227
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60227 '()))))
                                             (declare (not safe))
                                             (cons _L57950_ __tmp60226))))
                                      (declare (not safe))
                                      (cons __tmp60228 __tmp60225))))
                               (declare (not safe))
                               (cons __tmp60224 '()))))
                        (declare (not safe))
                        (cons __tmp60229 __tmp60223)))
                     (__tmp60136
                      (let ((__tmp60137
                             (let ((__tmp60221 (gx#datum->syntax '#f 'cond))
                                   (__tmp60138
                                    (let ((__tmp60212
                                           (let ((__tmp60214
                                                  (let ((__tmp60220
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60215
                                                         (let ((__tmp60219
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60216
                        (let ((__tmp60217
                               (let ((__tmp60218
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60218 '()))))
                          (declare (not safe))
                          (cons __tmp60217 '()))))
                   (declare (not safe))
                   (cons __tmp60219 __tmp60216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60220
                                                          __tmp60215)))
                                                 (__tmp60213
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57944_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60214 __tmp60213)))
                                          (__tmp60139
                                           (let ((__tmp60179
                                                  (let ((__tmp60205
                                                         (let ((__tmp60211
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60206
                        (let ((__tmp60210 (gx#datum->syntax '#f 'k))
                              (__tmp60207
                               (let ((__tmp60208
                                      (let ((__tmp60209
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60209 '()))))
                                 (declare (not safe))
                                 (cons __tmp60208 '()))))
                          (declare (not safe))
                          (cons __tmp60210 __tmp60207))))
                   (declare (not safe))
                   (cons __tmp60211 __tmp60206)))
                (__tmp60180
                 (let ((__tmp60181
                        (let ((__tmp60204 (gx#datum->syntax '#f 'loop))
                              (__tmp60182
                               (let ((__tmp60196
                                      (let ((__tmp60203
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60197
                                             (let ((__tmp60202
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60198
                                                    (let ((__tmp60201
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60199
                                                           (let ((__tmp60200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60200 '()))))
              (declare (not safe))
              (cons __tmp60201 __tmp60199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60202 __tmp60198))))
                                        (declare (not safe))
                                        (cons __tmp60203 __tmp60197)))
                                     (__tmp60183
                                      (let ((__tmp60191
                                             (let ((__tmp60195
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60192
                                                    (let ((__tmp60194
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60193
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60194
                                                            __tmp60193))))
                                               (declare (not safe))
                                               (cons __tmp60195 __tmp60192)))
                                            (__tmp60184
                                             (let ((__tmp60185
                                                    (let ((__tmp60190
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60186
                                                           (let ((__tmp60189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60187
                          (let ((__tmp60188 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60188 '()))))
                     (declare (not safe))
                     (cons __tmp60189 __tmp60187))))
              (declare (not safe))
              (cons __tmp60190 __tmp60186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60185 '()))))
                                        (declare (not safe))
                                        (cons __tmp60191 __tmp60184))))
                                 (declare (not safe))
                                 (cons __tmp60196 __tmp60183))))
                          (declare (not safe))
                          (cons __tmp60204 __tmp60182))))
                   (declare (not safe))
                   (cons __tmp60181 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60205
                                                          __tmp60180)))
                                                 (__tmp60140
                                                  (let ((__tmp60164
                                                         (let ((__tmp60175
                                                                (let ((__tmp60176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60177
                                      (let ((__tmp60178
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60178 '()))))
                                 (declare (not safe))
                                 (cons _L57946_ __tmp60177))))
                          (declare (not safe))
                          (cons _L57947_ __tmp60176)))
                       (__tmp60165
                        (let ((__tmp60166
                               (let ((__tmp60174
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60167
                                      (let ((__tmp60168
                                             (let ((__tmp60169
                                                    (let ((__tmp60173
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60170
                                                           (let ((__tmp60172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60171
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60172 __tmp60171))))
              (declare (not safe))
              (cons __tmp60173 __tmp60170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60169 '()))))
                                        (declare (not safe))
                                        (cons _L57950_ __tmp60168))))
                                 (declare (not safe))
                                 (cons __tmp60174 __tmp60167))))
                          (declare (not safe))
                          (cons __tmp60166 '()))))
                   (declare (not safe))
                   (cons __tmp60175 __tmp60165)))
                (__tmp60141
                 (let ((__tmp60142
                        (let ((__tmp60163 (gx#datum->syntax '#f 'else))
                              (__tmp60143
                               (let ((__tmp60144
                                      (let ((__tmp60162
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60145
                                             (let ((__tmp60154
                                                    (let ((__tmp60161
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60155
                                                           (let ((__tmp60160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60156
                          (let ((__tmp60159 (gx#datum->syntax '#f 'i))
                                (__tmp60157
                                 (let ((__tmp60158
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60158 '()))))
                            (declare (not safe))
                            (cons __tmp60159 __tmp60157))))
                     (declare (not safe))
                     (cons __tmp60160 __tmp60156))))
              (declare (not safe))
              (cons __tmp60161 __tmp60155)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60146
                                                    (let ((__tmp60149
                                                           (let ((__tmp60153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60150
                          (let ((__tmp60152 (gx#datum->syntax '#f 'i))
                                (__tmp60151
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60152 __tmp60151))))
                     (declare (not safe))
                     (cons __tmp60153 __tmp60150)))
                  (__tmp60147
                   (let ((__tmp60148 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60148 '()))))
              (declare (not safe))
              (cons __tmp60149 __tmp60147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60154 __tmp60146))))
                                        (declare (not safe))
                                        (cons __tmp60162 __tmp60145))))
                                 (declare (not safe))
                                 (cons __tmp60144 '()))))
                          (declare (not safe))
                          (cons __tmp60163 __tmp60143))))
                   (declare (not safe))
                   (cons __tmp60142 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60164
                                                          __tmp60141))))
                                             (declare (not safe))
                                             (cons __tmp60179 __tmp60140))))
                                      (declare (not safe))
                                      (cons __tmp60212 __tmp60139))))
                               (declare (not safe))
                               (cons __tmp60221 __tmp60138))))
                        (declare (not safe))
                        (cons __tmp60137 '()))))
                 (declare (not safe))
                 (cons __tmp60222 __tmp60136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60230
                                                        __tmp60135))))
                                           (declare (not safe))
                                           (cons __tmp60134 '()))))
                                    (declare (not safe))
                                    (cons __tmp60231 __tmp60133))))
                             (declare (not safe))
                             (cons __tmp60244 __tmp60132))))
                      (declare (not safe))
                      (cons __tmp60245 __tmp60131))))
               (declare (not safe))
               (cons __tmp60130 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60246 __tmp60129))))
                                         (declare (not safe))
                                         (cons __tmp60286 __tmp60128)))
                                     _hd5786057938_
                                     _hd5785757928_
                                     _hd5785457918_
                                     _hd5785157908_
                                     _hd5784857898_
                                     _hd5784557888_)
                                    (_g5783357867_ _g5783457871_))))
                            (_g5783357867_ _g5783457871_))))
                    (_g5783357867_ _g5783457871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5783357867_
                                                     _g5783457871_))))
                                            (_g5783357867_ _g5783457871_))))
                                    (_g5783357867_ _g5783457871_))))
                            (_g5783357867_ _g5783457871_))))
                    (_g5783357867_ _g5783457871_)))))
        (_g5783257978_ _$stx57829_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx57982_)
      (let* ((_g5798658028_
              (lambda (_g5798758024_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5798758024_)))
             (_g5798558167_
              (lambda (_g5798758032_)
                (if (gx#stx-pair? _g5798758032_)
                    (let ((_e5799858035_ (gx#syntax-e _g5798758032_)))
                      (let ((_hd5799758039_
                             (let ()
                               (declare (not safe))
                               (##car _e5799858035_)))
                            (_tl5799658042_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5799858035_))))
                        (if (gx#stx-pair? _tl5799658042_)
                            (let ((_e5800158045_ (gx#syntax-e _tl5799658042_)))
                              (let ((_hd5800058049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5800158045_)))
                                    (_tl5799958052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5800158045_))))
                                (if (gx#stx-pair? _tl5799958052_)
                                    (let ((_e5800458055_
                                           (gx#syntax-e _tl5799958052_)))
                                      (let ((_hd5800358059_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5800458055_)))
                                            (_tl5800258062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5800458055_))))
                                        (if (gx#stx-pair? _tl5800258062_)
                                            (let ((_e5800758065_
                                                   (gx#syntax-e
                                                    _tl5800258062_)))
                                              (let ((_hd5800658069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5800758065_)))
                                                    (_tl5800558072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5800758065_))))
                                                (if (gx#stx-pair?
                                                     _tl5800558072_)
                                                    (let ((_e5801058075_
                                                           (gx#syntax-e
                                                            _tl5800558072_)))
                                                      (let ((_hd5800958079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5801058075_)))
                    (_tl5800858082_
                     (let () (declare (not safe)) (##cdr _e5801058075_))))
                (if (gx#stx-pair? _tl5800858082_)
                    (let ((_e5801358085_ (gx#syntax-e _tl5800858082_)))
                      (let ((_hd5801258089_
                             (let ()
                               (declare (not safe))
                               (##car _e5801358085_)))
                            (_tl5801158092_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5801358085_))))
                        (if (gx#stx-pair? _tl5801158092_)
                            (let ((_e5801658095_ (gx#syntax-e _tl5801158092_)))
                              (let ((_hd5801558099_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5801658095_)))
                                    (_tl5801458102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5801658095_))))
                                (if (gx#stx-pair? _tl5801458102_)
                                    (let ((_e5801958105_
                                           (gx#syntax-e _tl5801458102_)))
                                      (let ((_hd5801858109_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5801958105_)))
                                            (_tl5801758112_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5801958105_))))
                                        (if (gx#stx-pair? _tl5801758112_)
                                            (let ((_e5802258115_
                                                   (gx#syntax-e
                                                    _tl5801758112_)))
                                              (let ((_hd5802158119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5802258115_)))
                                                    (_tl5802058122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5802258115_))))
                                                (if (gx#stx-null?
                                                     _tl5802058122_)
                                                    ((lambda (_L58125_
                                                              _L58127_
                                                              _L58128_
                                                              _L58129_
                                                              _L58130_
                                                              _L58131_
                                                              _L58132_
                                                              _L58133_)
                                                       (let ((__tmp60503
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60287
                                                              (let ((__tmp60463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60494
                                    (let ((__tmp60502
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60495
                                           (let ((__tmp60496
                                                  (let ((__tmp60501
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60497
                                                         (let ((__tmp60499
                                                                (let ((__tmp60500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58129_ '()))))
                          (declare (not safe))
                          (cons _L58131_ __tmp60500)))
                       (__tmp60498
                        (let () (declare (not safe)) (cons _L58132_ '()))))
                   (declare (not safe))
                   (cons __tmp60499 __tmp60498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60501
                                                          __tmp60497))))
                                             (declare (not safe))
                                             (cons __tmp60496 '()))))
                                      (declare (not safe))
                                      (cons __tmp60502 __tmp60495)))
                                   (__tmp60464
                                    (let ((__tmp60488
                                           (let ((__tmp60493
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60489
                                                  (let ((__tmp60490
                                                         (let ((__tmp60492
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60491
                        (let () (declare (not safe)) (cons _L58133_ '()))))
                   (declare (not safe))
                   (cons __tmp60492 __tmp60491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60490 '()))))
                                             (declare (not safe))
                                             (cons __tmp60493 __tmp60489)))
                                          (__tmp60465
                                           (let ((__tmp60480
                                                  (let ((__tmp60487
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60481
                                                         (let ((__tmp60482
                                                                (let ((__tmp60486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60483
                               (let ((__tmp60485 (gx#datum->syntax '#f 'size))
                                     (__tmp60484
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60485 __tmp60484))))
                          (declare (not safe))
                          (cons __tmp60486 __tmp60483))))
                   (declare (not safe))
                   (cons __tmp60482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60487
                                                          __tmp60481)))
                                                 (__tmp60466
                                                  (let ((__tmp60467
                                                         (let ((__tmp60479
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60468
                        (let ((__tmp60469
                               (let ((__tmp60478
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60470
                                      (let ((__tmp60472
                                             (let ((__tmp60477
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60473
                                                    (let ((__tmp60476
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60474
                                                           (let ((__tmp60475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60475 '()))))
              (declare (not safe))
              (cons __tmp60476 __tmp60474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60477 __tmp60473)))
                                            (__tmp60471
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60472 __tmp60471))))
                                 (declare (not safe))
                                 (cons __tmp60478 __tmp60470))))
                          (declare (not safe))
                          (cons __tmp60469 '()))))
                   (declare (not safe))
                   (cons __tmp60479 __tmp60468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60467 '()))))
                                             (declare (not safe))
                                             (cons __tmp60480 __tmp60466))))
                                      (declare (not safe))
                                      (cons __tmp60488 __tmp60465))))
                               (declare (not safe))
                               (cons __tmp60494 __tmp60464)))
                            (__tmp60288
                             (let ((__tmp60289
                                    (let ((__tmp60462
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60290
                                           (let ((__tmp60461
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60291
                                                  (let ((__tmp60448
                                                         (let ((__tmp60457
                                                                (let ((__tmp60460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60458
                               (let ((__tmp60459
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60459 '()))))
                          (declare (not safe))
                          (cons __tmp60460 __tmp60458)))
                       (__tmp60449
                        (let ((__tmp60454
                               (let ((__tmp60456 (gx#datum->syntax '#f 'i))
                                     (__tmp60455
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60456 __tmp60455)))
                              (__tmp60450
                               (let ((__tmp60451
                                      (let ((__tmp60453
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60452
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60453 __tmp60452))))
                                 (declare (not safe))
                                 (cons __tmp60451 '()))))
                          (declare (not safe))
                          (cons __tmp60454 __tmp60450))))
                   (declare (not safe))
                   (cons __tmp60457 __tmp60449)))
                (__tmp60292
                 (let ((__tmp60293
                        (let ((__tmp60447 (gx#datum->syntax '#f 'let))
                              (__tmp60294
                               (let ((__tmp60439
                                      (let ((__tmp60446
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60440
                                             (let ((__tmp60441
                                                    (let ((__tmp60445
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60442
                                                           (let ((__tmp60443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60444 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60444 '()))))
                     (declare (not safe))
                     (cons _L58133_ __tmp60443))))
              (declare (not safe))
              (cons __tmp60445 __tmp60442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60441 '()))))
                                        (declare (not safe))
                                        (cons __tmp60446 __tmp60440)))
                                     (__tmp60295
                                      (let ((__tmp60296
                                             (let ((__tmp60438
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60297
                                                    (let ((__tmp60379
                                                           (let ((__tmp60431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60437 (gx#datum->syntax '#f 'eq?))
                                (__tmp60432
                                 (let ((__tmp60436 (gx#datum->syntax '#f 'k))
                                       (__tmp60433
                                        (let ((__tmp60434
                                               (let ((__tmp60435
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60435 '()))))
                                          (declare (not safe))
                                          (cons __tmp60434 '()))))
                                   (declare (not safe))
                                   (cons __tmp60436 __tmp60433))))
                            (declare (not safe))
                            (cons __tmp60437 __tmp60432)))
                         (__tmp60380
                          (let ((__tmp60381
                                 (let ((__tmp60430 (gx#datum->syntax '#f 'if))
                                       (__tmp60382
                                        (let ((__tmp60429
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60383
                                               (let ((__tmp60407
                                                      (let ((__tmp60428
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60408
                                                             (let ((__tmp60422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60427
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60423
                                   (let ((__tmp60424
                                          (let ((__tmp60426
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60425
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60426 __tmp60425))))
                                     (declare (not safe))
                                     (cons _L58133_ __tmp60424))))
                              (declare (not safe))
                              (cons __tmp60427 __tmp60423)))
                           (__tmp60409
                            (let ((__tmp60412
                                   (let ((__tmp60421
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60413
                                          (let ((__tmp60414
                                                 (let ((__tmp60416
                                                        (let ((__tmp60420
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60417
                                                               (let ((__tmp60419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60418
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60419 __tmp60418))))
                  (declare (not safe))
                  (cons __tmp60420 __tmp60417)))
               (__tmp60415 (let () (declare (not safe)) (cons _L58128_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60416
                                                         __tmp60415))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60414))))
                                     (declare (not safe))
                                     (cons __tmp60421 __tmp60413)))
                                  (__tmp60410
                                   (let ((__tmp60411
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58125_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60411 '()))))
                              (declare (not safe))
                              (cons __tmp60412 __tmp60410))))
                       (declare (not safe))
                       (cons __tmp60422 __tmp60409))))
                (declare (not safe))
                (cons __tmp60428 __tmp60408)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60384
                                                      (let ((__tmp60385
                                                             (let ((__tmp60406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60386
                            (let ((__tmp60400
                                   (let ((__tmp60405
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60401
                                          (let ((__tmp60402
                                                 (let ((__tmp60404
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60403
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60404
                                                         __tmp60403))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60402))))
                                     (declare (not safe))
                                     (cons __tmp60405 __tmp60401)))
                                  (__tmp60387
                                   (let ((__tmp60390
                                          (let ((__tmp60399
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60391
                                                 (let ((__tmp60392
                                                        (let ((__tmp60394
                                                               (let ((__tmp60398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60395
                              (let ((__tmp60397 (gx#datum->syntax '#f 'probe))
                                    (__tmp60396
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60397 __tmp60396))))
                         (declare (not safe))
                         (cons __tmp60398 __tmp60395)))
                      (__tmp60393
                       (let () (declare (not safe)) (cons _L58128_ '()))))
                  (declare (not safe))
                  (cons __tmp60394 __tmp60393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58133_
                                                         __tmp60392))))
                                            (declare (not safe))
                                            (cons __tmp60399 __tmp60391)))
                                         (__tmp60388
                                          (let ((__tmp60389
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58127_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60389 '()))))
                                     (declare (not safe))
                                     (cons __tmp60390 __tmp60388))))
                              (declare (not safe))
                              (cons __tmp60400 __tmp60387))))
                       (declare (not safe))
                       (cons __tmp60406 __tmp60386))))
                (declare (not safe))
                (cons __tmp60385 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60407
                                                       __tmp60384))))
                                          (declare (not safe))
                                          (cons __tmp60429 __tmp60383))))
                                   (declare (not safe))
                                   (cons __tmp60430 __tmp60382))))
                            (declare (not safe))
                            (cons __tmp60381 '()))))
                     (declare (not safe))
                     (cons __tmp60431 __tmp60380)))
                  (__tmp60298
                   (let ((__tmp60346
                          (let ((__tmp60372
                                 (let ((__tmp60378 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60373
                                        (let ((__tmp60377
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60374
                                               (let ((__tmp60375
                                                      (let ((__tmp60376
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60376
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60375 '()))))
                                          (declare (not safe))
                                          (cons __tmp60377 __tmp60374))))
                                   (declare (not safe))
                                   (cons __tmp60378 __tmp60373)))
                                (__tmp60347
                                 (let ((__tmp60348
                                        (let ((__tmp60371
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60349
                                               (let ((__tmp60363
                                                      (let ((__tmp60370
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60364
                                                             (let ((__tmp60369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60365
                            (let ((__tmp60368 (gx#datum->syntax '#f 'i))
                                  (__tmp60366
                                   (let ((__tmp60367
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60367 '()))))
                              (declare (not safe))
                              (cons __tmp60368 __tmp60366))))
                       (declare (not safe))
                       (cons __tmp60369 __tmp60365))))
                (declare (not safe))
                (cons __tmp60370 __tmp60364)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60350
                                                      (let ((__tmp60358
                                                             (let ((__tmp60362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60359
                            (let ((__tmp60361 (gx#datum->syntax '#f 'i))
                                  (__tmp60360
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60361 __tmp60360))))
                       (declare (not safe))
                       (cons __tmp60362 __tmp60359)))
                    (__tmp60351
                     (let ((__tmp60352
                            (let ((__tmp60357 (gx#datum->syntax '#f 'or))
                                  (__tmp60353
                                   (let ((__tmp60356
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60354
                                          (let ((__tmp60355
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60355 '()))))
                                     (declare (not safe))
                                     (cons __tmp60356 __tmp60354))))
                              (declare (not safe))
                              (cons __tmp60357 __tmp60353))))
                       (declare (not safe))
                       (cons __tmp60352 '()))))
                (declare (not safe))
                (cons __tmp60358 __tmp60351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60363
                                                       __tmp60350))))
                                          (declare (not safe))
                                          (cons __tmp60371 __tmp60349))))
                                   (declare (not safe))
                                   (cons __tmp60348 '()))))
                            (declare (not safe))
                            (cons __tmp60372 __tmp60347)))
                         (__tmp60299
                          (let ((__tmp60323
                                 (let ((__tmp60342
                                        (let ((__tmp60343
                                               (let ((__tmp60344
                                                      (let ((__tmp60345
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60345
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58129_ __tmp60344))))
                                          (declare (not safe))
                                          (cons _L58130_ __tmp60343)))
                                       (__tmp60324
                                        (let ((__tmp60336
                                               (let ((__tmp60341
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60337
                                                      (let ((__tmp60338
                                                             (let ((__tmp60340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60339
                            (let () (declare (not safe)) (cons _L58129_ '()))))
                       (declare (not safe))
                       (cons __tmp60340 __tmp60339))))
                (declare (not safe))
                (cons _L58133_ __tmp60338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60341 __tmp60337)))
                                              (__tmp60325
                                               (let ((__tmp60326
                                                      (let ((__tmp60335
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60327
                                                             (let ((__tmp60328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60330
                                   (let ((__tmp60334
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60331
                                          (let ((__tmp60333
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60332
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60333 __tmp60332))))
                                     (declare (not safe))
                                     (cons __tmp60334 __tmp60331)))
                                  (__tmp60329
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58128_ '()))))
                              (declare (not safe))
                              (cons __tmp60330 __tmp60329))))
                       (declare (not safe))
                       (cons _L58133_ __tmp60328))))
                (declare (not safe))
                (cons __tmp60335 __tmp60327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60326 '()))))
                                          (declare (not safe))
                                          (cons __tmp60336 __tmp60325))))
                                   (declare (not safe))
                                   (cons __tmp60342 __tmp60324)))
                                (__tmp60300
                                 (let ((__tmp60301
                                        (let ((__tmp60322
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60302
                                               (let ((__tmp60303
                                                      (let ((__tmp60321
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60304
                                                             (let ((__tmp60313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60320
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60314
                                   (let ((__tmp60319
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60315
                                          (let ((__tmp60318
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60316
                                                 (let ((__tmp60317
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60317 '()))))
                                            (declare (not safe))
                                            (cons __tmp60318 __tmp60316))))
                                     (declare (not safe))
                                     (cons __tmp60319 __tmp60315))))
                              (declare (not safe))
                              (cons __tmp60320 __tmp60314)))
                           (__tmp60305
                            (let ((__tmp60308
                                   (let ((__tmp60312
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60309
                                          (let ((__tmp60311
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60310
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60311 __tmp60310))))
                                     (declare (not safe))
                                     (cons __tmp60312 __tmp60309)))
                                  (__tmp60306
                                   (let ((__tmp60307
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60307 '()))))
                              (declare (not safe))
                              (cons __tmp60308 __tmp60306))))
                       (declare (not safe))
                       (cons __tmp60313 __tmp60305))))
                (declare (not safe))
                (cons __tmp60321 __tmp60304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60303 '()))))
                                          (declare (not safe))
                                          (cons __tmp60322 __tmp60302))))
                                   (declare (not safe))
                                   (cons __tmp60301 '()))))
                            (declare (not safe))
                            (cons __tmp60323 __tmp60300))))
                     (declare (not safe))
                     (cons __tmp60346 __tmp60299))))
              (declare (not safe))
              (cons __tmp60379 __tmp60298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60438 __tmp60297))))
                                        (declare (not safe))
                                        (cons __tmp60296 '()))))
                                 (declare (not safe))
                                 (cons __tmp60439 __tmp60295))))
                          (declare (not safe))
                          (cons __tmp60447 __tmp60294))))
                   (declare (not safe))
                   (cons __tmp60293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60448
                                                          __tmp60292))))
                                             (declare (not safe))
                                             (cons __tmp60461 __tmp60291))))
                                      (declare (not safe))
                                      (cons __tmp60462 __tmp60290))))
                               (declare (not safe))
                               (cons __tmp60289 '()))))
                        (declare (not safe))
                        (cons __tmp60463 __tmp60288))))
                 (declare (not safe))
                 (cons __tmp60503 __tmp60287)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5802158119_
                                                     _hd5801858109_
                                                     _hd5801558099_
                                                     _hd5801258089_
                                                     _hd5800958079_
                                                     _hd5800658069_
                                                     _hd5800358059_
                                                     _hd5800058049_)
                                                    (_g5798658028_
                                                     _g5798758032_))))
                                            (_g5798658028_ _g5798758032_))))
                                    (_g5798658028_ _g5798758032_))))
                            (_g5798658028_ _g5798758032_))))
                    (_g5798658028_ _g5798758032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5798658028_
                                                     _g5798758032_))))
                                            (_g5798658028_ _g5798758032_))))
                                    (_g5798658028_ _g5798758032_))))
                            (_g5798658028_ _g5798758032_))))
                    (_g5798658028_ _g5798758032_)))))
        (_g5798558167_ _$stx57982_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58171_)
      (let* ((_g5817558221_
              (lambda (_g5817658217_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5817658217_)))
             (_g5817458374_
              (lambda (_g5817658225_)
                (if (gx#stx-pair? _g5817658225_)
                    (let ((_e5818858228_ (gx#syntax-e _g5817658225_)))
                      (let ((_hd5818758232_
                             (let ()
                               (declare (not safe))
                               (##car _e5818858228_)))
                            (_tl5818658235_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5818858228_))))
                        (if (gx#stx-pair? _tl5818658235_)
                            (let ((_e5819158238_ (gx#syntax-e _tl5818658235_)))
                              (let ((_hd5819058242_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5819158238_)))
                                    (_tl5818958245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5819158238_))))
                                (if (gx#stx-pair? _tl5818958245_)
                                    (let ((_e5819458248_
                                           (gx#syntax-e _tl5818958245_)))
                                      (let ((_hd5819358252_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5819458248_)))
                                            (_tl5819258255_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5819458248_))))
                                        (if (gx#stx-pair? _tl5819258255_)
                                            (let ((_e5819758258_
                                                   (gx#syntax-e
                                                    _tl5819258255_)))
                                              (let ((_hd5819658262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5819758258_)))
                                                    (_tl5819558265_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5819758258_))))
                                                (if (gx#stx-pair?
                                                     _tl5819558265_)
                                                    (let ((_e5820058268_
                                                           (gx#syntax-e
                                                            _tl5819558265_)))
                                                      (let ((_hd5819958272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5820058268_)))
                    (_tl5819858275_
                     (let () (declare (not safe)) (##cdr _e5820058268_))))
                (if (gx#stx-pair? _tl5819858275_)
                    (let ((_e5820358278_ (gx#syntax-e _tl5819858275_)))
                      (let ((_hd5820258282_
                             (let ()
                               (declare (not safe))
                               (##car _e5820358278_)))
                            (_tl5820158285_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5820358278_))))
                        (if (gx#stx-pair? _tl5820158285_)
                            (let ((_e5820658288_ (gx#syntax-e _tl5820158285_)))
                              (let ((_hd5820558292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5820658288_)))
                                    (_tl5820458295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5820658288_))))
                                (if (gx#stx-pair? _tl5820458295_)
                                    (let ((_e5820958298_
                                           (gx#syntax-e _tl5820458295_)))
                                      (let ((_hd5820858302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5820958298_)))
                                            (_tl5820758305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5820958298_))))
                                        (if (gx#stx-pair? _tl5820758305_)
                                            (let ((_e5821258308_
                                                   (gx#syntax-e
                                                    _tl5820758305_)))
                                              (let ((_hd5821158312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5821258308_)))
                                                    (_tl5821058315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5821258308_))))
                                                (if (gx#stx-pair?
                                                     _tl5821058315_)
                                                    (let ((_e5821558318_
                                                           (gx#syntax-e
                                                            _tl5821058315_)))
                                                      (let ((_hd5821458322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5821558318_)))
                    (_tl5821358325_
                     (let () (declare (not safe)) (##cdr _e5821558318_))))
                (if (gx#stx-null? _tl5821358325_)
                    ((lambda (_L58328_
                              _L58330_
                              _L58331_
                              _L58332_
                              _L58333_
                              _L58334_
                              _L58335_
                              _L58336_
                              _L58337_)
                       (let ((__tmp60735 (gx#datum->syntax '#f 'let*))
                             (__tmp60504
                              (let ((__tmp60695
                                     (let ((__tmp60726
                                            (let ((__tmp60734
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp60727
                                                   (let ((__tmp60728
                                                          (let ((__tmp60733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp60729
                         (let ((__tmp60731
                                (let ((__tmp60732
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58333_ '()))))
                                  (declare (not safe))
                                  (cons _L58335_ __tmp60732)))
                               (__tmp60730
                                (let ()
                                  (declare (not safe))
                                  (cons _L58336_ '()))))
                           (declare (not safe))
                           (cons __tmp60731 __tmp60730))))
                    (declare (not safe))
                    (cons __tmp60733 __tmp60729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60728 '()))))
                                              (declare (not safe))
                                              (cons __tmp60734 __tmp60727)))
                                           (__tmp60696
                                            (let ((__tmp60720
                                                   (let ((__tmp60725
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp60721
                                                          (let ((__tmp60722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60724
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp60723
                                (let ()
                                  (declare (not safe))
                                  (cons _L58337_ '()))))
                           (declare (not safe))
                           (cons __tmp60724 __tmp60723))))
                    (declare (not safe))
                    (cons __tmp60722 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60725
                                                           __tmp60721)))
                                                  (__tmp60697
                                                   (let ((__tmp60712
                                                          (let ((__tmp60719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp60713
                         (let ((__tmp60714
                                (let ((__tmp60718
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp60715
                                       (let ((__tmp60717
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp60716
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp60717 __tmp60716))))
                                  (declare (not safe))
                                  (cons __tmp60718 __tmp60715))))
                           (declare (not safe))
                           (cons __tmp60714 '()))))
                    (declare (not safe))
                    (cons __tmp60719 __tmp60713)))
                 (__tmp60698
                  (let ((__tmp60699
                         (let ((__tmp60711 (gx#datum->syntax '#f 'start))
                               (__tmp60700
                                (let ((__tmp60701
                                       (let ((__tmp60710
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp60702
                                              (let ((__tmp60704
                                                     (let ((__tmp60709
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp60705
                                                            (let ((__tmp60708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60706
                           (let ((__tmp60707 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp60707 '()))))
                      (declare (not safe))
                      (cons __tmp60708 __tmp60706))))
               (declare (not safe))
               (cons __tmp60709 __tmp60705)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60703
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp60704 __tmp60703))))
                                         (declare (not safe))
                                         (cons __tmp60710 __tmp60702))))
                                  (declare (not safe))
                                  (cons __tmp60701 '()))))
                           (declare (not safe))
                           (cons __tmp60711 __tmp60700))))
                    (declare (not safe))
                    (cons __tmp60699 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60712
                                                           __tmp60698))))
                                              (declare (not safe))
                                              (cons __tmp60720 __tmp60697))))
                                       (declare (not safe))
                                       (cons __tmp60726 __tmp60696)))
                                    (__tmp60505
                                     (let ((__tmp60506
                                            (let ((__tmp60694
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60507
                                                   (let ((__tmp60693
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60508
                                                          (let ((__tmp60680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60689
                                (let ((__tmp60692
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp60690
                                       (let ((__tmp60691
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp60691 '()))))
                                  (declare (not safe))
                                  (cons __tmp60692 __tmp60690)))
                               (__tmp60681
                                (let ((__tmp60686
                                       (let ((__tmp60688
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp60687
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp60688 __tmp60687)))
                                      (__tmp60682
                                       (let ((__tmp60683
                                              (let ((__tmp60685
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp60684
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp60685 __tmp60684))))
                                         (declare (not safe))
                                         (cons __tmp60683 '()))))
                                  (declare (not safe))
                                  (cons __tmp60686 __tmp60682))))
                           (declare (not safe))
                           (cons __tmp60689 __tmp60681)))
                        (__tmp60509
                         (let ((__tmp60510
                                (let ((__tmp60679 (gx#datum->syntax '#f 'let))
                                      (__tmp60511
                                       (let ((__tmp60671
                                              (let ((__tmp60678
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp60672
                                                     (let ((__tmp60673
                                                            (let ((__tmp60677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp60674
                           (let ((__tmp60675
                                  (let ((__tmp60676
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp60676 '()))))
                             (declare (not safe))
                             (cons _L58337_ __tmp60675))))
                      (declare (not safe))
                      (cons __tmp60677 __tmp60674))))
               (declare (not safe))
               (cons __tmp60673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60678 __tmp60672)))
                                             (__tmp60512
                                              (let ((__tmp60513
                                                     (let ((__tmp60670
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60514
                                                            (let ((__tmp60607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60663
                                  (let ((__tmp60669
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp60664
                                         (let ((__tmp60668
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp60665
                                                (let ((__tmp60666
                                                       (let ((__tmp60667
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp60667
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60666 '()))))
                                           (declare (not safe))
                                           (cons __tmp60668 __tmp60665))))
                                    (declare (not safe))
                                    (cons __tmp60669 __tmp60664)))
                                 (__tmp60608
                                  (let ((__tmp60609
                                         (let ((__tmp60662
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60610
                                                (let ((__tmp60661
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60611
                                                       (let ((__tmp60637
                                                              (let ((__tmp60660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60638
                             (let ((__tmp60654
                                    (let ((__tmp60659
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp60655
                                           (let ((__tmp60656
                                                  (let ((__tmp60658
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp60657
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60658
                                                          __tmp60657))))
                                             (declare (not safe))
                                             (cons _L58337_ __tmp60656))))
                                      (declare (not safe))
                                      (cons __tmp60659 __tmp60655)))
                                   (__tmp60639
                                    (let ((__tmp60642
                                           (let ((__tmp60653
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60643
                                                  (let ((__tmp60644
                                                         (let ((__tmp60648
                                                                (let ((__tmp60652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp60649
                               (let ((__tmp60651
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp60650
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60651 __tmp60650))))
                          (declare (not safe))
                          (cons __tmp60652 __tmp60649)))
                       (__tmp60645
                        (let ((__tmp60646
                               (let ((__tmp60647
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58331_ '()))))
                                 (declare (not safe))
                                 (cons _L58332_ __tmp60647))))
                          (declare (not safe))
                          (cons __tmp60646 '()))))
                   (declare (not safe))
                   (cons __tmp60648 __tmp60645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp60644))))
                                             (declare (not safe))
                                             (cons __tmp60653 __tmp60643)))
                                          (__tmp60640
                                           (let ((__tmp60641
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60641 '()))))
                                      (declare (not safe))
                                      (cons __tmp60642 __tmp60640))))
                               (declare (not safe))
                               (cons __tmp60654 __tmp60639))))
                        (declare (not safe))
                        (cons __tmp60660 __tmp60638)))
                     (__tmp60612
                      (let ((__tmp60613
                             (let ((__tmp60636 (gx#datum->syntax '#f 'begin))
                                   (__tmp60614
                                    (let ((__tmp60630
                                           (let ((__tmp60635
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60631
                                                  (let ((__tmp60632
                                                         (let ((__tmp60634
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60633
                        (let () (declare (not safe)) (cons _L58333_ '()))))
                   (declare (not safe))
                   (cons __tmp60634 __tmp60633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp60632))))
                                             (declare (not safe))
                                             (cons __tmp60635 __tmp60631)))
                                          (__tmp60615
                                           (let ((__tmp60618
                                                  (let ((__tmp60629
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60619
                                                         (let ((__tmp60620
                                                                (let ((__tmp60624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60628 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60625
                                      (let ((__tmp60627
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60626
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60627 __tmp60626))))
                                 (declare (not safe))
                                 (cons __tmp60628 __tmp60625)))
                              (__tmp60621
                               (let ((__tmp60622
                                      (let ((__tmp60623
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58331_ '()))))
                                        (declare (not safe))
                                        (cons _L58332_ __tmp60623))))
                                 (declare (not safe))
                                 (cons __tmp60622 '()))))
                          (declare (not safe))
                          (cons __tmp60624 __tmp60621))))
                   (declare (not safe))
                   (cons _L58337_ __tmp60620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60629
                                                          __tmp60619)))
                                                 (__tmp60616
                                                  (let ((__tmp60617
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60617 '()))))
                                             (declare (not safe))
                                             (cons __tmp60618 __tmp60616))))
                                      (declare (not safe))
                                      (cons __tmp60630 __tmp60615))))
                               (declare (not safe))
                               (cons __tmp60636 __tmp60614))))
                        (declare (not safe))
                        (cons __tmp60613 '()))))
                 (declare (not safe))
                 (cons __tmp60637 __tmp60612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60661
                                                        __tmp60611))))
                                           (declare (not safe))
                                           (cons __tmp60662 __tmp60610))))
                                    (declare (not safe))
                                    (cons __tmp60609 '()))))
                             (declare (not safe))
                             (cons __tmp60663 __tmp60608)))
                          (__tmp60515
                           (let ((__tmp60574
                                  (let ((__tmp60600
                                         (let ((__tmp60606
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60601
                                                (let ((__tmp60605
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60602
                                                       (let ((__tmp60603
                                                              (let ((__tmp60604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60604 '()))))
                 (declare (not safe))
                 (cons __tmp60603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60605
                                                        __tmp60602))))
                                           (declare (not safe))
                                           (cons __tmp60606 __tmp60601)))
                                        (__tmp60575
                                         (let ((__tmp60576
                                                (let ((__tmp60599
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60577
                                                       (let ((__tmp60591
                                                              (let ((__tmp60598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60592
                             (let ((__tmp60597 (gx#datum->syntax '#f 'start))
                                   (__tmp60593
                                    (let ((__tmp60596
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60594
                                           (let ((__tmp60595
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60595 '()))))
                                      (declare (not safe))
                                      (cons __tmp60596 __tmp60594))))
                               (declare (not safe))
                               (cons __tmp60597 __tmp60593))))
                        (declare (not safe))
                        (cons __tmp60598 __tmp60592)))
                     (__tmp60578
                      (let ((__tmp60586
                             (let ((__tmp60590 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60587
                                    (let ((__tmp60589
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60588
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60589 __tmp60588))))
                               (declare (not safe))
                               (cons __tmp60590 __tmp60587)))
                            (__tmp60579
                             (let ((__tmp60580
                                    (let ((__tmp60585
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60581
                                           (let ((__tmp60584
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60582
                                                  (let ((__tmp60583
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60583 '()))))
                                             (declare (not safe))
                                             (cons __tmp60584 __tmp60582))))
                                      (declare (not safe))
                                      (cons __tmp60585 __tmp60581))))
                               (declare (not safe))
                               (cons __tmp60580 '()))))
                        (declare (not safe))
                        (cons __tmp60586 __tmp60579))))
                 (declare (not safe))
                 (cons __tmp60591 __tmp60578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60599
                                                        __tmp60577))))
                                           (declare (not safe))
                                           (cons __tmp60576 '()))))
                                    (declare (not safe))
                                    (cons __tmp60600 __tmp60575)))
                                 (__tmp60516
                                  (let ((__tmp60540
                                         (let ((__tmp60570
                                                (let ((__tmp60571
                                                       (let ((__tmp60572
                                                              (let ((__tmp60573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60573 '()))))
                 (declare (not safe))
                 (cons _L58333_ __tmp60572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58334_ __tmp60571)))
                                               (__tmp60541
                                                (let ((__tmp60564
                                                       (let ((__tmp60569
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60565
                                                              (let ((__tmp60566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60568 (gx#datum->syntax '#f 'probe))
                                   (__tmp60567
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58333_ '()))))
                               (declare (not safe))
                               (cons __tmp60568 __tmp60567))))
                        (declare (not safe))
                        (cons _L58337_ __tmp60566))))
                 (declare (not safe))
                 (cons __tmp60569 __tmp60565)))
              (__tmp60542
               (let ((__tmp60543
                      (let ((__tmp60563 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60544
                             (let ((__tmp60545
                                    (let ((__tmp60558
                                           (let ((__tmp60562
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60559
                                                  (let ((__tmp60561
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60560
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60561
                                                          __tmp60560))))
                                             (declare (not safe))
                                             (cons __tmp60562 __tmp60559)))
                                          (__tmp60546
                                           (let ((__tmp60547
                                                  (let ((__tmp60548
                                                         (let ((__tmp60549
                                                                (let ((__tmp60557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60550
                               (let ((__tmp60551
                                      (let ((__tmp60552
                                             (let ((__tmp60556
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60553
                                                    (let ((__tmp60555
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60554
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60555
                                                            __tmp60554))))
                                               (declare (not safe))
                                               (cons __tmp60556 __tmp60553))))
                                        (declare (not safe))
                                        (cons __tmp60552 '()))))
                                 (declare (not safe))
                                 (cons _L58337_ __tmp60551))))
                          (declare (not safe))
                          (cons __tmp60557 __tmp60550))))
                   (declare (not safe))
                   (cons __tmp60549 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58332_
                                                          __tmp60548))))
                                             (declare (not safe))
                                             (cons __tmp60547 '()))))
                                      (declare (not safe))
                                      (cons __tmp60558 __tmp60546))))
                               (declare (not safe))
                               (cons _L58337_ __tmp60545))))
                        (declare (not safe))
                        (cons __tmp60563 __tmp60544))))
                 (declare (not safe))
                 (cons __tmp60543 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60564
                                                        __tmp60542))))
                                           (declare (not safe))
                                           (cons __tmp60570 __tmp60541)))
                                        (__tmp60517
                                         (let ((__tmp60518
                                                (let ((__tmp60539
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60519
                                                       (let ((__tmp60520
                                                              (let ((__tmp60538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60521
                             (let ((__tmp60530
                                    (let ((__tmp60537
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60531
                                           (let ((__tmp60536
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60532
                                                  (let ((__tmp60535
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60533
                                                         (let ((__tmp60534
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60534 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60535
                                                          __tmp60533))))
                                             (declare (not safe))
                                             (cons __tmp60536 __tmp60532))))
                                      (declare (not safe))
                                      (cons __tmp60537 __tmp60531)))
                                   (__tmp60522
                                    (let ((__tmp60525
                                           (let ((__tmp60529
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60526
                                                  (let ((__tmp60528
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60527
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60528
                                                          __tmp60527))))
                                             (declare (not safe))
                                             (cons __tmp60529 __tmp60526)))
                                          (__tmp60523
                                           (let ((__tmp60524
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60524 '()))))
                                      (declare (not safe))
                                      (cons __tmp60525 __tmp60523))))
                               (declare (not safe))
                               (cons __tmp60530 __tmp60522))))
                        (declare (not safe))
                        (cons __tmp60538 __tmp60521))))
                 (declare (not safe))
                 (cons __tmp60520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60539
                                                        __tmp60519))))
                                           (declare (not safe))
                                           (cons __tmp60518 '()))))
                                    (declare (not safe))
                                    (cons __tmp60540 __tmp60517))))
                             (declare (not safe))
                             (cons __tmp60574 __tmp60516))))
                      (declare (not safe))
                      (cons __tmp60607 __tmp60515))))
               (declare (not safe))
               (cons __tmp60670 __tmp60514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60513 '()))))
                                         (declare (not safe))
                                         (cons __tmp60671 __tmp60512))))
                                  (declare (not safe))
                                  (cons __tmp60679 __tmp60511))))
                           (declare (not safe))
                           (cons __tmp60510 '()))))
                    (declare (not safe))
                    (cons __tmp60680 __tmp60509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60693
                                                           __tmp60508))))
                                              (declare (not safe))
                                              (cons __tmp60694 __tmp60507))))
                                       (declare (not safe))
                                       (cons __tmp60506 '()))))
                                (declare (not safe))
                                (cons __tmp60695 __tmp60505))))
                         (declare (not safe))
                         (cons __tmp60735 __tmp60504)))
                     _hd5821458322_
                     _hd5821158312_
                     _hd5820858302_
                     _hd5820558292_
                     _hd5820258282_
                     _hd5819958272_
                     _hd5819658262_
                     _hd5819358252_
                     _hd5819058242_)
                    (_g5817558221_ _g5817658225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5817558221_
                                                     _g5817658225_))))
                                            (_g5817558221_ _g5817658225_))))
                                    (_g5817558221_ _g5817658225_))))
                            (_g5817558221_ _g5817658225_))))
                    (_g5817558221_ _g5817658225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5817558221_
                                                     _g5817658225_))))
                                            (_g5817558221_ _g5817658225_))))
                                    (_g5817558221_ _g5817658225_))))
                            (_g5817558221_ _g5817658225_))))
                    (_g5817558221_ _g5817658225_)))))
        (_g5817458374_ _$stx58171_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58378_)
      (let* ((_g5838258416_
              (lambda (_g5838358412_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5838358412_)))
             (_g5838158527_
              (lambda (_g5838358420_)
                (if (gx#stx-pair? _g5838358420_)
                    (let ((_e5839258423_ (gx#syntax-e _g5838358420_)))
                      (let ((_hd5839158427_
                             (let ()
                               (declare (not safe))
                               (##car _e5839258423_)))
                            (_tl5839058430_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5839258423_))))
                        (if (gx#stx-pair? _tl5839058430_)
                            (let ((_e5839558433_ (gx#syntax-e _tl5839058430_)))
                              (let ((_hd5839458437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5839558433_)))
                                    (_tl5839358440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5839558433_))))
                                (if (gx#stx-pair? _tl5839358440_)
                                    (let ((_e5839858443_
                                           (gx#syntax-e _tl5839358440_)))
                                      (let ((_hd5839758447_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5839858443_)))
                                            (_tl5839658450_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5839858443_))))
                                        (if (gx#stx-pair? _tl5839658450_)
                                            (let ((_e5840158453_
                                                   (gx#syntax-e
                                                    _tl5839658450_)))
                                              (let ((_hd5840058457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5840158453_)))
                                                    (_tl5839958460_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5840158453_))))
                                                (if (gx#stx-pair?
                                                     _tl5839958460_)
                                                    (let ((_e5840458463_
                                                           (gx#syntax-e
                                                            _tl5839958460_)))
                                                      (let ((_hd5840358467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5840458463_)))
                    (_tl5840258470_
                     (let () (declare (not safe)) (##cdr _e5840458463_))))
                (if (gx#stx-pair? _tl5840258470_)
                    (let ((_e5840758473_ (gx#syntax-e _tl5840258470_)))
                      (let ((_hd5840658477_
                             (let ()
                               (declare (not safe))
                               (##car _e5840758473_)))
                            (_tl5840558480_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5840758473_))))
                        (if (gx#stx-pair? _tl5840558480_)
                            (let ((_e5841058483_ (gx#syntax-e _tl5840558480_)))
                              (let ((_hd5840958487_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5841058483_)))
                                    (_tl5840858490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5841058483_))))
                                (if (gx#stx-null? _tl5840858490_)
                                    ((lambda (_L58493_
                                              _L58495_
                                              _L58496_
                                              _L58497_
                                              _L58498_
                                              _L58499_)
                                       (let ((__tmp60897
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60736
                                              (let ((__tmp60857
                                                     (let ((__tmp60888
                                                            (let ((__tmp60896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60889
                           (let ((__tmp60890
                                  (let ((__tmp60895
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60891
                                         (let ((__tmp60893
                                                (let ((__tmp60894
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58495_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58497_ __tmp60894)))
                                               (__tmp60892
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58498_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60893 __tmp60892))))
                                    (declare (not safe))
                                    (cons __tmp60895 __tmp60891))))
                             (declare (not safe))
                             (cons __tmp60890 '()))))
                      (declare (not safe))
                      (cons __tmp60896 __tmp60889)))
                   (__tmp60858
                    (let ((__tmp60882
                           (let ((__tmp60887 (gx#datum->syntax '#f 'size))
                                 (__tmp60883
                                  (let ((__tmp60884
                                         (let ((__tmp60886
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60885
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58499_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60886 __tmp60885))))
                                    (declare (not safe))
                                    (cons __tmp60884 '()))))
                             (declare (not safe))
                             (cons __tmp60887 __tmp60883)))
                          (__tmp60859
                           (let ((__tmp60874
                                  (let ((__tmp60881
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60875
                                         (let ((__tmp60876
                                                (let ((__tmp60880
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60877
                                                       (let ((__tmp60879
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60878
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60879 __tmp60878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60880
                                                        __tmp60877))))
                                           (declare (not safe))
                                           (cons __tmp60876 '()))))
                                    (declare (not safe))
                                    (cons __tmp60881 __tmp60875)))
                                 (__tmp60860
                                  (let ((__tmp60861
                                         (let ((__tmp60873
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60862
                                                (let ((__tmp60863
                                                       (let ((__tmp60872
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60864
                                                              (let ((__tmp60866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60871
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60867
                                    (let ((__tmp60870
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60868
                                           (let ((__tmp60869
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60869 '()))))
                                      (declare (not safe))
                                      (cons __tmp60870 __tmp60868))))
                               (declare (not safe))
                               (cons __tmp60871 __tmp60867)))
                            (__tmp60865
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60866 __tmp60865))))
                 (declare (not safe))
                 (cons __tmp60872 __tmp60864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60863 '()))))
                                           (declare (not safe))
                                           (cons __tmp60873 __tmp60862))))
                                    (declare (not safe))
                                    (cons __tmp60861 '()))))
                             (declare (not safe))
                             (cons __tmp60874 __tmp60860))))
                      (declare (not safe))
                      (cons __tmp60882 __tmp60859))))
               (declare (not safe))
               (cons __tmp60888 __tmp60858)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60737
                                                     (let ((__tmp60738
                                                            (let ((__tmp60856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60739
                           (let ((__tmp60855 (gx#datum->syntax '#f 'loop))
                                 (__tmp60740
                                  (let ((__tmp60846
                                         (let ((__tmp60851
                                                (let ((__tmp60854
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60852
                                                       (let ((__tmp60853
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60853
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60854
                                                        __tmp60852)))
                                               (__tmp60847
                                                (let ((__tmp60848
                                                       (let ((__tmp60850
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60849
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60850 __tmp60849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60848 '()))))
                                           (declare (not safe))
                                           (cons __tmp60851 __tmp60847)))
                                        (__tmp60741
                                         (let ((__tmp60742
                                                (let ((__tmp60845
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60743
                                                       (let ((__tmp60837
                                                              (let ((__tmp60844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60838
                             (let ((__tmp60839
                                    (let ((__tmp60843
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60840
                                           (let ((__tmp60841
                                                  (let ((__tmp60842
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60842 '()))))
                                             (declare (not safe))
                                             (cons _L58499_ __tmp60841))))
                                      (declare (not safe))
                                      (cons __tmp60843 __tmp60840))))
                               (declare (not safe))
                               (cons __tmp60839 '()))))
                        (declare (not safe))
                        (cons __tmp60844 __tmp60838)))
                     (__tmp60744
                      (let ((__tmp60745
                             (let ((__tmp60836 (gx#datum->syntax '#f 'cond))
                                   (__tmp60746
                                    (let ((__tmp60825
                                           (let ((__tmp60829
                                                  (let ((__tmp60835
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60830
                                                         (let ((__tmp60834
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60831
                        (let ((__tmp60832
                               (let ((__tmp60833
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60833 '()))))
                          (declare (not safe))
                          (cons __tmp60832 '()))))
                   (declare (not safe))
                   (cons __tmp60834 __tmp60831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60835
                                                          __tmp60830)))
                                                 (__tmp60826
                                                  (let ((__tmp60827
                                                         (let ((__tmp60828
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp60828 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60827 '()))))
                                             (declare (not safe))
                                             (cons __tmp60829 __tmp60826)))
                                          (__tmp60747
                                           (let ((__tmp60799
                                                  (let ((__tmp60818
                                                         (let ((__tmp60824
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60819
                        (let ((__tmp60823 (gx#datum->syntax '#f 'k))
                              (__tmp60820
                               (let ((__tmp60821
                                      (let ((__tmp60822
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60822 '()))))
                                 (declare (not safe))
                                 (cons __tmp60821 '()))))
                          (declare (not safe))
                          (cons __tmp60823 __tmp60820))))
                   (declare (not safe))
                   (cons __tmp60824 __tmp60819)))
                (__tmp60800
                 (let ((__tmp60801
                        (let ((__tmp60817 (gx#datum->syntax '#f 'loop))
                              (__tmp60802
                               (let ((__tmp60809
                                      (let ((__tmp60816
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60810
                                             (let ((__tmp60815
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60811
                                                    (let ((__tmp60814
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60812
                                                           (let ((__tmp60813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60813 '()))))
              (declare (not safe))
              (cons __tmp60814 __tmp60812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60815 __tmp60811))))
                                        (declare (not safe))
                                        (cons __tmp60816 __tmp60810)))
                                     (__tmp60803
                                      (let ((__tmp60804
                                             (let ((__tmp60808
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60805
                                                    (let ((__tmp60807
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60806
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60807
                                                            __tmp60806))))
                                               (declare (not safe))
                                               (cons __tmp60808 __tmp60805))))
                                        (declare (not safe))
                                        (cons __tmp60804 '()))))
                                 (declare (not safe))
                                 (cons __tmp60809 __tmp60803))))
                          (declare (not safe))
                          (cons __tmp60817 __tmp60802))))
                   (declare (not safe))
                   (cons __tmp60801 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60818
                                                          __tmp60800)))
                                                 (__tmp60748
                                                  (let ((__tmp60770
                                                         (let ((__tmp60795
                                                                (let ((__tmp60796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60797
                                      (let ((__tmp60798
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60798 '()))))
                                 (declare (not safe))
                                 (cons _L58495_ __tmp60797))))
                          (declare (not safe))
                          (cons _L58496_ __tmp60796)))
                       (__tmp60771
                        (let ((__tmp60787
                               (let ((__tmp60794
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp60788
                                      (let ((__tmp60789
                                             (let ((__tmp60793
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp60790
                                                    (let ((__tmp60791
                                                           (let ((__tmp60792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp60792 '()))))
              (declare (not safe))
              (cons __tmp60791 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60793 __tmp60790))))
                                        (declare (not safe))
                                        (cons _L58499_ __tmp60789))))
                                 (declare (not safe))
                                 (cons __tmp60794 __tmp60788)))
                              (__tmp60772
                               (let ((__tmp60775
                                      (let ((__tmp60786
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp60776
                                             (let ((__tmp60777
                                                    (let ((__tmp60781
                                                           (let ((__tmp60785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60782
                          (let ((__tmp60784 (gx#datum->syntax '#f 'probe))
                                (__tmp60783
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60784 __tmp60783))))
                     (declare (not safe))
                     (cons __tmp60785 __tmp60782)))
                  (__tmp60778
                   (let ((__tmp60779
                          (let ((__tmp60780
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp60780 '()))))
                     (declare (not safe))
                     (cons __tmp60779 '()))))
              (declare (not safe))
              (cons __tmp60781 __tmp60778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58499_ __tmp60777))))
                                        (declare (not safe))
                                        (cons __tmp60786 __tmp60776)))
                                     (__tmp60773
                                      (let ((__tmp60774
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp60774 '()))))
                                 (declare (not safe))
                                 (cons __tmp60775 __tmp60773))))
                          (declare (not safe))
                          (cons __tmp60787 __tmp60772))))
                   (declare (not safe))
                   (cons __tmp60795 __tmp60771)))
                (__tmp60749
                 (let ((__tmp60750
                        (let ((__tmp60769 (gx#datum->syntax '#f 'else))
                              (__tmp60751
                               (let ((__tmp60752
                                      (let ((__tmp60768
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60753
                                             (let ((__tmp60760
                                                    (let ((__tmp60767
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60761
                                                           (let ((__tmp60766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60762
                          (let ((__tmp60765 (gx#datum->syntax '#f 'i))
                                (__tmp60763
                                 (let ((__tmp60764
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60764 '()))))
                            (declare (not safe))
                            (cons __tmp60765 __tmp60763))))
                     (declare (not safe))
                     (cons __tmp60766 __tmp60762))))
              (declare (not safe))
              (cons __tmp60767 __tmp60761)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60754
                                                    (let ((__tmp60755
                                                           (let ((__tmp60759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60756
                          (let ((__tmp60758 (gx#datum->syntax '#f 'i))
                                (__tmp60757
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60758 __tmp60757))))
                     (declare (not safe))
                     (cons __tmp60759 __tmp60756))))
              (declare (not safe))
              (cons __tmp60755 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60760 __tmp60754))))
                                        (declare (not safe))
                                        (cons __tmp60768 __tmp60753))))
                                 (declare (not safe))
                                 (cons __tmp60752 '()))))
                          (declare (not safe))
                          (cons __tmp60769 __tmp60751))))
                   (declare (not safe))
                   (cons __tmp60750 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60770
                                                          __tmp60749))))
                                             (declare (not safe))
                                             (cons __tmp60799 __tmp60748))))
                                      (declare (not safe))
                                      (cons __tmp60825 __tmp60747))))
                               (declare (not safe))
                               (cons __tmp60836 __tmp60746))))
                        (declare (not safe))
                        (cons __tmp60745 '()))))
                 (declare (not safe))
                 (cons __tmp60837 __tmp60744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60845
                                                        __tmp60743))))
                                           (declare (not safe))
                                           (cons __tmp60742 '()))))
                                    (declare (not safe))
                                    (cons __tmp60846 __tmp60741))))
                             (declare (not safe))
                             (cons __tmp60855 __tmp60740))))
                      (declare (not safe))
                      (cons __tmp60856 __tmp60739))))
               (declare (not safe))
               (cons __tmp60738 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60857 __tmp60737))))
                                         (declare (not safe))
                                         (cons __tmp60897 __tmp60736)))
                                     _hd5840958487_
                                     _hd5840658477_
                                     _hd5840358467_
                                     _hd5840058457_
                                     _hd5839758447_
                                     _hd5839458437_)
                                    (_g5838258416_ _g5838358420_))))
                            (_g5838258416_ _g5838358420_))))
                    (_g5838258416_ _g5838358420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5838258416_
                                                     _g5838358420_))))
                                            (_g5838258416_ _g5838358420_))))
                                    (_g5838258416_ _g5838358420_))))
                            (_g5838258416_ _g5838358420_))))
                    (_g5838258416_ _g5838358420_)))))
        (_g5838158527_ _$stx58378_)))))
