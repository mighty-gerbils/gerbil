(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx90127_)
      (let* ((___stx9672796728_ _$stx90127_)
             (_g9013290161_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9672796728_))))
        (let ((___kont9673096731_
               (lambda (_L90254_ _L90256_)
                 (let ((__tmp96988 (gx#datum->syntax '#f '##fx=))
                       (__tmp96982
                        (let ((__tmp96984
                               (let ((__tmp96987
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp96985
                                      (let ((__tmp96986
                                             (let ()
                                               (declare (not safe))
                                               (cons _L90254_ '()))))
                                        (declare (not safe))
                                        (cons _L90256_ __tmp96986))))
                                 (declare (not safe))
                                 (cons __tmp96987 __tmp96985)))
                              (__tmp96983
                               (let ()
                                 (declare (not safe))
                                 (cons _L90254_ '()))))
                          (declare (not safe))
                          (cons __tmp96984 __tmp96983))))
                   (declare (not safe))
                   (cons __tmp96988 __tmp96982))))
              (___kont9673296733_
               (lambda (_L90198_ _L90200_)
                 (let ((__tmp97001 (gx#datum->syntax '#f 'let))
                       (__tmp96989
                        (let ((__tmp96999
                               (let ((__tmp97000
                                      (let ()
                                        (declare (not safe))
                                        (cons _L90198_ '()))))
                                 (declare (not safe))
                                 (cons _L90198_ __tmp97000)))
                              (__tmp96990
                               (let ((__tmp96991
                                      (let ((__tmp96998
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp96992
                                             (let ((__tmp96994
                                                    (let ((__tmp96997
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp96995
                                                           (let ((__tmp96996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L90198_ '()))))
                     (declare (not safe))
                     (cons _L90200_ __tmp96996))))
              (declare (not safe))
              (cons __tmp96997 __tmp96995)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96993
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L90198_ '()))))
                                               (declare (not safe))
                                               (cons __tmp96994 __tmp96993))))
                                        (declare (not safe))
                                        (cons __tmp96998 __tmp96992))))
                                 (declare (not safe))
                                 (cons __tmp96991 '()))))
                          (declare (not safe))
                          (cons __tmp96999 __tmp96990))))
                   (declare (not safe))
                   (cons __tmp97001 __tmp96989)))))
          (let ((___match9675496755_
                 (lambda (_e9013890224_
                          _hd9013790228_
                          _tl9013690231_
                          _e9014190234_
                          _hd9014090238_
                          _tl9013990241_
                          _e9014490244_
                          _hd9014390248_
                          _tl9014290251_)
                   (let ((_L90254_ _hd9014390248_) (_L90256_ _hd9014090238_))
                     (if (or (gx#identifier? _L90254_)
                             (gx#stx-fixnum? _L90254_))
                         (___kont9673096731_ _L90254_ _L90256_)
                         (___kont9673296733_
                          _hd9014390248_
                          _hd9014090238_))))))
            (if (gx#stx-pair? ___stx9672796728_)
                (let ((_e9013890224_ (gx#syntax-e ___stx9672796728_)))
                  (let ((_tl9013690231_
                         (let () (declare (not safe)) (##cdr _e9013890224_)))
                        (_hd9013790228_
                         (let () (declare (not safe)) (##car _e9013890224_))))
                    (if (gx#stx-pair? _tl9013690231_)
                        (let ((_e9014190234_ (gx#syntax-e _tl9013690231_)))
                          (let ((_tl9013990241_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9014190234_)))
                                (_hd9014090238_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9014190234_))))
                            (if (gx#stx-pair? _tl9013990241_)
                                (let ((_e9014490244_
                                       (gx#syntax-e _tl9013990241_)))
                                  (let ((_tl9014290251_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9014490244_)))
                                        (_hd9014390248_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9014490244_))))
                                    (if (gx#stx-null? _tl9014290251_)
                                        (___match9675496755_
                                         _e9013890224_
                                         _hd9013790228_
                                         _tl9013690231_
                                         _e9014190234_
                                         _hd9014090238_
                                         _tl9013990241_
                                         _e9014490244_
                                         _hd9014390248_
                                         _tl9014290251_)
                                        (let ()
                                          (declare (not safe))
                                          (_g9013290161_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9013290161_)))))
                        (let () (declare (not safe)) (_g9013290161_)))))
                (let () (declare (not safe)) (_g9013290161_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx90279_)
      (let* ((___stx9677796778_ _$stx90279_)
             (_g9028490313_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9677796778_))))
        (let ((___kont9678096781_
               (lambda (_L90405_ _L90407_)
                 (let ((__tmp97008 (gx#datum->syntax '#f '##fx=))
                       (__tmp97002
                        (let ((__tmp97004
                               (let ((__tmp97007
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp97005
                                      (let ((__tmp97006
                                             (let ()
                                               (declare (not safe))
                                               (cons _L90405_ '()))))
                                        (declare (not safe))
                                        (cons _L90407_ __tmp97006))))
                                 (declare (not safe))
                                 (cons __tmp97007 __tmp97005)))
                              (__tmp97003
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp97004 __tmp97003))))
                   (declare (not safe))
                   (cons __tmp97008 __tmp97002))))
              (___kont9678296783_
               (lambda (_L90350_ _L90352_)
                 (let ((__tmp97021 (gx#datum->syntax '#f 'let))
                       (__tmp97009
                        (let ((__tmp97019
                               (let ((__tmp97020
                                      (let ()
                                        (declare (not safe))
                                        (cons _L90350_ '()))))
                                 (declare (not safe))
                                 (cons _L90350_ __tmp97020)))
                              (__tmp97010
                               (let ((__tmp97011
                                      (let ((__tmp97018
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp97012
                                             (let ((__tmp97014
                                                    (let ((__tmp97017
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp97015
                                                           (let ((__tmp97016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L90350_ '()))))
                     (declare (not safe))
                     (cons _L90352_ __tmp97016))))
              (declare (not safe))
              (cons __tmp97017 __tmp97015)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97013
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp97014 __tmp97013))))
                                        (declare (not safe))
                                        (cons __tmp97018 __tmp97012))))
                                 (declare (not safe))
                                 (cons __tmp97011 '()))))
                          (declare (not safe))
                          (cons __tmp97019 __tmp97010))))
                   (declare (not safe))
                   (cons __tmp97021 __tmp97009)))))
          (let ((___match9680496805_
                 (lambda (_e9029090375_
                          _hd9028990379_
                          _tl9028890382_
                          _e9029390385_
                          _hd9029290389_
                          _tl9029190392_
                          _e9029690395_
                          _hd9029590399_
                          _tl9029490402_)
                   (let ((_L90405_ _hd9029590399_) (_L90407_ _hd9029290389_))
                     (if (or (gx#identifier? _L90405_)
                             (gx#stx-fixnum? _L90405_))
                         (___kont9678096781_ _L90405_ _L90407_)
                         (___kont9678296783_
                          _hd9029590399_
                          _hd9029290389_))))))
            (if (gx#stx-pair? ___stx9677796778_)
                (let ((_e9029090375_ (gx#syntax-e ___stx9677796778_)))
                  (let ((_tl9028890382_
                         (let () (declare (not safe)) (##cdr _e9029090375_)))
                        (_hd9028990379_
                         (let () (declare (not safe)) (##car _e9029090375_))))
                    (if (gx#stx-pair? _tl9028890382_)
                        (let ((_e9029390385_ (gx#syntax-e _tl9028890382_)))
                          (let ((_tl9029190392_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9029390385_)))
                                (_hd9029290389_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9029390385_))))
                            (if (gx#stx-pair? _tl9029190392_)
                                (let ((_e9029690395_
                                       (gx#syntax-e _tl9029190392_)))
                                  (let ((_tl9029490402_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9029690395_)))
                                        (_hd9029590399_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9029690395_))))
                                    (if (gx#stx-null? _tl9029490402_)
                                        (___match9680496805_
                                         _e9029090375_
                                         _hd9028990379_
                                         _tl9028890382_
                                         _e9029390385_
                                         _hd9029290389_
                                         _tl9029190392_
                                         _e9029690395_
                                         _hd9029590399_
                                         _tl9029490402_)
                                        (let ()
                                          (declare (not safe))
                                          (_g9028490313_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9028490313_)))))
                        (let () (declare (not safe)) (_g9028490313_)))))
                (let () (declare (not safe)) (_g9028490313_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx90430_)
      (let* ((_g9043390454_
              (lambda (_g9043490450_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g9043490450_)))
             (_g9043290682_
              (lambda (_g9043490458_)
                (if (gx#stx-pair? _g9043490458_)
                    (let ((_e9043990461_ (gx#syntax-e _g9043490458_)))
                      (let ((_hd9043890465_
                             (let ()
                               (declare (not safe))
                               (##car _e9043990461_)))
                            (_tl9043790468_
                             (let ()
                               (declare (not safe))
                               (##cdr _e9043990461_))))
                        (if (gx#stx-pair? _tl9043790468_)
                            (let ((_e9044290471_ (gx#syntax-e _tl9043790468_)))
                              (let ((_hd9044190475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9044290471_)))
                                    (_tl9044090478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9044290471_))))
                                (if (gx#stx-pair? _hd9044190475_)
                                    (let ((_e9044590481_
                                           (gx#syntax-e _hd9044190475_)))
                                      (let ((_hd9044490485_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9044590481_)))
                                            (_tl9044390488_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9044590481_))))
                                        (if (gx#stx-pair? _tl9044390488_)
                                            (let ((_e9044890491_
                                                   (gx#syntax-e
                                                    _tl9044390488_)))
                                              (let ((_hd9044790495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9044890491_)))
                                                    (_tl9044690498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9044890491_))))
                                                (if (gx#stx-null?
                                                     _tl9044690498_)
                                                    (if (gx#stx-null?
                                                         _tl9044090478_)
                                                        ((lambda (_L90501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L90503_)
                   (let* ((_g9052190529_
                           (lambda (_g9052290525_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g9052290525_)))
                          (_g9052090678_
                           (lambda (_g9052290533_)
                             ((lambda (_L90536_)
                                (let ()
                                  (let* ((_g9054890556_
                                          (lambda (_g9054990552_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g9054990552_)))
                                         (_g9054790674_
                                          (lambda (_g9054990560_)
                                            ((lambda (_L90563_)
                                               (let ()
                                                 (let* ((_g9057690584_
                                                         (lambda (_g9057790580_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g9057790580_)))
                                                        (_g9057590670_
                                                         (lambda (_g9057790588_)
                                                           ((lambda (_L90591_)
                                                              (let ()
                                                                (let* ((_g9060490612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g9060590608_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g9060590608_)))
                               (_g9060390666_
                                (lambda (_g9060590616_)
                                  ((lambda (_L90619_)
                                     (let ()
                                       (let* ((_g9063290640_
                                               (lambda (_g9063390636_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g9063390636_)))
                                              (_g9063190662_
                                               (lambda (_g9063390644_)
                                                 ((lambda (_L90647_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp97154
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp97022
                                                               (let ((__tmp97124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97153 (gx#datum->syntax '#f 'def))
                                    (__tmp97125
                                     (let ((__tmp97126
                                            (let ((__tmp97127
                                                   (let ((__tmp97152
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp97128
                                                          (let ((__tmp97147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97151
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp97148
                                (let ((__tmp97149
                                       (let ((__tmp97150
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L90503_ __tmp97150))))
                                  (declare (not safe))
                                  (cons _L90536_ __tmp97149))))
                           (declare (not safe))
                           (cons __tmp97151 __tmp97148)))
                        (__tmp97129
                         (let ((__tmp97130
                                (let ((__tmp97146
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp97131
                                       (let ((__tmp97144
                                              (let ((__tmp97145
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp97145 '())))
                                             (__tmp97132
                                              (let ((__tmp97133
                                                     (let ((__tmp97143
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp97134
                                                            (let ((__tmp97142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp97135
                           (let ((__tmp97136
                                  (let ((__tmp97141
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp97137
                                         (let ((__tmp97138
                                                (let ((__tmp97140
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp97139
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L90503_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp97140
                                                        __tmp97139))))
                                           (declare (not safe))
                                           (cons __tmp97138 '()))))
                                    (declare (not safe))
                                    (cons __tmp97141 __tmp97137))))
                             (declare (not safe))
                             (cons _L90501_ __tmp97136))))
                      (declare (not safe))
                      (cons __tmp97142 __tmp97135))))
               (declare (not safe))
               (cons __tmp97143 __tmp97134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97133 '()))))
                                         (declare (not safe))
                                         (cons __tmp97144 __tmp97132))))
                                  (declare (not safe))
                                  (cons __tmp97146 __tmp97131))))
                           (declare (not safe))
                           (cons __tmp97130 '()))))
                    (declare (not safe))
                    (cons __tmp97147 __tmp97129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97152
                                                           __tmp97128))))
                                              (declare (not safe))
                                              (cons __tmp97127 '()))))
                                       (declare (not safe))
                                       (cons _L90563_ __tmp97126))))
                                (declare (not safe))
                                (cons __tmp97153 __tmp97125)))
                             (__tmp97023
                              (let ((__tmp97094
                                     (let ((__tmp97123
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp97095
                                            (let ((__tmp97096
                                                   (let ((__tmp97097
                                                          (let ((__tmp97122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp97098
                         (let ((__tmp97117
                                (let ((__tmp97121
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp97118
                                       (let ((__tmp97119
                                              (let ((__tmp97120
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L90503_ __tmp97120))))
                                         (declare (not safe))
                                         (cons _L90536_ __tmp97119))))
                                  (declare (not safe))
                                  (cons __tmp97121 __tmp97118)))
                               (__tmp97099
                                (let ((__tmp97100
                                       (let ((__tmp97116
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp97101
                                              (let ((__tmp97114
                                                     (let ((__tmp97115
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp97115 '())))
                                                    (__tmp97102
                                                     (let ((__tmp97103
                                                            (let ((__tmp97113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp97104
                           (let ((__tmp97112 (gx#datum->syntax '#f 'klass))
                                 (__tmp97105
                                  (let ((__tmp97106
                                         (let ((__tmp97111
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp97107
                                                (let ((__tmp97108
                                                       (let ((__tmp97110
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp97109
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L90503_ '()))))
                 (declare (not safe))
                 (cons __tmp97110 __tmp97109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97108 '()))))
                                           (declare (not safe))
                                           (cons __tmp97111 __tmp97107))))
                                    (declare (not safe))
                                    (cons _L90501_ __tmp97106))))
                             (declare (not safe))
                             (cons __tmp97112 __tmp97105))))
                      (declare (not safe))
                      (cons __tmp97113 __tmp97104))))
               (declare (not safe))
               (cons __tmp97103 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97114 __tmp97102))))
                                         (declare (not safe))
                                         (cons __tmp97116 __tmp97101))))
                                  (declare (not safe))
                                  (cons __tmp97100 '()))))
                           (declare (not safe))
                           (cons __tmp97117 __tmp97099))))
                    (declare (not safe))
                    (cons __tmp97122 __tmp97098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97097 '()))))
                                              (declare (not safe))
                                              (cons _L90591_ __tmp97096))))
                                       (declare (not safe))
                                       (cons __tmp97123 __tmp97095)))
                                    (__tmp97024
                                     (let ((__tmp97060
                                            (let ((__tmp97093
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp97061
                                                   (let ((__tmp97062
                                                          (let ((__tmp97063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97092
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp97064
                                (let ((__tmp97087
                                       (let ((__tmp97091
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp97088
                                              (let ((__tmp97089
                                                     (let ((__tmp97090
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L90503_
                                                             __tmp97090))))
                                                (declare (not safe))
                                                (cons _L90536_ __tmp97089))))
                                         (declare (not safe))
                                         (cons __tmp97091 __tmp97088)))
                                      (__tmp97065
                                       (let ((__tmp97066
                                              (let ((__tmp97086
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp97067
                                                     (let ((__tmp97082
                                                            (let ((__tmp97085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp97083
                           (let ((__tmp97084 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp97084 '()))))
                      (declare (not safe))
                      (cons __tmp97085 __tmp97083)))
                   (__tmp97068
                    (let ((__tmp97069
                           (let ((__tmp97081
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp97070
                                  (let ((__tmp97080
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp97071
                                         (let ((__tmp97079
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp97072
                                                (let ((__tmp97073
                                                       (let ((__tmp97078
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp97074
                                                              (let ((__tmp97075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp97077 (gx#datum->syntax '#f 'quote))
                                   (__tmp97076
                                    (let ()
                                      (declare (not safe))
                                      (cons _L90503_ '()))))
                               (declare (not safe))
                               (cons __tmp97077 __tmp97076))))
                        (declare (not safe))
                        (cons __tmp97075 '()))))
                 (declare (not safe))
                 (cons __tmp97078 __tmp97074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L90501_ __tmp97073))))
                                           (declare (not safe))
                                           (cons __tmp97079 __tmp97072))))
                                    (declare (not safe))
                                    (cons __tmp97080 __tmp97071))))
                             (declare (not safe))
                             (cons __tmp97081 __tmp97070))))
                      (declare (not safe))
                      (cons __tmp97069 '()))))
               (declare (not safe))
               (cons __tmp97082 __tmp97068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97086 __tmp97067))))
                                         (declare (not safe))
                                         (cons __tmp97066 '()))))
                                  (declare (not safe))
                                  (cons __tmp97087 __tmp97065))))
                           (declare (not safe))
                           (cons __tmp97092 __tmp97064))))
                    (declare (not safe))
                    (cons __tmp97063 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L90619_
                                                           __tmp97062))))
                                              (declare (not safe))
                                              (cons __tmp97093 __tmp97061)))
                                           (__tmp97025
                                            (let ((__tmp97026
                                                   (let ((__tmp97059
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp97027
                                                          (let ((__tmp97028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97029
                                (let ((__tmp97058
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp97030
                                       (let ((__tmp97053
                                              (let ((__tmp97057
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp97054
                                                     (let ((__tmp97055
                                                            (let ((__tmp97056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L90503_ __tmp97056))))
               (declare (not safe))
               (cons _L90536_ __tmp97055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97057 __tmp97054)))
                                             (__tmp97031
                                              (let ((__tmp97032
                                                     (let ((__tmp97052
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp97033
                                                            (let ((__tmp97048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp97051 (gx#datum->syntax '#f 'klass))
                                 (__tmp97049
                                  (let ((__tmp97050
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp97050 '()))))
                             (declare (not safe))
                             (cons __tmp97051 __tmp97049)))
                          (__tmp97034
                           (let ((__tmp97035
                                  (let ((__tmp97047
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp97036
                                         (let ((__tmp97046
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp97037
                                                (let ((__tmp97045
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp97038
                                                       (let ((__tmp97039
                                                              (let ((__tmp97044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp97040
                             (let ((__tmp97041
                                    (let ((__tmp97043
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp97042
                                           (let ()
                                             (declare (not safe))
                                             (cons _L90503_ '()))))
                                      (declare (not safe))
                                      (cons __tmp97043 __tmp97042))))
                               (declare (not safe))
                               (cons __tmp97041 '()))))
                        (declare (not safe))
                        (cons __tmp97044 __tmp97040))))
                 (declare (not safe))
                 (cons _L90501_ __tmp97039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97045
                                                        __tmp97038))))
                                           (declare (not safe))
                                           (cons __tmp97046 __tmp97037))))
                                    (declare (not safe))
                                    (cons __tmp97047 __tmp97036))))
                             (declare (not safe))
                             (cons __tmp97035 '()))))
                      (declare (not safe))
                      (cons __tmp97048 __tmp97034))))
               (declare (not safe))
               (cons __tmp97052 __tmp97033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97032 '()))))
                                         (declare (not safe))
                                         (cons __tmp97053 __tmp97031))))
                                  (declare (not safe))
                                  (cons __tmp97058 __tmp97030))))
                           (declare (not safe))
                           (cons __tmp97029 '()))))
                    (declare (not safe))
                    (cons _L90647_ __tmp97028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97059
                                                           __tmp97027))))
                                              (declare (not safe))
                                              (cons __tmp97026 '()))))
                                       (declare (not safe))
                                       (cons __tmp97060 __tmp97025))))
                                (declare (not safe))
                                (cons __tmp97094 __tmp97024))))
                         (declare (not safe))
                         (cons __tmp97124 __tmp97023))))
                  (declare (not safe))
                  (cons __tmp97154 __tmp97022)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g9063390644_))))
                                         (_g9063190662_
                                          (gx#stx-identifier
                                           _L90503_
                                           '"&"
                                           _L90619_)))))
                                   _g9060590616_))))
                          (_g9060390666_
                           (gx#stx-identifier _L90503_ _L90563_ '"-set!")))))
                    _g9057790588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9057590670_
                                                    (gx#stx-identifier
                                                     _L90503_
                                                     '"&"
                                                     _L90563_)))))
                                             _g9054990560_))))
                                    (_g9054790674_
                                     (gx#stx-identifier
                                      _L90503_
                                      '"class-type-"
                                      _L90503_)))))
                              _g9052290533_))))
                     (_g9052090678_ (gx#core-quote-syntax 'class::t))))
                 _hd9044790495_
                 _hd9044490485_)
                (_g9043390454_ _g9043490458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g9043390454_
                                                     _g9043490458_))))
                                            (_g9043390454_ _g9043490458_))))
                                    (_g9043390454_ _g9043490458_))))
                            (_g9043390454_ _g9043490458_))))
                    (_g9043390454_ _g9043490458_)))))
        (_g9043290682_ _stx90430_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx90686_)
      (let* ((_g9069090719_
              (lambda (_g9069190715_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g9069190715_)))
             (_g9068990819_
              (lambda (_g9069190723_)
                (if (gx#stx-pair? _g9069190723_)
                    (let ((_e9069690726_ (gx#syntax-e _g9069190723_)))
                      (let ((_hd9069590730_
                             (let ()
                               (declare (not safe))
                               (##car _e9069690726_)))
                            (_tl9069490733_
                             (let ()
                               (declare (not safe))
                               (##cdr _e9069690726_))))
                        (if (gx#stx-pair/null? _tl9069490733_)
                            (let ((_g97155_
                                   (gx#syntax-split-splice _tl9069490733_ '0)))
                              (begin
                                (let ((_g97156_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97155_)
                                             (##vector-length _g97155_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97156_ 2)))
                                      (error "Context expects 2 values"
                                             _g97156_)))
                                (let ((_target9069790736_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97155_ 0)))
                                      (_tl9069990739_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97155_ 1))))
                                  (if (gx#stx-null? _tl9069990739_)
                                      (letrec ((_loop9070090742_
                                                (lambda (_hd9069890746_
                                                         _field9070490749_
                                                         _slot9070590751_)
                                                  (if (gx#stx-pair?
                                                       _hd9069890746_)
                                                      (let ((_e9070190754_
                                                             (gx#syntax-e
                                                              _hd9069890746_)))
                                                        (let ((_lp-hd9070290758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e9070190754_)))
                      (_lp-tl9070390761_
                       (let () (declare (not safe)) (##cdr _e9070190754_))))
                  (if (gx#stx-pair? _lp-hd9070290758_)
                      (let ((_e9071090764_ (gx#syntax-e _lp-hd9070290758_)))
                        (let ((_hd9070990768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9071090764_)))
                              (_tl9070890771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9071090764_))))
                          (if (gx#stx-pair? _tl9070890771_)
                              (let ((_e9071390774_
                                     (gx#syntax-e _tl9070890771_)))
                                (let ((_hd9071290778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9071390774_)))
                                      (_tl9071190781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9071390774_))))
                                  (if (gx#stx-null? _tl9071190781_)
                                      (_loop9070090742_
                                       _lp-tl9070390761_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd9071290778_
                                               _field9070490749_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd9070990768_
                                               _slot9070590751_)))
                                      (_g9069090719_ _g9069190723_))))
                              (_g9069090719_ _g9069190723_))))
                      (_g9069090719_ _g9069190723_))))
              (let ((_field9070690784_ (reverse _field9070490749_))
                    (_slot9070790787_ (reverse _slot9070590751_)))
                ((lambda (_L90790_ _L90792_)
                   (let ((__tmp97164 (gx#datum->syntax '#f 'begin))
                         (__tmp97157
                          (begin
                            (gx#syntax-check-splice-targets _L90790_ _L90792_)
                            (let ((__tmp97158
                                   (lambda (_g9080790811_
                                            _g9080890814_
                                            _g9080990816_)
                                     (let ((__tmp97159
                                            (let ((__tmp97163
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp97160
                                                   (let ((__tmp97161
                                                          (let ((__tmp97162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g9080790811_ '()))))
                    (declare (not safe))
                    (cons _g9080890814_ __tmp97162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97161 '()))))
                                              (declare (not safe))
                                              (cons __tmp97163 __tmp97160))))
                                       (declare (not safe))
                                       (cons __tmp97159 _g9080990816_)))))
                              (declare (not safe))
                              (foldr2 __tmp97158 '() _L90790_ _L90792_)))))
                     (declare (not safe))
                     (cons __tmp97164 __tmp97157)))
                 _field9070690784_
                 _slot9070790787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop9070090742_
                                         _target9069790736_
                                         '()
                                         '()))
                                      (_g9069090719_ _g9069190723_)))))
                            (_g9069090719_ _g9069190723_))))
                    (_g9069090719_ _g9069190723_)))))
        (_g9068990819_ _$stx90686_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx90824_)
      (let* ((_g9082890854_
              (lambda (_g9082990850_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g9082990850_)))
             (_g9082790937_
              (lambda (_g9082990858_)
                (if (gx#stx-pair? _g9082990858_)
                    (let ((_e9083690861_ (gx#syntax-e _g9082990858_)))
                      (let ((_hd9083590865_
                             (let ()
                               (declare (not safe))
                               (##car _e9083690861_)))
                            (_tl9083490868_
                             (let ()
                               (declare (not safe))
                               (##cdr _e9083690861_))))
                        (if (gx#stx-pair? _tl9083490868_)
                            (let ((_e9083990871_ (gx#syntax-e _tl9083490868_)))
                              (let ((_hd9083890875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9083990871_)))
                                    (_tl9083790878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9083990871_))))
                                (if (gx#stx-pair? _tl9083790878_)
                                    (let ((_e9084290881_
                                           (gx#syntax-e _tl9083790878_)))
                                      (let ((_hd9084190885_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9084290881_)))
                                            (_tl9084090888_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9084290881_))))
                                        (if (gx#stx-pair? _tl9084090888_)
                                            (let ((_e9084590891_
                                                   (gx#syntax-e
                                                    _tl9084090888_)))
                                              (let ((_hd9084490895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9084590891_)))
                                                    (_tl9084390898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9084590891_))))
                                                (if (gx#stx-pair?
                                                     _tl9084390898_)
                                                    (let ((_e9084890901_
                                                           (gx#syntax-e
                                                            _tl9084390898_)))
                                                      (let ((_hd9084790905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9084890901_)))
                    (_tl9084690908_
                     (let () (declare (not safe)) (##cdr _e9084890901_))))
                (if (gx#stx-null? _tl9084690908_)
                    ((lambda (_L90911_ _L90913_ _L90914_ _L90915_)
                       (let ((__tmp97211 (gx#datum->syntax '#f 'if))
                             (__tmp97165
                              (let ((__tmp97208
                                     (let ((__tmp97210
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp97209
                                            (let ()
                                              (declare (not safe))
                                              (cons _L90915_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97210 __tmp97209)))
                                    (__tmp97166
                                     (let ((__tmp97171
                                            (let ((__tmp97207
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp97172
                                                   (let ((__tmp97201
                                                          (let ((__tmp97206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp97202
                         (let ((__tmp97203
                                (let ((__tmp97205
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp97204
                                       (let ()
                                         (declare (not safe))
                                         (cons _L90915_ '()))))
                                  (declare (not safe))
                                  (cons __tmp97205 __tmp97204))))
                           (declare (not safe))
                           (cons __tmp97203 '()))))
                    (declare (not safe))
                    (cons __tmp97206 __tmp97202)))
                 (__tmp97173
                  (let ((__tmp97174
                         (let ((__tmp97200 (gx#datum->syntax '#f 'cond))
                               (__tmp97175
                                (let ((__tmp97183
                                       (let ((__tmp97187
                                              (let ((__tmp97199
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp97188
                                                     (let ((__tmp97195
                                                            (let ((__tmp97198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp97196
                           (let ((__tmp97197 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp97197 '()))))
                      (declare (not safe))
                      (cons __tmp97198 __tmp97196)))
                   (__tmp97189
                    (let ((__tmp97190
                           (let ((__tmp97194
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp97191
                                  (let ((__tmp97193
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp97192
                                         (let ()
                                           (declare (not safe))
                                           (cons _L90914_ '()))))
                                    (declare (not safe))
                                    (cons __tmp97193 __tmp97192))))
                             (declare (not safe))
                             (cons __tmp97194 __tmp97191))))
                      (declare (not safe))
                      (cons __tmp97190 '()))))
               (declare (not safe))
               (cons __tmp97195 __tmp97189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97199 __tmp97188)))
                                             (__tmp97184
                                              (let ((__tmp97186
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp97185
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L90913_ '()))))
                                                (declare (not safe))
                                                (cons __tmp97186 __tmp97185))))
                                         (declare (not safe))
                                         (cons __tmp97187 __tmp97184)))
                                      (__tmp97176
                                       (let ((__tmp97177
                                              (let ((__tmp97182
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp97178
                                                     (let ((__tmp97179
                                                            (let ((__tmp97180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp97181
                                  (let ()
                                    (declare (not safe))
                                    (cons _L90914_ '()))))
                             (declare (not safe))
                             (cons _L90915_ __tmp97181))))
                      (declare (not safe))
                      (cons _L90911_ __tmp97180))))
               (declare (not safe))
               (cons __tmp97179 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97182 __tmp97178))))
                                         (declare (not safe))
                                         (cons __tmp97177 '()))))
                                  (declare (not safe))
                                  (cons __tmp97183 __tmp97176))))
                           (declare (not safe))
                           (cons __tmp97200 __tmp97175))))
                    (declare (not safe))
                    (cons __tmp97174 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97201
                                                           __tmp97173))))
                                              (declare (not safe))
                                              (cons __tmp97207 __tmp97172)))
                                           (__tmp97167
                                            (let ((__tmp97168
                                                   (let ((__tmp97169
                                                          (let ((__tmp97170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L90914_ '()))))
                    (declare (not safe))
                    (cons _L90915_ __tmp97170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L90911_
                                                           __tmp97169))))
                                              (declare (not safe))
                                              (cons __tmp97168 '()))))
                                       (declare (not safe))
                                       (cons __tmp97171 __tmp97167))))
                                (declare (not safe))
                                (cons __tmp97208 __tmp97166))))
                         (declare (not safe))
                         (cons __tmp97211 __tmp97165)))
                     _hd9084790905_
                     _hd9084490895_
                     _hd9084190885_
                     _hd9083890875_)
                    (_g9082890854_ _g9082990858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g9082890854_
                                                     _g9082990858_))))
                                            (_g9082890854_ _g9082990858_))))
                                    (_g9082890854_ _g9082990858_))))
                            (_g9082890854_ _g9082990858_))))
                    (_g9082890854_ _g9082990858_)))))
        (_g9082790937_ _$stx90824_)))))
