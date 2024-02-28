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
                                       (let ((__tmp59679
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp59677
                                              (let ((__tmp59678
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57504_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp59678))))
                                         (declare (not safe))
                                         (cons __tmp59679 __tmp59677)))
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
                       (let ((__tmp60111 (gx#datum->syntax '#f 'begin))
                             (__tmp59680
                              (let ((__tmp60090
                                     (let ((__tmp60110
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60091
                                            (let ((__tmp60101
                                                   (let ((__tmp60102
                                                          (let ((__tmp60107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60109 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60108
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60109 __tmp60108)))
                        (__tmp60103
                         (let ((__tmp60104
                                (let ((__tmp60106 (gx#datum->syntax '#f 'seed))
                                      (__tmp60105
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60106 __tmp60105))))
                           (declare (not safe))
                           (cons __tmp60104 '()))))
                    (declare (not safe))
                    (cons __tmp60107 __tmp60103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57689_
                                                           __tmp60102)))
                                                  (__tmp60092
                                                   (let ((__tmp60093
                                                          (let ((__tmp60100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60094
                         (let ((__tmp60099 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60095
                                (let ((__tmp60096
                                       (let ((__tmp60097
                                              (let ((__tmp60098
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60098 '()))))
                                         (declare (not safe))
                                         (cons _L57680_ __tmp60097))))
                                  (declare (not safe))
                                  (cons _L57682_ __tmp60096))))
                           (declare (not safe))
                           (cons __tmp60099 __tmp60095))))
                    (declare (not safe))
                    (cons __tmp60100 __tmp60094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60093 '()))))
                                              (declare (not safe))
                                              (cons __tmp60101 __tmp60092))))
                                       (declare (not safe))
                                       (cons __tmp60110 __tmp60091)))
                                    (__tmp59681
                                     (let ((__tmp60047
                                            (let ((__tmp60089
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60048
                                                   (let ((__tmp60082
                                                          (let ((__tmp60083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60088 (gx#datum->syntax '#f 'tab))
                               (__tmp60084
                                (let ((__tmp60087 (gx#datum->syntax '#f 'key))
                                      (__tmp60085
                                       (let ((__tmp60086
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60086 '()))))
                                  (declare (not safe))
                                  (cons __tmp60087 __tmp60085))))
                           (declare (not safe))
                           (cons __tmp60088 __tmp60084))))
                    (declare (not safe))
                    (cons _L57688_ __tmp60083)))
                 (__tmp60049
                  (let ((__tmp60050
                         (let ((__tmp60081 (gx#datum->syntax '#f 'let))
                               (__tmp60051
                                (let ((__tmp60065
                                       (let ((__tmp60074
                                              (let ((__tmp60080
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60075
                                                     (let ((__tmp60076
                                                            (let ((__tmp60079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60077
                           (let ((__tmp60078 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60078 '()))))
                      (declare (not safe))
                      (cons __tmp60079 __tmp60077))))
               (declare (not safe))
               (cons __tmp60076 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60080 __tmp60075)))
                                             (__tmp60066
                                              (let ((__tmp60067
                                                     (let ((__tmp60073
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60068
                                                            (let ((__tmp60069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60072
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60070
                                  (let ((__tmp60071
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60071 '()))))
                             (declare (not safe))
                             (cons __tmp60072 __tmp60070))))
                      (declare (not safe))
                      (cons __tmp60069 '()))))
               (declare (not safe))
               (cons __tmp60073 __tmp60068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60067 '()))))
                                         (declare (not safe))
                                         (cons __tmp60074 __tmp60066)))
                                      (__tmp60052
                                       (let ((__tmp60053
                                              (let ((__tmp60064
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60054
                                                     (let ((__tmp60063
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60055
                                                            (let ((__tmp60062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60056
                           (let ((__tmp60057
                                  (let ((__tmp60058
                                         (let ((__tmp60061
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60059
                                                (let ((__tmp60060
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60060 '()))))
                                           (declare (not safe))
                                           (cons __tmp60061 __tmp60059))))
                                    (declare (not safe))
                                    (cons _L57680_ __tmp60058))))
                             (declare (not safe))
                             (cons _L57682_ __tmp60057))))
                      (declare (not safe))
                      (cons __tmp60062 __tmp60056))))
               (declare (not safe))
               (cons __tmp60063 __tmp60055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60064 __tmp60054))))
                                         (declare (not safe))
                                         (cons __tmp60053 '()))))
                                  (declare (not safe))
                                  (cons __tmp60065 __tmp60052))))
                           (declare (not safe))
                           (cons __tmp60081 __tmp60051))))
                    (declare (not safe))
                    (cons __tmp60050 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60082
                                                           __tmp60049))))
                                              (declare (not safe))
                                              (cons __tmp60089 __tmp60048)))
                                           (__tmp59682
                                            (let ((__tmp60001
                                                   (let ((__tmp60046
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60002
                                                          (let ((__tmp60039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60040
                                (let ((__tmp60045 (gx#datum->syntax '#f 'tab))
                                      (__tmp60041
                                       (let ((__tmp60044
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60042
                                              (let ((__tmp60043
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60043 '()))))
                                         (declare (not safe))
                                         (cons __tmp60044 __tmp60042))))
                                  (declare (not safe))
                                  (cons __tmp60045 __tmp60041))))
                           (declare (not safe))
                           (cons _L57687_ __tmp60040)))
                        (__tmp60003
                         (let ((__tmp60012
                                (let ((__tmp60038 (gx#datum->syntax '#f 'when))
                                      (__tmp60013
                                       (let ((__tmp60019
                                              (let ((__tmp60037
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60020
                                                     (let ((__tmp60033
                                                            (let ((__tmp60036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60034
                           (let ((__tmp60035 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60035 '()))))
                      (declare (not safe))
                      (cons __tmp60036 __tmp60034)))
                   (__tmp60021
                    (let ((__tmp60022
                           (let ((__tmp60032
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60023
                                  (let ((__tmp60025
                                         (let ((__tmp60031
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60026
                                                (let ((__tmp60027
                                                       (let ((__tmp60030
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60028
                                                              (let ((__tmp60029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60029 '()))))
                 (declare (not safe))
                 (cons __tmp60030 __tmp60028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60027 '()))))
                                           (declare (not safe))
                                           (cons __tmp60031 __tmp60026)))
                                        (__tmp60024
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60025 __tmp60024))))
                             (declare (not safe))
                             (cons __tmp60032 __tmp60023))))
                      (declare (not safe))
                      (cons __tmp60022 '()))))
               (declare (not safe))
               (cons __tmp60033 __tmp60021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60037 __tmp60020)))
                                             (__tmp60014
                                              (let ((__tmp60015
                                                     (let ((__tmp60018
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60016
                                                            (let ((__tmp60017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60017 '()))))
               (declare (not safe))
               (cons __tmp60018 __tmp60016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60015 '()))))
                                         (declare (not safe))
                                         (cons __tmp60019 __tmp60014))))
                                  (declare (not safe))
                                  (cons __tmp60038 __tmp60013)))
                               (__tmp60004
                                (let ((__tmp60005
                                       (let ((__tmp60006
                                              (let ((__tmp60011
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60007
                                                     (let ((__tmp60010
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60008
                                                            (let ((__tmp60009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60009 '()))))
               (declare (not safe))
               (cons __tmp60010 __tmp60008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60011 __tmp60007))))
                                         (declare (not safe))
                                         (cons _L57686_ __tmp60006))))
                                  (declare (not safe))
                                  (cons __tmp60005 '()))))
                           (declare (not safe))
                           (cons __tmp60012 __tmp60004))))
                    (declare (not safe))
                    (cons __tmp60039 __tmp60003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60046
                                                           __tmp60002)))
                                                  (__tmp59683
                                                   (let ((__tmp59899
                                                          (let ((__tmp60000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp59900
                         (let ((__tmp59993
                                (let ((__tmp59994
                                       (let ((__tmp59999
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp59995
                                              (let ((__tmp59998
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp59996
                                                     (let ((__tmp59997
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp59997 '()))))
                                                (declare (not safe))
                                                (cons __tmp59998 __tmp59996))))
                                         (declare (not safe))
                                         (cons __tmp59999 __tmp59995))))
                                  (declare (not safe))
                                  (cons _L57686_ __tmp59994)))
                               (__tmp59901
                                (let ((__tmp59902
                                       (let ((__tmp59992
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp59903
                                              (let ((__tmp59976
                                                     (let ((__tmp59985
                                                            (let ((__tmp59991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp59986
                           (let ((__tmp59987
                                  (let ((__tmp59990
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp59988
                                         (let ((__tmp59989
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59989 '()))))
                                    (declare (not safe))
                                    (cons __tmp59990 __tmp59988))))
                             (declare (not safe))
                             (cons __tmp59987 '()))))
                      (declare (not safe))
                      (cons __tmp59991 __tmp59986)))
                   (__tmp59977
                    (let ((__tmp59978
                           (let ((__tmp59984 (gx#datum->syntax '#f 'seed))
                                 (__tmp59979
                                  (let ((__tmp59980
                                         (let ((__tmp59983
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp59981
                                                (let ((__tmp59982
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp59982 '()))))
                                           (declare (not safe))
                                           (cons __tmp59983 __tmp59981))))
                                    (declare (not safe))
                                    (cons __tmp59980 '()))))
                             (declare (not safe))
                             (cons __tmp59984 __tmp59979))))
                      (declare (not safe))
                      (cons __tmp59978 '()))))
               (declare (not safe))
               (cons __tmp59985 __tmp59977)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59904
                                                     (let ((__tmp59905
                                                            (let ((__tmp59975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp59906
                           (let ((__tmp59974 (gx#datum->syntax '#f 'table))
                                 (__tmp59907
                                  (let ((__tmp59973
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp59908
                                         (let ((__tmp59909
                                                (let ((__tmp59910
                                                       (let ((__tmp59972
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp59911
                                                              (let ((__tmp59971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp59912
                             (let ((__tmp59934
                                    (let ((__tmp59970
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp59935
                                           (let ((__tmp59936
                                                  (let ((__tmp59954
                                                         (let ((__tmp59969
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp59955
                        (let ((__tmp59965
                               (let ((__tmp59968
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp59966
                                      (let ((__tmp59967
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp59967 '()))))
                                 (declare (not safe))
                                 (cons __tmp59968 __tmp59966)))
                              (__tmp59956
                               (let ((__tmp59957
                                      (let ((__tmp59964
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp59958
                                             (let ((__tmp59960
                                                    (let ((__tmp59963
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59961
                                                           (let ((__tmp59962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59962 '()))))
              (declare (not safe))
              (cons __tmp59963 __tmp59961)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59959
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp59960 __tmp59959))))
                                        (declare (not safe))
                                        (cons __tmp59964 __tmp59958))))
                                 (declare (not safe))
                                 (cons __tmp59957 '()))))
                          (declare (not safe))
                          (cons __tmp59965 __tmp59956))))
                   (declare (not safe))
                   (cons __tmp59969 __tmp59955)))
                (__tmp59937
                 (let ((__tmp59938
                        (let ((__tmp59953 (gx#datum->syntax '#f 'set!))
                              (__tmp59939
                               (let ((__tmp59949
                                      (let ((__tmp59952
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59950
                                             (let ((__tmp59951
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59951 '()))))
                                        (declare (not safe))
                                        (cons __tmp59952 __tmp59950)))
                                     (__tmp59940
                                      (let ((__tmp59941
                                             (let ((__tmp59948
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59942
                                                    (let ((__tmp59944
                                                           (let ((__tmp59947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59945
                          (let ((__tmp59946 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59946 '()))))
                     (declare (not safe))
                     (cons __tmp59947 __tmp59945)))
                  (__tmp59943 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59944 __tmp59943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59948 __tmp59942))))
                                        (declare (not safe))
                                        (cons __tmp59941 '()))))
                                 (declare (not safe))
                                 (cons __tmp59949 __tmp59940))))
                          (declare (not safe))
                          (cons __tmp59953 __tmp59939))))
                   (declare (not safe))
                   (cons __tmp59938 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59954
                                                          __tmp59937))))
                                             (declare (not safe))
                                             (cons '() __tmp59936))))
                                      (declare (not safe))
                                      (cons __tmp59970 __tmp59935)))
                                   (__tmp59913
                                    (let ((__tmp59914
                                           (let ((__tmp59933
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp59915
                                                  (let ((__tmp59916
                                                         (let ((__tmp59917
                                                                (let ((__tmp59932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp59918
                               (let ((__tmp59928
                                      (let ((__tmp59931
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59929
                                             (let ((__tmp59930
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59930 '()))))
                                        (declare (not safe))
                                        (cons __tmp59931 __tmp59929)))
                                     (__tmp59919
                                      (let ((__tmp59920
                                             (let ((__tmp59927
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59921
                                                    (let ((__tmp59923
                                                           (let ((__tmp59926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59924
                          (let ((__tmp59925 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59925 '()))))
                     (declare (not safe))
                     (cons __tmp59926 __tmp59924)))
                  (__tmp59922 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59923 __tmp59922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59927 __tmp59921))))
                                        (declare (not safe))
                                        (cons __tmp59920 '()))))
                                 (declare (not safe))
                                 (cons __tmp59928 __tmp59919))))
                          (declare (not safe))
                          (cons __tmp59932 __tmp59918))))
                   (declare (not safe))
                   (cons __tmp59917 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp59916))))
                                             (declare (not safe))
                                             (cons __tmp59933 __tmp59915))))
                                      (declare (not safe))
                                      (cons __tmp59914 '()))))
                               (declare (not safe))
                               (cons __tmp59934 __tmp59913))))
                        (declare (not safe))
                        (cons __tmp59971 __tmp59912))))
                 (declare (not safe))
                 (cons __tmp59972 __tmp59911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57680_ __tmp59910))))
                                           (declare (not safe))
                                           (cons _L57682_ __tmp59909))))
                                    (declare (not safe))
                                    (cons __tmp59973 __tmp59908))))
                             (declare (not safe))
                             (cons __tmp59974 __tmp59907))))
                      (declare (not safe))
                      (cons __tmp59975 __tmp59906))))
               (declare (not safe))
               (cons __tmp59905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59976 __tmp59904))))
                                         (declare (not safe))
                                         (cons __tmp59992 __tmp59903))))
                                  (declare (not safe))
                                  (cons __tmp59902 '()))))
                           (declare (not safe))
                           (cons __tmp59993 __tmp59901))))
                    (declare (not safe))
                    (cons __tmp60000 __tmp59900)))
                 (__tmp59684
                  (let ((__tmp59851
                         (let ((__tmp59898 (gx#datum->syntax '#f 'def))
                               (__tmp59852
                                (let ((__tmp59890
                                       (let ((__tmp59891
                                              (let ((__tmp59897
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59892
                                                     (let ((__tmp59896
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59893
                                                            (let ((__tmp59894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59895 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp59895 '()))))
                      (declare (not safe))
                      (cons _L57685_ __tmp59894))))
               (declare (not safe))
               (cons __tmp59896 __tmp59893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59897 __tmp59892))))
                                         (declare (not safe))
                                         (cons _L57685_ __tmp59891)))
                                      (__tmp59853
                                       (let ((__tmp59863
                                              (let ((__tmp59889
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp59864
                                                     (let ((__tmp59870
                                                            (let ((__tmp59888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp59871
                           (let ((__tmp59884
                                  (let ((__tmp59887
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp59885
                                         (let ((__tmp59886
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59886 '()))))
                                    (declare (not safe))
                                    (cons __tmp59887 __tmp59885)))
                                 (__tmp59872
                                  (let ((__tmp59873
                                         (let ((__tmp59883
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp59874
                                                (let ((__tmp59876
                                                       (let ((__tmp59882
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp59877
                                                              (let ((__tmp59878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59881
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp59879
                                    (let ((__tmp59880
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp59880 '()))))
                               (declare (not safe))
                               (cons __tmp59881 __tmp59879))))
                        (declare (not safe))
                        (cons __tmp59878 '()))))
                 (declare (not safe))
                 (cons __tmp59882 __tmp59877)))
              (__tmp59875 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59876
                                                        __tmp59875))))
                                           (declare (not safe))
                                           (cons __tmp59883 __tmp59874))))
                                    (declare (not safe))
                                    (cons __tmp59873 '()))))
                             (declare (not safe))
                             (cons __tmp59884 __tmp59872))))
                      (declare (not safe))
                      (cons __tmp59888 __tmp59871)))
                   (__tmp59865
                    (let ((__tmp59866
                           (let ((__tmp59869
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp59867
                                  (let ((__tmp59868
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59868 '()))))
                             (declare (not safe))
                             (cons __tmp59869 __tmp59867))))
                      (declare (not safe))
                      (cons __tmp59866 '()))))
               (declare (not safe))
               (cons __tmp59870 __tmp59865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59889 __tmp59864)))
                                             (__tmp59854
                                              (let ((__tmp59855
                                                     (let ((__tmp59856
                                                            (let ((__tmp59862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59857
                           (let ((__tmp59861 (gx#datum->syntax '#f 'key))
                                 (__tmp59858
                                  (let ((__tmp59859
                                         (let ((__tmp59860
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp59860 '()))))
                                    (declare (not safe))
                                    (cons _L57685_ __tmp59859))))
                             (declare (not safe))
                             (cons __tmp59861 __tmp59858))))
                      (declare (not safe))
                      (cons __tmp59862 __tmp59857))))
               (declare (not safe))
               (cons _L57684_ __tmp59856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59855 '()))))
                                         (declare (not safe))
                                         (cons __tmp59863 __tmp59854))))
                                  (declare (not safe))
                                  (cons __tmp59890 __tmp59853))))
                           (declare (not safe))
                           (cons __tmp59898 __tmp59852)))
                        (__tmp59685
                         (let ((__tmp59747
                                (let ((__tmp59850 (gx#datum->syntax '#f 'def))
                                      (__tmp59748
                                       (let ((__tmp59842
                                              (let ((__tmp59843
                                                     (let ((__tmp59849
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp59844
                                                            (let ((__tmp59848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp59845
                           (let ((__tmp59846
                                  (let ((__tmp59847
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp59847 '()))))
                             (declare (not safe))
                             (cons _L57685_ __tmp59846))))
                      (declare (not safe))
                      (cons __tmp59848 __tmp59845))))
               (declare (not safe))
               (cons __tmp59849 __tmp59844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57684_ __tmp59843)))
                                             (__tmp59749
                                              (let ((__tmp59750
                                                     (let ((__tmp59841
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp59751
                                                            (let ((__tmp59825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59834
                                  (let ((__tmp59840
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp59835
                                         (let ((__tmp59836
                                                (let ((__tmp59839
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp59837
                                                       (let ((__tmp59838
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp59838
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp59839
                                                        __tmp59837))))
                                           (declare (not safe))
                                           (cons __tmp59836 '()))))
                                    (declare (not safe))
                                    (cons __tmp59840 __tmp59835)))
                                 (__tmp59826
                                  (let ((__tmp59827
                                         (let ((__tmp59833
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp59828
                                                (let ((__tmp59829
                                                       (let ((__tmp59832
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp59830
                                                              (let ((__tmp59831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59831 '()))))
                 (declare (not safe))
                 (cons __tmp59832 __tmp59830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59829 '()))))
                                           (declare (not safe))
                                           (cons __tmp59833 __tmp59828))))
                                    (declare (not safe))
                                    (cons __tmp59827 '()))))
                             (declare (not safe))
                             (cons __tmp59834 __tmp59826)))
                          (__tmp59752
                           (let ((__tmp59753
                                  (let ((__tmp59824
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp59754
                                         (let ((__tmp59823
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59755
                                                (let ((__tmp59822
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59756
                                                       (let ((__tmp59757
                                                              (let ((__tmp59758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59821 (gx#datum->syntax '#f 'key))
                                   (__tmp59759
                                    (let ((__tmp59760
                                           (let ((__tmp59820
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp59761
                                                  (let ((__tmp59783
                                                         (let ((__tmp59819
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp59784
                        (let ((__tmp59785
                               (let ((__tmp59803
                                      (let ((__tmp59818
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp59804
                                             (let ((__tmp59814
                                                    (let ((__tmp59817
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59815
                                                           (let ((__tmp59816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59816 '()))))
              (declare (not safe))
              (cons __tmp59817 __tmp59815)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59805
                                                    (let ((__tmp59806
                                                           (let ((__tmp59813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp59807
                          (let ((__tmp59809
                                 (let ((__tmp59812
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp59810
                                        (let ((__tmp59811
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp59811 '()))))
                                   (declare (not safe))
                                   (cons __tmp59812 __tmp59810)))
                                (__tmp59808
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59809 __tmp59808))))
                     (declare (not safe))
                     (cons __tmp59813 __tmp59807))))
              (declare (not safe))
              (cons __tmp59806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59814 __tmp59805))))
                                        (declare (not safe))
                                        (cons __tmp59818 __tmp59804)))
                                     (__tmp59786
                                      (let ((__tmp59787
                                             (let ((__tmp59802
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59788
                                                    (let ((__tmp59798
                                                           (let ((__tmp59801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59799
                          (let ((__tmp59800 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59800 '()))))
                     (declare (not safe))
                     (cons __tmp59801 __tmp59799)))
                  (__tmp59789
                   (let ((__tmp59790
                          (let ((__tmp59797 (gx#datum->syntax '#f 'fx+))
                                (__tmp59791
                                 (let ((__tmp59793
                                        (let ((__tmp59796
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59794
                                               (let ((__tmp59795
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59795 '()))))
                                          (declare (not safe))
                                          (cons __tmp59796 __tmp59794)))
                                       (__tmp59792
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59793 __tmp59792))))
                            (declare (not safe))
                            (cons __tmp59797 __tmp59791))))
                     (declare (not safe))
                     (cons __tmp59790 '()))))
              (declare (not safe))
              (cons __tmp59798 __tmp59789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59802 __tmp59788))))
                                        (declare (not safe))
                                        (cons __tmp59787 '()))))
                                 (declare (not safe))
                                 (cons __tmp59803 __tmp59786))))
                          (declare (not safe))
                          (cons '() __tmp59785))))
                   (declare (not safe))
                   (cons __tmp59819 __tmp59784)))
                (__tmp59762
                 (let ((__tmp59763
                        (let ((__tmp59782 (gx#datum->syntax '#f 'lambda))
                              (__tmp59764
                               (let ((__tmp59765
                                      (let ((__tmp59766
                                             (let ((__tmp59781
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59767
                                                    (let ((__tmp59777
                                                           (let ((__tmp59780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59778
                          (let ((__tmp59779 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59779 '()))))
                     (declare (not safe))
                     (cons __tmp59780 __tmp59778)))
                  (__tmp59768
                   (let ((__tmp59769
                          (let ((__tmp59776 (gx#datum->syntax '#f 'fx+))
                                (__tmp59770
                                 (let ((__tmp59772
                                        (let ((__tmp59775
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59773
                                               (let ((__tmp59774
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59774 '()))))
                                          (declare (not safe))
                                          (cons __tmp59775 __tmp59773)))
                                       (__tmp59771
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59772 __tmp59771))))
                            (declare (not safe))
                            (cons __tmp59776 __tmp59770))))
                     (declare (not safe))
                     (cons __tmp59769 '()))))
              (declare (not safe))
              (cons __tmp59777 __tmp59768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59781 __tmp59767))))
                                        (declare (not safe))
                                        (cons __tmp59766 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp59765))))
                          (declare (not safe))
                          (cons __tmp59782 __tmp59764))))
                   (declare (not safe))
                   (cons __tmp59763 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59783
                                                          __tmp59762))))
                                             (declare (not safe))
                                             (cons __tmp59820 __tmp59761))))
                                      (declare (not safe))
                                      (cons _L57685_ __tmp59760))))
                               (declare (not safe))
                               (cons __tmp59821 __tmp59759))))
                        (declare (not safe))
                        (cons _L57680_ __tmp59758))))
                 (declare (not safe))
                 (cons _L57682_ __tmp59757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59822
                                                        __tmp59756))))
                                           (declare (not safe))
                                           (cons __tmp59823 __tmp59755))))
                                    (declare (not safe))
                                    (cons __tmp59824 __tmp59754))))
                             (declare (not safe))
                             (cons __tmp59753 '()))))
                      (declare (not safe))
                      (cons __tmp59825 __tmp59752))))
               (declare (not safe))
               (cons __tmp59841 __tmp59751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59750 '()))))
                                         (declare (not safe))
                                         (cons __tmp59842 __tmp59749))))
                                  (declare (not safe))
                                  (cons __tmp59850 __tmp59748)))
                               (__tmp59686
                                (let ((__tmp59687
                                       (let ((__tmp59746
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp59688
                                              (let ((__tmp59741
                                                     (let ((__tmp59742
                                                            (let ((__tmp59745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59743
                           (let ((__tmp59744 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp59744 '()))))
                      (declare (not safe))
                      (cons __tmp59745 __tmp59743))))
               (declare (not safe))
               (cons _L57683_ __tmp59742)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59689
                                                     (let ((__tmp59690
                                                            (let ((__tmp59740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59691
                           (let ((__tmp59724
                                  (let ((__tmp59733
                                         (let ((__tmp59739
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59734
                                                (let ((__tmp59735
                                                       (let ((__tmp59738
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59736
                                                              (let ((__tmp59737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59737 '()))))
                 (declare (not safe))
                 (cons __tmp59738 __tmp59736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59735 '()))))
                                           (declare (not safe))
                                           (cons __tmp59739 __tmp59734)))
                                        (__tmp59725
                                         (let ((__tmp59726
                                                (let ((__tmp59732
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59727
                                                       (let ((__tmp59728
                                                              (let ((__tmp59731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp59729
                             (let ((__tmp59730 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp59730 '()))))
                        (declare (not safe))
                        (cons __tmp59731 __tmp59729))))
                 (declare (not safe))
                 (cons __tmp59728 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59732
                                                        __tmp59727))))
                                           (declare (not safe))
                                           (cons __tmp59726 '()))))
                                    (declare (not safe))
                                    (cons __tmp59733 __tmp59725)))
                                 (__tmp59692
                                  (let ((__tmp59693
                                         (let ((__tmp59723
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp59694
                                                (let ((__tmp59722
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp59695
                                                       (let ((__tmp59721
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp59696
                                                              (let ((__tmp59697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59698
                                    (let ((__tmp59720
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp59699
                                           (let ((__tmp59700
                                                  (let ((__tmp59719
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp59701
                                                         (let ((__tmp59702
                                                                (let ((__tmp59703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59718 (gx#datum->syntax '#f 'set!))
                                     (__tmp59704
                                      (let ((__tmp59714
                                             (let ((__tmp59717
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp59715
                                                    (let ((__tmp59716
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp59716 '()))))
                                               (declare (not safe))
                                               (cons __tmp59717 __tmp59715)))
                                            (__tmp59705
                                             (let ((__tmp59706
                                                    (let ((__tmp59713
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp59707
                                                           (let ((__tmp59709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp59712
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp59710
                                 (let ((__tmp59711
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp59711 '()))))
                            (declare (not safe))
                            (cons __tmp59712 __tmp59710)))
                         (__tmp59708
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59709 __tmp59708))))
              (declare (not safe))
              (cons __tmp59713 __tmp59707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59706 '()))))
                                        (declare (not safe))
                                        (cons __tmp59714 __tmp59705))))
                                 (declare (not safe))
                                 (cons __tmp59718 __tmp59704))))
                          (declare (not safe))
                          (cons __tmp59703 '()))))
                   (declare (not safe))
                   (cons '() __tmp59702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59719
                                                          __tmp59701))))
                                             (declare (not safe))
                                             (cons __tmp59700 '()))))
                                      (declare (not safe))
                                      (cons __tmp59720 __tmp59699))))
                               (declare (not safe))
                               (cons _L57680_ __tmp59698))))
                        (declare (not safe))
                        (cons _L57682_ __tmp59697))))
                 (declare (not safe))
                 (cons __tmp59721 __tmp59696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59722
                                                        __tmp59695))))
                                           (declare (not safe))
                                           (cons __tmp59723 __tmp59694))))
                                    (declare (not safe))
                                    (cons __tmp59693 '()))))
                             (declare (not safe))
                             (cons __tmp59724 __tmp59692))))
                      (declare (not safe))
                      (cons __tmp59740 __tmp59691))))
               (declare (not safe))
               (cons __tmp59690 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59741 __tmp59689))))
                                         (declare (not safe))
                                         (cons __tmp59746 __tmp59688))))
                                  (declare (not safe))
                                  (cons __tmp59687 '()))))
                           (declare (not safe))
                           (cons __tmp59747 __tmp59686))))
                    (declare (not safe))
                    (cons __tmp59851 __tmp59685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59899
                                                           __tmp59684))))
                                              (declare (not safe))
                                              (cons __tmp60001 __tmp59683))))
                                       (declare (not safe))
                                       (cons __tmp60047 __tmp59682))))
                                (declare (not safe))
                                (cons __tmp60090 __tmp59681))))
                         (declare (not safe))
                         (cons __tmp60111 __tmp59680)))
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
                                                       (let ((__tmp60131
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60112
                                                              (let ((__tmp60119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60130
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60120
                                    (let ((__tmp60121
                                           (let ((__tmp60129
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60122
                                                  (let ((__tmp60123
                                                         (let ((__tmp60124
                                                                (let ((__tmp60125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60128 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60126
                                      (let ((__tmp60127
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57805_ '()))))
                                        (declare (not safe))
                                        (cons _L57805_ __tmp60127))))
                                 (declare (not safe))
                                 (cons __tmp60128 __tmp60126))))
                          (declare (not safe))
                          (cons __tmp60125 '()))))
                   (declare (not safe))
                   (cons _L57805_ __tmp60124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57806_
                                                          __tmp60123))))
                                             (declare (not safe))
                                             (cons __tmp60129 __tmp60122))))
                                      (declare (not safe))
                                      (cons __tmp60121 '()))))
                               (declare (not safe))
                               (cons __tmp60130 __tmp60120)))
                            (__tmp60113
                             (let ((__tmp60114
                                    (let ((__tmp60118
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60115
                                           (let ((__tmp60117
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60116
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57803_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60117 __tmp60116))))
                                      (declare (not safe))
                                      (cons __tmp60118 __tmp60115))))
                               (declare (not safe))
                               (cons __tmp60114 '()))))
                        (declare (not safe))
                        (cons __tmp60119 __tmp60113))))
                 (declare (not safe))
                 (cons __tmp60131 __tmp60112)))
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
                                       (let ((__tmp60290
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60132
                                              (let ((__tmp60250
                                                     (let ((__tmp60281
                                                            (let ((__tmp60289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60282
                           (let ((__tmp60283
                                  (let ((__tmp60288
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60284
                                         (let ((__tmp60286
                                                (let ((__tmp60287
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57946_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57948_ __tmp60287)))
                                               (__tmp60285
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57949_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60286 __tmp60285))))
                                    (declare (not safe))
                                    (cons __tmp60288 __tmp60284))))
                             (declare (not safe))
                             (cons __tmp60283 '()))))
                      (declare (not safe))
                      (cons __tmp60289 __tmp60282)))
                   (__tmp60251
                    (let ((__tmp60275
                           (let ((__tmp60280 (gx#datum->syntax '#f 'size))
                                 (__tmp60276
                                  (let ((__tmp60277
                                         (let ((__tmp60279
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60278
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57950_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60279 __tmp60278))))
                                    (declare (not safe))
                                    (cons __tmp60277 '()))))
                             (declare (not safe))
                             (cons __tmp60280 __tmp60276)))
                          (__tmp60252
                           (let ((__tmp60267
                                  (let ((__tmp60274
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60268
                                         (let ((__tmp60269
                                                (let ((__tmp60273
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60270
                                                       (let ((__tmp60272
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60271
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60272 __tmp60271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60273
                                                        __tmp60270))))
                                           (declare (not safe))
                                           (cons __tmp60269 '()))))
                                    (declare (not safe))
                                    (cons __tmp60274 __tmp60268)))
                                 (__tmp60253
                                  (let ((__tmp60254
                                         (let ((__tmp60266
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60255
                                                (let ((__tmp60256
                                                       (let ((__tmp60265
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60257
                                                              (let ((__tmp60259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60264
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60260
                                    (let ((__tmp60263
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60261
                                           (let ((__tmp60262
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60262 '()))))
                                      (declare (not safe))
                                      (cons __tmp60263 __tmp60261))))
                               (declare (not safe))
                               (cons __tmp60264 __tmp60260)))
                            (__tmp60258
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60259 __tmp60258))))
                 (declare (not safe))
                 (cons __tmp60265 __tmp60257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60256 '()))))
                                           (declare (not safe))
                                           (cons __tmp60266 __tmp60255))))
                                    (declare (not safe))
                                    (cons __tmp60254 '()))))
                             (declare (not safe))
                             (cons __tmp60267 __tmp60253))))
                      (declare (not safe))
                      (cons __tmp60275 __tmp60252))))
               (declare (not safe))
               (cons __tmp60281 __tmp60251)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60133
                                                     (let ((__tmp60134
                                                            (let ((__tmp60249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60135
                           (let ((__tmp60248 (gx#datum->syntax '#f 'loop))
                                 (__tmp60136
                                  (let ((__tmp60235
                                         (let ((__tmp60244
                                                (let ((__tmp60247
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60245
                                                       (let ((__tmp60246
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60246
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60247
                                                        __tmp60245)))
                                               (__tmp60236
                                                (let ((__tmp60241
                                                       (let ((__tmp60243
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60242
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60243 __tmp60242)))
              (__tmp60237
               (let ((__tmp60238
                      (let ((__tmp60240 (gx#datum->syntax '#f 'deleted))
                            (__tmp60239
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60240 __tmp60239))))
                 (declare (not safe))
                 (cons __tmp60238 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60241
                                                        __tmp60237))))
                                           (declare (not safe))
                                           (cons __tmp60244 __tmp60236)))
                                        (__tmp60137
                                         (let ((__tmp60138
                                                (let ((__tmp60234
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60139
                                                       (let ((__tmp60226
                                                              (let ((__tmp60233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60227
                             (let ((__tmp60228
                                    (let ((__tmp60232
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60229
                                           (let ((__tmp60230
                                                  (let ((__tmp60231
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60231 '()))))
                                             (declare (not safe))
                                             (cons _L57950_ __tmp60230))))
                                      (declare (not safe))
                                      (cons __tmp60232 __tmp60229))))
                               (declare (not safe))
                               (cons __tmp60228 '()))))
                        (declare (not safe))
                        (cons __tmp60233 __tmp60227)))
                     (__tmp60140
                      (let ((__tmp60141
                             (let ((__tmp60225 (gx#datum->syntax '#f 'cond))
                                   (__tmp60142
                                    (let ((__tmp60216
                                           (let ((__tmp60218
                                                  (let ((__tmp60224
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60219
                                                         (let ((__tmp60223
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60220
                        (let ((__tmp60221
                               (let ((__tmp60222
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60222 '()))))
                          (declare (not safe))
                          (cons __tmp60221 '()))))
                   (declare (not safe))
                   (cons __tmp60223 __tmp60220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60224
                                                          __tmp60219)))
                                                 (__tmp60217
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57944_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60218 __tmp60217)))
                                          (__tmp60143
                                           (let ((__tmp60183
                                                  (let ((__tmp60209
                                                         (let ((__tmp60215
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60210
                        (let ((__tmp60214 (gx#datum->syntax '#f 'k))
                              (__tmp60211
                               (let ((__tmp60212
                                      (let ((__tmp60213
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60213 '()))))
                                 (declare (not safe))
                                 (cons __tmp60212 '()))))
                          (declare (not safe))
                          (cons __tmp60214 __tmp60211))))
                   (declare (not safe))
                   (cons __tmp60215 __tmp60210)))
                (__tmp60184
                 (let ((__tmp60185
                        (let ((__tmp60208 (gx#datum->syntax '#f 'loop))
                              (__tmp60186
                               (let ((__tmp60200
                                      (let ((__tmp60207
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60201
                                             (let ((__tmp60206
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60202
                                                    (let ((__tmp60205
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60203
                                                           (let ((__tmp60204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60204 '()))))
              (declare (not safe))
              (cons __tmp60205 __tmp60203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60206 __tmp60202))))
                                        (declare (not safe))
                                        (cons __tmp60207 __tmp60201)))
                                     (__tmp60187
                                      (let ((__tmp60195
                                             (let ((__tmp60199
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60196
                                                    (let ((__tmp60198
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60197
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60198
                                                            __tmp60197))))
                                               (declare (not safe))
                                               (cons __tmp60199 __tmp60196)))
                                            (__tmp60188
                                             (let ((__tmp60189
                                                    (let ((__tmp60194
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60190
                                                           (let ((__tmp60193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60191
                          (let ((__tmp60192 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60192 '()))))
                     (declare (not safe))
                     (cons __tmp60193 __tmp60191))))
              (declare (not safe))
              (cons __tmp60194 __tmp60190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60189 '()))))
                                        (declare (not safe))
                                        (cons __tmp60195 __tmp60188))))
                                 (declare (not safe))
                                 (cons __tmp60200 __tmp60187))))
                          (declare (not safe))
                          (cons __tmp60208 __tmp60186))))
                   (declare (not safe))
                   (cons __tmp60185 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60209
                                                          __tmp60184)))
                                                 (__tmp60144
                                                  (let ((__tmp60168
                                                         (let ((__tmp60179
                                                                (let ((__tmp60180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60181
                                      (let ((__tmp60182
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60182 '()))))
                                 (declare (not safe))
                                 (cons _L57946_ __tmp60181))))
                          (declare (not safe))
                          (cons _L57947_ __tmp60180)))
                       (__tmp60169
                        (let ((__tmp60170
                               (let ((__tmp60178
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60171
                                      (let ((__tmp60172
                                             (let ((__tmp60173
                                                    (let ((__tmp60177
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60174
                                                           (let ((__tmp60176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60175
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60176 __tmp60175))))
              (declare (not safe))
              (cons __tmp60177 __tmp60174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60173 '()))))
                                        (declare (not safe))
                                        (cons _L57950_ __tmp60172))))
                                 (declare (not safe))
                                 (cons __tmp60178 __tmp60171))))
                          (declare (not safe))
                          (cons __tmp60170 '()))))
                   (declare (not safe))
                   (cons __tmp60179 __tmp60169)))
                (__tmp60145
                 (let ((__tmp60146
                        (let ((__tmp60167 (gx#datum->syntax '#f 'else))
                              (__tmp60147
                               (let ((__tmp60148
                                      (let ((__tmp60166
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60149
                                             (let ((__tmp60158
                                                    (let ((__tmp60165
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60159
                                                           (let ((__tmp60164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60160
                          (let ((__tmp60163 (gx#datum->syntax '#f 'i))
                                (__tmp60161
                                 (let ((__tmp60162
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60162 '()))))
                            (declare (not safe))
                            (cons __tmp60163 __tmp60161))))
                     (declare (not safe))
                     (cons __tmp60164 __tmp60160))))
              (declare (not safe))
              (cons __tmp60165 __tmp60159)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60150
                                                    (let ((__tmp60153
                                                           (let ((__tmp60157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60154
                          (let ((__tmp60156 (gx#datum->syntax '#f 'i))
                                (__tmp60155
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60156 __tmp60155))))
                     (declare (not safe))
                     (cons __tmp60157 __tmp60154)))
                  (__tmp60151
                   (let ((__tmp60152 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60152 '()))))
              (declare (not safe))
              (cons __tmp60153 __tmp60151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60158 __tmp60150))))
                                        (declare (not safe))
                                        (cons __tmp60166 __tmp60149))))
                                 (declare (not safe))
                                 (cons __tmp60148 '()))))
                          (declare (not safe))
                          (cons __tmp60167 __tmp60147))))
                   (declare (not safe))
                   (cons __tmp60146 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60168
                                                          __tmp60145))))
                                             (declare (not safe))
                                             (cons __tmp60183 __tmp60144))))
                                      (declare (not safe))
                                      (cons __tmp60216 __tmp60143))))
                               (declare (not safe))
                               (cons __tmp60225 __tmp60142))))
                        (declare (not safe))
                        (cons __tmp60141 '()))))
                 (declare (not safe))
                 (cons __tmp60226 __tmp60140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60234
                                                        __tmp60139))))
                                           (declare (not safe))
                                           (cons __tmp60138 '()))))
                                    (declare (not safe))
                                    (cons __tmp60235 __tmp60137))))
                             (declare (not safe))
                             (cons __tmp60248 __tmp60136))))
                      (declare (not safe))
                      (cons __tmp60249 __tmp60135))))
               (declare (not safe))
               (cons __tmp60134 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60250 __tmp60133))))
                                         (declare (not safe))
                                         (cons __tmp60290 __tmp60132)))
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
                                                       (let ((__tmp60507
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60291
                                                              (let ((__tmp60467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60498
                                    (let ((__tmp60506
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60499
                                           (let ((__tmp60500
                                                  (let ((__tmp60505
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60501
                                                         (let ((__tmp60503
                                                                (let ((__tmp60504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58129_ '()))))
                          (declare (not safe))
                          (cons _L58131_ __tmp60504)))
                       (__tmp60502
                        (let () (declare (not safe)) (cons _L58132_ '()))))
                   (declare (not safe))
                   (cons __tmp60503 __tmp60502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60505
                                                          __tmp60501))))
                                             (declare (not safe))
                                             (cons __tmp60500 '()))))
                                      (declare (not safe))
                                      (cons __tmp60506 __tmp60499)))
                                   (__tmp60468
                                    (let ((__tmp60492
                                           (let ((__tmp60497
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60493
                                                  (let ((__tmp60494
                                                         (let ((__tmp60496
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60495
                        (let () (declare (not safe)) (cons _L58133_ '()))))
                   (declare (not safe))
                   (cons __tmp60496 __tmp60495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60494 '()))))
                                             (declare (not safe))
                                             (cons __tmp60497 __tmp60493)))
                                          (__tmp60469
                                           (let ((__tmp60484
                                                  (let ((__tmp60491
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60485
                                                         (let ((__tmp60486
                                                                (let ((__tmp60490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60487
                               (let ((__tmp60489 (gx#datum->syntax '#f 'size))
                                     (__tmp60488
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60489 __tmp60488))))
                          (declare (not safe))
                          (cons __tmp60490 __tmp60487))))
                   (declare (not safe))
                   (cons __tmp60486 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60491
                                                          __tmp60485)))
                                                 (__tmp60470
                                                  (let ((__tmp60471
                                                         (let ((__tmp60483
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60472
                        (let ((__tmp60473
                               (let ((__tmp60482
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60474
                                      (let ((__tmp60476
                                             (let ((__tmp60481
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60477
                                                    (let ((__tmp60480
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60478
                                                           (let ((__tmp60479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60479 '()))))
              (declare (not safe))
              (cons __tmp60480 __tmp60478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60481 __tmp60477)))
                                            (__tmp60475
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60476 __tmp60475))))
                                 (declare (not safe))
                                 (cons __tmp60482 __tmp60474))))
                          (declare (not safe))
                          (cons __tmp60473 '()))))
                   (declare (not safe))
                   (cons __tmp60483 __tmp60472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60471 '()))))
                                             (declare (not safe))
                                             (cons __tmp60484 __tmp60470))))
                                      (declare (not safe))
                                      (cons __tmp60492 __tmp60469))))
                               (declare (not safe))
                               (cons __tmp60498 __tmp60468)))
                            (__tmp60292
                             (let ((__tmp60293
                                    (let ((__tmp60466
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60294
                                           (let ((__tmp60465
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60295
                                                  (let ((__tmp60452
                                                         (let ((__tmp60461
                                                                (let ((__tmp60464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60462
                               (let ((__tmp60463
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60463 '()))))
                          (declare (not safe))
                          (cons __tmp60464 __tmp60462)))
                       (__tmp60453
                        (let ((__tmp60458
                               (let ((__tmp60460 (gx#datum->syntax '#f 'i))
                                     (__tmp60459
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60460 __tmp60459)))
                              (__tmp60454
                               (let ((__tmp60455
                                      (let ((__tmp60457
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60456
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60457 __tmp60456))))
                                 (declare (not safe))
                                 (cons __tmp60455 '()))))
                          (declare (not safe))
                          (cons __tmp60458 __tmp60454))))
                   (declare (not safe))
                   (cons __tmp60461 __tmp60453)))
                (__tmp60296
                 (let ((__tmp60297
                        (let ((__tmp60451 (gx#datum->syntax '#f 'let))
                              (__tmp60298
                               (let ((__tmp60443
                                      (let ((__tmp60450
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60444
                                             (let ((__tmp60445
                                                    (let ((__tmp60449
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60446
                                                           (let ((__tmp60447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60448 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60448 '()))))
                     (declare (not safe))
                     (cons _L58133_ __tmp60447))))
              (declare (not safe))
              (cons __tmp60449 __tmp60446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60445 '()))))
                                        (declare (not safe))
                                        (cons __tmp60450 __tmp60444)))
                                     (__tmp60299
                                      (let ((__tmp60300
                                             (let ((__tmp60442
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60301
                                                    (let ((__tmp60383
                                                           (let ((__tmp60435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60441 (gx#datum->syntax '#f 'eq?))
                                (__tmp60436
                                 (let ((__tmp60440 (gx#datum->syntax '#f 'k))
                                       (__tmp60437
                                        (let ((__tmp60438
                                               (let ((__tmp60439
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60439 '()))))
                                          (declare (not safe))
                                          (cons __tmp60438 '()))))
                                   (declare (not safe))
                                   (cons __tmp60440 __tmp60437))))
                            (declare (not safe))
                            (cons __tmp60441 __tmp60436)))
                         (__tmp60384
                          (let ((__tmp60385
                                 (let ((__tmp60434 (gx#datum->syntax '#f 'if))
                                       (__tmp60386
                                        (let ((__tmp60433
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60387
                                               (let ((__tmp60411
                                                      (let ((__tmp60432
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60412
                                                             (let ((__tmp60426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60431
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60427
                                   (let ((__tmp60428
                                          (let ((__tmp60430
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60429
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60430 __tmp60429))))
                                     (declare (not safe))
                                     (cons _L58133_ __tmp60428))))
                              (declare (not safe))
                              (cons __tmp60431 __tmp60427)))
                           (__tmp60413
                            (let ((__tmp60416
                                   (let ((__tmp60425
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60417
                                          (let ((__tmp60418
                                                 (let ((__tmp60420
                                                        (let ((__tmp60424
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60421
                                                               (let ((__tmp60423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60422
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60423 __tmp60422))))
                  (declare (not safe))
                  (cons __tmp60424 __tmp60421)))
               (__tmp60419 (let () (declare (not safe)) (cons _L58128_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60420
                                                         __tmp60419))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60418))))
                                     (declare (not safe))
                                     (cons __tmp60425 __tmp60417)))
                                  (__tmp60414
                                   (let ((__tmp60415
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58125_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60415 '()))))
                              (declare (not safe))
                              (cons __tmp60416 __tmp60414))))
                       (declare (not safe))
                       (cons __tmp60426 __tmp60413))))
                (declare (not safe))
                (cons __tmp60432 __tmp60412)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60388
                                                      (let ((__tmp60389
                                                             (let ((__tmp60410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60390
                            (let ((__tmp60404
                                   (let ((__tmp60409
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60405
                                          (let ((__tmp60406
                                                 (let ((__tmp60408
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60407
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60408
                                                         __tmp60407))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60406))))
                                     (declare (not safe))
                                     (cons __tmp60409 __tmp60405)))
                                  (__tmp60391
                                   (let ((__tmp60394
                                          (let ((__tmp60403
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60395
                                                 (let ((__tmp60396
                                                        (let ((__tmp60398
                                                               (let ((__tmp60402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60399
                              (let ((__tmp60401 (gx#datum->syntax '#f 'probe))
                                    (__tmp60400
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60401 __tmp60400))))
                         (declare (not safe))
                         (cons __tmp60402 __tmp60399)))
                      (__tmp60397
                       (let () (declare (not safe)) (cons _L58128_ '()))))
                  (declare (not safe))
                  (cons __tmp60398 __tmp60397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58133_
                                                         __tmp60396))))
                                            (declare (not safe))
                                            (cons __tmp60403 __tmp60395)))
                                         (__tmp60392
                                          (let ((__tmp60393
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58127_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60393 '()))))
                                     (declare (not safe))
                                     (cons __tmp60394 __tmp60392))))
                              (declare (not safe))
                              (cons __tmp60404 __tmp60391))))
                       (declare (not safe))
                       (cons __tmp60410 __tmp60390))))
                (declare (not safe))
                (cons __tmp60389 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60411
                                                       __tmp60388))))
                                          (declare (not safe))
                                          (cons __tmp60433 __tmp60387))))
                                   (declare (not safe))
                                   (cons __tmp60434 __tmp60386))))
                            (declare (not safe))
                            (cons __tmp60385 '()))))
                     (declare (not safe))
                     (cons __tmp60435 __tmp60384)))
                  (__tmp60302
                   (let ((__tmp60350
                          (let ((__tmp60376
                                 (let ((__tmp60382 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60377
                                        (let ((__tmp60381
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60378
                                               (let ((__tmp60379
                                                      (let ((__tmp60380
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60380
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60379 '()))))
                                          (declare (not safe))
                                          (cons __tmp60381 __tmp60378))))
                                   (declare (not safe))
                                   (cons __tmp60382 __tmp60377)))
                                (__tmp60351
                                 (let ((__tmp60352
                                        (let ((__tmp60375
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60353
                                               (let ((__tmp60367
                                                      (let ((__tmp60374
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60368
                                                             (let ((__tmp60373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60369
                            (let ((__tmp60372 (gx#datum->syntax '#f 'i))
                                  (__tmp60370
                                   (let ((__tmp60371
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60371 '()))))
                              (declare (not safe))
                              (cons __tmp60372 __tmp60370))))
                       (declare (not safe))
                       (cons __tmp60373 __tmp60369))))
                (declare (not safe))
                (cons __tmp60374 __tmp60368)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60354
                                                      (let ((__tmp60362
                                                             (let ((__tmp60366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60363
                            (let ((__tmp60365 (gx#datum->syntax '#f 'i))
                                  (__tmp60364
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60365 __tmp60364))))
                       (declare (not safe))
                       (cons __tmp60366 __tmp60363)))
                    (__tmp60355
                     (let ((__tmp60356
                            (let ((__tmp60361 (gx#datum->syntax '#f 'or))
                                  (__tmp60357
                                   (let ((__tmp60360
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60358
                                          (let ((__tmp60359
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60359 '()))))
                                     (declare (not safe))
                                     (cons __tmp60360 __tmp60358))))
                              (declare (not safe))
                              (cons __tmp60361 __tmp60357))))
                       (declare (not safe))
                       (cons __tmp60356 '()))))
                (declare (not safe))
                (cons __tmp60362 __tmp60355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60367
                                                       __tmp60354))))
                                          (declare (not safe))
                                          (cons __tmp60375 __tmp60353))))
                                   (declare (not safe))
                                   (cons __tmp60352 '()))))
                            (declare (not safe))
                            (cons __tmp60376 __tmp60351)))
                         (__tmp60303
                          (let ((__tmp60327
                                 (let ((__tmp60346
                                        (let ((__tmp60347
                                               (let ((__tmp60348
                                                      (let ((__tmp60349
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60349
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58129_ __tmp60348))))
                                          (declare (not safe))
                                          (cons _L58130_ __tmp60347)))
                                       (__tmp60328
                                        (let ((__tmp60340
                                               (let ((__tmp60345
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60341
                                                      (let ((__tmp60342
                                                             (let ((__tmp60344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60343
                            (let () (declare (not safe)) (cons _L58129_ '()))))
                       (declare (not safe))
                       (cons __tmp60344 __tmp60343))))
                (declare (not safe))
                (cons _L58133_ __tmp60342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60345 __tmp60341)))
                                              (__tmp60329
                                               (let ((__tmp60330
                                                      (let ((__tmp60339
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60331
                                                             (let ((__tmp60332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60334
                                   (let ((__tmp60338
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60335
                                          (let ((__tmp60337
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60336
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60337 __tmp60336))))
                                     (declare (not safe))
                                     (cons __tmp60338 __tmp60335)))
                                  (__tmp60333
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58128_ '()))))
                              (declare (not safe))
                              (cons __tmp60334 __tmp60333))))
                       (declare (not safe))
                       (cons _L58133_ __tmp60332))))
                (declare (not safe))
                (cons __tmp60339 __tmp60331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60330 '()))))
                                          (declare (not safe))
                                          (cons __tmp60340 __tmp60329))))
                                   (declare (not safe))
                                   (cons __tmp60346 __tmp60328)))
                                (__tmp60304
                                 (let ((__tmp60305
                                        (let ((__tmp60326
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60306
                                               (let ((__tmp60307
                                                      (let ((__tmp60325
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60308
                                                             (let ((__tmp60317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60324
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60318
                                   (let ((__tmp60323
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60319
                                          (let ((__tmp60322
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60320
                                                 (let ((__tmp60321
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60321 '()))))
                                            (declare (not safe))
                                            (cons __tmp60322 __tmp60320))))
                                     (declare (not safe))
                                     (cons __tmp60323 __tmp60319))))
                              (declare (not safe))
                              (cons __tmp60324 __tmp60318)))
                           (__tmp60309
                            (let ((__tmp60312
                                   (let ((__tmp60316
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60313
                                          (let ((__tmp60315
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60314
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60315 __tmp60314))))
                                     (declare (not safe))
                                     (cons __tmp60316 __tmp60313)))
                                  (__tmp60310
                                   (let ((__tmp60311
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60311 '()))))
                              (declare (not safe))
                              (cons __tmp60312 __tmp60310))))
                       (declare (not safe))
                       (cons __tmp60317 __tmp60309))))
                (declare (not safe))
                (cons __tmp60325 __tmp60308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60307 '()))))
                                          (declare (not safe))
                                          (cons __tmp60326 __tmp60306))))
                                   (declare (not safe))
                                   (cons __tmp60305 '()))))
                            (declare (not safe))
                            (cons __tmp60327 __tmp60304))))
                     (declare (not safe))
                     (cons __tmp60350 __tmp60303))))
              (declare (not safe))
              (cons __tmp60383 __tmp60302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60442 __tmp60301))))
                                        (declare (not safe))
                                        (cons __tmp60300 '()))))
                                 (declare (not safe))
                                 (cons __tmp60443 __tmp60299))))
                          (declare (not safe))
                          (cons __tmp60451 __tmp60298))))
                   (declare (not safe))
                   (cons __tmp60297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60452
                                                          __tmp60296))))
                                             (declare (not safe))
                                             (cons __tmp60465 __tmp60295))))
                                      (declare (not safe))
                                      (cons __tmp60466 __tmp60294))))
                               (declare (not safe))
                               (cons __tmp60293 '()))))
                        (declare (not safe))
                        (cons __tmp60467 __tmp60292))))
                 (declare (not safe))
                 (cons __tmp60507 __tmp60291)))
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
                       (let ((__tmp60739 (gx#datum->syntax '#f 'let*))
                             (__tmp60508
                              (let ((__tmp60699
                                     (let ((__tmp60730
                                            (let ((__tmp60738
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp60731
                                                   (let ((__tmp60732
                                                          (let ((__tmp60737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp60733
                         (let ((__tmp60735
                                (let ((__tmp60736
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58333_ '()))))
                                  (declare (not safe))
                                  (cons _L58335_ __tmp60736)))
                               (__tmp60734
                                (let ()
                                  (declare (not safe))
                                  (cons _L58336_ '()))))
                           (declare (not safe))
                           (cons __tmp60735 __tmp60734))))
                    (declare (not safe))
                    (cons __tmp60737 __tmp60733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60732 '()))))
                                              (declare (not safe))
                                              (cons __tmp60738 __tmp60731)))
                                           (__tmp60700
                                            (let ((__tmp60724
                                                   (let ((__tmp60729
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp60725
                                                          (let ((__tmp60726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60728
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp60727
                                (let ()
                                  (declare (not safe))
                                  (cons _L58337_ '()))))
                           (declare (not safe))
                           (cons __tmp60728 __tmp60727))))
                    (declare (not safe))
                    (cons __tmp60726 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60729
                                                           __tmp60725)))
                                                  (__tmp60701
                                                   (let ((__tmp60716
                                                          (let ((__tmp60723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp60717
                         (let ((__tmp60718
                                (let ((__tmp60722
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp60719
                                       (let ((__tmp60721
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp60720
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp60721 __tmp60720))))
                                  (declare (not safe))
                                  (cons __tmp60722 __tmp60719))))
                           (declare (not safe))
                           (cons __tmp60718 '()))))
                    (declare (not safe))
                    (cons __tmp60723 __tmp60717)))
                 (__tmp60702
                  (let ((__tmp60703
                         (let ((__tmp60715 (gx#datum->syntax '#f 'start))
                               (__tmp60704
                                (let ((__tmp60705
                                       (let ((__tmp60714
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp60706
                                              (let ((__tmp60708
                                                     (let ((__tmp60713
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp60709
                                                            (let ((__tmp60712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60710
                           (let ((__tmp60711 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp60711 '()))))
                      (declare (not safe))
                      (cons __tmp60712 __tmp60710))))
               (declare (not safe))
               (cons __tmp60713 __tmp60709)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60707
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp60708 __tmp60707))))
                                         (declare (not safe))
                                         (cons __tmp60714 __tmp60706))))
                                  (declare (not safe))
                                  (cons __tmp60705 '()))))
                           (declare (not safe))
                           (cons __tmp60715 __tmp60704))))
                    (declare (not safe))
                    (cons __tmp60703 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60716
                                                           __tmp60702))))
                                              (declare (not safe))
                                              (cons __tmp60724 __tmp60701))))
                                       (declare (not safe))
                                       (cons __tmp60730 __tmp60700)))
                                    (__tmp60509
                                     (let ((__tmp60510
                                            (let ((__tmp60698
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60511
                                                   (let ((__tmp60697
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60512
                                                          (let ((__tmp60684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60693
                                (let ((__tmp60696
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp60694
                                       (let ((__tmp60695
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp60695 '()))))
                                  (declare (not safe))
                                  (cons __tmp60696 __tmp60694)))
                               (__tmp60685
                                (let ((__tmp60690
                                       (let ((__tmp60692
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp60691
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp60692 __tmp60691)))
                                      (__tmp60686
                                       (let ((__tmp60687
                                              (let ((__tmp60689
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp60688
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp60689 __tmp60688))))
                                         (declare (not safe))
                                         (cons __tmp60687 '()))))
                                  (declare (not safe))
                                  (cons __tmp60690 __tmp60686))))
                           (declare (not safe))
                           (cons __tmp60693 __tmp60685)))
                        (__tmp60513
                         (let ((__tmp60514
                                (let ((__tmp60683 (gx#datum->syntax '#f 'let))
                                      (__tmp60515
                                       (let ((__tmp60675
                                              (let ((__tmp60682
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp60676
                                                     (let ((__tmp60677
                                                            (let ((__tmp60681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp60678
                           (let ((__tmp60679
                                  (let ((__tmp60680
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp60680 '()))))
                             (declare (not safe))
                             (cons _L58337_ __tmp60679))))
                      (declare (not safe))
                      (cons __tmp60681 __tmp60678))))
               (declare (not safe))
               (cons __tmp60677 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60682 __tmp60676)))
                                             (__tmp60516
                                              (let ((__tmp60517
                                                     (let ((__tmp60674
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60518
                                                            (let ((__tmp60611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60667
                                  (let ((__tmp60673
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp60668
                                         (let ((__tmp60672
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp60669
                                                (let ((__tmp60670
                                                       (let ((__tmp60671
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp60671
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60670 '()))))
                                           (declare (not safe))
                                           (cons __tmp60672 __tmp60669))))
                                    (declare (not safe))
                                    (cons __tmp60673 __tmp60668)))
                                 (__tmp60612
                                  (let ((__tmp60613
                                         (let ((__tmp60666
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60614
                                                (let ((__tmp60665
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60615
                                                       (let ((__tmp60641
                                                              (let ((__tmp60664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60642
                             (let ((__tmp60658
                                    (let ((__tmp60663
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp60659
                                           (let ((__tmp60660
                                                  (let ((__tmp60662
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp60661
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60662
                                                          __tmp60661))))
                                             (declare (not safe))
                                             (cons _L58337_ __tmp60660))))
                                      (declare (not safe))
                                      (cons __tmp60663 __tmp60659)))
                                   (__tmp60643
                                    (let ((__tmp60646
                                           (let ((__tmp60657
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60647
                                                  (let ((__tmp60648
                                                         (let ((__tmp60652
                                                                (let ((__tmp60656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp60653
                               (let ((__tmp60655
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp60654
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60655 __tmp60654))))
                          (declare (not safe))
                          (cons __tmp60656 __tmp60653)))
                       (__tmp60649
                        (let ((__tmp60650
                               (let ((__tmp60651
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58331_ '()))))
                                 (declare (not safe))
                                 (cons _L58332_ __tmp60651))))
                          (declare (not safe))
                          (cons __tmp60650 '()))))
                   (declare (not safe))
                   (cons __tmp60652 __tmp60649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp60648))))
                                             (declare (not safe))
                                             (cons __tmp60657 __tmp60647)))
                                          (__tmp60644
                                           (let ((__tmp60645
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60645 '()))))
                                      (declare (not safe))
                                      (cons __tmp60646 __tmp60644))))
                               (declare (not safe))
                               (cons __tmp60658 __tmp60643))))
                        (declare (not safe))
                        (cons __tmp60664 __tmp60642)))
                     (__tmp60616
                      (let ((__tmp60617
                             (let ((__tmp60640 (gx#datum->syntax '#f 'begin))
                                   (__tmp60618
                                    (let ((__tmp60634
                                           (let ((__tmp60639
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60635
                                                  (let ((__tmp60636
                                                         (let ((__tmp60638
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60637
                        (let () (declare (not safe)) (cons _L58333_ '()))))
                   (declare (not safe))
                   (cons __tmp60638 __tmp60637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp60636))))
                                             (declare (not safe))
                                             (cons __tmp60639 __tmp60635)))
                                          (__tmp60619
                                           (let ((__tmp60622
                                                  (let ((__tmp60633
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60623
                                                         (let ((__tmp60624
                                                                (let ((__tmp60628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60632 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60629
                                      (let ((__tmp60631
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60630
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60631 __tmp60630))))
                                 (declare (not safe))
                                 (cons __tmp60632 __tmp60629)))
                              (__tmp60625
                               (let ((__tmp60626
                                      (let ((__tmp60627
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58331_ '()))))
                                        (declare (not safe))
                                        (cons _L58332_ __tmp60627))))
                                 (declare (not safe))
                                 (cons __tmp60626 '()))))
                          (declare (not safe))
                          (cons __tmp60628 __tmp60625))))
                   (declare (not safe))
                   (cons _L58337_ __tmp60624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60633
                                                          __tmp60623)))
                                                 (__tmp60620
                                                  (let ((__tmp60621
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60621 '()))))
                                             (declare (not safe))
                                             (cons __tmp60622 __tmp60620))))
                                      (declare (not safe))
                                      (cons __tmp60634 __tmp60619))))
                               (declare (not safe))
                               (cons __tmp60640 __tmp60618))))
                        (declare (not safe))
                        (cons __tmp60617 '()))))
                 (declare (not safe))
                 (cons __tmp60641 __tmp60616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60665
                                                        __tmp60615))))
                                           (declare (not safe))
                                           (cons __tmp60666 __tmp60614))))
                                    (declare (not safe))
                                    (cons __tmp60613 '()))))
                             (declare (not safe))
                             (cons __tmp60667 __tmp60612)))
                          (__tmp60519
                           (let ((__tmp60578
                                  (let ((__tmp60604
                                         (let ((__tmp60610
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60605
                                                (let ((__tmp60609
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60606
                                                       (let ((__tmp60607
                                                              (let ((__tmp60608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60608 '()))))
                 (declare (not safe))
                 (cons __tmp60607 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60609
                                                        __tmp60606))))
                                           (declare (not safe))
                                           (cons __tmp60610 __tmp60605)))
                                        (__tmp60579
                                         (let ((__tmp60580
                                                (let ((__tmp60603
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60581
                                                       (let ((__tmp60595
                                                              (let ((__tmp60602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60596
                             (let ((__tmp60601 (gx#datum->syntax '#f 'start))
                                   (__tmp60597
                                    (let ((__tmp60600
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60598
                                           (let ((__tmp60599
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60599 '()))))
                                      (declare (not safe))
                                      (cons __tmp60600 __tmp60598))))
                               (declare (not safe))
                               (cons __tmp60601 __tmp60597))))
                        (declare (not safe))
                        (cons __tmp60602 __tmp60596)))
                     (__tmp60582
                      (let ((__tmp60590
                             (let ((__tmp60594 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60591
                                    (let ((__tmp60593
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60592
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60593 __tmp60592))))
                               (declare (not safe))
                               (cons __tmp60594 __tmp60591)))
                            (__tmp60583
                             (let ((__tmp60584
                                    (let ((__tmp60589
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60585
                                           (let ((__tmp60588
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60586
                                                  (let ((__tmp60587
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60587 '()))))
                                             (declare (not safe))
                                             (cons __tmp60588 __tmp60586))))
                                      (declare (not safe))
                                      (cons __tmp60589 __tmp60585))))
                               (declare (not safe))
                               (cons __tmp60584 '()))))
                        (declare (not safe))
                        (cons __tmp60590 __tmp60583))))
                 (declare (not safe))
                 (cons __tmp60595 __tmp60582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60603
                                                        __tmp60581))))
                                           (declare (not safe))
                                           (cons __tmp60580 '()))))
                                    (declare (not safe))
                                    (cons __tmp60604 __tmp60579)))
                                 (__tmp60520
                                  (let ((__tmp60544
                                         (let ((__tmp60574
                                                (let ((__tmp60575
                                                       (let ((__tmp60576
                                                              (let ((__tmp60577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60577 '()))))
                 (declare (not safe))
                 (cons _L58333_ __tmp60576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58334_ __tmp60575)))
                                               (__tmp60545
                                                (let ((__tmp60568
                                                       (let ((__tmp60573
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60569
                                                              (let ((__tmp60570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60572 (gx#datum->syntax '#f 'probe))
                                   (__tmp60571
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58333_ '()))))
                               (declare (not safe))
                               (cons __tmp60572 __tmp60571))))
                        (declare (not safe))
                        (cons _L58337_ __tmp60570))))
                 (declare (not safe))
                 (cons __tmp60573 __tmp60569)))
              (__tmp60546
               (let ((__tmp60547
                      (let ((__tmp60567 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60548
                             (let ((__tmp60549
                                    (let ((__tmp60562
                                           (let ((__tmp60566
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60563
                                                  (let ((__tmp60565
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60564
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60565
                                                          __tmp60564))))
                                             (declare (not safe))
                                             (cons __tmp60566 __tmp60563)))
                                          (__tmp60550
                                           (let ((__tmp60551
                                                  (let ((__tmp60552
                                                         (let ((__tmp60553
                                                                (let ((__tmp60561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60554
                               (let ((__tmp60555
                                      (let ((__tmp60556
                                             (let ((__tmp60560
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60557
                                                    (let ((__tmp60559
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60558
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60559
                                                            __tmp60558))))
                                               (declare (not safe))
                                               (cons __tmp60560 __tmp60557))))
                                        (declare (not safe))
                                        (cons __tmp60556 '()))))
                                 (declare (not safe))
                                 (cons _L58337_ __tmp60555))))
                          (declare (not safe))
                          (cons __tmp60561 __tmp60554))))
                   (declare (not safe))
                   (cons __tmp60553 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58332_
                                                          __tmp60552))))
                                             (declare (not safe))
                                             (cons __tmp60551 '()))))
                                      (declare (not safe))
                                      (cons __tmp60562 __tmp60550))))
                               (declare (not safe))
                               (cons _L58337_ __tmp60549))))
                        (declare (not safe))
                        (cons __tmp60567 __tmp60548))))
                 (declare (not safe))
                 (cons __tmp60547 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60568
                                                        __tmp60546))))
                                           (declare (not safe))
                                           (cons __tmp60574 __tmp60545)))
                                        (__tmp60521
                                         (let ((__tmp60522
                                                (let ((__tmp60543
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60523
                                                       (let ((__tmp60524
                                                              (let ((__tmp60542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60525
                             (let ((__tmp60534
                                    (let ((__tmp60541
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60535
                                           (let ((__tmp60540
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60536
                                                  (let ((__tmp60539
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60537
                                                         (let ((__tmp60538
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60538 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60539
                                                          __tmp60537))))
                                             (declare (not safe))
                                             (cons __tmp60540 __tmp60536))))
                                      (declare (not safe))
                                      (cons __tmp60541 __tmp60535)))
                                   (__tmp60526
                                    (let ((__tmp60529
                                           (let ((__tmp60533
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60530
                                                  (let ((__tmp60532
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60531
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60532
                                                          __tmp60531))))
                                             (declare (not safe))
                                             (cons __tmp60533 __tmp60530)))
                                          (__tmp60527
                                           (let ((__tmp60528
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60528 '()))))
                                      (declare (not safe))
                                      (cons __tmp60529 __tmp60527))))
                               (declare (not safe))
                               (cons __tmp60534 __tmp60526))))
                        (declare (not safe))
                        (cons __tmp60542 __tmp60525))))
                 (declare (not safe))
                 (cons __tmp60524 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60543
                                                        __tmp60523))))
                                           (declare (not safe))
                                           (cons __tmp60522 '()))))
                                    (declare (not safe))
                                    (cons __tmp60544 __tmp60521))))
                             (declare (not safe))
                             (cons __tmp60578 __tmp60520))))
                      (declare (not safe))
                      (cons __tmp60611 __tmp60519))))
               (declare (not safe))
               (cons __tmp60674 __tmp60518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60517 '()))))
                                         (declare (not safe))
                                         (cons __tmp60675 __tmp60516))))
                                  (declare (not safe))
                                  (cons __tmp60683 __tmp60515))))
                           (declare (not safe))
                           (cons __tmp60514 '()))))
                    (declare (not safe))
                    (cons __tmp60684 __tmp60513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60697
                                                           __tmp60512))))
                                              (declare (not safe))
                                              (cons __tmp60698 __tmp60511))))
                                       (declare (not safe))
                                       (cons __tmp60510 '()))))
                                (declare (not safe))
                                (cons __tmp60699 __tmp60509))))
                         (declare (not safe))
                         (cons __tmp60739 __tmp60508)))
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
                                       (let ((__tmp60901
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60740
                                              (let ((__tmp60861
                                                     (let ((__tmp60892
                                                            (let ((__tmp60900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60893
                           (let ((__tmp60894
                                  (let ((__tmp60899
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60895
                                         (let ((__tmp60897
                                                (let ((__tmp60898
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58495_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58497_ __tmp60898)))
                                               (__tmp60896
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58498_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60897 __tmp60896))))
                                    (declare (not safe))
                                    (cons __tmp60899 __tmp60895))))
                             (declare (not safe))
                             (cons __tmp60894 '()))))
                      (declare (not safe))
                      (cons __tmp60900 __tmp60893)))
                   (__tmp60862
                    (let ((__tmp60886
                           (let ((__tmp60891 (gx#datum->syntax '#f 'size))
                                 (__tmp60887
                                  (let ((__tmp60888
                                         (let ((__tmp60890
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60889
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58499_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60890 __tmp60889))))
                                    (declare (not safe))
                                    (cons __tmp60888 '()))))
                             (declare (not safe))
                             (cons __tmp60891 __tmp60887)))
                          (__tmp60863
                           (let ((__tmp60878
                                  (let ((__tmp60885
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60879
                                         (let ((__tmp60880
                                                (let ((__tmp60884
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60881
                                                       (let ((__tmp60883
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60882
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60883 __tmp60882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60884
                                                        __tmp60881))))
                                           (declare (not safe))
                                           (cons __tmp60880 '()))))
                                    (declare (not safe))
                                    (cons __tmp60885 __tmp60879)))
                                 (__tmp60864
                                  (let ((__tmp60865
                                         (let ((__tmp60877
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60866
                                                (let ((__tmp60867
                                                       (let ((__tmp60876
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60868
                                                              (let ((__tmp60870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60875
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60871
                                    (let ((__tmp60874
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60872
                                           (let ((__tmp60873
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60873 '()))))
                                      (declare (not safe))
                                      (cons __tmp60874 __tmp60872))))
                               (declare (not safe))
                               (cons __tmp60875 __tmp60871)))
                            (__tmp60869
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60870 __tmp60869))))
                 (declare (not safe))
                 (cons __tmp60876 __tmp60868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60867 '()))))
                                           (declare (not safe))
                                           (cons __tmp60877 __tmp60866))))
                                    (declare (not safe))
                                    (cons __tmp60865 '()))))
                             (declare (not safe))
                             (cons __tmp60878 __tmp60864))))
                      (declare (not safe))
                      (cons __tmp60886 __tmp60863))))
               (declare (not safe))
               (cons __tmp60892 __tmp60862)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60741
                                                     (let ((__tmp60742
                                                            (let ((__tmp60860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60743
                           (let ((__tmp60859 (gx#datum->syntax '#f 'loop))
                                 (__tmp60744
                                  (let ((__tmp60850
                                         (let ((__tmp60855
                                                (let ((__tmp60858
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60856
                                                       (let ((__tmp60857
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60857
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60858
                                                        __tmp60856)))
                                               (__tmp60851
                                                (let ((__tmp60852
                                                       (let ((__tmp60854
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60853
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60854 __tmp60853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60852 '()))))
                                           (declare (not safe))
                                           (cons __tmp60855 __tmp60851)))
                                        (__tmp60745
                                         (let ((__tmp60746
                                                (let ((__tmp60849
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60747
                                                       (let ((__tmp60841
                                                              (let ((__tmp60848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60842
                             (let ((__tmp60843
                                    (let ((__tmp60847
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60844
                                           (let ((__tmp60845
                                                  (let ((__tmp60846
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60846 '()))))
                                             (declare (not safe))
                                             (cons _L58499_ __tmp60845))))
                                      (declare (not safe))
                                      (cons __tmp60847 __tmp60844))))
                               (declare (not safe))
                               (cons __tmp60843 '()))))
                        (declare (not safe))
                        (cons __tmp60848 __tmp60842)))
                     (__tmp60748
                      (let ((__tmp60749
                             (let ((__tmp60840 (gx#datum->syntax '#f 'cond))
                                   (__tmp60750
                                    (let ((__tmp60829
                                           (let ((__tmp60833
                                                  (let ((__tmp60839
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60834
                                                         (let ((__tmp60838
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60835
                        (let ((__tmp60836
                               (let ((__tmp60837
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60837 '()))))
                          (declare (not safe))
                          (cons __tmp60836 '()))))
                   (declare (not safe))
                   (cons __tmp60838 __tmp60835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60839
                                                          __tmp60834)))
                                                 (__tmp60830
                                                  (let ((__tmp60831
                                                         (let ((__tmp60832
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp60832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60831 '()))))
                                             (declare (not safe))
                                             (cons __tmp60833 __tmp60830)))
                                          (__tmp60751
                                           (let ((__tmp60803
                                                  (let ((__tmp60822
                                                         (let ((__tmp60828
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60823
                        (let ((__tmp60827 (gx#datum->syntax '#f 'k))
                              (__tmp60824
                               (let ((__tmp60825
                                      (let ((__tmp60826
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60826 '()))))
                                 (declare (not safe))
                                 (cons __tmp60825 '()))))
                          (declare (not safe))
                          (cons __tmp60827 __tmp60824))))
                   (declare (not safe))
                   (cons __tmp60828 __tmp60823)))
                (__tmp60804
                 (let ((__tmp60805
                        (let ((__tmp60821 (gx#datum->syntax '#f 'loop))
                              (__tmp60806
                               (let ((__tmp60813
                                      (let ((__tmp60820
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60814
                                             (let ((__tmp60819
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60815
                                                    (let ((__tmp60818
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60816
                                                           (let ((__tmp60817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60817 '()))))
              (declare (not safe))
              (cons __tmp60818 __tmp60816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60819 __tmp60815))))
                                        (declare (not safe))
                                        (cons __tmp60820 __tmp60814)))
                                     (__tmp60807
                                      (let ((__tmp60808
                                             (let ((__tmp60812
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60809
                                                    (let ((__tmp60811
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60810
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60811
                                                            __tmp60810))))
                                               (declare (not safe))
                                               (cons __tmp60812 __tmp60809))))
                                        (declare (not safe))
                                        (cons __tmp60808 '()))))
                                 (declare (not safe))
                                 (cons __tmp60813 __tmp60807))))
                          (declare (not safe))
                          (cons __tmp60821 __tmp60806))))
                   (declare (not safe))
                   (cons __tmp60805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60822
                                                          __tmp60804)))
                                                 (__tmp60752
                                                  (let ((__tmp60774
                                                         (let ((__tmp60799
                                                                (let ((__tmp60800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60801
                                      (let ((__tmp60802
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60802 '()))))
                                 (declare (not safe))
                                 (cons _L58495_ __tmp60801))))
                          (declare (not safe))
                          (cons _L58496_ __tmp60800)))
                       (__tmp60775
                        (let ((__tmp60791
                               (let ((__tmp60798
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp60792
                                      (let ((__tmp60793
                                             (let ((__tmp60797
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp60794
                                                    (let ((__tmp60795
                                                           (let ((__tmp60796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp60796 '()))))
              (declare (not safe))
              (cons __tmp60795 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60797 __tmp60794))))
                                        (declare (not safe))
                                        (cons _L58499_ __tmp60793))))
                                 (declare (not safe))
                                 (cons __tmp60798 __tmp60792)))
                              (__tmp60776
                               (let ((__tmp60779
                                      (let ((__tmp60790
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp60780
                                             (let ((__tmp60781
                                                    (let ((__tmp60785
                                                           (let ((__tmp60789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60786
                          (let ((__tmp60788 (gx#datum->syntax '#f 'probe))
                                (__tmp60787
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60788 __tmp60787))))
                     (declare (not safe))
                     (cons __tmp60789 __tmp60786)))
                  (__tmp60782
                   (let ((__tmp60783
                          (let ((__tmp60784
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp60784 '()))))
                     (declare (not safe))
                     (cons __tmp60783 '()))))
              (declare (not safe))
              (cons __tmp60785 __tmp60782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58499_ __tmp60781))))
                                        (declare (not safe))
                                        (cons __tmp60790 __tmp60780)))
                                     (__tmp60777
                                      (let ((__tmp60778
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp60778 '()))))
                                 (declare (not safe))
                                 (cons __tmp60779 __tmp60777))))
                          (declare (not safe))
                          (cons __tmp60791 __tmp60776))))
                   (declare (not safe))
                   (cons __tmp60799 __tmp60775)))
                (__tmp60753
                 (let ((__tmp60754
                        (let ((__tmp60773 (gx#datum->syntax '#f 'else))
                              (__tmp60755
                               (let ((__tmp60756
                                      (let ((__tmp60772
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60757
                                             (let ((__tmp60764
                                                    (let ((__tmp60771
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60765
                                                           (let ((__tmp60770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60766
                          (let ((__tmp60769 (gx#datum->syntax '#f 'i))
                                (__tmp60767
                                 (let ((__tmp60768
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60768 '()))))
                            (declare (not safe))
                            (cons __tmp60769 __tmp60767))))
                     (declare (not safe))
                     (cons __tmp60770 __tmp60766))))
              (declare (not safe))
              (cons __tmp60771 __tmp60765)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60758
                                                    (let ((__tmp60759
                                                           (let ((__tmp60763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60760
                          (let ((__tmp60762 (gx#datum->syntax '#f 'i))
                                (__tmp60761
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60762 __tmp60761))))
                     (declare (not safe))
                     (cons __tmp60763 __tmp60760))))
              (declare (not safe))
              (cons __tmp60759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60764 __tmp60758))))
                                        (declare (not safe))
                                        (cons __tmp60772 __tmp60757))))
                                 (declare (not safe))
                                 (cons __tmp60756 '()))))
                          (declare (not safe))
                          (cons __tmp60773 __tmp60755))))
                   (declare (not safe))
                   (cons __tmp60754 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60774
                                                          __tmp60753))))
                                             (declare (not safe))
                                             (cons __tmp60803 __tmp60752))))
                                      (declare (not safe))
                                      (cons __tmp60829 __tmp60751))))
                               (declare (not safe))
                               (cons __tmp60840 __tmp60750))))
                        (declare (not safe))
                        (cons __tmp60749 '()))))
                 (declare (not safe))
                 (cons __tmp60841 __tmp60748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60849
                                                        __tmp60747))))
                                           (declare (not safe))
                                           (cons __tmp60746 '()))))
                                    (declare (not safe))
                                    (cons __tmp60850 __tmp60745))))
                             (declare (not safe))
                             (cons __tmp60859 __tmp60744))))
                      (declare (not safe))
                      (cons __tmp60860 __tmp60743))))
               (declare (not safe))
               (cons __tmp60742 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60861 __tmp60741))))
                                         (declare (not safe))
                                         (cons __tmp60901 __tmp60740)))
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
