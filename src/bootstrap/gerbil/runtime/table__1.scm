(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx55164_)
      (let* ((_g5516855182_
              (lambda (_g5516955178_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5516955178_)))
             (_g5516755224_
              (lambda (_g5516955186_)
                (if (gx#stx-pair? _g5516955186_)
                    (let ((_e5517155189_ (gx#syntax-e _g5516955186_)))
                      (let ((_hd5517255193_
                             (let ()
                               (declare (not safe))
                               (##car _e5517155189_)))
                            (_tl5517355196_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5517155189_))))
                        (if (gx#stx-pair? _tl5517355196_)
                            (let ((_e5517455199_ (gx#syntax-e _tl5517355196_)))
                              (let ((_hd5517555203_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5517455199_)))
                                    (_tl5517655206_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5517455199_))))
                                (if (gx#stx-null? _tl5517655206_)
                                    ((lambda (_L55209_)
                                       (let ((__tmp57746
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp57744
                                              (let ((__tmp57745
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L55209_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp57745))))
                                         (declare (not safe))
                                         (cons __tmp57746 __tmp57744)))
                                     _hd5517555203_)
                                    (_g5516855182_ _g5516955186_))))
                            (_g5516855182_ _g5516955186_))))
                    (_g5516855182_ _g5516955186_)))))
        (_g5516755224_ _$stx55164_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx55228_)
      (let* ((_g5523255278_
              (lambda (_g5523355274_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5523355274_)))
             (_g5523155431_
              (lambda (_g5523355282_)
                (if (gx#stx-pair? _g5523355282_)
                    (let ((_e5524355285_ (gx#syntax-e _g5523355282_)))
                      (let ((_hd5524455289_
                             (let ()
                               (declare (not safe))
                               (##car _e5524355285_)))
                            (_tl5524555292_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5524355285_))))
                        (if (gx#stx-pair? _tl5524555292_)
                            (let ((_e5524655295_ (gx#syntax-e _tl5524555292_)))
                              (let ((_hd5524755299_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5524655295_)))
                                    (_tl5524855302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5524655295_))))
                                (if (gx#stx-pair? _tl5524855302_)
                                    (let ((_e5524955305_
                                           (gx#syntax-e _tl5524855302_)))
                                      (let ((_hd5525055309_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5524955305_)))
                                            (_tl5525155312_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5524955305_))))
                                        (if (gx#stx-pair? _tl5525155312_)
                                            (let ((_e5525255315_
                                                   (gx#syntax-e
                                                    _tl5525155312_)))
                                              (let ((_hd5525355319_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5525255315_)))
                                                    (_tl5525455322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5525255315_))))
                                                (if (gx#stx-pair?
                                                     _tl5525455322_)
                                                    (let ((_e5525555325_
                                                           (gx#syntax-e
                                                            _tl5525455322_)))
                                                      (let ((_hd5525655329_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5525555325_)))
                    (_tl5525755332_
                     (let () (declare (not safe)) (##cdr _e5525555325_))))
                (if (gx#stx-pair? _tl5525755332_)
                    (let ((_e5525855335_ (gx#syntax-e _tl5525755332_)))
                      (let ((_hd5525955339_
                             (let ()
                               (declare (not safe))
                               (##car _e5525855335_)))
                            (_tl5526055342_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5525855335_))))
                        (if (gx#stx-pair? _tl5526055342_)
                            (let ((_e5526155345_ (gx#syntax-e _tl5526055342_)))
                              (let ((_hd5526255349_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5526155345_)))
                                    (_tl5526355352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5526155345_))))
                                (if (gx#stx-pair? _tl5526355352_)
                                    (let ((_e5526455355_
                                           (gx#syntax-e _tl5526355352_)))
                                      (let ((_hd5526555359_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5526455355_)))
                                            (_tl5526655362_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5526455355_))))
                                        (if (gx#stx-pair? _tl5526655362_)
                                            (let ((_e5526755365_
                                                   (gx#syntax-e
                                                    _tl5526655362_)))
                                              (let ((_hd5526855369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5526755365_)))
                                                    (_tl5526955372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5526755365_))))
                                                (if (gx#stx-pair?
                                                     _tl5526955372_)
                                                    (let ((_e5527055375_
                                                           (gx#syntax-e
                                                            _tl5526955372_)))
                                                      (let ((_hd5527155379_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5527055375_)))
                    (_tl5527255382_
                     (let () (declare (not safe)) (##cdr _e5527055375_))))
                (if (gx#stx-null? _tl5527255382_)
                    ((lambda (_L55385_
                              _L55387_
                              _L55388_
                              _L55389_
                              _L55390_
                              _L55391_
                              _L55392_
                              _L55393_
                              _L55394_)
                       (let ((__tmp58178 (gx#datum->syntax '#f 'begin))
                             (__tmp57747
                              (let ((__tmp58157
                                     (let ((__tmp58177
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp58158
                                            (let ((__tmp58168
                                                   (let ((__tmp58169
                                                          (let ((__tmp58174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58176 (gx#datum->syntax '#f 'size-hint))
                               (__tmp58175
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp58176 __tmp58175)))
                        (__tmp58170
                         (let ((__tmp58171
                                (let ((__tmp58173 (gx#datum->syntax '#f 'seed))
                                      (__tmp58172
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp58173 __tmp58172))))
                           (declare (not safe))
                           (cons __tmp58171 '()))))
                    (declare (not safe))
                    (cons __tmp58174 __tmp58170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L55394_
                                                           __tmp58169)))
                                                  (__tmp58159
                                                   (let ((__tmp58160
                                                          (let ((__tmp58167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp58161
                         (let ((__tmp58166 (gx#datum->syntax '#f 'size-hint))
                               (__tmp58162
                                (let ((__tmp58163
                                       (let ((__tmp58164
                                              (let ((__tmp58165
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp58165 '()))))
                                         (declare (not safe))
                                         (cons _L55385_ __tmp58164))))
                                  (declare (not safe))
                                  (cons _L55387_ __tmp58163))))
                           (declare (not safe))
                           (cons __tmp58166 __tmp58162))))
                    (declare (not safe))
                    (cons __tmp58167 __tmp58161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58160 '()))))
                                              (declare (not safe))
                                              (cons __tmp58168 __tmp58159))))
                                       (declare (not safe))
                                       (cons __tmp58177 __tmp58158)))
                                    (__tmp57748
                                     (let ((__tmp58114
                                            (let ((__tmp58156
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp58115
                                                   (let ((__tmp58149
                                                          (let ((__tmp58150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58155 (gx#datum->syntax '#f 'tab))
                               (__tmp58151
                                (let ((__tmp58154 (gx#datum->syntax '#f 'key))
                                      (__tmp58152
                                       (let ((__tmp58153
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp58153 '()))))
                                  (declare (not safe))
                                  (cons __tmp58154 __tmp58152))))
                           (declare (not safe))
                           (cons __tmp58155 __tmp58151))))
                    (declare (not safe))
                    (cons _L55393_ __tmp58150)))
                 (__tmp58116
                  (let ((__tmp58117
                         (let ((__tmp58148 (gx#datum->syntax '#f 'let))
                               (__tmp58118
                                (let ((__tmp58132
                                       (let ((__tmp58141
                                              (let ((__tmp58147
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp58142
                                                     (let ((__tmp58143
                                                            (let ((__tmp58146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp58144
                           (let ((__tmp58145 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp58145 '()))))
                      (declare (not safe))
                      (cons __tmp58146 __tmp58144))))
               (declare (not safe))
               (cons __tmp58143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58147 __tmp58142)))
                                             (__tmp58133
                                              (let ((__tmp58134
                                                     (let ((__tmp58140
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp58135
                                                            (let ((__tmp58136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp58139
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp58137
                                  (let ((__tmp58138
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp58138 '()))))
                             (declare (not safe))
                             (cons __tmp58139 __tmp58137))))
                      (declare (not safe))
                      (cons __tmp58136 '()))))
               (declare (not safe))
               (cons __tmp58140 __tmp58135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58134 '()))))
                                         (declare (not safe))
                                         (cons __tmp58141 __tmp58133)))
                                      (__tmp58119
                                       (let ((__tmp58120
                                              (let ((__tmp58131
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp58121
                                                     (let ((__tmp58130
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp58122
                                                            (let ((__tmp58129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp58123
                           (let ((__tmp58124
                                  (let ((__tmp58125
                                         (let ((__tmp58128
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp58126
                                                (let ((__tmp58127
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp58127 '()))))
                                           (declare (not safe))
                                           (cons __tmp58128 __tmp58126))))
                                    (declare (not safe))
                                    (cons _L55385_ __tmp58125))))
                             (declare (not safe))
                             (cons _L55387_ __tmp58124))))
                      (declare (not safe))
                      (cons __tmp58129 __tmp58123))))
               (declare (not safe))
               (cons __tmp58130 __tmp58122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58131 __tmp58121))))
                                         (declare (not safe))
                                         (cons __tmp58120 '()))))
                                  (declare (not safe))
                                  (cons __tmp58132 __tmp58119))))
                           (declare (not safe))
                           (cons __tmp58148 __tmp58118))))
                    (declare (not safe))
                    (cons __tmp58117 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58149
                                                           __tmp58116))))
                                              (declare (not safe))
                                              (cons __tmp58156 __tmp58115)))
                                           (__tmp57749
                                            (let ((__tmp58068
                                                   (let ((__tmp58113
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp58069
                                                          (let ((__tmp58106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58107
                                (let ((__tmp58112 (gx#datum->syntax '#f 'tab))
                                      (__tmp58108
                                       (let ((__tmp58111
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp58109
                                              (let ((__tmp58110
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp58110 '()))))
                                         (declare (not safe))
                                         (cons __tmp58111 __tmp58109))))
                                  (declare (not safe))
                                  (cons __tmp58112 __tmp58108))))
                           (declare (not safe))
                           (cons _L55392_ __tmp58107)))
                        (__tmp58070
                         (let ((__tmp58079
                                (let ((__tmp58105 (gx#datum->syntax '#f 'when))
                                      (__tmp58080
                                       (let ((__tmp58086
                                              (let ((__tmp58104
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp58087
                                                     (let ((__tmp58100
                                                            (let ((__tmp58103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp58101
                           (let ((__tmp58102 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp58102 '()))))
                      (declare (not safe))
                      (cons __tmp58103 __tmp58101)))
                   (__tmp58088
                    (let ((__tmp58089
                           (let ((__tmp58099
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp58090
                                  (let ((__tmp58092
                                         (let ((__tmp58098
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58093
                                                (let ((__tmp58094
                                                       (let ((__tmp58097
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp58095
                                                              (let ((__tmp58096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp58096 '()))))
                 (declare (not safe))
                 (cons __tmp58097 __tmp58095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58094 '()))))
                                           (declare (not safe))
                                           (cons __tmp58098 __tmp58093)))
                                        (__tmp58091
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp58092 __tmp58091))))
                             (declare (not safe))
                             (cons __tmp58099 __tmp58090))))
                      (declare (not safe))
                      (cons __tmp58089 '()))))
               (declare (not safe))
               (cons __tmp58100 __tmp58088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58104 __tmp58087)))
                                             (__tmp58081
                                              (let ((__tmp58082
                                                     (let ((__tmp58085
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp58083
                                                            (let ((__tmp58084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp58084 '()))))
               (declare (not safe))
               (cons __tmp58085 __tmp58083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58082 '()))))
                                         (declare (not safe))
                                         (cons __tmp58086 __tmp58081))))
                                  (declare (not safe))
                                  (cons __tmp58105 __tmp58080)))
                               (__tmp58071
                                (let ((__tmp58072
                                       (let ((__tmp58073
                                              (let ((__tmp58078
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp58074
                                                     (let ((__tmp58077
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp58075
                                                            (let ((__tmp58076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp58076 '()))))
               (declare (not safe))
               (cons __tmp58077 __tmp58075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58078 __tmp58074))))
                                         (declare (not safe))
                                         (cons _L55391_ __tmp58073))))
                                  (declare (not safe))
                                  (cons __tmp58072 '()))))
                           (declare (not safe))
                           (cons __tmp58079 __tmp58071))))
                    (declare (not safe))
                    (cons __tmp58106 __tmp58070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58113
                                                           __tmp58069)))
                                                  (__tmp57750
                                                   (let ((__tmp57966
                                                          (let ((__tmp58067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp57967
                         (let ((__tmp58060
                                (let ((__tmp58061
                                       (let ((__tmp58066
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp58062
                                              (let ((__tmp58065
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp58063
                                                     (let ((__tmp58064
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp58064 '()))))
                                                (declare (not safe))
                                                (cons __tmp58065 __tmp58063))))
                                         (declare (not safe))
                                         (cons __tmp58066 __tmp58062))))
                                  (declare (not safe))
                                  (cons _L55391_ __tmp58061)))
                               (__tmp57968
                                (let ((__tmp57969
                                       (let ((__tmp58059
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp57970
                                              (let ((__tmp58043
                                                     (let ((__tmp58052
                                                            (let ((__tmp58058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp58053
                           (let ((__tmp58054
                                  (let ((__tmp58057
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp58055
                                         (let ((__tmp58056
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp58056 '()))))
                                    (declare (not safe))
                                    (cons __tmp58057 __tmp58055))))
                             (declare (not safe))
                             (cons __tmp58054 '()))))
                      (declare (not safe))
                      (cons __tmp58058 __tmp58053)))
                   (__tmp58044
                    (let ((__tmp58045
                           (let ((__tmp58051 (gx#datum->syntax '#f 'seed))
                                 (__tmp58046
                                  (let ((__tmp58047
                                         (let ((__tmp58050
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp58048
                                                (let ((__tmp58049
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp58049 '()))))
                                           (declare (not safe))
                                           (cons __tmp58050 __tmp58048))))
                                    (declare (not safe))
                                    (cons __tmp58047 '()))))
                             (declare (not safe))
                             (cons __tmp58051 __tmp58046))))
                      (declare (not safe))
                      (cons __tmp58045 '()))))
               (declare (not safe))
               (cons __tmp58052 __tmp58044)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57971
                                                     (let ((__tmp57972
                                                            (let ((__tmp58042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp57973
                           (let ((__tmp58041 (gx#datum->syntax '#f 'table))
                                 (__tmp57974
                                  (let ((__tmp58040
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp57975
                                         (let ((__tmp57976
                                                (let ((__tmp57977
                                                       (let ((__tmp58039
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp57978
                                                              (let ((__tmp58038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp57979
                             (let ((__tmp58001
                                    (let ((__tmp58037
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp58002
                                           (let ((__tmp58003
                                                  (let ((__tmp58021
                                                         (let ((__tmp58036
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp58022
                        (let ((__tmp58032
                               (let ((__tmp58035
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp58033
                                      (let ((__tmp58034
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp58034 '()))))
                                 (declare (not safe))
                                 (cons __tmp58035 __tmp58033)))
                              (__tmp58023
                               (let ((__tmp58024
                                      (let ((__tmp58031
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp58025
                                             (let ((__tmp58027
                                                    (let ((__tmp58030
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp58028
                                                           (let ((__tmp58029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp58029 '()))))
              (declare (not safe))
              (cons __tmp58030 __tmp58028)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58026
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp58027 __tmp58026))))
                                        (declare (not safe))
                                        (cons __tmp58031 __tmp58025))))
                                 (declare (not safe))
                                 (cons __tmp58024 '()))))
                          (declare (not safe))
                          (cons __tmp58032 __tmp58023))))
                   (declare (not safe))
                   (cons __tmp58036 __tmp58022)))
                (__tmp58004
                 (let ((__tmp58005
                        (let ((__tmp58020 (gx#datum->syntax '#f 'set!))
                              (__tmp58006
                               (let ((__tmp58016
                                      (let ((__tmp58019
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp58017
                                             (let ((__tmp58018
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp58018 '()))))
                                        (declare (not safe))
                                        (cons __tmp58019 __tmp58017)))
                                     (__tmp58007
                                      (let ((__tmp58008
                                             (let ((__tmp58015
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58009
                                                    (let ((__tmp58011
                                                           (let ((__tmp58014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp58012
                          (let ((__tmp58013 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp58013 '()))))
                     (declare (not safe))
                     (cons __tmp58014 __tmp58012)))
                  (__tmp58010 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp58011 __tmp58010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58015 __tmp58009))))
                                        (declare (not safe))
                                        (cons __tmp58008 '()))))
                                 (declare (not safe))
                                 (cons __tmp58016 __tmp58007))))
                          (declare (not safe))
                          (cons __tmp58020 __tmp58006))))
                   (declare (not safe))
                   (cons __tmp58005 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58021
                                                          __tmp58004))))
                                             (declare (not safe))
                                             (cons '() __tmp58003))))
                                      (declare (not safe))
                                      (cons __tmp58037 __tmp58002)))
                                   (__tmp57980
                                    (let ((__tmp57981
                                           (let ((__tmp58000
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp57982
                                                  (let ((__tmp57983
                                                         (let ((__tmp57984
                                                                (let ((__tmp57999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp57985
                               (let ((__tmp57995
                                      (let ((__tmp57998
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp57996
                                             (let ((__tmp57997
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp57997 '()))))
                                        (declare (not safe))
                                        (cons __tmp57998 __tmp57996)))
                                     (__tmp57986
                                      (let ((__tmp57987
                                             (let ((__tmp57994
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57988
                                                    (let ((__tmp57990
                                                           (let ((__tmp57993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57991
                          (let ((__tmp57992 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57992 '()))))
                     (declare (not safe))
                     (cons __tmp57993 __tmp57991)))
                  (__tmp57989 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp57990 __tmp57989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57994 __tmp57988))))
                                        (declare (not safe))
                                        (cons __tmp57987 '()))))
                                 (declare (not safe))
                                 (cons __tmp57995 __tmp57986))))
                          (declare (not safe))
                          (cons __tmp57999 __tmp57985))))
                   (declare (not safe))
                   (cons __tmp57984 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp57983))))
                                             (declare (not safe))
                                             (cons __tmp58000 __tmp57982))))
                                      (declare (not safe))
                                      (cons __tmp57981 '()))))
                               (declare (not safe))
                               (cons __tmp58001 __tmp57980))))
                        (declare (not safe))
                        (cons __tmp58038 __tmp57979))))
                 (declare (not safe))
                 (cons __tmp58039 __tmp57978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L55385_ __tmp57977))))
                                           (declare (not safe))
                                           (cons _L55387_ __tmp57976))))
                                    (declare (not safe))
                                    (cons __tmp58040 __tmp57975))))
                             (declare (not safe))
                             (cons __tmp58041 __tmp57974))))
                      (declare (not safe))
                      (cons __tmp58042 __tmp57973))))
               (declare (not safe))
               (cons __tmp57972 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58043 __tmp57971))))
                                         (declare (not safe))
                                         (cons __tmp58059 __tmp57970))))
                                  (declare (not safe))
                                  (cons __tmp57969 '()))))
                           (declare (not safe))
                           (cons __tmp58060 __tmp57968))))
                    (declare (not safe))
                    (cons __tmp58067 __tmp57967)))
                 (__tmp57751
                  (let ((__tmp57918
                         (let ((__tmp57965 (gx#datum->syntax '#f 'def))
                               (__tmp57919
                                (let ((__tmp57957
                                       (let ((__tmp57958
                                              (let ((__tmp57964
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp57959
                                                     (let ((__tmp57963
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp57960
                                                            (let ((__tmp57961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57962 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp57962 '()))))
                      (declare (not safe))
                      (cons _L55390_ __tmp57961))))
               (declare (not safe))
               (cons __tmp57963 __tmp57960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57964 __tmp57959))))
                                         (declare (not safe))
                                         (cons _L55390_ __tmp57958)))
                                      (__tmp57920
                                       (let ((__tmp57930
                                              (let ((__tmp57956
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp57931
                                                     (let ((__tmp57937
                                                            (let ((__tmp57955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp57938
                           (let ((__tmp57951
                                  (let ((__tmp57954
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp57952
                                         (let ((__tmp57953
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp57953 '()))))
                                    (declare (not safe))
                                    (cons __tmp57954 __tmp57952)))
                                 (__tmp57939
                                  (let ((__tmp57940
                                         (let ((__tmp57950
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp57941
                                                (let ((__tmp57943
                                                       (let ((__tmp57949
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp57944
                                                              (let ((__tmp57945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57948
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp57946
                                    (let ((__tmp57947
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp57947 '()))))
                               (declare (not safe))
                               (cons __tmp57948 __tmp57946))))
                        (declare (not safe))
                        (cons __tmp57945 '()))))
                 (declare (not safe))
                 (cons __tmp57949 __tmp57944)))
              (__tmp57942 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57943
                                                        __tmp57942))))
                                           (declare (not safe))
                                           (cons __tmp57950 __tmp57941))))
                                    (declare (not safe))
                                    (cons __tmp57940 '()))))
                             (declare (not safe))
                             (cons __tmp57951 __tmp57939))))
                      (declare (not safe))
                      (cons __tmp57955 __tmp57938)))
                   (__tmp57932
                    (let ((__tmp57933
                           (let ((__tmp57936
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp57934
                                  (let ((__tmp57935
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp57935 '()))))
                             (declare (not safe))
                             (cons __tmp57936 __tmp57934))))
                      (declare (not safe))
                      (cons __tmp57933 '()))))
               (declare (not safe))
               (cons __tmp57937 __tmp57932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57956 __tmp57931)))
                                             (__tmp57921
                                              (let ((__tmp57922
                                                     (let ((__tmp57923
                                                            (let ((__tmp57929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57924
                           (let ((__tmp57928 (gx#datum->syntax '#f 'key))
                                 (__tmp57925
                                  (let ((__tmp57926
                                         (let ((__tmp57927
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57927 '()))))
                                    (declare (not safe))
                                    (cons _L55390_ __tmp57926))))
                             (declare (not safe))
                             (cons __tmp57928 __tmp57925))))
                      (declare (not safe))
                      (cons __tmp57929 __tmp57924))))
               (declare (not safe))
               (cons _L55389_ __tmp57923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57922 '()))))
                                         (declare (not safe))
                                         (cons __tmp57930 __tmp57921))))
                                  (declare (not safe))
                                  (cons __tmp57957 __tmp57920))))
                           (declare (not safe))
                           (cons __tmp57965 __tmp57919)))
                        (__tmp57752
                         (let ((__tmp57814
                                (let ((__tmp57917 (gx#datum->syntax '#f 'def))
                                      (__tmp57815
                                       (let ((__tmp57909
                                              (let ((__tmp57910
                                                     (let ((__tmp57916
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp57911
                                                            (let ((__tmp57915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp57912
                           (let ((__tmp57913
                                  (let ((__tmp57914
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp57914 '()))))
                             (declare (not safe))
                             (cons _L55390_ __tmp57913))))
                      (declare (not safe))
                      (cons __tmp57915 __tmp57912))))
               (declare (not safe))
               (cons __tmp57916 __tmp57911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L55389_ __tmp57910)))
                                             (__tmp57816
                                              (let ((__tmp57817
                                                     (let ((__tmp57908
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp57818
                                                            (let ((__tmp57892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57901
                                  (let ((__tmp57907
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp57902
                                         (let ((__tmp57903
                                                (let ((__tmp57906
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp57904
                                                       (let ((__tmp57905
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp57905
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57906
                                                        __tmp57904))))
                                           (declare (not safe))
                                           (cons __tmp57903 '()))))
                                    (declare (not safe))
                                    (cons __tmp57907 __tmp57902)))
                                 (__tmp57893
                                  (let ((__tmp57894
                                         (let ((__tmp57900
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp57895
                                                (let ((__tmp57896
                                                       (let ((__tmp57899
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp57897
                                                              (let ((__tmp57898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57898 '()))))
                 (declare (not safe))
                 (cons __tmp57899 __tmp57897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57896 '()))))
                                           (declare (not safe))
                                           (cons __tmp57900 __tmp57895))))
                                    (declare (not safe))
                                    (cons __tmp57894 '()))))
                             (declare (not safe))
                             (cons __tmp57901 __tmp57893)))
                          (__tmp57819
                           (let ((__tmp57820
                                  (let ((__tmp57891
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp57821
                                         (let ((__tmp57890
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57822
                                                (let ((__tmp57889
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57823
                                                       (let ((__tmp57824
                                                              (let ((__tmp57825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57888 (gx#datum->syntax '#f 'key))
                                   (__tmp57826
                                    (let ((__tmp57827
                                           (let ((__tmp57887
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp57828
                                                  (let ((__tmp57850
                                                         (let ((__tmp57886
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp57851
                        (let ((__tmp57852
                               (let ((__tmp57870
                                      (let ((__tmp57885
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp57871
                                             (let ((__tmp57881
                                                    (let ((__tmp57884
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp57882
                                                           (let ((__tmp57883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp57883 '()))))
              (declare (not safe))
              (cons __tmp57884 __tmp57882)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57872
                                                    (let ((__tmp57873
                                                           (let ((__tmp57880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp57874
                          (let ((__tmp57876
                                 (let ((__tmp57879
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp57877
                                        (let ((__tmp57878
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp57878 '()))))
                                   (declare (not safe))
                                   (cons __tmp57879 __tmp57877)))
                                (__tmp57875
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp57876 __tmp57875))))
                     (declare (not safe))
                     (cons __tmp57880 __tmp57874))))
              (declare (not safe))
              (cons __tmp57873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57881 __tmp57872))))
                                        (declare (not safe))
                                        (cons __tmp57885 __tmp57871)))
                                     (__tmp57853
                                      (let ((__tmp57854
                                             (let ((__tmp57869
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57855
                                                    (let ((__tmp57865
                                                           (let ((__tmp57868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57866
                          (let ((__tmp57867 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57867 '()))))
                     (declare (not safe))
                     (cons __tmp57868 __tmp57866)))
                  (__tmp57856
                   (let ((__tmp57857
                          (let ((__tmp57864 (gx#datum->syntax '#f 'fx+))
                                (__tmp57858
                                 (let ((__tmp57860
                                        (let ((__tmp57863
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57861
                                               (let ((__tmp57862
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57862 '()))))
                                          (declare (not safe))
                                          (cons __tmp57863 __tmp57861)))
                                       (__tmp57859
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57860 __tmp57859))))
                            (declare (not safe))
                            (cons __tmp57864 __tmp57858))))
                     (declare (not safe))
                     (cons __tmp57857 '()))))
              (declare (not safe))
              (cons __tmp57865 __tmp57856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57869 __tmp57855))))
                                        (declare (not safe))
                                        (cons __tmp57854 '()))))
                                 (declare (not safe))
                                 (cons __tmp57870 __tmp57853))))
                          (declare (not safe))
                          (cons '() __tmp57852))))
                   (declare (not safe))
                   (cons __tmp57886 __tmp57851)))
                (__tmp57829
                 (let ((__tmp57830
                        (let ((__tmp57849 (gx#datum->syntax '#f 'lambda))
                              (__tmp57831
                               (let ((__tmp57832
                                      (let ((__tmp57833
                                             (let ((__tmp57848
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57834
                                                    (let ((__tmp57844
                                                           (let ((__tmp57847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57845
                          (let ((__tmp57846 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57846 '()))))
                     (declare (not safe))
                     (cons __tmp57847 __tmp57845)))
                  (__tmp57835
                   (let ((__tmp57836
                          (let ((__tmp57843 (gx#datum->syntax '#f 'fx+))
                                (__tmp57837
                                 (let ((__tmp57839
                                        (let ((__tmp57842
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57840
                                               (let ((__tmp57841
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57841 '()))))
                                          (declare (not safe))
                                          (cons __tmp57842 __tmp57840)))
                                       (__tmp57838
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57839 __tmp57838))))
                            (declare (not safe))
                            (cons __tmp57843 __tmp57837))))
                     (declare (not safe))
                     (cons __tmp57836 '()))))
              (declare (not safe))
              (cons __tmp57844 __tmp57835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57848 __tmp57834))))
                                        (declare (not safe))
                                        (cons __tmp57833 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp57832))))
                          (declare (not safe))
                          (cons __tmp57849 __tmp57831))))
                   (declare (not safe))
                   (cons __tmp57830 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57850
                                                          __tmp57829))))
                                             (declare (not safe))
                                             (cons __tmp57887 __tmp57828))))
                                      (declare (not safe))
                                      (cons _L55390_ __tmp57827))))
                               (declare (not safe))
                               (cons __tmp57888 __tmp57826))))
                        (declare (not safe))
                        (cons _L55385_ __tmp57825))))
                 (declare (not safe))
                 (cons _L55387_ __tmp57824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57889
                                                        __tmp57823))))
                                           (declare (not safe))
                                           (cons __tmp57890 __tmp57822))))
                                    (declare (not safe))
                                    (cons __tmp57891 __tmp57821))))
                             (declare (not safe))
                             (cons __tmp57820 '()))))
                      (declare (not safe))
                      (cons __tmp57892 __tmp57819))))
               (declare (not safe))
               (cons __tmp57908 __tmp57818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57817 '()))))
                                         (declare (not safe))
                                         (cons __tmp57909 __tmp57816))))
                                  (declare (not safe))
                                  (cons __tmp57917 __tmp57815)))
                               (__tmp57753
                                (let ((__tmp57754
                                       (let ((__tmp57813
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp57755
                                              (let ((__tmp57808
                                                     (let ((__tmp57809
                                                            (let ((__tmp57812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57810
                           (let ((__tmp57811 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp57811 '()))))
                      (declare (not safe))
                      (cons __tmp57812 __tmp57810))))
               (declare (not safe))
               (cons _L55388_ __tmp57809)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57756
                                                     (let ((__tmp57757
                                                            (let ((__tmp57807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp57758
                           (let ((__tmp57791
                                  (let ((__tmp57800
                                         (let ((__tmp57806
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57801
                                                (let ((__tmp57802
                                                       (let ((__tmp57805
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp57803
                                                              (let ((__tmp57804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57804 '()))))
                 (declare (not safe))
                 (cons __tmp57805 __tmp57803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57802 '()))))
                                           (declare (not safe))
                                           (cons __tmp57806 __tmp57801)))
                                        (__tmp57792
                                         (let ((__tmp57793
                                                (let ((__tmp57799
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57794
                                                       (let ((__tmp57795
                                                              (let ((__tmp57798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp57796
                             (let ((__tmp57797 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp57797 '()))))
                        (declare (not safe))
                        (cons __tmp57798 __tmp57796))))
                 (declare (not safe))
                 (cons __tmp57795 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57799
                                                        __tmp57794))))
                                           (declare (not safe))
                                           (cons __tmp57793 '()))))
                                    (declare (not safe))
                                    (cons __tmp57800 __tmp57792)))
                                 (__tmp57759
                                  (let ((__tmp57760
                                         (let ((__tmp57790
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp57761
                                                (let ((__tmp57789
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp57762
                                                       (let ((__tmp57788
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp57763
                                                              (let ((__tmp57764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57765
                                    (let ((__tmp57787
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp57766
                                           (let ((__tmp57767
                                                  (let ((__tmp57786
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp57768
                                                         (let ((__tmp57769
                                                                (let ((__tmp57770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57785 (gx#datum->syntax '#f 'set!))
                                     (__tmp57771
                                      (let ((__tmp57781
                                             (let ((__tmp57784
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp57782
                                                    (let ((__tmp57783
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp57783 '()))))
                                               (declare (not safe))
                                               (cons __tmp57784 __tmp57782)))
                                            (__tmp57772
                                             (let ((__tmp57773
                                                    (let ((__tmp57780
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp57774
                                                           (let ((__tmp57776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57779
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp57777
                                 (let ((__tmp57778
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp57778 '()))))
                            (declare (not safe))
                            (cons __tmp57779 __tmp57777)))
                         (__tmp57775
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp57776 __tmp57775))))
              (declare (not safe))
              (cons __tmp57780 __tmp57774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57773 '()))))
                                        (declare (not safe))
                                        (cons __tmp57781 __tmp57772))))
                                 (declare (not safe))
                                 (cons __tmp57785 __tmp57771))))
                          (declare (not safe))
                          (cons __tmp57770 '()))))
                   (declare (not safe))
                   (cons '() __tmp57769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57786
                                                          __tmp57768))))
                                             (declare (not safe))
                                             (cons __tmp57767 '()))))
                                      (declare (not safe))
                                      (cons __tmp57787 __tmp57766))))
                               (declare (not safe))
                               (cons _L55385_ __tmp57765))))
                        (declare (not safe))
                        (cons _L55387_ __tmp57764))))
                 (declare (not safe))
                 (cons __tmp57788 __tmp57763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57789
                                                        __tmp57762))))
                                           (declare (not safe))
                                           (cons __tmp57790 __tmp57761))))
                                    (declare (not safe))
                                    (cons __tmp57760 '()))))
                             (declare (not safe))
                             (cons __tmp57791 __tmp57759))))
                      (declare (not safe))
                      (cons __tmp57807 __tmp57758))))
               (declare (not safe))
               (cons __tmp57757 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57808 __tmp57756))))
                                         (declare (not safe))
                                         (cons __tmp57813 __tmp57755))))
                                  (declare (not safe))
                                  (cons __tmp57754 '()))))
                           (declare (not safe))
                           (cons __tmp57814 __tmp57753))))
                    (declare (not safe))
                    (cons __tmp57918 __tmp57752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57966
                                                           __tmp57751))))
                                              (declare (not safe))
                                              (cons __tmp58068 __tmp57750))))
                                       (declare (not safe))
                                       (cons __tmp58114 __tmp57749))))
                                (declare (not safe))
                                (cons __tmp58157 __tmp57748))))
                         (declare (not safe))
                         (cons __tmp58178 __tmp57747)))
                     _hd5527155379_
                     _hd5526855369_
                     _hd5526555359_
                     _hd5526255349_
                     _hd5525955339_
                     _hd5525655329_
                     _hd5525355319_
                     _hd5525055309_
                     _hd5524755299_)
                    (_g5523255278_ _g5523355282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5523255278_
                                                     _g5523355282_))))
                                            (_g5523255278_ _g5523355282_))))
                                    (_g5523255278_ _g5523355282_))))
                            (_g5523255278_ _g5523355282_))))
                    (_g5523255278_ _g5523355282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5523255278_
                                                     _g5523355282_))))
                                            (_g5523255278_ _g5523355282_))))
                                    (_g5523255278_ _g5523355282_))))
                            (_g5523255278_ _g5523355282_))))
                    (_g5523255278_ _g5523355282_)))))
        (_g5523155431_ _$stx55228_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx55435_)
      (let* ((_g5543955461_
              (lambda (_g5544055457_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5544055457_)))
             (_g5543855530_
              (lambda (_g5544055465_)
                (if (gx#stx-pair? _g5544055465_)
                    (let ((_e5544455468_ (gx#syntax-e _g5544055465_)))
                      (let ((_hd5544555472_
                             (let ()
                               (declare (not safe))
                               (##car _e5544455468_)))
                            (_tl5544655475_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5544455468_))))
                        (if (gx#stx-pair? _tl5544655475_)
                            (let ((_e5544755478_ (gx#syntax-e _tl5544655475_)))
                              (let ((_hd5544855482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5544755478_)))
                                    (_tl5544955485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5544755478_))))
                                (if (gx#stx-pair? _tl5544955485_)
                                    (let ((_e5545055488_
                                           (gx#syntax-e _tl5544955485_)))
                                      (let ((_hd5545155492_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5545055488_)))
                                            (_tl5545255495_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5545055488_))))
                                        (if (gx#stx-pair? _tl5545255495_)
                                            (let ((_e5545355498_
                                                   (gx#syntax-e
                                                    _tl5545255495_)))
                                              (let ((_hd5545455502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5545355498_)))
                                                    (_tl5545555505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5545355498_))))
                                                (if (gx#stx-null?
                                                     _tl5545555505_)
                                                    ((lambda (_L55508_
                                                              _L55510_
                                                              _L55511_)
                                                       (let ((__tmp58198
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp58179
                                                              (let ((__tmp58186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58197
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp58187
                                    (let ((__tmp58188
                                           (let ((__tmp58196
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp58189
                                                  (let ((__tmp58190
                                                         (let ((__tmp58191
                                                                (let ((__tmp58192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58195 (gx#datum->syntax '#f 'fx*))
                                     (__tmp58193
                                      (let ((__tmp58194
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55510_ '()))))
                                        (declare (not safe))
                                        (cons _L55510_ __tmp58194))))
                                 (declare (not safe))
                                 (cons __tmp58195 __tmp58193))))
                          (declare (not safe))
                          (cons __tmp58192 '()))))
                   (declare (not safe))
                   (cons _L55510_ __tmp58191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55511_
                                                          __tmp58190))))
                                             (declare (not safe))
                                             (cons __tmp58196 __tmp58189))))
                                      (declare (not safe))
                                      (cons __tmp58188 '()))))
                               (declare (not safe))
                               (cons __tmp58197 __tmp58187)))
                            (__tmp58180
                             (let ((__tmp58181
                                    (let ((__tmp58185
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp58182
                                           (let ((__tmp58184
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp58183
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55508_ '()))))
                                             (declare (not safe))
                                             (cons __tmp58184 __tmp58183))))
                                      (declare (not safe))
                                      (cons __tmp58185 __tmp58182))))
                               (declare (not safe))
                               (cons __tmp58181 '()))))
                        (declare (not safe))
                        (cons __tmp58186 __tmp58180))))
                 (declare (not safe))
                 (cons __tmp58198 __tmp58179)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5545455502_
                                                     _hd5545155492_
                                                     _hd5544855482_)
                                                    (_g5543955461_
                                                     _g5544055465_))))
                                            (_g5543955461_ _g5544055465_))))
                                    (_g5543955461_ _g5544055465_))))
                            (_g5543955461_ _g5544055465_))))
                    (_g5543955461_ _g5544055465_)))))
        (_g5543855530_ _$stx55435_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx55534_)
      (let* ((_g5553855572_
              (lambda (_g5553955568_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5553955568_)))
             (_g5553755683_
              (lambda (_g5553955576_)
                (if (gx#stx-pair? _g5553955576_)
                    (let ((_e5554655579_ (gx#syntax-e _g5553955576_)))
                      (let ((_hd5554755583_
                             (let ()
                               (declare (not safe))
                               (##car _e5554655579_)))
                            (_tl5554855586_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5554655579_))))
                        (if (gx#stx-pair? _tl5554855586_)
                            (let ((_e5554955589_ (gx#syntax-e _tl5554855586_)))
                              (let ((_hd5555055593_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5554955589_)))
                                    (_tl5555155596_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5554955589_))))
                                (if (gx#stx-pair? _tl5555155596_)
                                    (let ((_e5555255599_
                                           (gx#syntax-e _tl5555155596_)))
                                      (let ((_hd5555355603_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5555255599_)))
                                            (_tl5555455606_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5555255599_))))
                                        (if (gx#stx-pair? _tl5555455606_)
                                            (let ((_e5555555609_
                                                   (gx#syntax-e
                                                    _tl5555455606_)))
                                              (let ((_hd5555655613_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5555555609_)))
                                                    (_tl5555755616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5555555609_))))
                                                (if (gx#stx-pair?
                                                     _tl5555755616_)
                                                    (let ((_e5555855619_
                                                           (gx#syntax-e
                                                            _tl5555755616_)))
                                                      (let ((_hd5555955623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5555855619_)))
                    (_tl5556055626_
                     (let () (declare (not safe)) (##cdr _e5555855619_))))
                (if (gx#stx-pair? _tl5556055626_)
                    (let ((_e5556155629_ (gx#syntax-e _tl5556055626_)))
                      (let ((_hd5556255633_
                             (let ()
                               (declare (not safe))
                               (##car _e5556155629_)))
                            (_tl5556355636_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5556155629_))))
                        (if (gx#stx-pair? _tl5556355636_)
                            (let ((_e5556455639_ (gx#syntax-e _tl5556355636_)))
                              (let ((_hd5556555643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5556455639_)))
                                    (_tl5556655646_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5556455639_))))
                                (if (gx#stx-null? _tl5556655646_)
                                    ((lambda (_L55649_
                                              _L55651_
                                              _L55652_
                                              _L55653_
                                              _L55654_
                                              _L55655_)
                                       (let ((__tmp58357
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp58199
                                              (let ((__tmp58317
                                                     (let ((__tmp58348
                                                            (let ((__tmp58356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58349
                           (let ((__tmp58350
                                  (let ((__tmp58355
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp58351
                                         (let ((__tmp58353
                                                (let ((__tmp58354
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L55651_ '()))))
                                                  (declare (not safe))
                                                  (cons _L55653_ __tmp58354)))
                                               (__tmp58352
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55654_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58353 __tmp58352))))
                                    (declare (not safe))
                                    (cons __tmp58355 __tmp58351))))
                             (declare (not safe))
                             (cons __tmp58350 '()))))
                      (declare (not safe))
                      (cons __tmp58356 __tmp58349)))
                   (__tmp58318
                    (let ((__tmp58342
                           (let ((__tmp58347 (gx#datum->syntax '#f 'size))
                                 (__tmp58343
                                  (let ((__tmp58344
                                         (let ((__tmp58346
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58345
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55655_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58346 __tmp58345))))
                                    (declare (not safe))
                                    (cons __tmp58344 '()))))
                             (declare (not safe))
                             (cons __tmp58347 __tmp58343)))
                          (__tmp58319
                           (let ((__tmp58334
                                  (let ((__tmp58341
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp58335
                                         (let ((__tmp58336
                                                (let ((__tmp58340
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp58337
                                                       (let ((__tmp58339
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp58338
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp58339 __tmp58338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58340
                                                        __tmp58337))))
                                           (declare (not safe))
                                           (cons __tmp58336 '()))))
                                    (declare (not safe))
                                    (cons __tmp58341 __tmp58335)))
                                 (__tmp58320
                                  (let ((__tmp58321
                                         (let ((__tmp58333
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp58322
                                                (let ((__tmp58323
                                                       (let ((__tmp58332
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp58324
                                                              (let ((__tmp58326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58331
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp58327
                                    (let ((__tmp58330
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58328
                                           (let ((__tmp58329
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp58329 '()))))
                                      (declare (not safe))
                                      (cons __tmp58330 __tmp58328))))
                               (declare (not safe))
                               (cons __tmp58331 __tmp58327)))
                            (__tmp58325
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp58326 __tmp58325))))
                 (declare (not safe))
                 (cons __tmp58332 __tmp58324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58323 '()))))
                                           (declare (not safe))
                                           (cons __tmp58333 __tmp58322))))
                                    (declare (not safe))
                                    (cons __tmp58321 '()))))
                             (declare (not safe))
                             (cons __tmp58334 __tmp58320))))
                      (declare (not safe))
                      (cons __tmp58342 __tmp58319))))
               (declare (not safe))
               (cons __tmp58348 __tmp58318)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58200
                                                     (let ((__tmp58201
                                                            (let ((__tmp58316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp58202
                           (let ((__tmp58315 (gx#datum->syntax '#f 'loop))
                                 (__tmp58203
                                  (let ((__tmp58302
                                         (let ((__tmp58311
                                                (let ((__tmp58314
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp58312
                                                       (let ((__tmp58313
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp58313
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58314
                                                        __tmp58312)))
                                               (__tmp58303
                                                (let ((__tmp58308
                                                       (let ((__tmp58310
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp58309
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp58310 __tmp58309)))
              (__tmp58304
               (let ((__tmp58305
                      (let ((__tmp58307 (gx#datum->syntax '#f 'deleted))
                            (__tmp58306
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp58307 __tmp58306))))
                 (declare (not safe))
                 (cons __tmp58305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58308
                                                        __tmp58304))))
                                           (declare (not safe))
                                           (cons __tmp58311 __tmp58303)))
                                        (__tmp58204
                                         (let ((__tmp58205
                                                (let ((__tmp58301
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp58206
                                                       (let ((__tmp58293
                                                              (let ((__tmp58300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp58294
                             (let ((__tmp58295
                                    (let ((__tmp58299
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp58296
                                           (let ((__tmp58297
                                                  (let ((__tmp58298
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58298 '()))))
                                             (declare (not safe))
                                             (cons _L55655_ __tmp58297))))
                                      (declare (not safe))
                                      (cons __tmp58299 __tmp58296))))
                               (declare (not safe))
                               (cons __tmp58295 '()))))
                        (declare (not safe))
                        (cons __tmp58300 __tmp58294)))
                     (__tmp58207
                      (let ((__tmp58208
                             (let ((__tmp58292 (gx#datum->syntax '#f 'cond))
                                   (__tmp58209
                                    (let ((__tmp58283
                                           (let ((__tmp58285
                                                  (let ((__tmp58291
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp58286
                                                         (let ((__tmp58290
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp58287
                        (let ((__tmp58288
                               (let ((__tmp58289
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp58289 '()))))
                          (declare (not safe))
                          (cons __tmp58288 '()))))
                   (declare (not safe))
                   (cons __tmp58290 __tmp58287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58291
                                                          __tmp58286)))
                                                 (__tmp58284
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55649_ '()))))
                                             (declare (not safe))
                                             (cons __tmp58285 __tmp58284)))
                                          (__tmp58210
                                           (let ((__tmp58250
                                                  (let ((__tmp58276
                                                         (let ((__tmp58282
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp58277
                        (let ((__tmp58281 (gx#datum->syntax '#f 'k))
                              (__tmp58278
                               (let ((__tmp58279
                                      (let ((__tmp58280
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp58280 '()))))
                                 (declare (not safe))
                                 (cons __tmp58279 '()))))
                          (declare (not safe))
                          (cons __tmp58281 __tmp58278))))
                   (declare (not safe))
                   (cons __tmp58282 __tmp58277)))
                (__tmp58251
                 (let ((__tmp58252
                        (let ((__tmp58275 (gx#datum->syntax '#f 'loop))
                              (__tmp58253
                               (let ((__tmp58267
                                      (let ((__tmp58274
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp58268
                                             (let ((__tmp58273
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp58269
                                                    (let ((__tmp58272
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58270
                                                           (let ((__tmp58271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp58271 '()))))
              (declare (not safe))
              (cons __tmp58272 __tmp58270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58273 __tmp58269))))
                                        (declare (not safe))
                                        (cons __tmp58274 __tmp58268)))
                                     (__tmp58254
                                      (let ((__tmp58262
                                             (let ((__tmp58266
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58263
                                                    (let ((__tmp58265
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58264
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58265
                                                            __tmp58264))))
                                               (declare (not safe))
                                               (cons __tmp58266 __tmp58263)))
                                            (__tmp58255
                                             (let ((__tmp58256
                                                    (let ((__tmp58261
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp58257
                                                           (let ((__tmp58260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp58258
                          (let ((__tmp58259 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp58259 '()))))
                     (declare (not safe))
                     (cons __tmp58260 __tmp58258))))
              (declare (not safe))
              (cons __tmp58261 __tmp58257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58256 '()))))
                                        (declare (not safe))
                                        (cons __tmp58262 __tmp58255))))
                                 (declare (not safe))
                                 (cons __tmp58267 __tmp58254))))
                          (declare (not safe))
                          (cons __tmp58275 __tmp58253))))
                   (declare (not safe))
                   (cons __tmp58252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58276
                                                          __tmp58251)))
                                                 (__tmp58211
                                                  (let ((__tmp58235
                                                         (let ((__tmp58246
                                                                (let ((__tmp58247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58248
                                      (let ((__tmp58249
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp58249 '()))))
                                 (declare (not safe))
                                 (cons _L55651_ __tmp58248))))
                          (declare (not safe))
                          (cons _L55652_ __tmp58247)))
                       (__tmp58236
                        (let ((__tmp58237
                               (let ((__tmp58245
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp58238
                                      (let ((__tmp58239
                                             (let ((__tmp58240
                                                    (let ((__tmp58244
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp58241
                                                           (let ((__tmp58243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp58242
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp58243 __tmp58242))))
              (declare (not safe))
              (cons __tmp58244 __tmp58241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58240 '()))))
                                        (declare (not safe))
                                        (cons _L55655_ __tmp58239))))
                                 (declare (not safe))
                                 (cons __tmp58245 __tmp58238))))
                          (declare (not safe))
                          (cons __tmp58237 '()))))
                   (declare (not safe))
                   (cons __tmp58246 __tmp58236)))
                (__tmp58212
                 (let ((__tmp58213
                        (let ((__tmp58234 (gx#datum->syntax '#f 'else))
                              (__tmp58214
                               (let ((__tmp58215
                                      (let ((__tmp58233
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp58216
                                             (let ((__tmp58225
                                                    (let ((__tmp58232
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp58226
                                                           (let ((__tmp58231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp58227
                          (let ((__tmp58230 (gx#datum->syntax '#f 'i))
                                (__tmp58228
                                 (let ((__tmp58229
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp58229 '()))))
                            (declare (not safe))
                            (cons __tmp58230 __tmp58228))))
                     (declare (not safe))
                     (cons __tmp58231 __tmp58227))))
              (declare (not safe))
              (cons __tmp58232 __tmp58226)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58217
                                                    (let ((__tmp58220
                                                           (let ((__tmp58224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58221
                          (let ((__tmp58223 (gx#datum->syntax '#f 'i))
                                (__tmp58222
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58223 __tmp58222))))
                     (declare (not safe))
                     (cons __tmp58224 __tmp58221)))
                  (__tmp58218
                   (let ((__tmp58219 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp58219 '()))))
              (declare (not safe))
              (cons __tmp58220 __tmp58218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58225 __tmp58217))))
                                        (declare (not safe))
                                        (cons __tmp58233 __tmp58216))))
                                 (declare (not safe))
                                 (cons __tmp58215 '()))))
                          (declare (not safe))
                          (cons __tmp58234 __tmp58214))))
                   (declare (not safe))
                   (cons __tmp58213 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58235
                                                          __tmp58212))))
                                             (declare (not safe))
                                             (cons __tmp58250 __tmp58211))))
                                      (declare (not safe))
                                      (cons __tmp58283 __tmp58210))))
                               (declare (not safe))
                               (cons __tmp58292 __tmp58209))))
                        (declare (not safe))
                        (cons __tmp58208 '()))))
                 (declare (not safe))
                 (cons __tmp58293 __tmp58207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58301
                                                        __tmp58206))))
                                           (declare (not safe))
                                           (cons __tmp58205 '()))))
                                    (declare (not safe))
                                    (cons __tmp58302 __tmp58204))))
                             (declare (not safe))
                             (cons __tmp58315 __tmp58203))))
                      (declare (not safe))
                      (cons __tmp58316 __tmp58202))))
               (declare (not safe))
               (cons __tmp58201 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58317 __tmp58200))))
                                         (declare (not safe))
                                         (cons __tmp58357 __tmp58199)))
                                     _hd5556555643_
                                     _hd5556255633_
                                     _hd5555955623_
                                     _hd5555655613_
                                     _hd5555355603_
                                     _hd5555055593_)
                                    (_g5553855572_ _g5553955576_))))
                            (_g5553855572_ _g5553955576_))))
                    (_g5553855572_ _g5553955576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5553855572_
                                                     _g5553955576_))))
                                            (_g5553855572_ _g5553955576_))))
                                    (_g5553855572_ _g5553955576_))))
                            (_g5553855572_ _g5553955576_))))
                    (_g5553855572_ _g5553955576_)))))
        (_g5553755683_ _$stx55534_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx55687_)
      (let* ((_g5569155733_
              (lambda (_g5569255729_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5569255729_)))
             (_g5569055872_
              (lambda (_g5569255737_)
                (if (gx#stx-pair? _g5569255737_)
                    (let ((_e5570155740_ (gx#syntax-e _g5569255737_)))
                      (let ((_hd5570255744_
                             (let ()
                               (declare (not safe))
                               (##car _e5570155740_)))
                            (_tl5570355747_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5570155740_))))
                        (if (gx#stx-pair? _tl5570355747_)
                            (let ((_e5570455750_ (gx#syntax-e _tl5570355747_)))
                              (let ((_hd5570555754_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5570455750_)))
                                    (_tl5570655757_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5570455750_))))
                                (if (gx#stx-pair? _tl5570655757_)
                                    (let ((_e5570755760_
                                           (gx#syntax-e _tl5570655757_)))
                                      (let ((_hd5570855764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5570755760_)))
                                            (_tl5570955767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5570755760_))))
                                        (if (gx#stx-pair? _tl5570955767_)
                                            (let ((_e5571055770_
                                                   (gx#syntax-e
                                                    _tl5570955767_)))
                                              (let ((_hd5571155774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5571055770_)))
                                                    (_tl5571255777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5571055770_))))
                                                (if (gx#stx-pair?
                                                     _tl5571255777_)
                                                    (let ((_e5571355780_
                                                           (gx#syntax-e
                                                            _tl5571255777_)))
                                                      (let ((_hd5571455784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5571355780_)))
                    (_tl5571555787_
                     (let () (declare (not safe)) (##cdr _e5571355780_))))
                (if (gx#stx-pair? _tl5571555787_)
                    (let ((_e5571655790_ (gx#syntax-e _tl5571555787_)))
                      (let ((_hd5571755794_
                             (let ()
                               (declare (not safe))
                               (##car _e5571655790_)))
                            (_tl5571855797_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5571655790_))))
                        (if (gx#stx-pair? _tl5571855797_)
                            (let ((_e5571955800_ (gx#syntax-e _tl5571855797_)))
                              (let ((_hd5572055804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5571955800_)))
                                    (_tl5572155807_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5571955800_))))
                                (if (gx#stx-pair? _tl5572155807_)
                                    (let ((_e5572255810_
                                           (gx#syntax-e _tl5572155807_)))
                                      (let ((_hd5572355814_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5572255810_)))
                                            (_tl5572455817_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5572255810_))))
                                        (if (gx#stx-pair? _tl5572455817_)
                                            (let ((_e5572555820_
                                                   (gx#syntax-e
                                                    _tl5572455817_)))
                                              (let ((_hd5572655824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5572555820_)))
                                                    (_tl5572755827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5572555820_))))
                                                (if (gx#stx-null?
                                                     _tl5572755827_)
                                                    ((lambda (_L55830_
                                                              _L55832_
                                                              _L55833_
                                                              _L55834_
                                                              _L55835_
                                                              _L55836_
                                                              _L55837_
                                                              _L55838_)
                                                       (let ((__tmp58574
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp58358
                                                              (let ((__tmp58534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58565
                                    (let ((__tmp58573
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58566
                                           (let ((__tmp58567
                                                  (let ((__tmp58572
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp58568
                                                         (let ((__tmp58570
                                                                (let ((__tmp58571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L55834_ '()))))
                          (declare (not safe))
                          (cons _L55836_ __tmp58571)))
                       (__tmp58569
                        (let () (declare (not safe)) (cons _L55837_ '()))))
                   (declare (not safe))
                   (cons __tmp58570 __tmp58569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58572
                                                          __tmp58568))))
                                             (declare (not safe))
                                             (cons __tmp58567 '()))))
                                      (declare (not safe))
                                      (cons __tmp58573 __tmp58566)))
                                   (__tmp58535
                                    (let ((__tmp58559
                                           (let ((__tmp58564
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp58560
                                                  (let ((__tmp58561
                                                         (let ((__tmp58563
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp58562
                        (let () (declare (not safe)) (cons _L55838_ '()))))
                   (declare (not safe))
                   (cons __tmp58563 __tmp58562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58561 '()))))
                                             (declare (not safe))
                                             (cons __tmp58564 __tmp58560)))
                                          (__tmp58536
                                           (let ((__tmp58551
                                                  (let ((__tmp58558
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp58552
                                                         (let ((__tmp58553
                                                                (let ((__tmp58557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp58554
                               (let ((__tmp58556 (gx#datum->syntax '#f 'size))
                                     (__tmp58555
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp58556 __tmp58555))))
                          (declare (not safe))
                          (cons __tmp58557 __tmp58554))))
                   (declare (not safe))
                   (cons __tmp58553 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58558
                                                          __tmp58552)))
                                                 (__tmp58537
                                                  (let ((__tmp58538
                                                         (let ((__tmp58550
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp58539
                        (let ((__tmp58540
                               (let ((__tmp58549
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp58541
                                      (let ((__tmp58543
                                             (let ((__tmp58548
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp58544
                                                    (let ((__tmp58547
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp58545
                                                           (let ((__tmp58546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp58546 '()))))
              (declare (not safe))
              (cons __tmp58547 __tmp58545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58548 __tmp58544)))
                                            (__tmp58542
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp58543 __tmp58542))))
                                 (declare (not safe))
                                 (cons __tmp58549 __tmp58541))))
                          (declare (not safe))
                          (cons __tmp58540 '()))))
                   (declare (not safe))
                   (cons __tmp58550 __tmp58539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58538 '()))))
                                             (declare (not safe))
                                             (cons __tmp58551 __tmp58537))))
                                      (declare (not safe))
                                      (cons __tmp58559 __tmp58536))))
                               (declare (not safe))
                               (cons __tmp58565 __tmp58535)))
                            (__tmp58359
                             (let ((__tmp58360
                                    (let ((__tmp58533
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp58361
                                           (let ((__tmp58532
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp58362
                                                  (let ((__tmp58519
                                                         (let ((__tmp58528
                                                                (let ((__tmp58531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp58529
                               (let ((__tmp58530
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp58530 '()))))
                          (declare (not safe))
                          (cons __tmp58531 __tmp58529)))
                       (__tmp58520
                        (let ((__tmp58525
                               (let ((__tmp58527 (gx#datum->syntax '#f 'i))
                                     (__tmp58526
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp58527 __tmp58526)))
                              (__tmp58521
                               (let ((__tmp58522
                                      (let ((__tmp58524
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp58523
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp58524 __tmp58523))))
                                 (declare (not safe))
                                 (cons __tmp58522 '()))))
                          (declare (not safe))
                          (cons __tmp58525 __tmp58521))))
                   (declare (not safe))
                   (cons __tmp58528 __tmp58520)))
                (__tmp58363
                 (let ((__tmp58364
                        (let ((__tmp58518 (gx#datum->syntax '#f 'let))
                              (__tmp58365
                               (let ((__tmp58510
                                      (let ((__tmp58517
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp58511
                                             (let ((__tmp58512
                                                    (let ((__tmp58516
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp58513
                                                           (let ((__tmp58514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp58515 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp58515 '()))))
                     (declare (not safe))
                     (cons _L55838_ __tmp58514))))
              (declare (not safe))
              (cons __tmp58516 __tmp58513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58512 '()))))
                                        (declare (not safe))
                                        (cons __tmp58517 __tmp58511)))
                                     (__tmp58366
                                      (let ((__tmp58367
                                             (let ((__tmp58509
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp58368
                                                    (let ((__tmp58450
                                                           (let ((__tmp58502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp58508 (gx#datum->syntax '#f 'eq?))
                                (__tmp58503
                                 (let ((__tmp58507 (gx#datum->syntax '#f 'k))
                                       (__tmp58504
                                        (let ((__tmp58505
                                               (let ((__tmp58506
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp58506 '()))))
                                          (declare (not safe))
                                          (cons __tmp58505 '()))))
                                   (declare (not safe))
                                   (cons __tmp58507 __tmp58504))))
                            (declare (not safe))
                            (cons __tmp58508 __tmp58503)))
                         (__tmp58451
                          (let ((__tmp58452
                                 (let ((__tmp58501 (gx#datum->syntax '#f 'if))
                                       (__tmp58453
                                        (let ((__tmp58500
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp58454
                                               (let ((__tmp58478
                                                      (let ((__tmp58499
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp58479
                                                             (let ((__tmp58493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp58498
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp58494
                                   (let ((__tmp58495
                                          (let ((__tmp58497
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp58496
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55834_ '()))))
                                            (declare (not safe))
                                            (cons __tmp58497 __tmp58496))))
                                     (declare (not safe))
                                     (cons _L55838_ __tmp58495))))
                              (declare (not safe))
                              (cons __tmp58498 __tmp58494)))
                           (__tmp58480
                            (let ((__tmp58483
                                   (let ((__tmp58492
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp58484
                                          (let ((__tmp58485
                                                 (let ((__tmp58487
                                                        (let ((__tmp58491
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp58488
                                                               (let ((__tmp58490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp58489
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp58490 __tmp58489))))
                  (declare (not safe))
                  (cons __tmp58491 __tmp58488)))
               (__tmp58486 (let () (declare (not safe)) (cons _L55833_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp58487
                                                         __tmp58486))))
                                            (declare (not safe))
                                            (cons _L55838_ __tmp58485))))
                                     (declare (not safe))
                                     (cons __tmp58492 __tmp58484)))
                                  (__tmp58481
                                   (let ((__tmp58482
                                          (let ()
                                            (declare (not safe))
                                            (cons _L55830_ '()))))
                                     (declare (not safe))
                                     (cons __tmp58482 '()))))
                              (declare (not safe))
                              (cons __tmp58483 __tmp58481))))
                       (declare (not safe))
                       (cons __tmp58493 __tmp58480))))
                (declare (not safe))
                (cons __tmp58499 __tmp58479)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp58455
                                                      (let ((__tmp58456
                                                             (let ((__tmp58477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp58457
                            (let ((__tmp58471
                                   (let ((__tmp58476
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp58472
                                          (let ((__tmp58473
                                                 (let ((__tmp58475
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp58474
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L55834_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp58475
                                                         __tmp58474))))
                                            (declare (not safe))
                                            (cons _L55838_ __tmp58473))))
                                     (declare (not safe))
                                     (cons __tmp58476 __tmp58472)))
                                  (__tmp58458
                                   (let ((__tmp58461
                                          (let ((__tmp58470
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp58462
                                                 (let ((__tmp58463
                                                        (let ((__tmp58465
                                                               (let ((__tmp58469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp58466
                              (let ((__tmp58468 (gx#datum->syntax '#f 'probe))
                                    (__tmp58467
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp58468 __tmp58467))))
                         (declare (not safe))
                         (cons __tmp58469 __tmp58466)))
                      (__tmp58464
                       (let () (declare (not safe)) (cons _L55833_ '()))))
                  (declare (not safe))
                  (cons __tmp58465 __tmp58464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L55838_
                                                         __tmp58463))))
                                            (declare (not safe))
                                            (cons __tmp58470 __tmp58462)))
                                         (__tmp58459
                                          (let ((__tmp58460
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55832_ '()))))
                                            (declare (not safe))
                                            (cons __tmp58460 '()))))
                                     (declare (not safe))
                                     (cons __tmp58461 __tmp58459))))
                              (declare (not safe))
                              (cons __tmp58471 __tmp58458))))
                       (declare (not safe))
                       (cons __tmp58477 __tmp58457))))
                (declare (not safe))
                (cons __tmp58456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58478
                                                       __tmp58455))))
                                          (declare (not safe))
                                          (cons __tmp58500 __tmp58454))))
                                   (declare (not safe))
                                   (cons __tmp58501 __tmp58453))))
                            (declare (not safe))
                            (cons __tmp58452 '()))))
                     (declare (not safe))
                     (cons __tmp58502 __tmp58451)))
                  (__tmp58369
                   (let ((__tmp58417
                          (let ((__tmp58443
                                 (let ((__tmp58449 (gx#datum->syntax '#f 'eq?))
                                       (__tmp58444
                                        (let ((__tmp58448
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp58445
                                               (let ((__tmp58446
                                                      (let ((__tmp58447
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp58447
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp58446 '()))))
                                          (declare (not safe))
                                          (cons __tmp58448 __tmp58445))))
                                   (declare (not safe))
                                   (cons __tmp58449 __tmp58444)))
                                (__tmp58418
                                 (let ((__tmp58419
                                        (let ((__tmp58442
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp58420
                                               (let ((__tmp58434
                                                      (let ((__tmp58441
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp58435
                                                             (let ((__tmp58440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp58436
                            (let ((__tmp58439 (gx#datum->syntax '#f 'i))
                                  (__tmp58437
                                   (let ((__tmp58438
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp58438 '()))))
                              (declare (not safe))
                              (cons __tmp58439 __tmp58437))))
                       (declare (not safe))
                       (cons __tmp58440 __tmp58436))))
                (declare (not safe))
                (cons __tmp58441 __tmp58435)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp58421
                                                      (let ((__tmp58429
                                                             (let ((__tmp58433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp58430
                            (let ((__tmp58432 (gx#datum->syntax '#f 'i))
                                  (__tmp58431
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp58432 __tmp58431))))
                       (declare (not safe))
                       (cons __tmp58433 __tmp58430)))
                    (__tmp58422
                     (let ((__tmp58423
                            (let ((__tmp58428 (gx#datum->syntax '#f 'or))
                                  (__tmp58424
                                   (let ((__tmp58427
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp58425
                                          (let ((__tmp58426
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp58426 '()))))
                                     (declare (not safe))
                                     (cons __tmp58427 __tmp58425))))
                              (declare (not safe))
                              (cons __tmp58428 __tmp58424))))
                       (declare (not safe))
                       (cons __tmp58423 '()))))
                (declare (not safe))
                (cons __tmp58429 __tmp58422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58434
                                                       __tmp58421))))
                                          (declare (not safe))
                                          (cons __tmp58442 __tmp58420))))
                                   (declare (not safe))
                                   (cons __tmp58419 '()))))
                            (declare (not safe))
                            (cons __tmp58443 __tmp58418)))
                         (__tmp58370
                          (let ((__tmp58394
                                 (let ((__tmp58413
                                        (let ((__tmp58414
                                               (let ((__tmp58415
                                                      (let ((__tmp58416
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp58416
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L55834_ __tmp58415))))
                                          (declare (not safe))
                                          (cons _L55835_ __tmp58414)))
                                       (__tmp58395
                                        (let ((__tmp58407
                                               (let ((__tmp58412
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp58408
                                                      (let ((__tmp58409
                                                             (let ((__tmp58411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp58410
                            (let () (declare (not safe)) (cons _L55834_ '()))))
                       (declare (not safe))
                       (cons __tmp58411 __tmp58410))))
                (declare (not safe))
                (cons _L55838_ __tmp58409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58412 __tmp58408)))
                                              (__tmp58396
                                               (let ((__tmp58397
                                                      (let ((__tmp58406
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp58398
                                                             (let ((__tmp58399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp58401
                                   (let ((__tmp58405
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp58402
                                          (let ((__tmp58404
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp58403
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp58404 __tmp58403))))
                                     (declare (not safe))
                                     (cons __tmp58405 __tmp58402)))
                                  (__tmp58400
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55833_ '()))))
                              (declare (not safe))
                              (cons __tmp58401 __tmp58400))))
                       (declare (not safe))
                       (cons _L55838_ __tmp58399))))
                (declare (not safe))
                (cons __tmp58406 __tmp58398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58397 '()))))
                                          (declare (not safe))
                                          (cons __tmp58407 __tmp58396))))
                                   (declare (not safe))
                                   (cons __tmp58413 __tmp58395)))
                                (__tmp58371
                                 (let ((__tmp58372
                                        (let ((__tmp58393
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp58373
                                               (let ((__tmp58374
                                                      (let ((__tmp58392
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp58375
                                                             (let ((__tmp58384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp58391
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp58385
                                   (let ((__tmp58390
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp58386
                                          (let ((__tmp58389
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp58387
                                                 (let ((__tmp58388
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp58388 '()))))
                                            (declare (not safe))
                                            (cons __tmp58389 __tmp58387))))
                                     (declare (not safe))
                                     (cons __tmp58390 __tmp58386))))
                              (declare (not safe))
                              (cons __tmp58391 __tmp58385)))
                           (__tmp58376
                            (let ((__tmp58379
                                   (let ((__tmp58383
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp58380
                                          (let ((__tmp58382
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp58381
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp58382 __tmp58381))))
                                     (declare (not safe))
                                     (cons __tmp58383 __tmp58380)))
                                  (__tmp58377
                                   (let ((__tmp58378
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp58378 '()))))
                              (declare (not safe))
                              (cons __tmp58379 __tmp58377))))
                       (declare (not safe))
                       (cons __tmp58384 __tmp58376))))
                (declare (not safe))
                (cons __tmp58392 __tmp58375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58374 '()))))
                                          (declare (not safe))
                                          (cons __tmp58393 __tmp58373))))
                                   (declare (not safe))
                                   (cons __tmp58372 '()))))
                            (declare (not safe))
                            (cons __tmp58394 __tmp58371))))
                     (declare (not safe))
                     (cons __tmp58417 __tmp58370))))
              (declare (not safe))
              (cons __tmp58450 __tmp58369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58509 __tmp58368))))
                                        (declare (not safe))
                                        (cons __tmp58367 '()))))
                                 (declare (not safe))
                                 (cons __tmp58510 __tmp58366))))
                          (declare (not safe))
                          (cons __tmp58518 __tmp58365))))
                   (declare (not safe))
                   (cons __tmp58364 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58519
                                                          __tmp58363))))
                                             (declare (not safe))
                                             (cons __tmp58532 __tmp58362))))
                                      (declare (not safe))
                                      (cons __tmp58533 __tmp58361))))
                               (declare (not safe))
                               (cons __tmp58360 '()))))
                        (declare (not safe))
                        (cons __tmp58534 __tmp58359))))
                 (declare (not safe))
                 (cons __tmp58574 __tmp58358)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5572655824_
                                                     _hd5572355814_
                                                     _hd5572055804_
                                                     _hd5571755794_
                                                     _hd5571455784_
                                                     _hd5571155774_
                                                     _hd5570855764_
                                                     _hd5570555754_)
                                                    (_g5569155733_
                                                     _g5569255737_))))
                                            (_g5569155733_ _g5569255737_))))
                                    (_g5569155733_ _g5569255737_))))
                            (_g5569155733_ _g5569255737_))))
                    (_g5569155733_ _g5569255737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5569155733_
                                                     _g5569255737_))))
                                            (_g5569155733_ _g5569255737_))))
                                    (_g5569155733_ _g5569255737_))))
                            (_g5569155733_ _g5569255737_))))
                    (_g5569155733_ _g5569255737_)))))
        (_g5569055872_ _$stx55687_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx55876_)
      (let* ((_g5588055926_
              (lambda (_g5588155922_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5588155922_)))
             (_g5587956079_
              (lambda (_g5588155930_)
                (if (gx#stx-pair? _g5588155930_)
                    (let ((_e5589155933_ (gx#syntax-e _g5588155930_)))
                      (let ((_hd5589255937_
                             (let ()
                               (declare (not safe))
                               (##car _e5589155933_)))
                            (_tl5589355940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5589155933_))))
                        (if (gx#stx-pair? _tl5589355940_)
                            (let ((_e5589455943_ (gx#syntax-e _tl5589355940_)))
                              (let ((_hd5589555947_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5589455943_)))
                                    (_tl5589655950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5589455943_))))
                                (if (gx#stx-pair? _tl5589655950_)
                                    (let ((_e5589755953_
                                           (gx#syntax-e _tl5589655950_)))
                                      (let ((_hd5589855957_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5589755953_)))
                                            (_tl5589955960_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5589755953_))))
                                        (if (gx#stx-pair? _tl5589955960_)
                                            (let ((_e5590055963_
                                                   (gx#syntax-e
                                                    _tl5589955960_)))
                                              (let ((_hd5590155967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5590055963_)))
                                                    (_tl5590255970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5590055963_))))
                                                (if (gx#stx-pair?
                                                     _tl5590255970_)
                                                    (let ((_e5590355973_
                                                           (gx#syntax-e
                                                            _tl5590255970_)))
                                                      (let ((_hd5590455977_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5590355973_)))
                    (_tl5590555980_
                     (let () (declare (not safe)) (##cdr _e5590355973_))))
                (if (gx#stx-pair? _tl5590555980_)
                    (let ((_e5590655983_ (gx#syntax-e _tl5590555980_)))
                      (let ((_hd5590755987_
                             (let ()
                               (declare (not safe))
                               (##car _e5590655983_)))
                            (_tl5590855990_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5590655983_))))
                        (if (gx#stx-pair? _tl5590855990_)
                            (let ((_e5590955993_ (gx#syntax-e _tl5590855990_)))
                              (let ((_hd5591055997_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5590955993_)))
                                    (_tl5591156000_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5590955993_))))
                                (if (gx#stx-pair? _tl5591156000_)
                                    (let ((_e5591256003_
                                           (gx#syntax-e _tl5591156000_)))
                                      (let ((_hd5591356007_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5591256003_)))
                                            (_tl5591456010_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5591256003_))))
                                        (if (gx#stx-pair? _tl5591456010_)
                                            (let ((_e5591556013_
                                                   (gx#syntax-e
                                                    _tl5591456010_)))
                                              (let ((_hd5591656017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5591556013_)))
                                                    (_tl5591756020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5591556013_))))
                                                (if (gx#stx-pair?
                                                     _tl5591756020_)
                                                    (let ((_e5591856023_
                                                           (gx#syntax-e
                                                            _tl5591756020_)))
                                                      (let ((_hd5591956027_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5591856023_)))
                    (_tl5592056030_
                     (let () (declare (not safe)) (##cdr _e5591856023_))))
                (if (gx#stx-null? _tl5592056030_)
                    ((lambda (_L56033_
                              _L56035_
                              _L56036_
                              _L56037_
                              _L56038_
                              _L56039_
                              _L56040_
                              _L56041_
                              _L56042_)
                       (let ((__tmp58806 (gx#datum->syntax '#f 'let*))
                             (__tmp58575
                              (let ((__tmp58766
                                     (let ((__tmp58797
                                            (let ((__tmp58805
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp58798
                                                   (let ((__tmp58799
                                                          (let ((__tmp58804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp58800
                         (let ((__tmp58802
                                (let ((__tmp58803
                                       (let ()
                                         (declare (not safe))
                                         (cons _L56038_ '()))))
                                  (declare (not safe))
                                  (cons _L56040_ __tmp58803)))
                               (__tmp58801
                                (let ()
                                  (declare (not safe))
                                  (cons _L56041_ '()))))
                           (declare (not safe))
                           (cons __tmp58802 __tmp58801))))
                    (declare (not safe))
                    (cons __tmp58804 __tmp58800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58799 '()))))
                                              (declare (not safe))
                                              (cons __tmp58805 __tmp58798)))
                                           (__tmp58767
                                            (let ((__tmp58791
                                                   (let ((__tmp58796
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp58792
                                                          (let ((__tmp58793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58795
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp58794
                                (let ()
                                  (declare (not safe))
                                  (cons _L56042_ '()))))
                           (declare (not safe))
                           (cons __tmp58795 __tmp58794))))
                    (declare (not safe))
                    (cons __tmp58793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58796
                                                           __tmp58792)))
                                                  (__tmp58768
                                                   (let ((__tmp58783
                                                          (let ((__tmp58790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp58784
                         (let ((__tmp58785
                                (let ((__tmp58789
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp58786
                                       (let ((__tmp58788
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp58787
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp58788 __tmp58787))))
                                  (declare (not safe))
                                  (cons __tmp58789 __tmp58786))))
                           (declare (not safe))
                           (cons __tmp58785 '()))))
                    (declare (not safe))
                    (cons __tmp58790 __tmp58784)))
                 (__tmp58769
                  (let ((__tmp58770
                         (let ((__tmp58782 (gx#datum->syntax '#f 'start))
                               (__tmp58771
                                (let ((__tmp58772
                                       (let ((__tmp58781
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp58773
                                              (let ((__tmp58775
                                                     (let ((__tmp58780
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp58776
                                                            (let ((__tmp58779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58777
                           (let ((__tmp58778 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp58778 '()))))
                      (declare (not safe))
                      (cons __tmp58779 __tmp58777))))
               (declare (not safe))
               (cons __tmp58780 __tmp58776)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58774
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp58775 __tmp58774))))
                                         (declare (not safe))
                                         (cons __tmp58781 __tmp58773))))
                                  (declare (not safe))
                                  (cons __tmp58772 '()))))
                           (declare (not safe))
                           (cons __tmp58782 __tmp58771))))
                    (declare (not safe))
                    (cons __tmp58770 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58783
                                                           __tmp58769))))
                                              (declare (not safe))
                                              (cons __tmp58791 __tmp58768))))
                                       (declare (not safe))
                                       (cons __tmp58797 __tmp58767)))
                                    (__tmp58576
                                     (let ((__tmp58577
                                            (let ((__tmp58765
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp58578
                                                   (let ((__tmp58764
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp58579
                                                          (let ((__tmp58751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58760
                                (let ((__tmp58763
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp58761
                                       (let ((__tmp58762
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp58762 '()))))
                                  (declare (not safe))
                                  (cons __tmp58763 __tmp58761)))
                               (__tmp58752
                                (let ((__tmp58757
                                       (let ((__tmp58759
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp58758
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp58759 __tmp58758)))
                                      (__tmp58753
                                       (let ((__tmp58754
                                              (let ((__tmp58756
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp58755
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp58756 __tmp58755))))
                                         (declare (not safe))
                                         (cons __tmp58754 '()))))
                                  (declare (not safe))
                                  (cons __tmp58757 __tmp58753))))
                           (declare (not safe))
                           (cons __tmp58760 __tmp58752)))
                        (__tmp58580
                         (let ((__tmp58581
                                (let ((__tmp58750 (gx#datum->syntax '#f 'let))
                                      (__tmp58582
                                       (let ((__tmp58742
                                              (let ((__tmp58749
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp58743
                                                     (let ((__tmp58744
                                                            (let ((__tmp58748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp58745
                           (let ((__tmp58746
                                  (let ((__tmp58747
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp58747 '()))))
                             (declare (not safe))
                             (cons _L56042_ __tmp58746))))
                      (declare (not safe))
                      (cons __tmp58748 __tmp58745))))
               (declare (not safe))
               (cons __tmp58744 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58749 __tmp58743)))
                                             (__tmp58583
                                              (let ((__tmp58584
                                                     (let ((__tmp58741
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp58585
                                                            (let ((__tmp58678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp58734
                                  (let ((__tmp58740
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp58735
                                         (let ((__tmp58739
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp58736
                                                (let ((__tmp58737
                                                       (let ((__tmp58738
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp58738
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58737 '()))))
                                           (declare (not safe))
                                           (cons __tmp58739 __tmp58736))))
                                    (declare (not safe))
                                    (cons __tmp58740 __tmp58735)))
                                 (__tmp58679
                                  (let ((__tmp58680
                                         (let ((__tmp58733
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp58681
                                                (let ((__tmp58732
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp58682
                                                       (let ((__tmp58708
                                                              (let ((__tmp58731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp58709
                             (let ((__tmp58725
                                    (let ((__tmp58730
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp58726
                                           (let ((__tmp58727
                                                  (let ((__tmp58729
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp58728
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L56038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58729
                                                          __tmp58728))))
                                             (declare (not safe))
                                             (cons _L56042_ __tmp58727))))
                                      (declare (not safe))
                                      (cons __tmp58730 __tmp58726)))
                                   (__tmp58710
                                    (let ((__tmp58713
                                           (let ((__tmp58724
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp58714
                                                  (let ((__tmp58715
                                                         (let ((__tmp58719
                                                                (let ((__tmp58723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp58720
                               (let ((__tmp58722
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp58721
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp58722 __tmp58721))))
                          (declare (not safe))
                          (cons __tmp58723 __tmp58720)))
                       (__tmp58716
                        (let ((__tmp58717
                               (let ((__tmp58718
                                      (let ()
                                        (declare (not safe))
                                        (cons _L56036_ '()))))
                                 (declare (not safe))
                                 (cons _L56037_ __tmp58718))))
                          (declare (not safe))
                          (cons __tmp58717 '()))))
                   (declare (not safe))
                   (cons __tmp58719 __tmp58716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L56042_
                                                          __tmp58715))))
                                             (declare (not safe))
                                             (cons __tmp58724 __tmp58714)))
                                          (__tmp58711
                                           (let ((__tmp58712
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L56033_ '()))))
                                             (declare (not safe))
                                             (cons __tmp58712 '()))))
                                      (declare (not safe))
                                      (cons __tmp58713 __tmp58711))))
                               (declare (not safe))
                               (cons __tmp58725 __tmp58710))))
                        (declare (not safe))
                        (cons __tmp58731 __tmp58709)))
                     (__tmp58683
                      (let ((__tmp58684
                             (let ((__tmp58707 (gx#datum->syntax '#f 'begin))
                                   (__tmp58685
                                    (let ((__tmp58701
                                           (let ((__tmp58706
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp58702
                                                  (let ((__tmp58703
                                                         (let ((__tmp58705
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp58704
                        (let () (declare (not safe)) (cons _L56038_ '()))))
                   (declare (not safe))
                   (cons __tmp58705 __tmp58704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L56042_
                                                          __tmp58703))))
                                             (declare (not safe))
                                             (cons __tmp58706 __tmp58702)))
                                          (__tmp58686
                                           (let ((__tmp58689
                                                  (let ((__tmp58700
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp58690
                                                         (let ((__tmp58691
                                                                (let ((__tmp58695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58699 (gx#datum->syntax '#f 'fx+))
                                     (__tmp58696
                                      (let ((__tmp58698
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp58697
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp58698 __tmp58697))))
                                 (declare (not safe))
                                 (cons __tmp58699 __tmp58696)))
                              (__tmp58692
                               (let ((__tmp58693
                                      (let ((__tmp58694
                                             (let ()
                                               (declare (not safe))
                                               (cons _L56036_ '()))))
                                        (declare (not safe))
                                        (cons _L56037_ __tmp58694))))
                                 (declare (not safe))
                                 (cons __tmp58693 '()))))
                          (declare (not safe))
                          (cons __tmp58695 __tmp58692))))
                   (declare (not safe))
                   (cons _L56042_ __tmp58691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58700
                                                          __tmp58690)))
                                                 (__tmp58687
                                                  (let ((__tmp58688
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L56035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58688 '()))))
                                             (declare (not safe))
                                             (cons __tmp58689 __tmp58687))))
                                      (declare (not safe))
                                      (cons __tmp58701 __tmp58686))))
                               (declare (not safe))
                               (cons __tmp58707 __tmp58685))))
                        (declare (not safe))
                        (cons __tmp58684 '()))))
                 (declare (not safe))
                 (cons __tmp58708 __tmp58683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58732
                                                        __tmp58682))))
                                           (declare (not safe))
                                           (cons __tmp58733 __tmp58681))))
                                    (declare (not safe))
                                    (cons __tmp58680 '()))))
                             (declare (not safe))
                             (cons __tmp58734 __tmp58679)))
                          (__tmp58586
                           (let ((__tmp58645
                                  (let ((__tmp58671
                                         (let ((__tmp58677
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp58672
                                                (let ((__tmp58676
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp58673
                                                       (let ((__tmp58674
                                                              (let ((__tmp58675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp58675 '()))))
                 (declare (not safe))
                 (cons __tmp58674 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58676
                                                        __tmp58673))))
                                           (declare (not safe))
                                           (cons __tmp58677 __tmp58672)))
                                        (__tmp58646
                                         (let ((__tmp58647
                                                (let ((__tmp58670
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp58648
                                                       (let ((__tmp58662
                                                              (let ((__tmp58669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp58663
                             (let ((__tmp58668 (gx#datum->syntax '#f 'start))
                                   (__tmp58664
                                    (let ((__tmp58667
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp58665
                                           (let ((__tmp58666
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp58666 '()))))
                                      (declare (not safe))
                                      (cons __tmp58667 __tmp58665))))
                               (declare (not safe))
                               (cons __tmp58668 __tmp58664))))
                        (declare (not safe))
                        (cons __tmp58669 __tmp58663)))
                     (__tmp58649
                      (let ((__tmp58657
                             (let ((__tmp58661 (gx#datum->syntax '#f 'fx+))
                                   (__tmp58658
                                    (let ((__tmp58660
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp58659
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp58660 __tmp58659))))
                               (declare (not safe))
                               (cons __tmp58661 __tmp58658)))
                            (__tmp58650
                             (let ((__tmp58651
                                    (let ((__tmp58656
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp58652
                                           (let ((__tmp58655
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp58653
                                                  (let ((__tmp58654
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58654 '()))))
                                             (declare (not safe))
                                             (cons __tmp58655 __tmp58653))))
                                      (declare (not safe))
                                      (cons __tmp58656 __tmp58652))))
                               (declare (not safe))
                               (cons __tmp58651 '()))))
                        (declare (not safe))
                        (cons __tmp58657 __tmp58650))))
                 (declare (not safe))
                 (cons __tmp58662 __tmp58649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58670
                                                        __tmp58648))))
                                           (declare (not safe))
                                           (cons __tmp58647 '()))))
                                    (declare (not safe))
                                    (cons __tmp58671 __tmp58646)))
                                 (__tmp58587
                                  (let ((__tmp58611
                                         (let ((__tmp58641
                                                (let ((__tmp58642
                                                       (let ((__tmp58643
                                                              (let ((__tmp58644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp58644 '()))))
                 (declare (not safe))
                 (cons _L56038_ __tmp58643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L56039_ __tmp58642)))
                                               (__tmp58612
                                                (let ((__tmp58635
                                                       (let ((__tmp58640
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp58636
                                                              (let ((__tmp58637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58639 (gx#datum->syntax '#f 'probe))
                                   (__tmp58638
                                    (let ()
                                      (declare (not safe))
                                      (cons _L56038_ '()))))
                               (declare (not safe))
                               (cons __tmp58639 __tmp58638))))
                        (declare (not safe))
                        (cons _L56042_ __tmp58637))))
                 (declare (not safe))
                 (cons __tmp58640 __tmp58636)))
              (__tmp58613
               (let ((__tmp58614
                      (let ((__tmp58634 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp58615
                             (let ((__tmp58616
                                    (let ((__tmp58629
                                           (let ((__tmp58633
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp58630
                                                  (let ((__tmp58632
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp58631
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp58632
                                                          __tmp58631))))
                                             (declare (not safe))
                                             (cons __tmp58633 __tmp58630)))
                                          (__tmp58617
                                           (let ((__tmp58618
                                                  (let ((__tmp58619
                                                         (let ((__tmp58620
                                                                (let ((__tmp58628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp58621
                               (let ((__tmp58622
                                      (let ((__tmp58623
                                             (let ((__tmp58627
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58624
                                                    (let ((__tmp58626
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp58625
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58626
                                                            __tmp58625))))
                                               (declare (not safe))
                                               (cons __tmp58627 __tmp58624))))
                                        (declare (not safe))
                                        (cons __tmp58623 '()))))
                                 (declare (not safe))
                                 (cons _L56042_ __tmp58622))))
                          (declare (not safe))
                          (cons __tmp58628 __tmp58621))))
                   (declare (not safe))
                   (cons __tmp58620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L56037_
                                                          __tmp58619))))
                                             (declare (not safe))
                                             (cons __tmp58618 '()))))
                                      (declare (not safe))
                                      (cons __tmp58629 __tmp58617))))
                               (declare (not safe))
                               (cons _L56042_ __tmp58616))))
                        (declare (not safe))
                        (cons __tmp58634 __tmp58615))))
                 (declare (not safe))
                 (cons __tmp58614 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58635
                                                        __tmp58613))))
                                           (declare (not safe))
                                           (cons __tmp58641 __tmp58612)))
                                        (__tmp58588
                                         (let ((__tmp58589
                                                (let ((__tmp58610
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp58590
                                                       (let ((__tmp58591
                                                              (let ((__tmp58609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp58592
                             (let ((__tmp58601
                                    (let ((__tmp58608
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp58602
                                           (let ((__tmp58607
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp58603
                                                  (let ((__tmp58606
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp58604
                                                         (let ((__tmp58605
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp58605 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58606
                                                          __tmp58604))))
                                             (declare (not safe))
                                             (cons __tmp58607 __tmp58603))))
                                      (declare (not safe))
                                      (cons __tmp58608 __tmp58602)))
                                   (__tmp58593
                                    (let ((__tmp58596
                                           (let ((__tmp58600
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp58597
                                                  (let ((__tmp58599
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp58598
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp58599
                                                          __tmp58598))))
                                             (declare (not safe))
                                             (cons __tmp58600 __tmp58597)))
                                          (__tmp58594
                                           (let ((__tmp58595
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp58595 '()))))
                                      (declare (not safe))
                                      (cons __tmp58596 __tmp58594))))
                               (declare (not safe))
                               (cons __tmp58601 __tmp58593))))
                        (declare (not safe))
                        (cons __tmp58609 __tmp58592))))
                 (declare (not safe))
                 (cons __tmp58591 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58610
                                                        __tmp58590))))
                                           (declare (not safe))
                                           (cons __tmp58589 '()))))
                                    (declare (not safe))
                                    (cons __tmp58611 __tmp58588))))
                             (declare (not safe))
                             (cons __tmp58645 __tmp58587))))
                      (declare (not safe))
                      (cons __tmp58678 __tmp58586))))
               (declare (not safe))
               (cons __tmp58741 __tmp58585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58584 '()))))
                                         (declare (not safe))
                                         (cons __tmp58742 __tmp58583))))
                                  (declare (not safe))
                                  (cons __tmp58750 __tmp58582))))
                           (declare (not safe))
                           (cons __tmp58581 '()))))
                    (declare (not safe))
                    (cons __tmp58751 __tmp58580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58764
                                                           __tmp58579))))
                                              (declare (not safe))
                                              (cons __tmp58765 __tmp58578))))
                                       (declare (not safe))
                                       (cons __tmp58577 '()))))
                                (declare (not safe))
                                (cons __tmp58766 __tmp58576))))
                         (declare (not safe))
                         (cons __tmp58806 __tmp58575)))
                     _hd5591956027_
                     _hd5591656017_
                     _hd5591356007_
                     _hd5591055997_
                     _hd5590755987_
                     _hd5590455977_
                     _hd5590155967_
                     _hd5589855957_
                     _hd5589555947_)
                    (_g5588055926_ _g5588155930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5588055926_
                                                     _g5588155930_))))
                                            (_g5588055926_ _g5588155930_))))
                                    (_g5588055926_ _g5588155930_))))
                            (_g5588055926_ _g5588155930_))))
                    (_g5588055926_ _g5588155930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5588055926_
                                                     _g5588155930_))))
                                            (_g5588055926_ _g5588155930_))))
                                    (_g5588055926_ _g5588155930_))))
                            (_g5588055926_ _g5588155930_))))
                    (_g5588055926_ _g5588155930_)))))
        (_g5587956079_ _$stx55876_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx56083_)
      (let* ((_g5608756121_
              (lambda (_g5608856117_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5608856117_)))
             (_g5608656232_
              (lambda (_g5608856125_)
                (if (gx#stx-pair? _g5608856125_)
                    (let ((_e5609556128_ (gx#syntax-e _g5608856125_)))
                      (let ((_hd5609656132_
                             (let ()
                               (declare (not safe))
                               (##car _e5609556128_)))
                            (_tl5609756135_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5609556128_))))
                        (if (gx#stx-pair? _tl5609756135_)
                            (let ((_e5609856138_ (gx#syntax-e _tl5609756135_)))
                              (let ((_hd5609956142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5609856138_)))
                                    (_tl5610056145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5609856138_))))
                                (if (gx#stx-pair? _tl5610056145_)
                                    (let ((_e5610156148_
                                           (gx#syntax-e _tl5610056145_)))
                                      (let ((_hd5610256152_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5610156148_)))
                                            (_tl5610356155_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5610156148_))))
                                        (if (gx#stx-pair? _tl5610356155_)
                                            (let ((_e5610456158_
                                                   (gx#syntax-e
                                                    _tl5610356155_)))
                                              (let ((_hd5610556162_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5610456158_)))
                                                    (_tl5610656165_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5610456158_))))
                                                (if (gx#stx-pair?
                                                     _tl5610656165_)
                                                    (let ((_e5610756168_
                                                           (gx#syntax-e
                                                            _tl5610656165_)))
                                                      (let ((_hd5610856172_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5610756168_)))
                    (_tl5610956175_
                     (let () (declare (not safe)) (##cdr _e5610756168_))))
                (if (gx#stx-pair? _tl5610956175_)
                    (let ((_e5611056178_ (gx#syntax-e _tl5610956175_)))
                      (let ((_hd5611156182_
                             (let ()
                               (declare (not safe))
                               (##car _e5611056178_)))
                            (_tl5611256185_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5611056178_))))
                        (if (gx#stx-pair? _tl5611256185_)
                            (let ((_e5611356188_ (gx#syntax-e _tl5611256185_)))
                              (let ((_hd5611456192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5611356188_)))
                                    (_tl5611556195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5611356188_))))
                                (if (gx#stx-null? _tl5611556195_)
                                    ((lambda (_L56198_
                                              _L56200_
                                              _L56201_
                                              _L56202_
                                              _L56203_
                                              _L56204_)
                                       (let ((__tmp58968
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp58807
                                              (let ((__tmp58928
                                                     (let ((__tmp58959
                                                            (let ((__tmp58967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58960
                           (let ((__tmp58961
                                  (let ((__tmp58966
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp58962
                                         (let ((__tmp58964
                                                (let ((__tmp58965
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L56200_ '()))))
                                                  (declare (not safe))
                                                  (cons _L56202_ __tmp58965)))
                                               (__tmp58963
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L56203_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58964 __tmp58963))))
                                    (declare (not safe))
                                    (cons __tmp58966 __tmp58962))))
                             (declare (not safe))
                             (cons __tmp58961 '()))))
                      (declare (not safe))
                      (cons __tmp58967 __tmp58960)))
                   (__tmp58929
                    (let ((__tmp58953
                           (let ((__tmp58958 (gx#datum->syntax '#f 'size))
                                 (__tmp58954
                                  (let ((__tmp58955
                                         (let ((__tmp58957
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58956
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L56204_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58957 __tmp58956))))
                                    (declare (not safe))
                                    (cons __tmp58955 '()))))
                             (declare (not safe))
                             (cons __tmp58958 __tmp58954)))
                          (__tmp58930
                           (let ((__tmp58945
                                  (let ((__tmp58952
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp58946
                                         (let ((__tmp58947
                                                (let ((__tmp58951
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp58948
                                                       (let ((__tmp58950
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp58949
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp58950 __tmp58949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58951
                                                        __tmp58948))))
                                           (declare (not safe))
                                           (cons __tmp58947 '()))))
                                    (declare (not safe))
                                    (cons __tmp58952 __tmp58946)))
                                 (__tmp58931
                                  (let ((__tmp58932
                                         (let ((__tmp58944
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp58933
                                                (let ((__tmp58934
                                                       (let ((__tmp58943
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp58935
                                                              (let ((__tmp58937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58942
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp58938
                                    (let ((__tmp58941
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58939
                                           (let ((__tmp58940
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp58940 '()))))
                                      (declare (not safe))
                                      (cons __tmp58941 __tmp58939))))
                               (declare (not safe))
                               (cons __tmp58942 __tmp58938)))
                            (__tmp58936
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp58937 __tmp58936))))
                 (declare (not safe))
                 (cons __tmp58943 __tmp58935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58934 '()))))
                                           (declare (not safe))
                                           (cons __tmp58944 __tmp58933))))
                                    (declare (not safe))
                                    (cons __tmp58932 '()))))
                             (declare (not safe))
                             (cons __tmp58945 __tmp58931))))
                      (declare (not safe))
                      (cons __tmp58953 __tmp58930))))
               (declare (not safe))
               (cons __tmp58959 __tmp58929)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58808
                                                     (let ((__tmp58809
                                                            (let ((__tmp58927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp58810
                           (let ((__tmp58926 (gx#datum->syntax '#f 'loop))
                                 (__tmp58811
                                  (let ((__tmp58917
                                         (let ((__tmp58922
                                                (let ((__tmp58925
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp58923
                                                       (let ((__tmp58924
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp58924
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58925
                                                        __tmp58923)))
                                               (__tmp58918
                                                (let ((__tmp58919
                                                       (let ((__tmp58921
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp58920
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp58921 __tmp58920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58919 '()))))
                                           (declare (not safe))
                                           (cons __tmp58922 __tmp58918)))
                                        (__tmp58812
                                         (let ((__tmp58813
                                                (let ((__tmp58916
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp58814
                                                       (let ((__tmp58908
                                                              (let ((__tmp58915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp58909
                             (let ((__tmp58910
                                    (let ((__tmp58914
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp58911
                                           (let ((__tmp58912
                                                  (let ((__tmp58913
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58913 '()))))
                                             (declare (not safe))
                                             (cons _L56204_ __tmp58912))))
                                      (declare (not safe))
                                      (cons __tmp58914 __tmp58911))))
                               (declare (not safe))
                               (cons __tmp58910 '()))))
                        (declare (not safe))
                        (cons __tmp58915 __tmp58909)))
                     (__tmp58815
                      (let ((__tmp58816
                             (let ((__tmp58907 (gx#datum->syntax '#f 'cond))
                                   (__tmp58817
                                    (let ((__tmp58896
                                           (let ((__tmp58900
                                                  (let ((__tmp58906
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp58901
                                                         (let ((__tmp58905
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp58902
                        (let ((__tmp58903
                               (let ((__tmp58904
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp58904 '()))))
                          (declare (not safe))
                          (cons __tmp58903 '()))))
                   (declare (not safe))
                   (cons __tmp58905 __tmp58902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58906
                                                          __tmp58901)))
                                                 (__tmp58897
                                                  (let ((__tmp58898
                                                         (let ((__tmp58899
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp58899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58898 '()))))
                                             (declare (not safe))
                                             (cons __tmp58900 __tmp58897)))
                                          (__tmp58818
                                           (let ((__tmp58870
                                                  (let ((__tmp58889
                                                         (let ((__tmp58895
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp58890
                        (let ((__tmp58894 (gx#datum->syntax '#f 'k))
                              (__tmp58891
                               (let ((__tmp58892
                                      (let ((__tmp58893
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp58893 '()))))
                                 (declare (not safe))
                                 (cons __tmp58892 '()))))
                          (declare (not safe))
                          (cons __tmp58894 __tmp58891))))
                   (declare (not safe))
                   (cons __tmp58895 __tmp58890)))
                (__tmp58871
                 (let ((__tmp58872
                        (let ((__tmp58888 (gx#datum->syntax '#f 'loop))
                              (__tmp58873
                               (let ((__tmp58880
                                      (let ((__tmp58887
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp58881
                                             (let ((__tmp58886
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp58882
                                                    (let ((__tmp58885
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58883
                                                           (let ((__tmp58884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp58884 '()))))
              (declare (not safe))
              (cons __tmp58885 __tmp58883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58886 __tmp58882))))
                                        (declare (not safe))
                                        (cons __tmp58887 __tmp58881)))
                                     (__tmp58874
                                      (let ((__tmp58875
                                             (let ((__tmp58879
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58876
                                                    (let ((__tmp58878
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58877
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58878
                                                            __tmp58877))))
                                               (declare (not safe))
                                               (cons __tmp58879 __tmp58876))))
                                        (declare (not safe))
                                        (cons __tmp58875 '()))))
                                 (declare (not safe))
                                 (cons __tmp58880 __tmp58874))))
                          (declare (not safe))
                          (cons __tmp58888 __tmp58873))))
                   (declare (not safe))
                   (cons __tmp58872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58889
                                                          __tmp58871)))
                                                 (__tmp58819
                                                  (let ((__tmp58841
                                                         (let ((__tmp58866
                                                                (let ((__tmp58867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58868
                                      (let ((__tmp58869
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp58869 '()))))
                                 (declare (not safe))
                                 (cons _L56200_ __tmp58868))))
                          (declare (not safe))
                          (cons _L56201_ __tmp58867)))
                       (__tmp58842
                        (let ((__tmp58858
                               (let ((__tmp58865
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp58859
                                      (let ((__tmp58860
                                             (let ((__tmp58864
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp58861
                                                    (let ((__tmp58862
                                                           (let ((__tmp58863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp58863 '()))))
              (declare (not safe))
              (cons __tmp58862 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58864 __tmp58861))))
                                        (declare (not safe))
                                        (cons _L56204_ __tmp58860))))
                                 (declare (not safe))
                                 (cons __tmp58865 __tmp58859)))
                              (__tmp58843
                               (let ((__tmp58846
                                      (let ((__tmp58857
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp58847
                                             (let ((__tmp58848
                                                    (let ((__tmp58852
                                                           (let ((__tmp58856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58853
                          (let ((__tmp58855 (gx#datum->syntax '#f 'probe))
                                (__tmp58854
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58855 __tmp58854))))
                     (declare (not safe))
                     (cons __tmp58856 __tmp58853)))
                  (__tmp58849
                   (let ((__tmp58850
                          (let ((__tmp58851
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp58851 '()))))
                     (declare (not safe))
                     (cons __tmp58850 '()))))
              (declare (not safe))
              (cons __tmp58852 __tmp58849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L56204_ __tmp58848))))
                                        (declare (not safe))
                                        (cons __tmp58857 __tmp58847)))
                                     (__tmp58844
                                      (let ((__tmp58845
                                             (let ()
                                               (declare (not safe))
                                               (cons _L56198_ '()))))
                                        (declare (not safe))
                                        (cons __tmp58845 '()))))
                                 (declare (not safe))
                                 (cons __tmp58846 __tmp58844))))
                          (declare (not safe))
                          (cons __tmp58858 __tmp58843))))
                   (declare (not safe))
                   (cons __tmp58866 __tmp58842)))
                (__tmp58820
                 (let ((__tmp58821
                        (let ((__tmp58840 (gx#datum->syntax '#f 'else))
                              (__tmp58822
                               (let ((__tmp58823
                                      (let ((__tmp58839
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp58824
                                             (let ((__tmp58831
                                                    (let ((__tmp58838
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp58832
                                                           (let ((__tmp58837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp58833
                          (let ((__tmp58836 (gx#datum->syntax '#f 'i))
                                (__tmp58834
                                 (let ((__tmp58835
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp58835 '()))))
                            (declare (not safe))
                            (cons __tmp58836 __tmp58834))))
                     (declare (not safe))
                     (cons __tmp58837 __tmp58833))))
              (declare (not safe))
              (cons __tmp58838 __tmp58832)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58825
                                                    (let ((__tmp58826
                                                           (let ((__tmp58830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58827
                          (let ((__tmp58829 (gx#datum->syntax '#f 'i))
                                (__tmp58828
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58829 __tmp58828))))
                     (declare (not safe))
                     (cons __tmp58830 __tmp58827))))
              (declare (not safe))
              (cons __tmp58826 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58831 __tmp58825))))
                                        (declare (not safe))
                                        (cons __tmp58839 __tmp58824))))
                                 (declare (not safe))
                                 (cons __tmp58823 '()))))
                          (declare (not safe))
                          (cons __tmp58840 __tmp58822))))
                   (declare (not safe))
                   (cons __tmp58821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58841
                                                          __tmp58820))))
                                             (declare (not safe))
                                             (cons __tmp58870 __tmp58819))))
                                      (declare (not safe))
                                      (cons __tmp58896 __tmp58818))))
                               (declare (not safe))
                               (cons __tmp58907 __tmp58817))))
                        (declare (not safe))
                        (cons __tmp58816 '()))))
                 (declare (not safe))
                 (cons __tmp58908 __tmp58815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58916
                                                        __tmp58814))))
                                           (declare (not safe))
                                           (cons __tmp58813 '()))))
                                    (declare (not safe))
                                    (cons __tmp58917 __tmp58812))))
                             (declare (not safe))
                             (cons __tmp58926 __tmp58811))))
                      (declare (not safe))
                      (cons __tmp58927 __tmp58810))))
               (declare (not safe))
               (cons __tmp58809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58928 __tmp58808))))
                                         (declare (not safe))
                                         (cons __tmp58968 __tmp58807)))
                                     _hd5611456192_
                                     _hd5611156182_
                                     _hd5610856172_
                                     _hd5610556162_
                                     _hd5610256152_
                                     _hd5609956142_)
                                    (_g5608756121_ _g5608856125_))))
                            (_g5608756121_ _g5608856125_))))
                    (_g5608756121_ _g5608856125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5608756121_
                                                     _g5608856125_))))
                                            (_g5608756121_ _g5608856125_))))
                                    (_g5608756121_ _g5608856125_))))
                            (_g5608756121_ _g5608856125_))))
                    (_g5608756121_ _g5608856125_)))))
        (_g5608656232_ _$stx56083_)))))
