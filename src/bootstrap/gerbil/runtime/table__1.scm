(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57417_)
      (let* ((_g5742157435_
              (lambda (_g5742257431_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5742257431_)))
             (_g5742057477_
              (lambda (_g5742257439_)
                (if (gx#stx-pair? _g5742257439_)
                    (let ((_e5742657442_ (gx#syntax-e _g5742257439_)))
                      (let ((_hd5742557446_
                             (let ()
                               (declare (not safe))
                               (##car _e5742657442_)))
                            (_tl5742457449_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5742657442_))))
                        (if (gx#stx-pair? _tl5742457449_)
                            (let ((_e5742957452_ (gx#syntax-e _tl5742457449_)))
                              (let ((_hd5742857456_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5742957452_)))
                                    (_tl5742757459_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5742957452_))))
                                (if (gx#stx-null? _tl5742757459_)
                                    ((lambda (_L57462_)
                                       (let ((__tmp59633
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp59631
                                              (let ((__tmp59632
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57462_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp59632))))
                                         (declare (not safe))
                                         (cons __tmp59633 __tmp59631)))
                                     _hd5742857456_)
                                    (_g5742157435_ _g5742257439_))))
                            (_g5742157435_ _g5742257439_))))
                    (_g5742157435_ _g5742257439_)))))
        (_g5742057477_ _$stx57417_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57481_)
      (let* ((_g5748557531_
              (lambda (_g5748657527_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5748657527_)))
             (_g5748457684_
              (lambda (_g5748657535_)
                (if (gx#stx-pair? _g5748657535_)
                    (let ((_e5749857538_ (gx#syntax-e _g5748657535_)))
                      (let ((_hd5749757542_
                             (let ()
                               (declare (not safe))
                               (##car _e5749857538_)))
                            (_tl5749657545_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5749857538_))))
                        (if (gx#stx-pair? _tl5749657545_)
                            (let ((_e5750157548_ (gx#syntax-e _tl5749657545_)))
                              (let ((_hd5750057552_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5750157548_)))
                                    (_tl5749957555_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5750157548_))))
                                (if (gx#stx-pair? _tl5749957555_)
                                    (let ((_e5750457558_
                                           (gx#syntax-e _tl5749957555_)))
                                      (let ((_hd5750357562_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5750457558_)))
                                            (_tl5750257565_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5750457558_))))
                                        (if (gx#stx-pair? _tl5750257565_)
                                            (let ((_e5750757568_
                                                   (gx#syntax-e
                                                    _tl5750257565_)))
                                              (let ((_hd5750657572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5750757568_)))
                                                    (_tl5750557575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5750757568_))))
                                                (if (gx#stx-pair?
                                                     _tl5750557575_)
                                                    (let ((_e5751057578_
                                                           (gx#syntax-e
                                                            _tl5750557575_)))
                                                      (let ((_hd5750957582_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5751057578_)))
                    (_tl5750857585_
                     (let () (declare (not safe)) (##cdr _e5751057578_))))
                (if (gx#stx-pair? _tl5750857585_)
                    (let ((_e5751357588_ (gx#syntax-e _tl5750857585_)))
                      (let ((_hd5751257592_
                             (let ()
                               (declare (not safe))
                               (##car _e5751357588_)))
                            (_tl5751157595_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5751357588_))))
                        (if (gx#stx-pair? _tl5751157595_)
                            (let ((_e5751657598_ (gx#syntax-e _tl5751157595_)))
                              (let ((_hd5751557602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5751657598_)))
                                    (_tl5751457605_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5751657598_))))
                                (if (gx#stx-pair? _tl5751457605_)
                                    (let ((_e5751957608_
                                           (gx#syntax-e _tl5751457605_)))
                                      (let ((_hd5751857612_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5751957608_)))
                                            (_tl5751757615_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5751957608_))))
                                        (if (gx#stx-pair? _tl5751757615_)
                                            (let ((_e5752257618_
                                                   (gx#syntax-e
                                                    _tl5751757615_)))
                                              (let ((_hd5752157622_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5752257618_)))
                                                    (_tl5752057625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5752257618_))))
                                                (if (gx#stx-pair?
                                                     _tl5752057625_)
                                                    (let ((_e5752557628_
                                                           (gx#syntax-e
                                                            _tl5752057625_)))
                                                      (let ((_hd5752457632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5752557628_)))
                    (_tl5752357635_
                     (let () (declare (not safe)) (##cdr _e5752557628_))))
                (if (gx#stx-null? _tl5752357635_)
                    ((lambda (_L57638_
                              _L57640_
                              _L57641_
                              _L57642_
                              _L57643_
                              _L57644_
                              _L57645_
                              _L57646_
                              _L57647_)
                       (let ((__tmp60065 (gx#datum->syntax '#f 'begin))
                             (__tmp59634
                              (let ((__tmp60044
                                     (let ((__tmp60064
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60045
                                            (let ((__tmp60055
                                                   (let ((__tmp60056
                                                          (let ((__tmp60061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60063 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60062
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60063 __tmp60062)))
                        (__tmp60057
                         (let ((__tmp60058
                                (let ((__tmp60060 (gx#datum->syntax '#f 'seed))
                                      (__tmp60059
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60060 __tmp60059))))
                           (declare (not safe))
                           (cons __tmp60058 '()))))
                    (declare (not safe))
                    (cons __tmp60061 __tmp60057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57647_
                                                           __tmp60056)))
                                                  (__tmp60046
                                                   (let ((__tmp60047
                                                          (let ((__tmp60054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60048
                         (let ((__tmp60053 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60049
                                (let ((__tmp60050
                                       (let ((__tmp60051
                                              (let ((__tmp60052
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60052 '()))))
                                         (declare (not safe))
                                         (cons _L57638_ __tmp60051))))
                                  (declare (not safe))
                                  (cons _L57640_ __tmp60050))))
                           (declare (not safe))
                           (cons __tmp60053 __tmp60049))))
                    (declare (not safe))
                    (cons __tmp60054 __tmp60048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60047 '()))))
                                              (declare (not safe))
                                              (cons __tmp60055 __tmp60046))))
                                       (declare (not safe))
                                       (cons __tmp60064 __tmp60045)))
                                    (__tmp59635
                                     (let ((__tmp60001
                                            (let ((__tmp60043
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60002
                                                   (let ((__tmp60036
                                                          (let ((__tmp60037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60042 (gx#datum->syntax '#f 'tab))
                               (__tmp60038
                                (let ((__tmp60041 (gx#datum->syntax '#f 'key))
                                      (__tmp60039
                                       (let ((__tmp60040
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60040 '()))))
                                  (declare (not safe))
                                  (cons __tmp60041 __tmp60039))))
                           (declare (not safe))
                           (cons __tmp60042 __tmp60038))))
                    (declare (not safe))
                    (cons _L57646_ __tmp60037)))
                 (__tmp60003
                  (let ((__tmp60004
                         (let ((__tmp60035 (gx#datum->syntax '#f 'let))
                               (__tmp60005
                                (let ((__tmp60019
                                       (let ((__tmp60028
                                              (let ((__tmp60034
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60029
                                                     (let ((__tmp60030
                                                            (let ((__tmp60033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60031
                           (let ((__tmp60032 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60032 '()))))
                      (declare (not safe))
                      (cons __tmp60033 __tmp60031))))
               (declare (not safe))
               (cons __tmp60030 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60034 __tmp60029)))
                                             (__tmp60020
                                              (let ((__tmp60021
                                                     (let ((__tmp60027
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60022
                                                            (let ((__tmp60023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60026
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60024
                                  (let ((__tmp60025
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60025 '()))))
                             (declare (not safe))
                             (cons __tmp60026 __tmp60024))))
                      (declare (not safe))
                      (cons __tmp60023 '()))))
               (declare (not safe))
               (cons __tmp60027 __tmp60022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60021 '()))))
                                         (declare (not safe))
                                         (cons __tmp60028 __tmp60020)))
                                      (__tmp60006
                                       (let ((__tmp60007
                                              (let ((__tmp60018
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60008
                                                     (let ((__tmp60017
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60009
                                                            (let ((__tmp60016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60010
                           (let ((__tmp60011
                                  (let ((__tmp60012
                                         (let ((__tmp60015
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60013
                                                (let ((__tmp60014
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60014 '()))))
                                           (declare (not safe))
                                           (cons __tmp60015 __tmp60013))))
                                    (declare (not safe))
                                    (cons _L57638_ __tmp60012))))
                             (declare (not safe))
                             (cons _L57640_ __tmp60011))))
                      (declare (not safe))
                      (cons __tmp60016 __tmp60010))))
               (declare (not safe))
               (cons __tmp60017 __tmp60009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60018 __tmp60008))))
                                         (declare (not safe))
                                         (cons __tmp60007 '()))))
                                  (declare (not safe))
                                  (cons __tmp60019 __tmp60006))))
                           (declare (not safe))
                           (cons __tmp60035 __tmp60005))))
                    (declare (not safe))
                    (cons __tmp60004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60036
                                                           __tmp60003))))
                                              (declare (not safe))
                                              (cons __tmp60043 __tmp60002)))
                                           (__tmp59636
                                            (let ((__tmp59955
                                                   (let ((__tmp60000
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp59956
                                                          (let ((__tmp59993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59994
                                (let ((__tmp59999 (gx#datum->syntax '#f 'tab))
                                      (__tmp59995
                                       (let ((__tmp59998
                                              (gx#datum->syntax '#f 'key))
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
                           (cons _L57645_ __tmp59994)))
                        (__tmp59957
                         (let ((__tmp59966
                                (let ((__tmp59992 (gx#datum->syntax '#f 'when))
                                      (__tmp59967
                                       (let ((__tmp59973
                                              (let ((__tmp59991
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp59974
                                                     (let ((__tmp59987
                                                            (let ((__tmp59990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp59988
                           (let ((__tmp59989 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp59989 '()))))
                      (declare (not safe))
                      (cons __tmp59990 __tmp59988)))
                   (__tmp59975
                    (let ((__tmp59976
                           (let ((__tmp59986
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp59977
                                  (let ((__tmp59979
                                         (let ((__tmp59985
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp59980
                                                (let ((__tmp59981
                                                       (let ((__tmp59984
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59982
                                                              (let ((__tmp59983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59983 '()))))
                 (declare (not safe))
                 (cons __tmp59984 __tmp59982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59981 '()))))
                                           (declare (not safe))
                                           (cons __tmp59985 __tmp59980)))
                                        (__tmp59978
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp59979 __tmp59978))))
                             (declare (not safe))
                             (cons __tmp59986 __tmp59977))))
                      (declare (not safe))
                      (cons __tmp59976 '()))))
               (declare (not safe))
               (cons __tmp59987 __tmp59975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59991 __tmp59974)))
                                             (__tmp59968
                                              (let ((__tmp59969
                                                     (let ((__tmp59972
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp59970
                                                            (let ((__tmp59971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp59971 '()))))
               (declare (not safe))
               (cons __tmp59972 __tmp59970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59969 '()))))
                                         (declare (not safe))
                                         (cons __tmp59973 __tmp59968))))
                                  (declare (not safe))
                                  (cons __tmp59992 __tmp59967)))
                               (__tmp59958
                                (let ((__tmp59959
                                       (let ((__tmp59960
                                              (let ((__tmp59965
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59961
                                                     (let ((__tmp59964
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59962
                                                            (let ((__tmp59963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp59963 '()))))
               (declare (not safe))
               (cons __tmp59964 __tmp59962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59965 __tmp59961))))
                                         (declare (not safe))
                                         (cons _L57644_ __tmp59960))))
                                  (declare (not safe))
                                  (cons __tmp59959 '()))))
                           (declare (not safe))
                           (cons __tmp59966 __tmp59958))))
                    (declare (not safe))
                    (cons __tmp59993 __tmp59957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60000
                                                           __tmp59956)))
                                                  (__tmp59637
                                                   (let ((__tmp59853
                                                          (let ((__tmp59954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp59854
                         (let ((__tmp59947
                                (let ((__tmp59948
                                       (let ((__tmp59953
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp59949
                                              (let ((__tmp59952
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp59950
                                                     (let ((__tmp59951
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp59951 '()))))
                                                (declare (not safe))
                                                (cons __tmp59952 __tmp59950))))
                                         (declare (not safe))
                                         (cons __tmp59953 __tmp59949))))
                                  (declare (not safe))
                                  (cons _L57644_ __tmp59948)))
                               (__tmp59855
                                (let ((__tmp59856
                                       (let ((__tmp59946
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp59857
                                              (let ((__tmp59930
                                                     (let ((__tmp59939
                                                            (let ((__tmp59945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp59940
                           (let ((__tmp59941
                                  (let ((__tmp59944
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp59942
                                         (let ((__tmp59943
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59943 '()))))
                                    (declare (not safe))
                                    (cons __tmp59944 __tmp59942))))
                             (declare (not safe))
                             (cons __tmp59941 '()))))
                      (declare (not safe))
                      (cons __tmp59945 __tmp59940)))
                   (__tmp59931
                    (let ((__tmp59932
                           (let ((__tmp59938 (gx#datum->syntax '#f 'seed))
                                 (__tmp59933
                                  (let ((__tmp59934
                                         (let ((__tmp59937
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp59935
                                                (let ((__tmp59936
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp59936 '()))))
                                           (declare (not safe))
                                           (cons __tmp59937 __tmp59935))))
                                    (declare (not safe))
                                    (cons __tmp59934 '()))))
                             (declare (not safe))
                             (cons __tmp59938 __tmp59933))))
                      (declare (not safe))
                      (cons __tmp59932 '()))))
               (declare (not safe))
               (cons __tmp59939 __tmp59931)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59858
                                                     (let ((__tmp59859
                                                            (let ((__tmp59929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp59860
                           (let ((__tmp59928 (gx#datum->syntax '#f 'table))
                                 (__tmp59861
                                  (let ((__tmp59927
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp59862
                                         (let ((__tmp59863
                                                (let ((__tmp59864
                                                       (let ((__tmp59926
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp59865
                                                              (let ((__tmp59925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp59866
                             (let ((__tmp59888
                                    (let ((__tmp59924
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp59889
                                           (let ((__tmp59890
                                                  (let ((__tmp59908
                                                         (let ((__tmp59923
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp59909
                        (let ((__tmp59919
                               (let ((__tmp59922
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp59920
                                      (let ((__tmp59921
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp59921 '()))))
                                 (declare (not safe))
                                 (cons __tmp59922 __tmp59920)))
                              (__tmp59910
                               (let ((__tmp59911
                                      (let ((__tmp59918
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp59912
                                             (let ((__tmp59914
                                                    (let ((__tmp59917
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59915
                                                           (let ((__tmp59916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59916 '()))))
              (declare (not safe))
              (cons __tmp59917 __tmp59915)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59913
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp59914 __tmp59913))))
                                        (declare (not safe))
                                        (cons __tmp59918 __tmp59912))))
                                 (declare (not safe))
                                 (cons __tmp59911 '()))))
                          (declare (not safe))
                          (cons __tmp59919 __tmp59910))))
                   (declare (not safe))
                   (cons __tmp59923 __tmp59909)))
                (__tmp59891
                 (let ((__tmp59892
                        (let ((__tmp59907 (gx#datum->syntax '#f 'set!))
                              (__tmp59893
                               (let ((__tmp59903
                                      (let ((__tmp59906
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59904
                                             (let ((__tmp59905
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59905 '()))))
                                        (declare (not safe))
                                        (cons __tmp59906 __tmp59904)))
                                     (__tmp59894
                                      (let ((__tmp59895
                                             (let ((__tmp59902
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59896
                                                    (let ((__tmp59898
                                                           (let ((__tmp59901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59899
                          (let ((__tmp59900 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59900 '()))))
                     (declare (not safe))
                     (cons __tmp59901 __tmp59899)))
                  (__tmp59897 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59898 __tmp59897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59902 __tmp59896))))
                                        (declare (not safe))
                                        (cons __tmp59895 '()))))
                                 (declare (not safe))
                                 (cons __tmp59903 __tmp59894))))
                          (declare (not safe))
                          (cons __tmp59907 __tmp59893))))
                   (declare (not safe))
                   (cons __tmp59892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59908
                                                          __tmp59891))))
                                             (declare (not safe))
                                             (cons '() __tmp59890))))
                                      (declare (not safe))
                                      (cons __tmp59924 __tmp59889)))
                                   (__tmp59867
                                    (let ((__tmp59868
                                           (let ((__tmp59887
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp59869
                                                  (let ((__tmp59870
                                                         (let ((__tmp59871
                                                                (let ((__tmp59886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp59872
                               (let ((__tmp59882
                                      (let ((__tmp59885
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59883
                                             (let ((__tmp59884
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59884 '()))))
                                        (declare (not safe))
                                        (cons __tmp59885 __tmp59883)))
                                     (__tmp59873
                                      (let ((__tmp59874
                                             (let ((__tmp59881
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59875
                                                    (let ((__tmp59877
                                                           (let ((__tmp59880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59878
                          (let ((__tmp59879 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59879 '()))))
                     (declare (not safe))
                     (cons __tmp59880 __tmp59878)))
                  (__tmp59876 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59877 __tmp59876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59881 __tmp59875))))
                                        (declare (not safe))
                                        (cons __tmp59874 '()))))
                                 (declare (not safe))
                                 (cons __tmp59882 __tmp59873))))
                          (declare (not safe))
                          (cons __tmp59886 __tmp59872))))
                   (declare (not safe))
                   (cons __tmp59871 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp59870))))
                                             (declare (not safe))
                                             (cons __tmp59887 __tmp59869))))
                                      (declare (not safe))
                                      (cons __tmp59868 '()))))
                               (declare (not safe))
                               (cons __tmp59888 __tmp59867))))
                        (declare (not safe))
                        (cons __tmp59925 __tmp59866))))
                 (declare (not safe))
                 (cons __tmp59926 __tmp59865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57638_ __tmp59864))))
                                           (declare (not safe))
                                           (cons _L57640_ __tmp59863))))
                                    (declare (not safe))
                                    (cons __tmp59927 __tmp59862))))
                             (declare (not safe))
                             (cons __tmp59928 __tmp59861))))
                      (declare (not safe))
                      (cons __tmp59929 __tmp59860))))
               (declare (not safe))
               (cons __tmp59859 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59930 __tmp59858))))
                                         (declare (not safe))
                                         (cons __tmp59946 __tmp59857))))
                                  (declare (not safe))
                                  (cons __tmp59856 '()))))
                           (declare (not safe))
                           (cons __tmp59947 __tmp59855))))
                    (declare (not safe))
                    (cons __tmp59954 __tmp59854)))
                 (__tmp59638
                  (let ((__tmp59805
                         (let ((__tmp59852 (gx#datum->syntax '#f 'def))
                               (__tmp59806
                                (let ((__tmp59844
                                       (let ((__tmp59845
                                              (let ((__tmp59851
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59846
                                                     (let ((__tmp59850
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59847
                                                            (let ((__tmp59848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59849 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp59849 '()))))
                      (declare (not safe))
                      (cons _L57643_ __tmp59848))))
               (declare (not safe))
               (cons __tmp59850 __tmp59847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59851 __tmp59846))))
                                         (declare (not safe))
                                         (cons _L57643_ __tmp59845)))
                                      (__tmp59807
                                       (let ((__tmp59817
                                              (let ((__tmp59843
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp59818
                                                     (let ((__tmp59824
                                                            (let ((__tmp59842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp59825
                           (let ((__tmp59838
                                  (let ((__tmp59841
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp59839
                                         (let ((__tmp59840
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59840 '()))))
                                    (declare (not safe))
                                    (cons __tmp59841 __tmp59839)))
                                 (__tmp59826
                                  (let ((__tmp59827
                                         (let ((__tmp59837
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp59828
                                                (let ((__tmp59830
                                                       (let ((__tmp59836
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp59831
                                                              (let ((__tmp59832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59835
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp59833
                                    (let ((__tmp59834
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp59834 '()))))
                               (declare (not safe))
                               (cons __tmp59835 __tmp59833))))
                        (declare (not safe))
                        (cons __tmp59832 '()))))
                 (declare (not safe))
                 (cons __tmp59836 __tmp59831)))
              (__tmp59829 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59830
                                                        __tmp59829))))
                                           (declare (not safe))
                                           (cons __tmp59837 __tmp59828))))
                                    (declare (not safe))
                                    (cons __tmp59827 '()))))
                             (declare (not safe))
                             (cons __tmp59838 __tmp59826))))
                      (declare (not safe))
                      (cons __tmp59842 __tmp59825)))
                   (__tmp59819
                    (let ((__tmp59820
                           (let ((__tmp59823
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp59821
                                  (let ((__tmp59822
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59822 '()))))
                             (declare (not safe))
                             (cons __tmp59823 __tmp59821))))
                      (declare (not safe))
                      (cons __tmp59820 '()))))
               (declare (not safe))
               (cons __tmp59824 __tmp59819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59843 __tmp59818)))
                                             (__tmp59808
                                              (let ((__tmp59809
                                                     (let ((__tmp59810
                                                            (let ((__tmp59816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59811
                           (let ((__tmp59815 (gx#datum->syntax '#f 'key))
                                 (__tmp59812
                                  (let ((__tmp59813
                                         (let ((__tmp59814
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp59814 '()))))
                                    (declare (not safe))
                                    (cons _L57643_ __tmp59813))))
                             (declare (not safe))
                             (cons __tmp59815 __tmp59812))))
                      (declare (not safe))
                      (cons __tmp59816 __tmp59811))))
               (declare (not safe))
               (cons _L57642_ __tmp59810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59809 '()))))
                                         (declare (not safe))
                                         (cons __tmp59817 __tmp59808))))
                                  (declare (not safe))
                                  (cons __tmp59844 __tmp59807))))
                           (declare (not safe))
                           (cons __tmp59852 __tmp59806)))
                        (__tmp59639
                         (let ((__tmp59701
                                (let ((__tmp59804 (gx#datum->syntax '#f 'def))
                                      (__tmp59702
                                       (let ((__tmp59796
                                              (let ((__tmp59797
                                                     (let ((__tmp59803
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp59798
                                                            (let ((__tmp59802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp59799
                           (let ((__tmp59800
                                  (let ((__tmp59801
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp59801 '()))))
                             (declare (not safe))
                             (cons _L57643_ __tmp59800))))
                      (declare (not safe))
                      (cons __tmp59802 __tmp59799))))
               (declare (not safe))
               (cons __tmp59803 __tmp59798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57642_ __tmp59797)))
                                             (__tmp59703
                                              (let ((__tmp59704
                                                     (let ((__tmp59795
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp59705
                                                            (let ((__tmp59779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59788
                                  (let ((__tmp59794
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp59789
                                         (let ((__tmp59790
                                                (let ((__tmp59793
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp59791
                                                       (let ((__tmp59792
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp59792
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp59793
                                                        __tmp59791))))
                                           (declare (not safe))
                                           (cons __tmp59790 '()))))
                                    (declare (not safe))
                                    (cons __tmp59794 __tmp59789)))
                                 (__tmp59780
                                  (let ((__tmp59781
                                         (let ((__tmp59787
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp59782
                                                (let ((__tmp59783
                                                       (let ((__tmp59786
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp59784
                                                              (let ((__tmp59785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59785 '()))))
                 (declare (not safe))
                 (cons __tmp59786 __tmp59784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59783 '()))))
                                           (declare (not safe))
                                           (cons __tmp59787 __tmp59782))))
                                    (declare (not safe))
                                    (cons __tmp59781 '()))))
                             (declare (not safe))
                             (cons __tmp59788 __tmp59780)))
                          (__tmp59706
                           (let ((__tmp59707
                                  (let ((__tmp59778
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp59708
                                         (let ((__tmp59777
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59709
                                                (let ((__tmp59776
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59710
                                                       (let ((__tmp59711
                                                              (let ((__tmp59712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59775 (gx#datum->syntax '#f 'key))
                                   (__tmp59713
                                    (let ((__tmp59714
                                           (let ((__tmp59774
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp59715
                                                  (let ((__tmp59737
                                                         (let ((__tmp59773
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp59738
                        (let ((__tmp59739
                               (let ((__tmp59757
                                      (let ((__tmp59772
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp59758
                                             (let ((__tmp59768
                                                    (let ((__tmp59771
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59769
                                                           (let ((__tmp59770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59770 '()))))
              (declare (not safe))
              (cons __tmp59771 __tmp59769)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59759
                                                    (let ((__tmp59760
                                                           (let ((__tmp59767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp59761
                          (let ((__tmp59763
                                 (let ((__tmp59766
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp59764
                                        (let ((__tmp59765
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp59765 '()))))
                                   (declare (not safe))
                                   (cons __tmp59766 __tmp59764)))
                                (__tmp59762
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59763 __tmp59762))))
                     (declare (not safe))
                     (cons __tmp59767 __tmp59761))))
              (declare (not safe))
              (cons __tmp59760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59768 __tmp59759))))
                                        (declare (not safe))
                                        (cons __tmp59772 __tmp59758)))
                                     (__tmp59740
                                      (let ((__tmp59741
                                             (let ((__tmp59756
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59742
                                                    (let ((__tmp59752
                                                           (let ((__tmp59755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59753
                          (let ((__tmp59754 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59754 '()))))
                     (declare (not safe))
                     (cons __tmp59755 __tmp59753)))
                  (__tmp59743
                   (let ((__tmp59744
                          (let ((__tmp59751 (gx#datum->syntax '#f 'fx+))
                                (__tmp59745
                                 (let ((__tmp59747
                                        (let ((__tmp59750
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59748
                                               (let ((__tmp59749
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59749 '()))))
                                          (declare (not safe))
                                          (cons __tmp59750 __tmp59748)))
                                       (__tmp59746
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59747 __tmp59746))))
                            (declare (not safe))
                            (cons __tmp59751 __tmp59745))))
                     (declare (not safe))
                     (cons __tmp59744 '()))))
              (declare (not safe))
              (cons __tmp59752 __tmp59743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59756 __tmp59742))))
                                        (declare (not safe))
                                        (cons __tmp59741 '()))))
                                 (declare (not safe))
                                 (cons __tmp59757 __tmp59740))))
                          (declare (not safe))
                          (cons '() __tmp59739))))
                   (declare (not safe))
                   (cons __tmp59773 __tmp59738)))
                (__tmp59716
                 (let ((__tmp59717
                        (let ((__tmp59736 (gx#datum->syntax '#f 'lambda))
                              (__tmp59718
                               (let ((__tmp59719
                                      (let ((__tmp59720
                                             (let ((__tmp59735
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59721
                                                    (let ((__tmp59731
                                                           (let ((__tmp59734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59732
                          (let ((__tmp59733 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59733 '()))))
                     (declare (not safe))
                     (cons __tmp59734 __tmp59732)))
                  (__tmp59722
                   (let ((__tmp59723
                          (let ((__tmp59730 (gx#datum->syntax '#f 'fx+))
                                (__tmp59724
                                 (let ((__tmp59726
                                        (let ((__tmp59729
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59727
                                               (let ((__tmp59728
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59728 '()))))
                                          (declare (not safe))
                                          (cons __tmp59729 __tmp59727)))
                                       (__tmp59725
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59726 __tmp59725))))
                            (declare (not safe))
                            (cons __tmp59730 __tmp59724))))
                     (declare (not safe))
                     (cons __tmp59723 '()))))
              (declare (not safe))
              (cons __tmp59731 __tmp59722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59735 __tmp59721))))
                                        (declare (not safe))
                                        (cons __tmp59720 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp59719))))
                          (declare (not safe))
                          (cons __tmp59736 __tmp59718))))
                   (declare (not safe))
                   (cons __tmp59717 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59737
                                                          __tmp59716))))
                                             (declare (not safe))
                                             (cons __tmp59774 __tmp59715))))
                                      (declare (not safe))
                                      (cons _L57643_ __tmp59714))))
                               (declare (not safe))
                               (cons __tmp59775 __tmp59713))))
                        (declare (not safe))
                        (cons _L57638_ __tmp59712))))
                 (declare (not safe))
                 (cons _L57640_ __tmp59711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59776
                                                        __tmp59710))))
                                           (declare (not safe))
                                           (cons __tmp59777 __tmp59709))))
                                    (declare (not safe))
                                    (cons __tmp59778 __tmp59708))))
                             (declare (not safe))
                             (cons __tmp59707 '()))))
                      (declare (not safe))
                      (cons __tmp59779 __tmp59706))))
               (declare (not safe))
               (cons __tmp59795 __tmp59705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59704 '()))))
                                         (declare (not safe))
                                         (cons __tmp59796 __tmp59703))))
                                  (declare (not safe))
                                  (cons __tmp59804 __tmp59702)))
                               (__tmp59640
                                (let ((__tmp59641
                                       (let ((__tmp59700
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp59642
                                              (let ((__tmp59695
                                                     (let ((__tmp59696
                                                            (let ((__tmp59699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59697
                           (let ((__tmp59698 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp59698 '()))))
                      (declare (not safe))
                      (cons __tmp59699 __tmp59697))))
               (declare (not safe))
               (cons _L57641_ __tmp59696)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59643
                                                     (let ((__tmp59644
                                                            (let ((__tmp59694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59645
                           (let ((__tmp59678
                                  (let ((__tmp59687
                                         (let ((__tmp59693
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59688
                                                (let ((__tmp59689
                                                       (let ((__tmp59692
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59690
                                                              (let ((__tmp59691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59691 '()))))
                 (declare (not safe))
                 (cons __tmp59692 __tmp59690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59689 '()))))
                                           (declare (not safe))
                                           (cons __tmp59693 __tmp59688)))
                                        (__tmp59679
                                         (let ((__tmp59680
                                                (let ((__tmp59686
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59681
                                                       (let ((__tmp59682
                                                              (let ((__tmp59685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp59683
                             (let ((__tmp59684 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp59684 '()))))
                        (declare (not safe))
                        (cons __tmp59685 __tmp59683))))
                 (declare (not safe))
                 (cons __tmp59682 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59686
                                                        __tmp59681))))
                                           (declare (not safe))
                                           (cons __tmp59680 '()))))
                                    (declare (not safe))
                                    (cons __tmp59687 __tmp59679)))
                                 (__tmp59646
                                  (let ((__tmp59647
                                         (let ((__tmp59677
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp59648
                                                (let ((__tmp59676
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp59649
                                                       (let ((__tmp59675
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp59650
                                                              (let ((__tmp59651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59652
                                    (let ((__tmp59674
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp59653
                                           (let ((__tmp59654
                                                  (let ((__tmp59673
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp59655
                                                         (let ((__tmp59656
                                                                (let ((__tmp59657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59672 (gx#datum->syntax '#f 'set!))
                                     (__tmp59658
                                      (let ((__tmp59668
                                             (let ((__tmp59671
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp59669
                                                    (let ((__tmp59670
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp59670 '()))))
                                               (declare (not safe))
                                               (cons __tmp59671 __tmp59669)))
                                            (__tmp59659
                                             (let ((__tmp59660
                                                    (let ((__tmp59667
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp59661
                                                           (let ((__tmp59663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp59666
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp59664
                                 (let ((__tmp59665
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp59665 '()))))
                            (declare (not safe))
                            (cons __tmp59666 __tmp59664)))
                         (__tmp59662
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59663 __tmp59662))))
              (declare (not safe))
              (cons __tmp59667 __tmp59661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59660 '()))))
                                        (declare (not safe))
                                        (cons __tmp59668 __tmp59659))))
                                 (declare (not safe))
                                 (cons __tmp59672 __tmp59658))))
                          (declare (not safe))
                          (cons __tmp59657 '()))))
                   (declare (not safe))
                   (cons '() __tmp59656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59673
                                                          __tmp59655))))
                                             (declare (not safe))
                                             (cons __tmp59654 '()))))
                                      (declare (not safe))
                                      (cons __tmp59674 __tmp59653))))
                               (declare (not safe))
                               (cons _L57638_ __tmp59652))))
                        (declare (not safe))
                        (cons _L57640_ __tmp59651))))
                 (declare (not safe))
                 (cons __tmp59675 __tmp59650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59676
                                                        __tmp59649))))
                                           (declare (not safe))
                                           (cons __tmp59677 __tmp59648))))
                                    (declare (not safe))
                                    (cons __tmp59647 '()))))
                             (declare (not safe))
                             (cons __tmp59678 __tmp59646))))
                      (declare (not safe))
                      (cons __tmp59694 __tmp59645))))
               (declare (not safe))
               (cons __tmp59644 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59695 __tmp59643))))
                                         (declare (not safe))
                                         (cons __tmp59700 __tmp59642))))
                                  (declare (not safe))
                                  (cons __tmp59641 '()))))
                           (declare (not safe))
                           (cons __tmp59701 __tmp59640))))
                    (declare (not safe))
                    (cons __tmp59805 __tmp59639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59853
                                                           __tmp59638))))
                                              (declare (not safe))
                                              (cons __tmp59955 __tmp59637))))
                                       (declare (not safe))
                                       (cons __tmp60001 __tmp59636))))
                                (declare (not safe))
                                (cons __tmp60044 __tmp59635))))
                         (declare (not safe))
                         (cons __tmp60065 __tmp59634)))
                     _hd5752457632_
                     _hd5752157622_
                     _hd5751857612_
                     _hd5751557602_
                     _hd5751257592_
                     _hd5750957582_
                     _hd5750657572_
                     _hd5750357562_
                     _hd5750057552_)
                    (_g5748557531_ _g5748657535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5748557531_
                                                     _g5748657535_))))
                                            (_g5748557531_ _g5748657535_))))
                                    (_g5748557531_ _g5748657535_))))
                            (_g5748557531_ _g5748657535_))))
                    (_g5748557531_ _g5748657535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5748557531_
                                                     _g5748657535_))))
                                            (_g5748557531_ _g5748657535_))))
                                    (_g5748557531_ _g5748657535_))))
                            (_g5748557531_ _g5748657535_))))
                    (_g5748557531_ _g5748657535_)))))
        (_g5748457684_ _$stx57481_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx57688_)
      (let* ((_g5769257714_
              (lambda (_g5769357710_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5769357710_)))
             (_g5769157783_
              (lambda (_g5769357718_)
                (if (gx#stx-pair? _g5769357718_)
                    (let ((_e5769957721_ (gx#syntax-e _g5769357718_)))
                      (let ((_hd5769857725_
                             (let ()
                               (declare (not safe))
                               (##car _e5769957721_)))
                            (_tl5769757728_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5769957721_))))
                        (if (gx#stx-pair? _tl5769757728_)
                            (let ((_e5770257731_ (gx#syntax-e _tl5769757728_)))
                              (let ((_hd5770157735_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5770257731_)))
                                    (_tl5770057738_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5770257731_))))
                                (if (gx#stx-pair? _tl5770057738_)
                                    (let ((_e5770557741_
                                           (gx#syntax-e _tl5770057738_)))
                                      (let ((_hd5770457745_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5770557741_)))
                                            (_tl5770357748_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5770557741_))))
                                        (if (gx#stx-pair? _tl5770357748_)
                                            (let ((_e5770857751_
                                                   (gx#syntax-e
                                                    _tl5770357748_)))
                                              (let ((_hd5770757755_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5770857751_)))
                                                    (_tl5770657758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5770857751_))))
                                                (if (gx#stx-null?
                                                     _tl5770657758_)
                                                    ((lambda (_L57761_
                                                              _L57763_
                                                              _L57764_)
                                                       (let ((__tmp60085
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60066
                                                              (let ((__tmp60073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60084
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60074
                                    (let ((__tmp60075
                                           (let ((__tmp60083
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60076
                                                  (let ((__tmp60077
                                                         (let ((__tmp60078
                                                                (let ((__tmp60079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60082 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60080
                                      (let ((__tmp60081
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57763_ '()))))
                                        (declare (not safe))
                                        (cons _L57763_ __tmp60081))))
                                 (declare (not safe))
                                 (cons __tmp60082 __tmp60080))))
                          (declare (not safe))
                          (cons __tmp60079 '()))))
                   (declare (not safe))
                   (cons _L57763_ __tmp60078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57764_
                                                          __tmp60077))))
                                             (declare (not safe))
                                             (cons __tmp60083 __tmp60076))))
                                      (declare (not safe))
                                      (cons __tmp60075 '()))))
                               (declare (not safe))
                               (cons __tmp60084 __tmp60074)))
                            (__tmp60067
                             (let ((__tmp60068
                                    (let ((__tmp60072
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60069
                                           (let ((__tmp60071
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60070
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57761_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60071 __tmp60070))))
                                      (declare (not safe))
                                      (cons __tmp60072 __tmp60069))))
                               (declare (not safe))
                               (cons __tmp60068 '()))))
                        (declare (not safe))
                        (cons __tmp60073 __tmp60067))))
                 (declare (not safe))
                 (cons __tmp60085 __tmp60066)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5770757755_
                                                     _hd5770457745_
                                                     _hd5770157735_)
                                                    (_g5769257714_
                                                     _g5769357718_))))
                                            (_g5769257714_ _g5769357718_))))
                                    (_g5769257714_ _g5769357718_))))
                            (_g5769257714_ _g5769357718_))))
                    (_g5769257714_ _g5769357718_)))))
        (_g5769157783_ _$stx57688_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx57787_)
      (let* ((_g5779157825_
              (lambda (_g5779257821_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5779257821_)))
             (_g5779057936_
              (lambda (_g5779257829_)
                (if (gx#stx-pair? _g5779257829_)
                    (let ((_e5780157832_ (gx#syntax-e _g5779257829_)))
                      (let ((_hd5780057836_
                             (let ()
                               (declare (not safe))
                               (##car _e5780157832_)))
                            (_tl5779957839_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5780157832_))))
                        (if (gx#stx-pair? _tl5779957839_)
                            (let ((_e5780457842_ (gx#syntax-e _tl5779957839_)))
                              (let ((_hd5780357846_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5780457842_)))
                                    (_tl5780257849_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5780457842_))))
                                (if (gx#stx-pair? _tl5780257849_)
                                    (let ((_e5780757852_
                                           (gx#syntax-e _tl5780257849_)))
                                      (let ((_hd5780657856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5780757852_)))
                                            (_tl5780557859_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5780757852_))))
                                        (if (gx#stx-pair? _tl5780557859_)
                                            (let ((_e5781057862_
                                                   (gx#syntax-e
                                                    _tl5780557859_)))
                                              (let ((_hd5780957866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5781057862_)))
                                                    (_tl5780857869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5781057862_))))
                                                (if (gx#stx-pair?
                                                     _tl5780857869_)
                                                    (let ((_e5781357872_
                                                           (gx#syntax-e
                                                            _tl5780857869_)))
                                                      (let ((_hd5781257876_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5781357872_)))
                    (_tl5781157879_
                     (let () (declare (not safe)) (##cdr _e5781357872_))))
                (if (gx#stx-pair? _tl5781157879_)
                    (let ((_e5781657882_ (gx#syntax-e _tl5781157879_)))
                      (let ((_hd5781557886_
                             (let ()
                               (declare (not safe))
                               (##car _e5781657882_)))
                            (_tl5781457889_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5781657882_))))
                        (if (gx#stx-pair? _tl5781457889_)
                            (let ((_e5781957892_ (gx#syntax-e _tl5781457889_)))
                              (let ((_hd5781857896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5781957892_)))
                                    (_tl5781757899_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5781957892_))))
                                (if (gx#stx-null? _tl5781757899_)
                                    ((lambda (_L57902_
                                              _L57904_
                                              _L57905_
                                              _L57906_
                                              _L57907_
                                              _L57908_)
                                       (let ((__tmp60244
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60086
                                              (let ((__tmp60204
                                                     (let ((__tmp60235
                                                            (let ((__tmp60243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60236
                           (let ((__tmp60237
                                  (let ((__tmp60242
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60238
                                         (let ((__tmp60240
                                                (let ((__tmp60241
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57904_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57906_ __tmp60241)))
                                               (__tmp60239
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57907_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60240 __tmp60239))))
                                    (declare (not safe))
                                    (cons __tmp60242 __tmp60238))))
                             (declare (not safe))
                             (cons __tmp60237 '()))))
                      (declare (not safe))
                      (cons __tmp60243 __tmp60236)))
                   (__tmp60205
                    (let ((__tmp60229
                           (let ((__tmp60234 (gx#datum->syntax '#f 'size))
                                 (__tmp60230
                                  (let ((__tmp60231
                                         (let ((__tmp60233
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60232
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57908_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60233 __tmp60232))))
                                    (declare (not safe))
                                    (cons __tmp60231 '()))))
                             (declare (not safe))
                             (cons __tmp60234 __tmp60230)))
                          (__tmp60206
                           (let ((__tmp60221
                                  (let ((__tmp60228
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60222
                                         (let ((__tmp60223
                                                (let ((__tmp60227
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60224
                                                       (let ((__tmp60226
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60225
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60226 __tmp60225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60227
                                                        __tmp60224))))
                                           (declare (not safe))
                                           (cons __tmp60223 '()))))
                                    (declare (not safe))
                                    (cons __tmp60228 __tmp60222)))
                                 (__tmp60207
                                  (let ((__tmp60208
                                         (let ((__tmp60220
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60209
                                                (let ((__tmp60210
                                                       (let ((__tmp60219
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60211
                                                              (let ((__tmp60213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60218
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60214
                                    (let ((__tmp60217
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60215
                                           (let ((__tmp60216
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60216 '()))))
                                      (declare (not safe))
                                      (cons __tmp60217 __tmp60215))))
                               (declare (not safe))
                               (cons __tmp60218 __tmp60214)))
                            (__tmp60212
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60213 __tmp60212))))
                 (declare (not safe))
                 (cons __tmp60219 __tmp60211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60210 '()))))
                                           (declare (not safe))
                                           (cons __tmp60220 __tmp60209))))
                                    (declare (not safe))
                                    (cons __tmp60208 '()))))
                             (declare (not safe))
                             (cons __tmp60221 __tmp60207))))
                      (declare (not safe))
                      (cons __tmp60229 __tmp60206))))
               (declare (not safe))
               (cons __tmp60235 __tmp60205)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60087
                                                     (let ((__tmp60088
                                                            (let ((__tmp60203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60089
                           (let ((__tmp60202 (gx#datum->syntax '#f 'loop))
                                 (__tmp60090
                                  (let ((__tmp60189
                                         (let ((__tmp60198
                                                (let ((__tmp60201
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60199
                                                       (let ((__tmp60200
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60200
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60201
                                                        __tmp60199)))
                                               (__tmp60190
                                                (let ((__tmp60195
                                                       (let ((__tmp60197
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60196
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60197 __tmp60196)))
              (__tmp60191
               (let ((__tmp60192
                      (let ((__tmp60194 (gx#datum->syntax '#f 'deleted))
                            (__tmp60193
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60194 __tmp60193))))
                 (declare (not safe))
                 (cons __tmp60192 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60195
                                                        __tmp60191))))
                                           (declare (not safe))
                                           (cons __tmp60198 __tmp60190)))
                                        (__tmp60091
                                         (let ((__tmp60092
                                                (let ((__tmp60188
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60093
                                                       (let ((__tmp60180
                                                              (let ((__tmp60187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60181
                             (let ((__tmp60182
                                    (let ((__tmp60186
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60183
                                           (let ((__tmp60184
                                                  (let ((__tmp60185
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60185 '()))))
                                             (declare (not safe))
                                             (cons _L57908_ __tmp60184))))
                                      (declare (not safe))
                                      (cons __tmp60186 __tmp60183))))
                               (declare (not safe))
                               (cons __tmp60182 '()))))
                        (declare (not safe))
                        (cons __tmp60187 __tmp60181)))
                     (__tmp60094
                      (let ((__tmp60095
                             (let ((__tmp60179 (gx#datum->syntax '#f 'cond))
                                   (__tmp60096
                                    (let ((__tmp60170
                                           (let ((__tmp60172
                                                  (let ((__tmp60178
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60173
                                                         (let ((__tmp60177
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60174
                        (let ((__tmp60175
                               (let ((__tmp60176
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60176 '()))))
                          (declare (not safe))
                          (cons __tmp60175 '()))))
                   (declare (not safe))
                   (cons __tmp60177 __tmp60174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60178
                                                          __tmp60173)))
                                                 (__tmp60171
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57902_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60172 __tmp60171)))
                                          (__tmp60097
                                           (let ((__tmp60137
                                                  (let ((__tmp60163
                                                         (let ((__tmp60169
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60164
                        (let ((__tmp60168 (gx#datum->syntax '#f 'k))
                              (__tmp60165
                               (let ((__tmp60166
                                      (let ((__tmp60167
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60167 '()))))
                                 (declare (not safe))
                                 (cons __tmp60166 '()))))
                          (declare (not safe))
                          (cons __tmp60168 __tmp60165))))
                   (declare (not safe))
                   (cons __tmp60169 __tmp60164)))
                (__tmp60138
                 (let ((__tmp60139
                        (let ((__tmp60162 (gx#datum->syntax '#f 'loop))
                              (__tmp60140
                               (let ((__tmp60154
                                      (let ((__tmp60161
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60155
                                             (let ((__tmp60160
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60156
                                                    (let ((__tmp60159
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60157
                                                           (let ((__tmp60158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60158 '()))))
              (declare (not safe))
              (cons __tmp60159 __tmp60157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60160 __tmp60156))))
                                        (declare (not safe))
                                        (cons __tmp60161 __tmp60155)))
                                     (__tmp60141
                                      (let ((__tmp60149
                                             (let ((__tmp60153
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60150
                                                    (let ((__tmp60152
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60151
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60152
                                                            __tmp60151))))
                                               (declare (not safe))
                                               (cons __tmp60153 __tmp60150)))
                                            (__tmp60142
                                             (let ((__tmp60143
                                                    (let ((__tmp60148
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60144
                                                           (let ((__tmp60147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60145
                          (let ((__tmp60146 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60146 '()))))
                     (declare (not safe))
                     (cons __tmp60147 __tmp60145))))
              (declare (not safe))
              (cons __tmp60148 __tmp60144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60143 '()))))
                                        (declare (not safe))
                                        (cons __tmp60149 __tmp60142))))
                                 (declare (not safe))
                                 (cons __tmp60154 __tmp60141))))
                          (declare (not safe))
                          (cons __tmp60162 __tmp60140))))
                   (declare (not safe))
                   (cons __tmp60139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60163
                                                          __tmp60138)))
                                                 (__tmp60098
                                                  (let ((__tmp60122
                                                         (let ((__tmp60133
                                                                (let ((__tmp60134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60135
                                      (let ((__tmp60136
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60136 '()))))
                                 (declare (not safe))
                                 (cons _L57904_ __tmp60135))))
                          (declare (not safe))
                          (cons _L57905_ __tmp60134)))
                       (__tmp60123
                        (let ((__tmp60124
                               (let ((__tmp60132
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60125
                                      (let ((__tmp60126
                                             (let ((__tmp60127
                                                    (let ((__tmp60131
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60128
                                                           (let ((__tmp60130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60129
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60130 __tmp60129))))
              (declare (not safe))
              (cons __tmp60131 __tmp60128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60127 '()))))
                                        (declare (not safe))
                                        (cons _L57908_ __tmp60126))))
                                 (declare (not safe))
                                 (cons __tmp60132 __tmp60125))))
                          (declare (not safe))
                          (cons __tmp60124 '()))))
                   (declare (not safe))
                   (cons __tmp60133 __tmp60123)))
                (__tmp60099
                 (let ((__tmp60100
                        (let ((__tmp60121 (gx#datum->syntax '#f 'else))
                              (__tmp60101
                               (let ((__tmp60102
                                      (let ((__tmp60120
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60103
                                             (let ((__tmp60112
                                                    (let ((__tmp60119
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60113
                                                           (let ((__tmp60118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60114
                          (let ((__tmp60117 (gx#datum->syntax '#f 'i))
                                (__tmp60115
                                 (let ((__tmp60116
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60116 '()))))
                            (declare (not safe))
                            (cons __tmp60117 __tmp60115))))
                     (declare (not safe))
                     (cons __tmp60118 __tmp60114))))
              (declare (not safe))
              (cons __tmp60119 __tmp60113)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60104
                                                    (let ((__tmp60107
                                                           (let ((__tmp60111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60108
                          (let ((__tmp60110 (gx#datum->syntax '#f 'i))
                                (__tmp60109
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60110 __tmp60109))))
                     (declare (not safe))
                     (cons __tmp60111 __tmp60108)))
                  (__tmp60105
                   (let ((__tmp60106 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60106 '()))))
              (declare (not safe))
              (cons __tmp60107 __tmp60105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60112 __tmp60104))))
                                        (declare (not safe))
                                        (cons __tmp60120 __tmp60103))))
                                 (declare (not safe))
                                 (cons __tmp60102 '()))))
                          (declare (not safe))
                          (cons __tmp60121 __tmp60101))))
                   (declare (not safe))
                   (cons __tmp60100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60122
                                                          __tmp60099))))
                                             (declare (not safe))
                                             (cons __tmp60137 __tmp60098))))
                                      (declare (not safe))
                                      (cons __tmp60170 __tmp60097))))
                               (declare (not safe))
                               (cons __tmp60179 __tmp60096))))
                        (declare (not safe))
                        (cons __tmp60095 '()))))
                 (declare (not safe))
                 (cons __tmp60180 __tmp60094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60188
                                                        __tmp60093))))
                                           (declare (not safe))
                                           (cons __tmp60092 '()))))
                                    (declare (not safe))
                                    (cons __tmp60189 __tmp60091))))
                             (declare (not safe))
                             (cons __tmp60202 __tmp60090))))
                      (declare (not safe))
                      (cons __tmp60203 __tmp60089))))
               (declare (not safe))
               (cons __tmp60088 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60204 __tmp60087))))
                                         (declare (not safe))
                                         (cons __tmp60244 __tmp60086)))
                                     _hd5781857896_
                                     _hd5781557886_
                                     _hd5781257876_
                                     _hd5780957866_
                                     _hd5780657856_
                                     _hd5780357846_)
                                    (_g5779157825_ _g5779257829_))))
                            (_g5779157825_ _g5779257829_))))
                    (_g5779157825_ _g5779257829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5779157825_
                                                     _g5779257829_))))
                                            (_g5779157825_ _g5779257829_))))
                                    (_g5779157825_ _g5779257829_))))
                            (_g5779157825_ _g5779257829_))))
                    (_g5779157825_ _g5779257829_)))))
        (_g5779057936_ _$stx57787_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx57940_)
      (let* ((_g5794457986_
              (lambda (_g5794557982_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5794557982_)))
             (_g5794358125_
              (lambda (_g5794557990_)
                (if (gx#stx-pair? _g5794557990_)
                    (let ((_e5795657993_ (gx#syntax-e _g5794557990_)))
                      (let ((_hd5795557997_
                             (let ()
                               (declare (not safe))
                               (##car _e5795657993_)))
                            (_tl5795458000_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5795657993_))))
                        (if (gx#stx-pair? _tl5795458000_)
                            (let ((_e5795958003_ (gx#syntax-e _tl5795458000_)))
                              (let ((_hd5795858007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5795958003_)))
                                    (_tl5795758010_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5795958003_))))
                                (if (gx#stx-pair? _tl5795758010_)
                                    (let ((_e5796258013_
                                           (gx#syntax-e _tl5795758010_)))
                                      (let ((_hd5796158017_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5796258013_)))
                                            (_tl5796058020_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5796258013_))))
                                        (if (gx#stx-pair? _tl5796058020_)
                                            (let ((_e5796558023_
                                                   (gx#syntax-e
                                                    _tl5796058020_)))
                                              (let ((_hd5796458027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5796558023_)))
                                                    (_tl5796358030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5796558023_))))
                                                (if (gx#stx-pair?
                                                     _tl5796358030_)
                                                    (let ((_e5796858033_
                                                           (gx#syntax-e
                                                            _tl5796358030_)))
                                                      (let ((_hd5796758037_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5796858033_)))
                    (_tl5796658040_
                     (let () (declare (not safe)) (##cdr _e5796858033_))))
                (if (gx#stx-pair? _tl5796658040_)
                    (let ((_e5797158043_ (gx#syntax-e _tl5796658040_)))
                      (let ((_hd5797058047_
                             (let ()
                               (declare (not safe))
                               (##car _e5797158043_)))
                            (_tl5796958050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5797158043_))))
                        (if (gx#stx-pair? _tl5796958050_)
                            (let ((_e5797458053_ (gx#syntax-e _tl5796958050_)))
                              (let ((_hd5797358057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5797458053_)))
                                    (_tl5797258060_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5797458053_))))
                                (if (gx#stx-pair? _tl5797258060_)
                                    (let ((_e5797758063_
                                           (gx#syntax-e _tl5797258060_)))
                                      (let ((_hd5797658067_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5797758063_)))
                                            (_tl5797558070_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5797758063_))))
                                        (if (gx#stx-pair? _tl5797558070_)
                                            (let ((_e5798058073_
                                                   (gx#syntax-e
                                                    _tl5797558070_)))
                                              (let ((_hd5797958077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5798058073_)))
                                                    (_tl5797858080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5798058073_))))
                                                (if (gx#stx-null?
                                                     _tl5797858080_)
                                                    ((lambda (_L58083_
                                                              _L58085_
                                                              _L58086_
                                                              _L58087_
                                                              _L58088_
                                                              _L58089_
                                                              _L58090_
                                                              _L58091_)
                                                       (let ((__tmp60461
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60245
                                                              (let ((__tmp60421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60452
                                    (let ((__tmp60460
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60453
                                           (let ((__tmp60454
                                                  (let ((__tmp60459
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60455
                                                         (let ((__tmp60457
                                                                (let ((__tmp60458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58087_ '()))))
                          (declare (not safe))
                          (cons _L58089_ __tmp60458)))
                       (__tmp60456
                        (let () (declare (not safe)) (cons _L58090_ '()))))
                   (declare (not safe))
                   (cons __tmp60457 __tmp60456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60459
                                                          __tmp60455))))
                                             (declare (not safe))
                                             (cons __tmp60454 '()))))
                                      (declare (not safe))
                                      (cons __tmp60460 __tmp60453)))
                                   (__tmp60422
                                    (let ((__tmp60446
                                           (let ((__tmp60451
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60447
                                                  (let ((__tmp60448
                                                         (let ((__tmp60450
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60449
                        (let () (declare (not safe)) (cons _L58091_ '()))))
                   (declare (not safe))
                   (cons __tmp60450 __tmp60449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60448 '()))))
                                             (declare (not safe))
                                             (cons __tmp60451 __tmp60447)))
                                          (__tmp60423
                                           (let ((__tmp60438
                                                  (let ((__tmp60445
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60439
                                                         (let ((__tmp60440
                                                                (let ((__tmp60444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60441
                               (let ((__tmp60443 (gx#datum->syntax '#f 'size))
                                     (__tmp60442
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60443 __tmp60442))))
                          (declare (not safe))
                          (cons __tmp60444 __tmp60441))))
                   (declare (not safe))
                   (cons __tmp60440 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60445
                                                          __tmp60439)))
                                                 (__tmp60424
                                                  (let ((__tmp60425
                                                         (let ((__tmp60437
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60426
                        (let ((__tmp60427
                               (let ((__tmp60436
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60428
                                      (let ((__tmp60430
                                             (let ((__tmp60435
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60431
                                                    (let ((__tmp60434
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60432
                                                           (let ((__tmp60433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60433 '()))))
              (declare (not safe))
              (cons __tmp60434 __tmp60432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60435 __tmp60431)))
                                            (__tmp60429
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60430 __tmp60429))))
                                 (declare (not safe))
                                 (cons __tmp60436 __tmp60428))))
                          (declare (not safe))
                          (cons __tmp60427 '()))))
                   (declare (not safe))
                   (cons __tmp60437 __tmp60426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60425 '()))))
                                             (declare (not safe))
                                             (cons __tmp60438 __tmp60424))))
                                      (declare (not safe))
                                      (cons __tmp60446 __tmp60423))))
                               (declare (not safe))
                               (cons __tmp60452 __tmp60422)))
                            (__tmp60246
                             (let ((__tmp60247
                                    (let ((__tmp60420
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60248
                                           (let ((__tmp60419
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60249
                                                  (let ((__tmp60406
                                                         (let ((__tmp60415
                                                                (let ((__tmp60418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60416
                               (let ((__tmp60417
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60417 '()))))
                          (declare (not safe))
                          (cons __tmp60418 __tmp60416)))
                       (__tmp60407
                        (let ((__tmp60412
                               (let ((__tmp60414 (gx#datum->syntax '#f 'i))
                                     (__tmp60413
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60414 __tmp60413)))
                              (__tmp60408
                               (let ((__tmp60409
                                      (let ((__tmp60411
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60410
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60411 __tmp60410))))
                                 (declare (not safe))
                                 (cons __tmp60409 '()))))
                          (declare (not safe))
                          (cons __tmp60412 __tmp60408))))
                   (declare (not safe))
                   (cons __tmp60415 __tmp60407)))
                (__tmp60250
                 (let ((__tmp60251
                        (let ((__tmp60405 (gx#datum->syntax '#f 'let))
                              (__tmp60252
                               (let ((__tmp60397
                                      (let ((__tmp60404
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60398
                                             (let ((__tmp60399
                                                    (let ((__tmp60403
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60400
                                                           (let ((__tmp60401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60402 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60402 '()))))
                     (declare (not safe))
                     (cons _L58091_ __tmp60401))))
              (declare (not safe))
              (cons __tmp60403 __tmp60400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60399 '()))))
                                        (declare (not safe))
                                        (cons __tmp60404 __tmp60398)))
                                     (__tmp60253
                                      (let ((__tmp60254
                                             (let ((__tmp60396
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60255
                                                    (let ((__tmp60337
                                                           (let ((__tmp60389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60395 (gx#datum->syntax '#f 'eq?))
                                (__tmp60390
                                 (let ((__tmp60394 (gx#datum->syntax '#f 'k))
                                       (__tmp60391
                                        (let ((__tmp60392
                                               (let ((__tmp60393
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60393 '()))))
                                          (declare (not safe))
                                          (cons __tmp60392 '()))))
                                   (declare (not safe))
                                   (cons __tmp60394 __tmp60391))))
                            (declare (not safe))
                            (cons __tmp60395 __tmp60390)))
                         (__tmp60338
                          (let ((__tmp60339
                                 (let ((__tmp60388 (gx#datum->syntax '#f 'if))
                                       (__tmp60340
                                        (let ((__tmp60387
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60341
                                               (let ((__tmp60365
                                                      (let ((__tmp60386
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60366
                                                             (let ((__tmp60380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60385
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60381
                                   (let ((__tmp60382
                                          (let ((__tmp60384
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60383
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58087_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60384 __tmp60383))))
                                     (declare (not safe))
                                     (cons _L58091_ __tmp60382))))
                              (declare (not safe))
                              (cons __tmp60385 __tmp60381)))
                           (__tmp60367
                            (let ((__tmp60370
                                   (let ((__tmp60379
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60371
                                          (let ((__tmp60372
                                                 (let ((__tmp60374
                                                        (let ((__tmp60378
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60375
                                                               (let ((__tmp60377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60376
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60377 __tmp60376))))
                  (declare (not safe))
                  (cons __tmp60378 __tmp60375)))
               (__tmp60373 (let () (declare (not safe)) (cons _L58086_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60374
                                                         __tmp60373))))
                                            (declare (not safe))
                                            (cons _L58091_ __tmp60372))))
                                     (declare (not safe))
                                     (cons __tmp60379 __tmp60371)))
                                  (__tmp60368
                                   (let ((__tmp60369
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58083_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60369 '()))))
                              (declare (not safe))
                              (cons __tmp60370 __tmp60368))))
                       (declare (not safe))
                       (cons __tmp60380 __tmp60367))))
                (declare (not safe))
                (cons __tmp60386 __tmp60366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60342
                                                      (let ((__tmp60343
                                                             (let ((__tmp60364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60344
                            (let ((__tmp60358
                                   (let ((__tmp60363
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60359
                                          (let ((__tmp60360
                                                 (let ((__tmp60362
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60361
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58087_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60362
                                                         __tmp60361))))
                                            (declare (not safe))
                                            (cons _L58091_ __tmp60360))))
                                     (declare (not safe))
                                     (cons __tmp60363 __tmp60359)))
                                  (__tmp60345
                                   (let ((__tmp60348
                                          (let ((__tmp60357
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60349
                                                 (let ((__tmp60350
                                                        (let ((__tmp60352
                                                               (let ((__tmp60356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60353
                              (let ((__tmp60355 (gx#datum->syntax '#f 'probe))
                                    (__tmp60354
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60355 __tmp60354))))
                         (declare (not safe))
                         (cons __tmp60356 __tmp60353)))
                      (__tmp60351
                       (let () (declare (not safe)) (cons _L58086_ '()))))
                  (declare (not safe))
                  (cons __tmp60352 __tmp60351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58091_
                                                         __tmp60350))))
                                            (declare (not safe))
                                            (cons __tmp60357 __tmp60349)))
                                         (__tmp60346
                                          (let ((__tmp60347
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58085_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60347 '()))))
                                     (declare (not safe))
                                     (cons __tmp60348 __tmp60346))))
                              (declare (not safe))
                              (cons __tmp60358 __tmp60345))))
                       (declare (not safe))
                       (cons __tmp60364 __tmp60344))))
                (declare (not safe))
                (cons __tmp60343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60365
                                                       __tmp60342))))
                                          (declare (not safe))
                                          (cons __tmp60387 __tmp60341))))
                                   (declare (not safe))
                                   (cons __tmp60388 __tmp60340))))
                            (declare (not safe))
                            (cons __tmp60339 '()))))
                     (declare (not safe))
                     (cons __tmp60389 __tmp60338)))
                  (__tmp60256
                   (let ((__tmp60304
                          (let ((__tmp60330
                                 (let ((__tmp60336 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60331
                                        (let ((__tmp60335
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60332
                                               (let ((__tmp60333
                                                      (let ((__tmp60334
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60334
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60333 '()))))
                                          (declare (not safe))
                                          (cons __tmp60335 __tmp60332))))
                                   (declare (not safe))
                                   (cons __tmp60336 __tmp60331)))
                                (__tmp60305
                                 (let ((__tmp60306
                                        (let ((__tmp60329
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60307
                                               (let ((__tmp60321
                                                      (let ((__tmp60328
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60322
                                                             (let ((__tmp60327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60323
                            (let ((__tmp60326 (gx#datum->syntax '#f 'i))
                                  (__tmp60324
                                   (let ((__tmp60325
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60325 '()))))
                              (declare (not safe))
                              (cons __tmp60326 __tmp60324))))
                       (declare (not safe))
                       (cons __tmp60327 __tmp60323))))
                (declare (not safe))
                (cons __tmp60328 __tmp60322)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60308
                                                      (let ((__tmp60316
                                                             (let ((__tmp60320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60317
                            (let ((__tmp60319 (gx#datum->syntax '#f 'i))
                                  (__tmp60318
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60319 __tmp60318))))
                       (declare (not safe))
                       (cons __tmp60320 __tmp60317)))
                    (__tmp60309
                     (let ((__tmp60310
                            (let ((__tmp60315 (gx#datum->syntax '#f 'or))
                                  (__tmp60311
                                   (let ((__tmp60314
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60312
                                          (let ((__tmp60313
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60313 '()))))
                                     (declare (not safe))
                                     (cons __tmp60314 __tmp60312))))
                              (declare (not safe))
                              (cons __tmp60315 __tmp60311))))
                       (declare (not safe))
                       (cons __tmp60310 '()))))
                (declare (not safe))
                (cons __tmp60316 __tmp60309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60321
                                                       __tmp60308))))
                                          (declare (not safe))
                                          (cons __tmp60329 __tmp60307))))
                                   (declare (not safe))
                                   (cons __tmp60306 '()))))
                            (declare (not safe))
                            (cons __tmp60330 __tmp60305)))
                         (__tmp60257
                          (let ((__tmp60281
                                 (let ((__tmp60300
                                        (let ((__tmp60301
                                               (let ((__tmp60302
                                                      (let ((__tmp60303
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60303
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58087_ __tmp60302))))
                                          (declare (not safe))
                                          (cons _L58088_ __tmp60301)))
                                       (__tmp60282
                                        (let ((__tmp60294
                                               (let ((__tmp60299
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60295
                                                      (let ((__tmp60296
                                                             (let ((__tmp60298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60297
                            (let () (declare (not safe)) (cons _L58087_ '()))))
                       (declare (not safe))
                       (cons __tmp60298 __tmp60297))))
                (declare (not safe))
                (cons _L58091_ __tmp60296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60299 __tmp60295)))
                                              (__tmp60283
                                               (let ((__tmp60284
                                                      (let ((__tmp60293
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60285
                                                             (let ((__tmp60286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60288
                                   (let ((__tmp60292
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60289
                                          (let ((__tmp60291
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60290
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60291 __tmp60290))))
                                     (declare (not safe))
                                     (cons __tmp60292 __tmp60289)))
                                  (__tmp60287
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58086_ '()))))
                              (declare (not safe))
                              (cons __tmp60288 __tmp60287))))
                       (declare (not safe))
                       (cons _L58091_ __tmp60286))))
                (declare (not safe))
                (cons __tmp60293 __tmp60285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60284 '()))))
                                          (declare (not safe))
                                          (cons __tmp60294 __tmp60283))))
                                   (declare (not safe))
                                   (cons __tmp60300 __tmp60282)))
                                (__tmp60258
                                 (let ((__tmp60259
                                        (let ((__tmp60280
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60260
                                               (let ((__tmp60261
                                                      (let ((__tmp60279
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60262
                                                             (let ((__tmp60271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60278
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60272
                                   (let ((__tmp60277
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60273
                                          (let ((__tmp60276
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60274
                                                 (let ((__tmp60275
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60275 '()))))
                                            (declare (not safe))
                                            (cons __tmp60276 __tmp60274))))
                                     (declare (not safe))
                                     (cons __tmp60277 __tmp60273))))
                              (declare (not safe))
                              (cons __tmp60278 __tmp60272)))
                           (__tmp60263
                            (let ((__tmp60266
                                   (let ((__tmp60270
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60267
                                          (let ((__tmp60269
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60268
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60269 __tmp60268))))
                                     (declare (not safe))
                                     (cons __tmp60270 __tmp60267)))
                                  (__tmp60264
                                   (let ((__tmp60265
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60265 '()))))
                              (declare (not safe))
                              (cons __tmp60266 __tmp60264))))
                       (declare (not safe))
                       (cons __tmp60271 __tmp60263))))
                (declare (not safe))
                (cons __tmp60279 __tmp60262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60261 '()))))
                                          (declare (not safe))
                                          (cons __tmp60280 __tmp60260))))
                                   (declare (not safe))
                                   (cons __tmp60259 '()))))
                            (declare (not safe))
                            (cons __tmp60281 __tmp60258))))
                     (declare (not safe))
                     (cons __tmp60304 __tmp60257))))
              (declare (not safe))
              (cons __tmp60337 __tmp60256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60396 __tmp60255))))
                                        (declare (not safe))
                                        (cons __tmp60254 '()))))
                                 (declare (not safe))
                                 (cons __tmp60397 __tmp60253))))
                          (declare (not safe))
                          (cons __tmp60405 __tmp60252))))
                   (declare (not safe))
                   (cons __tmp60251 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60406
                                                          __tmp60250))))
                                             (declare (not safe))
                                             (cons __tmp60419 __tmp60249))))
                                      (declare (not safe))
                                      (cons __tmp60420 __tmp60248))))
                               (declare (not safe))
                               (cons __tmp60247 '()))))
                        (declare (not safe))
                        (cons __tmp60421 __tmp60246))))
                 (declare (not safe))
                 (cons __tmp60461 __tmp60245)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5797958077_
                                                     _hd5797658067_
                                                     _hd5797358057_
                                                     _hd5797058047_
                                                     _hd5796758037_
                                                     _hd5796458027_
                                                     _hd5796158017_
                                                     _hd5795858007_)
                                                    (_g5794457986_
                                                     _g5794557990_))))
                                            (_g5794457986_ _g5794557990_))))
                                    (_g5794457986_ _g5794557990_))))
                            (_g5794457986_ _g5794557990_))))
                    (_g5794457986_ _g5794557990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5794457986_
                                                     _g5794557990_))))
                                            (_g5794457986_ _g5794557990_))))
                                    (_g5794457986_ _g5794557990_))))
                            (_g5794457986_ _g5794557990_))))
                    (_g5794457986_ _g5794557990_)))))
        (_g5794358125_ _$stx57940_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58129_)
      (let* ((_g5813358179_
              (lambda (_g5813458175_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5813458175_)))
             (_g5813258332_
              (lambda (_g5813458183_)
                (if (gx#stx-pair? _g5813458183_)
                    (let ((_e5814658186_ (gx#syntax-e _g5813458183_)))
                      (let ((_hd5814558190_
                             (let ()
                               (declare (not safe))
                               (##car _e5814658186_)))
                            (_tl5814458193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5814658186_))))
                        (if (gx#stx-pair? _tl5814458193_)
                            (let ((_e5814958196_ (gx#syntax-e _tl5814458193_)))
                              (let ((_hd5814858200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5814958196_)))
                                    (_tl5814758203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5814958196_))))
                                (if (gx#stx-pair? _tl5814758203_)
                                    (let ((_e5815258206_
                                           (gx#syntax-e _tl5814758203_)))
                                      (let ((_hd5815158210_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5815258206_)))
                                            (_tl5815058213_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5815258206_))))
                                        (if (gx#stx-pair? _tl5815058213_)
                                            (let ((_e5815558216_
                                                   (gx#syntax-e
                                                    _tl5815058213_)))
                                              (let ((_hd5815458220_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5815558216_)))
                                                    (_tl5815358223_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5815558216_))))
                                                (if (gx#stx-pair?
                                                     _tl5815358223_)
                                                    (let ((_e5815858226_
                                                           (gx#syntax-e
                                                            _tl5815358223_)))
                                                      (let ((_hd5815758230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5815858226_)))
                    (_tl5815658233_
                     (let () (declare (not safe)) (##cdr _e5815858226_))))
                (if (gx#stx-pair? _tl5815658233_)
                    (let ((_e5816158236_ (gx#syntax-e _tl5815658233_)))
                      (let ((_hd5816058240_
                             (let ()
                               (declare (not safe))
                               (##car _e5816158236_)))
                            (_tl5815958243_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5816158236_))))
                        (if (gx#stx-pair? _tl5815958243_)
                            (let ((_e5816458246_ (gx#syntax-e _tl5815958243_)))
                              (let ((_hd5816358250_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5816458246_)))
                                    (_tl5816258253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5816458246_))))
                                (if (gx#stx-pair? _tl5816258253_)
                                    (let ((_e5816758256_
                                           (gx#syntax-e _tl5816258253_)))
                                      (let ((_hd5816658260_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5816758256_)))
                                            (_tl5816558263_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5816758256_))))
                                        (if (gx#stx-pair? _tl5816558263_)
                                            (let ((_e5817058266_
                                                   (gx#syntax-e
                                                    _tl5816558263_)))
                                              (let ((_hd5816958270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5817058266_)))
                                                    (_tl5816858273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5817058266_))))
                                                (if (gx#stx-pair?
                                                     _tl5816858273_)
                                                    (let ((_e5817358276_
                                                           (gx#syntax-e
                                                            _tl5816858273_)))
                                                      (let ((_hd5817258280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5817358276_)))
                    (_tl5817158283_
                     (let () (declare (not safe)) (##cdr _e5817358276_))))
                (if (gx#stx-null? _tl5817158283_)
                    ((lambda (_L58286_
                              _L58288_
                              _L58289_
                              _L58290_
                              _L58291_
                              _L58292_
                              _L58293_
                              _L58294_
                              _L58295_)
                       (let ((__tmp60693 (gx#datum->syntax '#f 'let*))
                             (__tmp60462
                              (let ((__tmp60653
                                     (let ((__tmp60684
                                            (let ((__tmp60692
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp60685
                                                   (let ((__tmp60686
                                                          (let ((__tmp60691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp60687
                         (let ((__tmp60689
                                (let ((__tmp60690
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58291_ '()))))
                                  (declare (not safe))
                                  (cons _L58293_ __tmp60690)))
                               (__tmp60688
                                (let ()
                                  (declare (not safe))
                                  (cons _L58294_ '()))))
                           (declare (not safe))
                           (cons __tmp60689 __tmp60688))))
                    (declare (not safe))
                    (cons __tmp60691 __tmp60687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60686 '()))))
                                              (declare (not safe))
                                              (cons __tmp60692 __tmp60685)))
                                           (__tmp60654
                                            (let ((__tmp60678
                                                   (let ((__tmp60683
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp60679
                                                          (let ((__tmp60680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60682
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp60681
                                (let ()
                                  (declare (not safe))
                                  (cons _L58295_ '()))))
                           (declare (not safe))
                           (cons __tmp60682 __tmp60681))))
                    (declare (not safe))
                    (cons __tmp60680 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60683
                                                           __tmp60679)))
                                                  (__tmp60655
                                                   (let ((__tmp60670
                                                          (let ((__tmp60677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp60671
                         (let ((__tmp60672
                                (let ((__tmp60676
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp60673
                                       (let ((__tmp60675
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp60674
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp60675 __tmp60674))))
                                  (declare (not safe))
                                  (cons __tmp60676 __tmp60673))))
                           (declare (not safe))
                           (cons __tmp60672 '()))))
                    (declare (not safe))
                    (cons __tmp60677 __tmp60671)))
                 (__tmp60656
                  (let ((__tmp60657
                         (let ((__tmp60669 (gx#datum->syntax '#f 'start))
                               (__tmp60658
                                (let ((__tmp60659
                                       (let ((__tmp60668
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp60660
                                              (let ((__tmp60662
                                                     (let ((__tmp60667
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp60663
                                                            (let ((__tmp60666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60664
                           (let ((__tmp60665 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp60665 '()))))
                      (declare (not safe))
                      (cons __tmp60666 __tmp60664))))
               (declare (not safe))
               (cons __tmp60667 __tmp60663)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60661
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp60662 __tmp60661))))
                                         (declare (not safe))
                                         (cons __tmp60668 __tmp60660))))
                                  (declare (not safe))
                                  (cons __tmp60659 '()))))
                           (declare (not safe))
                           (cons __tmp60669 __tmp60658))))
                    (declare (not safe))
                    (cons __tmp60657 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60670
                                                           __tmp60656))))
                                              (declare (not safe))
                                              (cons __tmp60678 __tmp60655))))
                                       (declare (not safe))
                                       (cons __tmp60684 __tmp60654)))
                                    (__tmp60463
                                     (let ((__tmp60464
                                            (let ((__tmp60652
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60465
                                                   (let ((__tmp60651
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60466
                                                          (let ((__tmp60638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60647
                                (let ((__tmp60650
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp60648
                                       (let ((__tmp60649
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp60649 '()))))
                                  (declare (not safe))
                                  (cons __tmp60650 __tmp60648)))
                               (__tmp60639
                                (let ((__tmp60644
                                       (let ((__tmp60646
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp60645
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp60646 __tmp60645)))
                                      (__tmp60640
                                       (let ((__tmp60641
                                              (let ((__tmp60643
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp60642
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp60643 __tmp60642))))
                                         (declare (not safe))
                                         (cons __tmp60641 '()))))
                                  (declare (not safe))
                                  (cons __tmp60644 __tmp60640))))
                           (declare (not safe))
                           (cons __tmp60647 __tmp60639)))
                        (__tmp60467
                         (let ((__tmp60468
                                (let ((__tmp60637 (gx#datum->syntax '#f 'let))
                                      (__tmp60469
                                       (let ((__tmp60629
                                              (let ((__tmp60636
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp60630
                                                     (let ((__tmp60631
                                                            (let ((__tmp60635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp60632
                           (let ((__tmp60633
                                  (let ((__tmp60634
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp60634 '()))))
                             (declare (not safe))
                             (cons _L58295_ __tmp60633))))
                      (declare (not safe))
                      (cons __tmp60635 __tmp60632))))
               (declare (not safe))
               (cons __tmp60631 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60636 __tmp60630)))
                                             (__tmp60470
                                              (let ((__tmp60471
                                                     (let ((__tmp60628
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60472
                                                            (let ((__tmp60565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60621
                                  (let ((__tmp60627
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp60622
                                         (let ((__tmp60626
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp60623
                                                (let ((__tmp60624
                                                       (let ((__tmp60625
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp60625
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60624 '()))))
                                           (declare (not safe))
                                           (cons __tmp60626 __tmp60623))))
                                    (declare (not safe))
                                    (cons __tmp60627 __tmp60622)))
                                 (__tmp60566
                                  (let ((__tmp60567
                                         (let ((__tmp60620
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60568
                                                (let ((__tmp60619
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60569
                                                       (let ((__tmp60595
                                                              (let ((__tmp60618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60596
                             (let ((__tmp60612
                                    (let ((__tmp60617
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp60613
                                           (let ((__tmp60614
                                                  (let ((__tmp60616
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp60615
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60616
                                                          __tmp60615))))
                                             (declare (not safe))
                                             (cons _L58295_ __tmp60614))))
                                      (declare (not safe))
                                      (cons __tmp60617 __tmp60613)))
                                   (__tmp60597
                                    (let ((__tmp60600
                                           (let ((__tmp60611
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60601
                                                  (let ((__tmp60602
                                                         (let ((__tmp60606
                                                                (let ((__tmp60610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp60607
                               (let ((__tmp60609
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp60608
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60609 __tmp60608))))
                          (declare (not safe))
                          (cons __tmp60610 __tmp60607)))
                       (__tmp60603
                        (let ((__tmp60604
                               (let ((__tmp60605
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58289_ '()))))
                                 (declare (not safe))
                                 (cons _L58290_ __tmp60605))))
                          (declare (not safe))
                          (cons __tmp60604 '()))))
                   (declare (not safe))
                   (cons __tmp60606 __tmp60603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58295_
                                                          __tmp60602))))
                                             (declare (not safe))
                                             (cons __tmp60611 __tmp60601)))
                                          (__tmp60598
                                           (let ((__tmp60599
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58286_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60599 '()))))
                                      (declare (not safe))
                                      (cons __tmp60600 __tmp60598))))
                               (declare (not safe))
                               (cons __tmp60612 __tmp60597))))
                        (declare (not safe))
                        (cons __tmp60618 __tmp60596)))
                     (__tmp60570
                      (let ((__tmp60571
                             (let ((__tmp60594 (gx#datum->syntax '#f 'begin))
                                   (__tmp60572
                                    (let ((__tmp60588
                                           (let ((__tmp60593
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60589
                                                  (let ((__tmp60590
                                                         (let ((__tmp60592
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60591
                        (let () (declare (not safe)) (cons _L58291_ '()))))
                   (declare (not safe))
                   (cons __tmp60592 __tmp60591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58295_
                                                          __tmp60590))))
                                             (declare (not safe))
                                             (cons __tmp60593 __tmp60589)))
                                          (__tmp60573
                                           (let ((__tmp60576
                                                  (let ((__tmp60587
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60577
                                                         (let ((__tmp60578
                                                                (let ((__tmp60582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60586 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60583
                                      (let ((__tmp60585
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60584
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60585 __tmp60584))))
                                 (declare (not safe))
                                 (cons __tmp60586 __tmp60583)))
                              (__tmp60579
                               (let ((__tmp60580
                                      (let ((__tmp60581
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58289_ '()))))
                                        (declare (not safe))
                                        (cons _L58290_ __tmp60581))))
                                 (declare (not safe))
                                 (cons __tmp60580 '()))))
                          (declare (not safe))
                          (cons __tmp60582 __tmp60579))))
                   (declare (not safe))
                   (cons _L58295_ __tmp60578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60587
                                                          __tmp60577)))
                                                 (__tmp60574
                                                  (let ((__tmp60575
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60575 '()))))
                                             (declare (not safe))
                                             (cons __tmp60576 __tmp60574))))
                                      (declare (not safe))
                                      (cons __tmp60588 __tmp60573))))
                               (declare (not safe))
                               (cons __tmp60594 __tmp60572))))
                        (declare (not safe))
                        (cons __tmp60571 '()))))
                 (declare (not safe))
                 (cons __tmp60595 __tmp60570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60619
                                                        __tmp60569))))
                                           (declare (not safe))
                                           (cons __tmp60620 __tmp60568))))
                                    (declare (not safe))
                                    (cons __tmp60567 '()))))
                             (declare (not safe))
                             (cons __tmp60621 __tmp60566)))
                          (__tmp60473
                           (let ((__tmp60532
                                  (let ((__tmp60558
                                         (let ((__tmp60564
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60559
                                                (let ((__tmp60563
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60560
                                                       (let ((__tmp60561
                                                              (let ((__tmp60562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60562 '()))))
                 (declare (not safe))
                 (cons __tmp60561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60563
                                                        __tmp60560))))
                                           (declare (not safe))
                                           (cons __tmp60564 __tmp60559)))
                                        (__tmp60533
                                         (let ((__tmp60534
                                                (let ((__tmp60557
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60535
                                                       (let ((__tmp60549
                                                              (let ((__tmp60556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60550
                             (let ((__tmp60555 (gx#datum->syntax '#f 'start))
                                   (__tmp60551
                                    (let ((__tmp60554
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60552
                                           (let ((__tmp60553
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60553 '()))))
                                      (declare (not safe))
                                      (cons __tmp60554 __tmp60552))))
                               (declare (not safe))
                               (cons __tmp60555 __tmp60551))))
                        (declare (not safe))
                        (cons __tmp60556 __tmp60550)))
                     (__tmp60536
                      (let ((__tmp60544
                             (let ((__tmp60548 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60545
                                    (let ((__tmp60547
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60546
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60547 __tmp60546))))
                               (declare (not safe))
                               (cons __tmp60548 __tmp60545)))
                            (__tmp60537
                             (let ((__tmp60538
                                    (let ((__tmp60543
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60539
                                           (let ((__tmp60542
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60540
                                                  (let ((__tmp60541
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60541 '()))))
                                             (declare (not safe))
                                             (cons __tmp60542 __tmp60540))))
                                      (declare (not safe))
                                      (cons __tmp60543 __tmp60539))))
                               (declare (not safe))
                               (cons __tmp60538 '()))))
                        (declare (not safe))
                        (cons __tmp60544 __tmp60537))))
                 (declare (not safe))
                 (cons __tmp60549 __tmp60536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60557
                                                        __tmp60535))))
                                           (declare (not safe))
                                           (cons __tmp60534 '()))))
                                    (declare (not safe))
                                    (cons __tmp60558 __tmp60533)))
                                 (__tmp60474
                                  (let ((__tmp60498
                                         (let ((__tmp60528
                                                (let ((__tmp60529
                                                       (let ((__tmp60530
                                                              (let ((__tmp60531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60531 '()))))
                 (declare (not safe))
                 (cons _L58291_ __tmp60530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58292_ __tmp60529)))
                                               (__tmp60499
                                                (let ((__tmp60522
                                                       (let ((__tmp60527
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60523
                                                              (let ((__tmp60524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60526 (gx#datum->syntax '#f 'probe))
                                   (__tmp60525
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58291_ '()))))
                               (declare (not safe))
                               (cons __tmp60526 __tmp60525))))
                        (declare (not safe))
                        (cons _L58295_ __tmp60524))))
                 (declare (not safe))
                 (cons __tmp60527 __tmp60523)))
              (__tmp60500
               (let ((__tmp60501
                      (let ((__tmp60521 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60502
                             (let ((__tmp60503
                                    (let ((__tmp60516
                                           (let ((__tmp60520
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60517
                                                  (let ((__tmp60519
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60518
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60519
                                                          __tmp60518))))
                                             (declare (not safe))
                                             (cons __tmp60520 __tmp60517)))
                                          (__tmp60504
                                           (let ((__tmp60505
                                                  (let ((__tmp60506
                                                         (let ((__tmp60507
                                                                (let ((__tmp60515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60508
                               (let ((__tmp60509
                                      (let ((__tmp60510
                                             (let ((__tmp60514
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60511
                                                    (let ((__tmp60513
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60512
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60513
                                                            __tmp60512))))
                                               (declare (not safe))
                                               (cons __tmp60514 __tmp60511))))
                                        (declare (not safe))
                                        (cons __tmp60510 '()))))
                                 (declare (not safe))
                                 (cons _L58295_ __tmp60509))))
                          (declare (not safe))
                          (cons __tmp60515 __tmp60508))))
                   (declare (not safe))
                   (cons __tmp60507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58290_
                                                          __tmp60506))))
                                             (declare (not safe))
                                             (cons __tmp60505 '()))))
                                      (declare (not safe))
                                      (cons __tmp60516 __tmp60504))))
                               (declare (not safe))
                               (cons _L58295_ __tmp60503))))
                        (declare (not safe))
                        (cons __tmp60521 __tmp60502))))
                 (declare (not safe))
                 (cons __tmp60501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60522
                                                        __tmp60500))))
                                           (declare (not safe))
                                           (cons __tmp60528 __tmp60499)))
                                        (__tmp60475
                                         (let ((__tmp60476
                                                (let ((__tmp60497
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60477
                                                       (let ((__tmp60478
                                                              (let ((__tmp60496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60479
                             (let ((__tmp60488
                                    (let ((__tmp60495
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60489
                                           (let ((__tmp60494
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60490
                                                  (let ((__tmp60493
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60491
                                                         (let ((__tmp60492
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60493
                                                          __tmp60491))))
                                             (declare (not safe))
                                             (cons __tmp60494 __tmp60490))))
                                      (declare (not safe))
                                      (cons __tmp60495 __tmp60489)))
                                   (__tmp60480
                                    (let ((__tmp60483
                                           (let ((__tmp60487
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60484
                                                  (let ((__tmp60486
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60485
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60486
                                                          __tmp60485))))
                                             (declare (not safe))
                                             (cons __tmp60487 __tmp60484)))
                                          (__tmp60481
                                           (let ((__tmp60482
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60482 '()))))
                                      (declare (not safe))
                                      (cons __tmp60483 __tmp60481))))
                               (declare (not safe))
                               (cons __tmp60488 __tmp60480))))
                        (declare (not safe))
                        (cons __tmp60496 __tmp60479))))
                 (declare (not safe))
                 (cons __tmp60478 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60497
                                                        __tmp60477))))
                                           (declare (not safe))
                                           (cons __tmp60476 '()))))
                                    (declare (not safe))
                                    (cons __tmp60498 __tmp60475))))
                             (declare (not safe))
                             (cons __tmp60532 __tmp60474))))
                      (declare (not safe))
                      (cons __tmp60565 __tmp60473))))
               (declare (not safe))
               (cons __tmp60628 __tmp60472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60471 '()))))
                                         (declare (not safe))
                                         (cons __tmp60629 __tmp60470))))
                                  (declare (not safe))
                                  (cons __tmp60637 __tmp60469))))
                           (declare (not safe))
                           (cons __tmp60468 '()))))
                    (declare (not safe))
                    (cons __tmp60638 __tmp60467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60651
                                                           __tmp60466))))
                                              (declare (not safe))
                                              (cons __tmp60652 __tmp60465))))
                                       (declare (not safe))
                                       (cons __tmp60464 '()))))
                                (declare (not safe))
                                (cons __tmp60653 __tmp60463))))
                         (declare (not safe))
                         (cons __tmp60693 __tmp60462)))
                     _hd5817258280_
                     _hd5816958270_
                     _hd5816658260_
                     _hd5816358250_
                     _hd5816058240_
                     _hd5815758230_
                     _hd5815458220_
                     _hd5815158210_
                     _hd5814858200_)
                    (_g5813358179_ _g5813458183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5813358179_
                                                     _g5813458183_))))
                                            (_g5813358179_ _g5813458183_))))
                                    (_g5813358179_ _g5813458183_))))
                            (_g5813358179_ _g5813458183_))))
                    (_g5813358179_ _g5813458183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5813358179_
                                                     _g5813458183_))))
                                            (_g5813358179_ _g5813458183_))))
                                    (_g5813358179_ _g5813458183_))))
                            (_g5813358179_ _g5813458183_))))
                    (_g5813358179_ _g5813458183_)))))
        (_g5813258332_ _$stx58129_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58336_)
      (let* ((_g5834058374_
              (lambda (_g5834158370_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5834158370_)))
             (_g5833958485_
              (lambda (_g5834158378_)
                (if (gx#stx-pair? _g5834158378_)
                    (let ((_e5835058381_ (gx#syntax-e _g5834158378_)))
                      (let ((_hd5834958385_
                             (let ()
                               (declare (not safe))
                               (##car _e5835058381_)))
                            (_tl5834858388_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5835058381_))))
                        (if (gx#stx-pair? _tl5834858388_)
                            (let ((_e5835358391_ (gx#syntax-e _tl5834858388_)))
                              (let ((_hd5835258395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5835358391_)))
                                    (_tl5835158398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5835358391_))))
                                (if (gx#stx-pair? _tl5835158398_)
                                    (let ((_e5835658401_
                                           (gx#syntax-e _tl5835158398_)))
                                      (let ((_hd5835558405_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5835658401_)))
                                            (_tl5835458408_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5835658401_))))
                                        (if (gx#stx-pair? _tl5835458408_)
                                            (let ((_e5835958411_
                                                   (gx#syntax-e
                                                    _tl5835458408_)))
                                              (let ((_hd5835858415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5835958411_)))
                                                    (_tl5835758418_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5835958411_))))
                                                (if (gx#stx-pair?
                                                     _tl5835758418_)
                                                    (let ((_e5836258421_
                                                           (gx#syntax-e
                                                            _tl5835758418_)))
                                                      (let ((_hd5836158425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5836258421_)))
                    (_tl5836058428_
                     (let () (declare (not safe)) (##cdr _e5836258421_))))
                (if (gx#stx-pair? _tl5836058428_)
                    (let ((_e5836558431_ (gx#syntax-e _tl5836058428_)))
                      (let ((_hd5836458435_
                             (let ()
                               (declare (not safe))
                               (##car _e5836558431_)))
                            (_tl5836358438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5836558431_))))
                        (if (gx#stx-pair? _tl5836358438_)
                            (let ((_e5836858441_ (gx#syntax-e _tl5836358438_)))
                              (let ((_hd5836758445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5836858441_)))
                                    (_tl5836658448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5836858441_))))
                                (if (gx#stx-null? _tl5836658448_)
                                    ((lambda (_L58451_
                                              _L58453_
                                              _L58454_
                                              _L58455_
                                              _L58456_
                                              _L58457_)
                                       (let ((__tmp60855
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60694
                                              (let ((__tmp60815
                                                     (let ((__tmp60846
                                                            (let ((__tmp60854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60847
                           (let ((__tmp60848
                                  (let ((__tmp60853
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60849
                                         (let ((__tmp60851
                                                (let ((__tmp60852
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58453_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58455_ __tmp60852)))
                                               (__tmp60850
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58456_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60851 __tmp60850))))
                                    (declare (not safe))
                                    (cons __tmp60853 __tmp60849))))
                             (declare (not safe))
                             (cons __tmp60848 '()))))
                      (declare (not safe))
                      (cons __tmp60854 __tmp60847)))
                   (__tmp60816
                    (let ((__tmp60840
                           (let ((__tmp60845 (gx#datum->syntax '#f 'size))
                                 (__tmp60841
                                  (let ((__tmp60842
                                         (let ((__tmp60844
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60843
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58457_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60844 __tmp60843))))
                                    (declare (not safe))
                                    (cons __tmp60842 '()))))
                             (declare (not safe))
                             (cons __tmp60845 __tmp60841)))
                          (__tmp60817
                           (let ((__tmp60832
                                  (let ((__tmp60839
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60833
                                         (let ((__tmp60834
                                                (let ((__tmp60838
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60835
                                                       (let ((__tmp60837
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60836
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60837 __tmp60836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60838
                                                        __tmp60835))))
                                           (declare (not safe))
                                           (cons __tmp60834 '()))))
                                    (declare (not safe))
                                    (cons __tmp60839 __tmp60833)))
                                 (__tmp60818
                                  (let ((__tmp60819
                                         (let ((__tmp60831
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60820
                                                (let ((__tmp60821
                                                       (let ((__tmp60830
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60822
                                                              (let ((__tmp60824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60829
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60825
                                    (let ((__tmp60828
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60826
                                           (let ((__tmp60827
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60827 '()))))
                                      (declare (not safe))
                                      (cons __tmp60828 __tmp60826))))
                               (declare (not safe))
                               (cons __tmp60829 __tmp60825)))
                            (__tmp60823
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60824 __tmp60823))))
                 (declare (not safe))
                 (cons __tmp60830 __tmp60822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60821 '()))))
                                           (declare (not safe))
                                           (cons __tmp60831 __tmp60820))))
                                    (declare (not safe))
                                    (cons __tmp60819 '()))))
                             (declare (not safe))
                             (cons __tmp60832 __tmp60818))))
                      (declare (not safe))
                      (cons __tmp60840 __tmp60817))))
               (declare (not safe))
               (cons __tmp60846 __tmp60816)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60695
                                                     (let ((__tmp60696
                                                            (let ((__tmp60814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60697
                           (let ((__tmp60813 (gx#datum->syntax '#f 'loop))
                                 (__tmp60698
                                  (let ((__tmp60804
                                         (let ((__tmp60809
                                                (let ((__tmp60812
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60810
                                                       (let ((__tmp60811
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60811
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60812
                                                        __tmp60810)))
                                               (__tmp60805
                                                (let ((__tmp60806
                                                       (let ((__tmp60808
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60807
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60808 __tmp60807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60806 '()))))
                                           (declare (not safe))
                                           (cons __tmp60809 __tmp60805)))
                                        (__tmp60699
                                         (let ((__tmp60700
                                                (let ((__tmp60803
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60701
                                                       (let ((__tmp60795
                                                              (let ((__tmp60802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60796
                             (let ((__tmp60797
                                    (let ((__tmp60801
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60798
                                           (let ((__tmp60799
                                                  (let ((__tmp60800
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60800 '()))))
                                             (declare (not safe))
                                             (cons _L58457_ __tmp60799))))
                                      (declare (not safe))
                                      (cons __tmp60801 __tmp60798))))
                               (declare (not safe))
                               (cons __tmp60797 '()))))
                        (declare (not safe))
                        (cons __tmp60802 __tmp60796)))
                     (__tmp60702
                      (let ((__tmp60703
                             (let ((__tmp60794 (gx#datum->syntax '#f 'cond))
                                   (__tmp60704
                                    (let ((__tmp60783
                                           (let ((__tmp60787
                                                  (let ((__tmp60793
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60788
                                                         (let ((__tmp60792
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60789
                        (let ((__tmp60790
                               (let ((__tmp60791
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60791 '()))))
                          (declare (not safe))
                          (cons __tmp60790 '()))))
                   (declare (not safe))
                   (cons __tmp60792 __tmp60789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60793
                                                          __tmp60788)))
                                                 (__tmp60784
                                                  (let ((__tmp60785
                                                         (let ((__tmp60786
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp60786 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60785 '()))))
                                             (declare (not safe))
                                             (cons __tmp60787 __tmp60784)))
                                          (__tmp60705
                                           (let ((__tmp60757
                                                  (let ((__tmp60776
                                                         (let ((__tmp60782
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60777
                        (let ((__tmp60781 (gx#datum->syntax '#f 'k))
                              (__tmp60778
                               (let ((__tmp60779
                                      (let ((__tmp60780
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60780 '()))))
                                 (declare (not safe))
                                 (cons __tmp60779 '()))))
                          (declare (not safe))
                          (cons __tmp60781 __tmp60778))))
                   (declare (not safe))
                   (cons __tmp60782 __tmp60777)))
                (__tmp60758
                 (let ((__tmp60759
                        (let ((__tmp60775 (gx#datum->syntax '#f 'loop))
                              (__tmp60760
                               (let ((__tmp60767
                                      (let ((__tmp60774
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60768
                                             (let ((__tmp60773
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60769
                                                    (let ((__tmp60772
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60770
                                                           (let ((__tmp60771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60771 '()))))
              (declare (not safe))
              (cons __tmp60772 __tmp60770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60773 __tmp60769))))
                                        (declare (not safe))
                                        (cons __tmp60774 __tmp60768)))
                                     (__tmp60761
                                      (let ((__tmp60762
                                             (let ((__tmp60766
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60763
                                                    (let ((__tmp60765
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60764
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60765
                                                            __tmp60764))))
                                               (declare (not safe))
                                               (cons __tmp60766 __tmp60763))))
                                        (declare (not safe))
                                        (cons __tmp60762 '()))))
                                 (declare (not safe))
                                 (cons __tmp60767 __tmp60761))))
                          (declare (not safe))
                          (cons __tmp60775 __tmp60760))))
                   (declare (not safe))
                   (cons __tmp60759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60776
                                                          __tmp60758)))
                                                 (__tmp60706
                                                  (let ((__tmp60728
                                                         (let ((__tmp60753
                                                                (let ((__tmp60754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60755
                                      (let ((__tmp60756
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60756 '()))))
                                 (declare (not safe))
                                 (cons _L58453_ __tmp60755))))
                          (declare (not safe))
                          (cons _L58454_ __tmp60754)))
                       (__tmp60729
                        (let ((__tmp60745
                               (let ((__tmp60752
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp60746
                                      (let ((__tmp60747
                                             (let ((__tmp60751
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp60748
                                                    (let ((__tmp60749
                                                           (let ((__tmp60750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp60750 '()))))
              (declare (not safe))
              (cons __tmp60749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60751 __tmp60748))))
                                        (declare (not safe))
                                        (cons _L58457_ __tmp60747))))
                                 (declare (not safe))
                                 (cons __tmp60752 __tmp60746)))
                              (__tmp60730
                               (let ((__tmp60733
                                      (let ((__tmp60744
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp60734
                                             (let ((__tmp60735
                                                    (let ((__tmp60739
                                                           (let ((__tmp60743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60740
                          (let ((__tmp60742 (gx#datum->syntax '#f 'probe))
                                (__tmp60741
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60742 __tmp60741))))
                     (declare (not safe))
                     (cons __tmp60743 __tmp60740)))
                  (__tmp60736
                   (let ((__tmp60737
                          (let ((__tmp60738
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp60738 '()))))
                     (declare (not safe))
                     (cons __tmp60737 '()))))
              (declare (not safe))
              (cons __tmp60739 __tmp60736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58457_ __tmp60735))))
                                        (declare (not safe))
                                        (cons __tmp60744 __tmp60734)))
                                     (__tmp60731
                                      (let ((__tmp60732
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58451_ '()))))
                                        (declare (not safe))
                                        (cons __tmp60732 '()))))
                                 (declare (not safe))
                                 (cons __tmp60733 __tmp60731))))
                          (declare (not safe))
                          (cons __tmp60745 __tmp60730))))
                   (declare (not safe))
                   (cons __tmp60753 __tmp60729)))
                (__tmp60707
                 (let ((__tmp60708
                        (let ((__tmp60727 (gx#datum->syntax '#f 'else))
                              (__tmp60709
                               (let ((__tmp60710
                                      (let ((__tmp60726
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60711
                                             (let ((__tmp60718
                                                    (let ((__tmp60725
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60719
                                                           (let ((__tmp60724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60720
                          (let ((__tmp60723 (gx#datum->syntax '#f 'i))
                                (__tmp60721
                                 (let ((__tmp60722
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60722 '()))))
                            (declare (not safe))
                            (cons __tmp60723 __tmp60721))))
                     (declare (not safe))
                     (cons __tmp60724 __tmp60720))))
              (declare (not safe))
              (cons __tmp60725 __tmp60719)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60712
                                                    (let ((__tmp60713
                                                           (let ((__tmp60717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60714
                          (let ((__tmp60716 (gx#datum->syntax '#f 'i))
                                (__tmp60715
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60716 __tmp60715))))
                     (declare (not safe))
                     (cons __tmp60717 __tmp60714))))
              (declare (not safe))
              (cons __tmp60713 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60718 __tmp60712))))
                                        (declare (not safe))
                                        (cons __tmp60726 __tmp60711))))
                                 (declare (not safe))
                                 (cons __tmp60710 '()))))
                          (declare (not safe))
                          (cons __tmp60727 __tmp60709))))
                   (declare (not safe))
                   (cons __tmp60708 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60728
                                                          __tmp60707))))
                                             (declare (not safe))
                                             (cons __tmp60757 __tmp60706))))
                                      (declare (not safe))
                                      (cons __tmp60783 __tmp60705))))
                               (declare (not safe))
                               (cons __tmp60794 __tmp60704))))
                        (declare (not safe))
                        (cons __tmp60703 '()))))
                 (declare (not safe))
                 (cons __tmp60795 __tmp60702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60803
                                                        __tmp60701))))
                                           (declare (not safe))
                                           (cons __tmp60700 '()))))
                                    (declare (not safe))
                                    (cons __tmp60804 __tmp60699))))
                             (declare (not safe))
                             (cons __tmp60813 __tmp60698))))
                      (declare (not safe))
                      (cons __tmp60814 __tmp60697))))
               (declare (not safe))
               (cons __tmp60696 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60815 __tmp60695))))
                                         (declare (not safe))
                                         (cons __tmp60855 __tmp60694)))
                                     _hd5836758445_
                                     _hd5836458435_
                                     _hd5836158425_
                                     _hd5835858415_
                                     _hd5835558405_
                                     _hd5835258395_)
                                    (_g5834058374_ _g5834158378_))))
                            (_g5834058374_ _g5834158378_))))
                    (_g5834058374_ _g5834158378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5834058374_
                                                     _g5834158378_))))
                                            (_g5834058374_ _g5834158378_))))
                                    (_g5834058374_ _g5834158378_))))
                            (_g5834058374_ _g5834158378_))))
                    (_g5834058374_ _g5834158378_)))))
        (_g5833958485_ _$stx58336_)))))
