(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14887_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14893_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14906_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14908_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14910_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14912_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14914_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14916_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14924_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14926_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14928_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14930_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14932_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14934_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14936_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14938_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14942_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14943_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14944_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14953_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14955_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14959_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14961_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14963_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14965_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13104_)
        (let* ((_g1310813132_
                (lambda (_g1310913128_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1310913128_)))
               (_g1310713218_
                (lambda (_g1310913136_)
                  (if (gx#stx-pair? _g1310913136_)
                      (let ((_e1311413139_ (gx#syntax-e _g1310913136_)))
                        (let ((_hd1311313143_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1311413139_)))
                              (_tl1311213146_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1311413139_))))
                          (if (gx#stx-pair? _tl1311213146_)
                              (let ((_e1311713149_
                                     (gx#syntax-e _tl1311213146_)))
                                (let ((_hd1311613153_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1311713149_)))
                                      (_tl1311513156_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1311713149_))))
                                  (if (gx#stx-pair/null? _tl1311513156_)
                                      (let ((_g14783_
                                             (gx#syntax-split-splice
                                              _tl1311513156_
                                              '0)))
                                        (begin
                                          (let ((_g14784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14783_)
                                                       (##vector-length
                                                        _g14783_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14784_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14784_)))
                                          (let ((_target1311813159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14783_ 0)))
                                                (_tl1312013162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14783_ 1))))
                                            (if (gx#stx-null? _tl1312013162_)
                                                (letrec ((_loop1312113165_
                                                          (lambda (_hd1311913169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1312513172_)
                    (if (gx#stx-pair? _hd1311913169_)
                        (let ((_e1312213175_ (gx#syntax-e _hd1311913169_)))
                          (let ((_lp-hd1312313179_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1312213175_)))
                                (_lp-tl1312413182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1312213175_))))
                            (_loop1312113165_
                             _lp-tl1312413182_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1312313179_ _body1312513172_)))))
                        (let ((_body1312613185_ (reverse _body1312513172_)))
                          ((lambda (_L13189_ _L13191_)
                             (let ((__tmp14796 (gx#datum->syntax '#f 'let))
                                   (__tmp14785
                                    (let ((__tmp14793
                                           (let ((__tmp14795
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14794
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13191_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14795 __tmp14794)))
                                          (__tmp14786
                                           (let ((__tmp14787
                                                  (let ((__tmp14792
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14788
                                                         (let ((__tmp14791
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14789
                        (let ((__tmp14790
                               (lambda (_g1320913212_ _g1321013215_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1320913212_ _g1321013215_)))))
                          (declare (not safe))
                          (foldr1 __tmp14790 '() _L13189_))))
                   (declare (not safe))
                   (cons __tmp14791 __tmp14789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14792
                                                          __tmp14788))))
                                             (declare (not safe))
                                             (cons __tmp14787 '()))))
                                      (declare (not safe))
                                      (cons __tmp14793 __tmp14786))))
                               (declare (not safe))
                               (cons __tmp14796 __tmp14785)))
                           _body1312613185_
                           _hd1311613153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1312113165_
                                                   _target1311813159_
                                                   '()))
                                                (_g1310813132_
                                                 _g1310913136_)))))
                                      (_g1310813132_ _g1310913136_))))
                              (_g1310813132_ _g1310913136_))))
                      (_g1310813132_ _g1310913136_)))))
          (_g1310713218_ _$stx13104_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13223_)
        (letrec ((_generate113226_
                  (lambda (_hd13767_ _tgt13769_ _K13770_ _E13771_ _kws13772_)
                    (let* ((_g1377413782_
                            (lambda (_g1377513778_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1377513778_)))
                           (_g1377314209_
                            (lambda (_g1377513786_)
                              ((lambda (_L13789_)
                                 (let ()
                                   (let* ((___stx1468614687_ _hd13767_)
                                          (_g1380313817_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx1468614687_))))
                                     (let ((___kont1468914690_
                                            (lambda (_L14031_ _L14033_)
                                              (let* ((_g1404414052_
                                                      (lambda (_g1404514048_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1404514048_)))
                                                     (_g1404314201_
                                                      (lambda (_g1404514056_)
                                                        ((lambda (_L14059_)
                                                           (let ()
                                                             (let* ((_g1407114079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1407214075_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1407214075_)))
                            (_g1407014197_
                             (lambda (_g1407214083_)
                               ((lambda (_L14086_)
                                  (let ()
                                    (let* ((_g1409914107_
                                            (lambda (_g1410014103_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1410014103_)))
                                           (_g1409814193_
                                            (lambda (_g1410014111_)
                                              ((lambda (_L14114_)
                                                 (let ()
                                                   (let* ((_g1412714135_
                                                           (lambda (_g1412814131_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1412814131_)))
                                                          (_g1412614189_
                                                           (lambda (_g1412814139_)
                                                             ((lambda (_L14142_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1415514163_
                                  (lambda (_g1415614159_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1415614159_)))
                                 (_g1415414185_
                                  (lambda (_g1415614167_)
                                    ((lambda (_L14170_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14825
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14797
                                                  (let ((__tmp14822
                                                         (let ((__tmp14824
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14823
                        (let () (declare (not safe)) (cons _L13789_ '()))))
                   (declare (not safe))
                   (cons __tmp14824 __tmp14823)))
                (__tmp14798
                 (let ((__tmp14800
                        (let ((__tmp14821 (gx#datum->syntax '#f 'let*))
                              (__tmp14801
                               (let ((__tmp14803
                                      (let ((__tmp14816
                                             (let ((__tmp14817
                                                    (let ((__tmp14818
                                                           (let ((__tmp14820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14819
                          (let () (declare (not safe)) (cons _L13789_ '()))))
                     (declare (not safe))
                     (cons __tmp14820 __tmp14819))))
              (declare (not safe))
              (cons __tmp14818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14059_ __tmp14817)))
                                            (__tmp14804
                                             (let ((__tmp14811
                                                    (let ((__tmp14812
                                                           (let ((__tmp14813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14815 (gx#datum->syntax '#f '##car))
                                (__tmp14814
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14059_ '()))))
                            (declare (not safe))
                            (cons __tmp14815 __tmp14814))))
                     (declare (not safe))
                     (cons __tmp14813 '()))))
              (declare (not safe))
              (cons _L14086_ __tmp14812)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14805
                                                    (let ((__tmp14806
                                                           (let ((__tmp14807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14808
                                 (let ((__tmp14810
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14809
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14059_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14810 __tmp14809))))
                            (declare (not safe))
                            (cons __tmp14808 '()))))
                     (declare (not safe))
                     (cons _L14114_ __tmp14807))))
              (declare (not safe))
              (cons __tmp14806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14811 __tmp14805))))
                                        (declare (not safe))
                                        (cons __tmp14816 __tmp14804)))
                                     (__tmp14802
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14142_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14803 __tmp14802))))
                          (declare (not safe))
                          (cons __tmp14821 __tmp14801)))
                       (__tmp14799
                        (let () (declare (not safe)) (cons _L14170_ '()))))
                   (declare (not safe))
                   (cons __tmp14800 __tmp14799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14822
                                                          __tmp14798))))
                                             (declare (not safe))
                                             (cons __tmp14825 __tmp14797)))))
                                     _g1415614167_))))
                            (_g1415414185_ _E13771_))))
                      _g1412814139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1412614189_
                                                      (_generate113226_
                                                       _L14033_
                                                       _L14086_
                                                       (_generate113226_
                                                        _L14031_
                                                        _L14114_
                                                        _K13770_
                                                        _E13771_
                                                        _kws13772_)
                                                       _E13771_
                                                       _kws13772_)))))
                                               _g1410014111_))))
                                      (_g1409814193_ (gx#genident '$tl)))))
                                _g1407214083_))))
                       (_g1407014197_ (gx#genident '$hd)))))
                 _g1404514056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1404314201_
                                                 (gx#genident '$tgt)))))
                                           (___kont1469114692_
                                            (lambda (_L13906_)
                                              (if (gx#underscore? _L13906_)
                                                  _K13770_
                                                  (if (let ((__tmp14854
                                                             (lambda (_g1391413916_)
                                                               (gx#bound-identifier=?
                                                                _g1391413916_
                                                                _L13906_)))
                                                            (__tmp14853
                                                             (gx#syntax->list
                                                              _kws13772_)))
                                                        (declare (not safe))
                                                        (find __tmp14854
                                                              __tmp14853))
                                                      (let* ((_g1392013935_
                                                              (lambda (_g1392113931_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1392113931_)))
                     (_g1391913980_
                      (lambda (_g1392113939_)
                        (if (gx#stx-pair? _g1392113939_)
                            (let ((_e1392613942_ (gx#syntax-e _g1392113939_)))
                              (let ((_hd1392513946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1392613942_)))
                                    (_tl1392413949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1392613942_))))
                                (if (gx#stx-pair? _tl1392413949_)
                                    (let ((_e1392913952_
                                           (gx#syntax-e _tl1392413949_)))
                                      (let ((_hd1392813956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1392913952_)))
                                            (_tl1392713959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1392913952_))))
                                        (if (gx#stx-null? _tl1392713959_)
                                            ((lambda (_L13962_ _L13964_)
                                               (let ()
                                                 (let ((__tmp14852
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14832
                                                        (let ((__tmp14835
                                                               (let ((__tmp14851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14836
                              (let ((__tmp14848
                                     (let ((__tmp14850
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14849
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13789_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14850 __tmp14849)))
                                    (__tmp14837
                                     (let ((__tmp14838
                                            (let ((__tmp14847
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14839
                                                   (let ((__tmp14844
                                                          (let ((__tmp14846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14845
                         (let () (declare (not safe)) (cons _L13789_ '()))))
                    (declare (not safe))
                    (cons __tmp14846 __tmp14845)))
                 (__tmp14840
                  (let ((__tmp14841
                         (let ((__tmp14843 (gx#datum->syntax '#f 'quote))
                               (__tmp14842
                                (let ()
                                  (declare (not safe))
                                  (cons _L13906_ '()))))
                           (declare (not safe))
                           (cons __tmp14843 __tmp14842))))
                    (declare (not safe))
                    (cons __tmp14841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14844
                                                           __tmp14840))))
                                              (declare (not safe))
                                              (cons __tmp14847 __tmp14839))))
                                       (declare (not safe))
                                       (cons __tmp14838 '()))))
                                (declare (not safe))
                                (cons __tmp14848 __tmp14837))))
                         (declare (not safe))
                         (cons __tmp14851 __tmp14836)))
                      (__tmp14833
                       (let ((__tmp14834
                              (let ()
                                (declare (not safe))
                                (cons _L13962_ '()))))
                         (declare (not safe))
                         (cons _L13964_ __tmp14834))))
                  (declare (not safe))
                  (cons __tmp14835 __tmp14833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14852
                                                         __tmp14832))))
                                             _hd1392813956_
                                             _hd1392513946_)
                                            (_g1392013935_ _g1392113939_))))
                                    (_g1392013935_ _g1392113939_))))
                            (_g1392013935_ _g1392113939_)))))
                (_g1391913980_ (list _K13770_ _E13771_)))
              (let* ((_g1398413992_
                      (lambda (_g1398513988_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1398513988_)))
                     (_g1398314010_
                      (lambda (_g1398513996_)
                        ((lambda (_L13999_)
                           (let ()
                             (let ((__tmp14831 (gx#datum->syntax '#f 'let))
                                   (__tmp14826
                                    (let ((__tmp14828
                                           (let ((__tmp14829
                                                  (let ((__tmp14830
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13906_
                                                          __tmp14830))))
                                             (declare (not safe))
                                             (cons __tmp14829 '())))
                                          (__tmp14827
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13999_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14828 __tmp14827))))
                               (declare (not safe))
                               (cons __tmp14831 __tmp14826))))
                         _g1398513996_))))
                (_g1398314010_ _K13770_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1469314694_
                                            (lambda (_L13824_)
                                              (let* ((_g1383513850_
                                                      (lambda (_g1383613846_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1383613846_)))
                                                     (_g1383413895_
                                                      (lambda (_g1383613854_)
                                                        (if (gx#stx-pair?
                                                             _g1383613854_)
                                                            (let ((_e1384113857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1383613854_)))
                      (let ((_hd1384013861_
                             (let ()
                               (declare (not safe))
                               (##car _e1384113857_)))
                            (_tl1383913864_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1384113857_))))
                        (if (gx#stx-pair? _tl1383913864_)
                            (let ((_e1384413867_ (gx#syntax-e _tl1383913864_)))
                              (let ((_hd1384313871_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1384413867_)))
                                    (_tl1384213874_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1384413867_))))
                                (if (gx#stx-null? _tl1384213874_)
                                    ((lambda (_L13877_ _L13879_)
                                       (let ()
                                         (let ((__tmp14868
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14855
                                                (let ((__tmp14858
                                                       (let ((__tmp14867
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14859
                                                              (let ((__tmp14864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14866 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14865
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13789_ '()))))
                               (declare (not safe))
                               (cons __tmp14866 __tmp14865)))
                            (__tmp14860
                             (let ((__tmp14861
                                    (let ((__tmp14863
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14862
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13824_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14863 __tmp14862))))
                               (declare (not safe))
                               (cons __tmp14861 '()))))
                        (declare (not safe))
                        (cons __tmp14864 __tmp14860))))
                 (declare (not safe))
                 (cons __tmp14867 __tmp14859)))
              (__tmp14856
               (let ((__tmp14857
                      (let () (declare (not safe)) (cons _L13877_ '()))))
                 (declare (not safe))
                 (cons _L13879_ __tmp14857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14858
                                                        __tmp14856))))
                                           (declare (not safe))
                                           (cons __tmp14868 __tmp14855))))
                                     _hd1384313871_
                                     _hd1384013861_)
                                    (_g1383513850_ _g1383613854_))))
                            (_g1383513850_ _g1383613854_))))
                    (_g1383513850_ _g1383613854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1383413895_
                                                 (list _K13770_ _E13771_))))))
                                       (let ((_g1380114014_
                                              (lambda ()
                                                (let ((_L13906_
                                                       ___stx1468614687_))
                                                  (if (gx#identifier? _L13906_)
                                                      (___kont1469114692_
                                                       _L13906_)
                                                      (___kont1469314694_
                                                       ___stx1468614687_))))))
                                         (if (gx#stx-pair? ___stx1468614687_)
                                             (let ((_e1380914021_
                                                    (gx#syntax-e
                                                     ___stx1468614687_)))
                                               (let ((_tl1380714028_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1380914021_)))
                                                     (_hd1380814025_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1380914021_))))
                                                 (___kont1468914690_
                                                  _tl1380714028_
                                                  _hd1380814025_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1380114014_))))))))
                               _g1377513786_))))
                      (_g1377314209_ _tgt13769_)))))
          (let* ((_g1322913257_
                  (lambda (_g1323013253_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1323013253_)))
                 (_g1322813763_
                  (lambda (_g1323013261_)
                    (if (gx#stx-pair? _g1323013261_)
                        (let ((_e1323613264_ (gx#syntax-e _g1323013261_)))
                          (let ((_hd1323513268_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1323613264_)))
                                (_tl1323413271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1323613264_))))
                            (if (gx#stx-pair? _tl1323413271_)
                                (let ((_e1323913274_
                                       (gx#syntax-e _tl1323413271_)))
                                  (let ((_hd1323813278_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1323913274_)))
                                        (_tl1323713281_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1323913274_))))
                                    (if (gx#stx-pair? _tl1323713281_)
                                        (let ((_e1324213284_
                                               (gx#syntax-e _tl1323713281_)))
                                          (let ((_hd1324113288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1324213284_)))
                                                (_tl1324013291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1324213284_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1324013291_)
                                                (let ((_g14869_
                                                       (gx#syntax-split-splice
                                                        _tl1324013291_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14869_)
                         (##vector-length _g14869_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14870_ 2)))
                  (error "Context expects 2 values" _g14870_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1324313294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14869_
                                                              0)))
                                                          (_tl1324513297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14869_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1324513297_)
                                                          (letrec ((_loop1324613300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1324413304_ _clause1325013307_)
                              (if (gx#stx-pair? _hd1324413304_)
                                  (let ((_e1324713310_
                                         (gx#syntax-e _hd1324413304_)))
                                    (let ((_lp-hd1324813314_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1324713310_)))
                                          (_lp-tl1324913317_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1324713310_))))
                                      (_loop1324613300_
                                       _lp-tl1324913317_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1324813314_
                                               _clause1325013307_)))))
                                  (let ((_clause1325113320_
                                         (reverse _clause1325013307_)))
                                    ((lambda (_L13324_ _L13326_ _L13327_)
                                       (let _recur13349_ ((_rest13352_
                                                           (let ((__tmp14892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1375413757_ _g1375513760_)
                            (let ()
                              (declare (not safe))
                              (cons _g1375413757_ _g1375513760_)))))
                     (declare (not safe))
                     (foldr1 __tmp14892 '() _L13324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1335413363_ _rest13352_)
                                                (_E1335713369_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1335413363_))))
                                           (let ((_K1335913739_
                                                  (lambda (_rest13385_
                                                           _hd13387_)
                                                    (let* ((_g1338913397_
                                                            (lambda (_g1339013393_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1339013393_)))
                                                           (_g1338813735_
                                                            (lambda (_g1339013401_)
                                                              ((lambda (_L13404_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1342213430_
                                   (lambda (_g1342313426_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1342313426_)))
                                  (_g1342113731_
                                   (lambda (_g1342313434_)
                                     ((lambda (_L13437_)
                                        (let ()
                                          (let* ((_g1345013458_
                                                  (lambda (_g1345113454_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1345113454_)))
                                                 (_g1344913727_
                                                  (lambda (_g1345113462_)
                                                    ((lambda (_L13465_)
                                                       (let ()
                                                         (let* ((_g1347813486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1347913482_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1347913482_)))
                        (_g1347713508_
                         (lambda (_g1347913490_)
                           ((lambda (_L13493_)
                              (let ()
                                (let ()
                                  (let ((__tmp14879
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14871
                                         (let ((__tmp14873
                                                (let ((__tmp14874
                                                       (let ((__tmp14875
                                                              (let ((__tmp14878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14876
                             (let ((__tmp14877
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13465_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14877))))
                        (declare (not safe))
                        (cons __tmp14878 __tmp14876))))
                 (declare (not safe))
                 (cons __tmp14875 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13404_ __tmp14874)))
                                               (__tmp14872
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13493_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14873 __tmp14872))))
                                    (declare (not safe))
                                    (cons __tmp14879 __tmp14871)))))
                            _g1347913490_))))
                   (_g1347713508_
                    (let* ((___stx1470414705_ _hd13387_)
                           (_g1351413554_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx1470414705_))))
                      (let ((___kont1470714708_
                             (lambda (_L13700_)
                               (let ((__tmp14882 (gx#datum->syntax '#f 'begin))
                                     (__tmp14880
                                      (let ((__tmp14881
                                             (lambda (_g1371413717_
                                                      _g1371513720_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1371413717_
                                                       _g1371513720_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14881 '() _L13700_))))
                                 (declare (not safe))
                                 (cons __tmp14882 __tmp14880))))
                            (___kont1471114712_
                             (lambda (_L13638_ _L13640_)
                               (_generate113226_
                                _L13640_
                                _L13327_
                                _L13638_
                                _L13437_
                                _L13326_)))
                            (___kont1471314714_
                             (lambda (_L13591_ _L13593_ _L13594_)
                               (_generate113226_
                                _L13594_
                                _L13327_
                                (let ((__tmp14886 (gx#datum->syntax '#f 'if))
                                      (__tmp14883
                                       (let ((__tmp14884
                                              (let ((__tmp14885
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13437_ '()))))
                                                (declare (not safe))
                                                (cons _L13591_ __tmp14885))))
                                         (declare (not safe))
                                         (cons _L13593_ __tmp14884))))
                                  (declare (not safe))
                                  (cons __tmp14886 __tmp14883))
                                _L13437_
                                _L13326_))))
                        (let ((___match1473314734_
                               (lambda (_e1351913660_
                                        _hd1351813664_
                                        _tl1351713667_
                                        ___splice1470914710_
                                        _target1352013670_
                                        _tl1352213673_)
                                 (letrec ((_loop1352313676_
                                           (lambda (_hd1352113680_
                                                    _expr1352713683_)
                                             (if (gx#stx-pair? _hd1352113680_)
                                                 (let ((_e1352413686_
                                                        (gx#syntax-e
                                                         _hd1352113680_)))
                                                   (let ((_lp-tl1352613693_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1352413686_)))
                                                         (_lp-hd1352513690_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1352413686_))))
                                                     (_loop1352313676_
                                                      _lp-tl1352613693_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1352513690_
                                                              _expr1352713683_)))))
                                                 (let ((_expr1352813696_
                                                        (reverse _expr1352713683_)))
                                                   (___kont1470714708_
                                                    _expr1352813696_))))))
                                   (_loop1352313676_
                                    _target1352013670_
                                    '())))))
                          (if (gx#stx-pair? ___stx1470414705_)
                              (let ((_e1351913660_
                                     (gx#syntax-e ___stx1470414705_)))
                                (let ((_tl1351713667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1351913660_)))
                                      (_hd1351813664_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1351913660_))))
                                  (if (gx#identifier? _hd1351813664_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14887_|
                                           _hd1351813664_)
                                          (if (gx#stx-pair/null?
                                               _tl1351713667_)
                                              (let ((___splice1470914710_
                                                     (gx#syntax-split-splice
                                                      _tl1351713667_
                                                      '0)))
                                                (let ((_tl1352213673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1470914710_
                                                          '1)))
                                                      (_target1352013670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1470914710_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1352213673_)
                                                      (___match1473314734_
                                                       _e1351913660_
                                                       _hd1351813664_
                                                       _tl1351713667_
                                                       ___splice1470914710_
                                                       _target1352013670_
                                                       _tl1352213673_)
                                                      (if (gx#stx-pair?
                                                           _tl1351713667_)
                                                          (let ((_e1353613628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1351713667_)))
                    (let ((_tl1353413635_
                           (let () (declare (not safe)) (##cdr _e1353613628_)))
                          (_hd1353513632_
                           (let ()
                             (declare (not safe))
                             (##car _e1353613628_))))
                      (if (gx#stx-null? _tl1353413635_)
                          (___kont1471114712_ _hd1353513632_ _hd1351813664_)
                          (if (gx#stx-pair? _tl1353413635_)
                              (let ((_e1354813581_
                                     (gx#syntax-e _tl1353413635_)))
                                (let ((_tl1354613588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1354813581_)))
                                      (_hd1354713585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1354813581_))))
                                  (if (gx#stx-null? _tl1354613588_)
                                      (___kont1471314714_
                                       _hd1354713585_
                                       _hd1353513632_
                                       _hd1351813664_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1351413554_)))))
                              (let () (declare (not safe)) (_g1351413554_))))))
                  (let () (declare (not safe)) (_g1351413554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1351713667_)
                                                  (let ((_e1353613628_
                                                         (gx#syntax-e
                                                          _tl1351713667_)))
                                                    (let ((_tl1353413635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1353613628_)))
                                                          (_hd1353513632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1353613628_))))
                                                      (if (gx#stx-null?
                                                           _tl1353413635_)
                                                          (___kont1471114712_
                                                           _hd1353513632_
                                                           _hd1351813664_)
                                                          (if (gx#stx-pair?
                                                               _tl1353413635_)
                                                              (let ((_e1354813581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1353413635_)))
                        (let ((_tl1354613588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1354813581_)))
                              (_hd1354713585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1354813581_))))
                          (if (gx#stx-null? _tl1354613588_)
                              (___kont1471314714_
                               _hd1354713585_
                               _hd1353513632_
                               _hd1351813664_)
                              (let () (declare (not safe)) (_g1351413554_)))))
                      (let () (declare (not safe)) (_g1351413554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1351413554_))))
                                          (if (gx#stx-pair? _tl1351713667_)
                                              (let ((_e1353613628_
                                                     (gx#syntax-e
                                                      _tl1351713667_)))
                                                (let ((_tl1353413635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1353613628_)))
                                                      (_hd1353513632_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1353613628_))))
                                                  (if (gx#stx-null?
                                                       _tl1353413635_)
                                                      (___kont1471114712_
                                                       _hd1353513632_
                                                       _hd1351813664_)
                                                      (if (gx#stx-pair?
                                                           _tl1353413635_)
                                                          (let ((_e1354813581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1353413635_)))
                    (let ((_tl1354613588_
                           (let () (declare (not safe)) (##cdr _e1354813581_)))
                          (_hd1354713585_
                           (let ()
                             (declare (not safe))
                             (##car _e1354813581_))))
                      (if (gx#stx-null? _tl1354613588_)
                          (___kont1471314714_
                           _hd1354713585_
                           _hd1353513632_
                           _hd1351813664_)
                          (let () (declare (not safe)) (_g1351413554_)))))
                  (let () (declare (not safe)) (_g1351413554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1351413554_))))
                                      (if (gx#stx-pair? _tl1351713667_)
                                          (let ((_e1353613628_
                                                 (gx#syntax-e _tl1351713667_)))
                                            (let ((_tl1353413635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1353613628_)))
                                                  (_hd1353513632_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1353613628_))))
                                              (if (gx#stx-null? _tl1353413635_)
                                                  (___kont1471114712_
                                                   _hd1353513632_
                                                   _hd1351813664_)
                                                  (if (gx#stx-pair?
                                                       _tl1353413635_)
                                                      (let ((_e1354813581_
                                                             (gx#syntax-e
                                                              _tl1353413635_)))
                                                        (let ((_tl1354613588_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1354813581_)))
                      (_hd1354713585_
                       (let () (declare (not safe)) (##car _e1354813581_))))
                  (if (gx#stx-null? _tl1354613588_)
                      (___kont1471314714_
                       _hd1354713585_
                       _hd1353513632_
                       _hd1351813664_)
                      (let () (declare (not safe)) (_g1351413554_)))))
              (let () (declare (not safe)) (_g1351413554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1351413554_))))))
                              (let ()
                                (declare (not safe))
                                (_g1351413554_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1345113462_))))
                                            (_g1344913727_
                                             (_recur13349_ _rest13385_)))))
                                      _g1342313434_))))
                             (_g1342113731_
                              (let ()
                                (declare (not safe))
                                (cons _L13404_ '()))))))
                       _g1339013401_))))
              (_g1338813735_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1335813377_
                                                  (lambda ()
                                                    (let ((__tmp14891
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14888
                                                           (let ((__tmp14889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14890
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13327_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax; malformed ast clause"
                                  __tmp14890))))
                     (declare (not safe))
                     (cons '#f __tmp14889))))
              (declare (not safe))
              (cons __tmp14891 __tmp14888)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1335613381_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1335413363_))
                                                          (_K1335813377_)
                                                          (_E1335713369_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1335413363_))
                                                   (let ((_tl1336113746_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1335413363_)))
                                                         (_hd1336013743_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1335413363_))))
                                                     (let ((_hd13749_
                                                            _hd1336013743_)
                                                           (_rest13752_
                                                            _tl1336113746_))
                                                       (_K1335913739_
                                                        _rest13752_
                                                        _hd13749_)))
                                                   (_try-match1335613381_)))))))
                                     _clause1325113320_
                                     _hd1324113288_
                                     _hd1323813278_))))))
                    (_loop1324613300_ _target1324313294_ '()))
                  (_g1322913257_ _g1323013261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1322913257_
                                                 _g1323013261_))))
                                        (_g1322913257_ _g1323013261_))))
                                (_g1322913257_ _g1323013261_))))
                        (_g1322913257_ _g1323013261_)))))
            (_g1322813763_ _stx13223_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14893_|
       'expander-identifiers:
       (let ((__tmp14940
              (let ((__tmp14941 |[1]#_g14942_|))
                (declare (not safe))
                (cons __tmp14941 '())))
             (__tmp14894
              (let ((__tmp14939 |[1]#_g14893_|)
                    (__tmp14895
                     (let ((__tmp14937 |[1]#_g14938_|)
                           (__tmp14896
                            (let ((__tmp14935 |[1]#_g14936_|)
                                  (__tmp14897
                                   (let ((__tmp14917
                                          (let ((__tmp14933 |[1]#_g14934_|)
                                                (__tmp14918
                                                 (let ((__tmp14931
                                                        |[1]#_g14932_|)
                                                       (__tmp14919
                                                        (let ((__tmp14929
                                                               |[1]#_g14930_|)
                                                              (__tmp14920
                                                               (let ((__tmp14927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14928_|)
                             (__tmp14921
                              (let ((__tmp14925 |[1]#_g14926_|)
                                    (__tmp14922
                                     (let ((__tmp14923 |[1]#_g14924_|))
                                       (declare (not safe))
                                       (cons __tmp14923 '()))))
                                (declare (not safe))
                                (cons __tmp14925 __tmp14922))))
                         (declare (not safe))
                         (cons __tmp14927 __tmp14921))))
                  (declare (not safe))
                  (cons __tmp14929 __tmp14920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14931
                                                         __tmp14919))))
                                            (declare (not safe))
                                            (cons __tmp14933 __tmp14918)))
                                         (__tmp14898
                                          (let ((__tmp14899
                                                 (let ((__tmp14915
                                                        |[1]#_g14916_|)
                                                       (__tmp14900
                                                        (let ((__tmp14913
                                                               |[1]#_g14914_|)
                                                              (__tmp14901
                                                               (let ((__tmp14911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14912_|)
                             (__tmp14902
                              (let ((__tmp14909 |[1]#_g14910_|)
                                    (__tmp14903
                                     (let ((__tmp14907 |[1]#_g14908_|)
                                           (__tmp14904
                                            (let ((__tmp14905 |[1]#_g14906_|))
                                              (declare (not safe))
                                              (cons __tmp14905 '()))))
                                       (declare (not safe))
                                       (cons __tmp14907 __tmp14904))))
                                (declare (not safe))
                                (cons __tmp14909 __tmp14903))))
                         (declare (not safe))
                         (cons __tmp14911 __tmp14902))))
                  (declare (not safe))
                  (cons __tmp14913 __tmp14901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14915
                                                         __tmp14900))))
                                            (declare (not safe))
                                            (cons __tmp14899 '()))))
                                     (declare (not safe))
                                     (cons __tmp14917 __tmp14898))))
                              (declare (not safe))
                              (cons __tmp14935 __tmp14897))))
                       (declare (not safe))
                       (cons __tmp14937 __tmp14896))))
                (declare (not safe))
                (cons __tmp14939 __tmp14895))))
         (declare (not safe))
         (cons __tmp14940 __tmp14894))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14943_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14944_|
       'expander-identifiers:
       (let ((__tmp14945
              (let ((__tmp14966 |[1]#_g14944_|)
                    (__tmp14946
                     (let ((__tmp14964 |[1]#_g14965_|)
                           (__tmp14947
                            (let ((__tmp14962 |[1]#_g14963_|)
                                  (__tmp14948
                                   (let ((__tmp14956
                                          (let ((__tmp14960 |[1]#_g14961_|)
                                                (__tmp14957
                                                 (let ((__tmp14958
                                                        |[1]#_g14959_|))
                                                   (declare (not safe))
                                                   (cons __tmp14958 '()))))
                                            (declare (not safe))
                                            (cons __tmp14960 __tmp14957)))
                                         (__tmp14949
                                          (let ((__tmp14950
                                                 (let ((__tmp14954
                                                        |[1]#_g14955_|)
                                                       (__tmp14951
                                                        (let ((__tmp14952
                                                               |[1]#_g14953_|))
                                                          (declare (not safe))
                                                          (cons __tmp14952
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp14954
                                                         __tmp14951))))
                                            (declare (not safe))
                                            (cons __tmp14950 '()))))
                                     (declare (not safe))
                                     (cons __tmp14956 __tmp14949))))
                              (declare (not safe))
                              (cons __tmp14962 __tmp14948))))
                       (declare (not safe))
                       (cons __tmp14964 __tmp14947))))
                (declare (not safe))
                (cons __tmp14966 __tmp14946))))
         (declare (not safe))
         (cons '#f __tmp14945))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
