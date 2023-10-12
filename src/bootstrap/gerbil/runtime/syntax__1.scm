(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14986_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14992_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15005_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15007_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15009_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15011_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15013_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15015_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15023_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15025_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15027_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15029_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15031_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15033_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15035_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15037_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15041_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15042_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15043_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15052_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15054_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15058_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15060_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15062_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15064_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13203_)
        (let* ((_g1320713231_
                (lambda (_g1320813227_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1320813227_)))
               (_g1320613317_
                (lambda (_g1320813235_)
                  (if (gx#stx-pair? _g1320813235_)
                      (let ((_e1321313238_ (gx#syntax-e _g1320813235_)))
                        (let ((_hd1321213242_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1321313238_)))
                              (_tl1321113245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1321313238_))))
                          (if (gx#stx-pair? _tl1321113245_)
                              (let ((_e1321613248_
                                     (gx#syntax-e _tl1321113245_)))
                                (let ((_hd1321513252_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1321613248_)))
                                      (_tl1321413255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1321613248_))))
                                  (if (gx#stx-pair/null? _tl1321413255_)
                                      (let ((_g14882_
                                             (gx#syntax-split-splice
                                              _tl1321413255_
                                              '0)))
                                        (begin
                                          (let ((_g14883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14882_)
                                                       (##vector-length
                                                        _g14882_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14883_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14883_)))
                                          (let ((_target1321713258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14882_ 0)))
                                                (_tl1321913261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14882_ 1))))
                                            (if (gx#stx-null? _tl1321913261_)
                                                (letrec ((_loop1322013264_
                                                          (lambda (_hd1321813268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1322413271_)
                    (if (gx#stx-pair? _hd1321813268_)
                        (let ((_e1322113274_ (gx#syntax-e _hd1321813268_)))
                          (let ((_lp-hd1322213278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1322113274_)))
                                (_lp-tl1322313281_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1322113274_))))
                            (_loop1322013264_
                             _lp-tl1322313281_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1322213278_ _body1322413271_)))))
                        (let ((_body1322513284_ (reverse _body1322413271_)))
                          ((lambda (_L13288_ _L13290_)
                             (let ((__tmp14895 (gx#datum->syntax '#f 'let))
                                   (__tmp14884
                                    (let ((__tmp14892
                                           (let ((__tmp14894
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14893
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13290_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14894 __tmp14893)))
                                          (__tmp14885
                                           (let ((__tmp14886
                                                  (let ((__tmp14891
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14887
                                                         (let ((__tmp14890
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14888
                        (let ((__tmp14889
                               (lambda (_g1330813311_ _g1330913314_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1330813311_ _g1330913314_)))))
                          (declare (not safe))
                          (foldr1 __tmp14889 '() _L13288_))))
                   (declare (not safe))
                   (cons __tmp14890 __tmp14888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14891
                                                          __tmp14887))))
                                             (declare (not safe))
                                             (cons __tmp14886 '()))))
                                      (declare (not safe))
                                      (cons __tmp14892 __tmp14885))))
                               (declare (not safe))
                               (cons __tmp14895 __tmp14884)))
                           _body1322513284_
                           _hd1321513252_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1322013264_
                                                   _target1321713258_
                                                   '()))
                                                (_g1320713231_
                                                 _g1320813235_)))))
                                      (_g1320713231_ _g1320813235_))))
                              (_g1320713231_ _g1320813235_))))
                      (_g1320713231_ _g1320813235_)))))
          (_g1320613317_ _$stx13203_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13322_)
        (letrec ((_generate113325_
                  (lambda (_hd13866_ _tgt13868_ _K13869_ _E13870_ _kws13871_)
                    (let* ((_g1387313881_
                            (lambda (_g1387413877_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1387413877_)))
                           (_g1387214308_
                            (lambda (_g1387413885_)
                              ((lambda (_L13888_)
                                 (let ()
                                   (let* ((___stx1478514786_ _hd13866_)
                                          (_g1390213916_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1478514786_))))
                                     (let ((___kont1478814789_
                                            (lambda (_L14130_ _L14132_)
                                              (let* ((_g1414314151_
                                                      (lambda (_g1414414147_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1414414147_)))
                                                     (_g1414214300_
                                                      (lambda (_g1414414155_)
                                                        ((lambda (_L14158_)
                                                           (let ()
                                                             (let* ((_g1417014178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1417114174_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1417114174_)))
                            (_g1416914296_
                             (lambda (_g1417114182_)
                               ((lambda (_L14185_)
                                  (let ()
                                    (let* ((_g1419814206_
                                            (lambda (_g1419914202_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1419914202_)))
                                           (_g1419714292_
                                            (lambda (_g1419914210_)
                                              ((lambda (_L14213_)
                                                 (let ()
                                                   (let* ((_g1422614234_
                                                           (lambda (_g1422714230_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1422714230_)))
                                                          (_g1422514288_
                                                           (lambda (_g1422714238_)
                                                             ((lambda (_L14241_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1425414262_
                                  (lambda (_g1425514258_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1425514258_)))
                                 (_g1425314284_
                                  (lambda (_g1425514266_)
                                    ((lambda (_L14269_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14924
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14896
                                                  (let ((__tmp14921
                                                         (let ((__tmp14923
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14922
                        (let () (declare (not safe)) (cons _L13888_ '()))))
                   (declare (not safe))
                   (cons __tmp14923 __tmp14922)))
                (__tmp14897
                 (let ((__tmp14899
                        (let ((__tmp14920 (gx#datum->syntax '#f 'let*))
                              (__tmp14900
                               (let ((__tmp14902
                                      (let ((__tmp14915
                                             (let ((__tmp14916
                                                    (let ((__tmp14917
                                                           (let ((__tmp14919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14918
                          (let () (declare (not safe)) (cons _L13888_ '()))))
                     (declare (not safe))
                     (cons __tmp14919 __tmp14918))))
              (declare (not safe))
              (cons __tmp14917 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14158_ __tmp14916)))
                                            (__tmp14903
                                             (let ((__tmp14910
                                                    (let ((__tmp14911
                                                           (let ((__tmp14912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14914 (gx#datum->syntax '#f '##car))
                                (__tmp14913
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14158_ '()))))
                            (declare (not safe))
                            (cons __tmp14914 __tmp14913))))
                     (declare (not safe))
                     (cons __tmp14912 '()))))
              (declare (not safe))
              (cons _L14185_ __tmp14911)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14904
                                                    (let ((__tmp14905
                                                           (let ((__tmp14906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14907
                                 (let ((__tmp14909
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14908
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14158_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14909 __tmp14908))))
                            (declare (not safe))
                            (cons __tmp14907 '()))))
                     (declare (not safe))
                     (cons _L14213_ __tmp14906))))
              (declare (not safe))
              (cons __tmp14905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14910 __tmp14904))))
                                        (declare (not safe))
                                        (cons __tmp14915 __tmp14903)))
                                     (__tmp14901
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14241_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14902 __tmp14901))))
                          (declare (not safe))
                          (cons __tmp14920 __tmp14900)))
                       (__tmp14898
                        (let () (declare (not safe)) (cons _L14269_ '()))))
                   (declare (not safe))
                   (cons __tmp14899 __tmp14898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14921
                                                          __tmp14897))))
                                             (declare (not safe))
                                             (cons __tmp14924 __tmp14896)))))
                                     _g1425514266_))))
                            (_g1425314284_ _E13870_))))
                      _g1422714238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1422514288_
                                                      (_generate113325_
                                                       _L14132_
                                                       _L14185_
                                                       (_generate113325_
                                                        _L14130_
                                                        _L14213_
                                                        _K13869_
                                                        _E13870_
                                                        _kws13871_)
                                                       _E13870_
                                                       _kws13871_)))))
                                               _g1419914210_))))
                                      (_g1419714292_ (gx#genident '$tl)))))
                                _g1417114182_))))
                       (_g1416914296_ (gx#genident '$hd)))))
                 _g1414414155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1414214300_
                                                 (gx#genident '$tgt)))))
                                           (___kont1479014791_
                                            (lambda (_L14005_)
                                              (if (gx#underscore? _L14005_)
                                                  _K13869_
                                                  (if (let ((__tmp14953
                                                             (lambda (_g1401314015_)
                                                               (gx#bound-identifier=?
                                                                _g1401314015_
                                                                _L14005_)))
                                                            (__tmp14952
                                                             (gx#syntax->list
                                                              _kws13871_)))
                                                        (declare (not safe))
                                                        (find __tmp14953
                                                              __tmp14952))
                                                      (let* ((_g1401914034_
                                                              (lambda (_g1402014030_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1402014030_)))
                     (_g1401814079_
                      (lambda (_g1402014038_)
                        (if (gx#stx-pair? _g1402014038_)
                            (let ((_e1402514041_ (gx#syntax-e _g1402014038_)))
                              (let ((_hd1402414045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1402514041_)))
                                    (_tl1402314048_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1402514041_))))
                                (if (gx#stx-pair? _tl1402314048_)
                                    (let ((_e1402814051_
                                           (gx#syntax-e _tl1402314048_)))
                                      (let ((_hd1402714055_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1402814051_)))
                                            (_tl1402614058_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1402814051_))))
                                        (if (gx#stx-null? _tl1402614058_)
                                            ((lambda (_L14061_ _L14063_)
                                               (let ()
                                                 (let ((__tmp14951
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14931
                                                        (let ((__tmp14934
                                                               (let ((__tmp14950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14935
                              (let ((__tmp14947
                                     (let ((__tmp14949
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14948
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13888_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14949 __tmp14948)))
                                    (__tmp14936
                                     (let ((__tmp14937
                                            (let ((__tmp14946
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14938
                                                   (let ((__tmp14943
                                                          (let ((__tmp14945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14944
                         (let () (declare (not safe)) (cons _L13888_ '()))))
                    (declare (not safe))
                    (cons __tmp14945 __tmp14944)))
                 (__tmp14939
                  (let ((__tmp14940
                         (let ((__tmp14942 (gx#datum->syntax '#f 'quote))
                               (__tmp14941
                                (let ()
                                  (declare (not safe))
                                  (cons _L14005_ '()))))
                           (declare (not safe))
                           (cons __tmp14942 __tmp14941))))
                    (declare (not safe))
                    (cons __tmp14940 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14943
                                                           __tmp14939))))
                                              (declare (not safe))
                                              (cons __tmp14946 __tmp14938))))
                                       (declare (not safe))
                                       (cons __tmp14937 '()))))
                                (declare (not safe))
                                (cons __tmp14947 __tmp14936))))
                         (declare (not safe))
                         (cons __tmp14950 __tmp14935)))
                      (__tmp14932
                       (let ((__tmp14933
                              (let ()
                                (declare (not safe))
                                (cons _L14061_ '()))))
                         (declare (not safe))
                         (cons _L14063_ __tmp14933))))
                  (declare (not safe))
                  (cons __tmp14934 __tmp14932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14951
                                                         __tmp14931))))
                                             _hd1402714055_
                                             _hd1402414045_)
                                            (_g1401914034_ _g1402014038_))))
                                    (_g1401914034_ _g1402014038_))))
                            (_g1401914034_ _g1402014038_)))))
                (_g1401814079_ (list _K13869_ _E13870_)))
              (let* ((_g1408314091_
                      (lambda (_g1408414087_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1408414087_)))
                     (_g1408214109_
                      (lambda (_g1408414095_)
                        ((lambda (_L14098_)
                           (let ()
                             (let ((__tmp14930 (gx#datum->syntax '#f 'let))
                                   (__tmp14925
                                    (let ((__tmp14927
                                           (let ((__tmp14928
                                                  (let ((__tmp14929
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L14005_
                                                          __tmp14929))))
                                             (declare (not safe))
                                             (cons __tmp14928 '())))
                                          (__tmp14926
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14098_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14927 __tmp14926))))
                               (declare (not safe))
                               (cons __tmp14930 __tmp14925))))
                         _g1408414095_))))
                (_g1408214109_ _K13869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1479214793_
                                            (lambda (_L13923_)
                                              (let* ((_g1393413949_
                                                      (lambda (_g1393513945_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1393513945_)))
                                                     (_g1393313994_
                                                      (lambda (_g1393513953_)
                                                        (if (gx#stx-pair?
                                                             _g1393513953_)
                                                            (let ((_e1394013956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1393513953_)))
                      (let ((_hd1393913960_
                             (let ()
                               (declare (not safe))
                               (##car _e1394013956_)))
                            (_tl1393813963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1394013956_))))
                        (if (gx#stx-pair? _tl1393813963_)
                            (let ((_e1394313966_ (gx#syntax-e _tl1393813963_)))
                              (let ((_hd1394213970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1394313966_)))
                                    (_tl1394113973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1394313966_))))
                                (if (gx#stx-null? _tl1394113973_)
                                    ((lambda (_L13976_ _L13978_)
                                       (let ()
                                         (let ((__tmp14967
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14954
                                                (let ((__tmp14957
                                                       (let ((__tmp14966
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14958
                                                              (let ((__tmp14963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14965 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14964
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13888_ '()))))
                               (declare (not safe))
                               (cons __tmp14965 __tmp14964)))
                            (__tmp14959
                             (let ((__tmp14960
                                    (let ((__tmp14962
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14961
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13923_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14962 __tmp14961))))
                               (declare (not safe))
                               (cons __tmp14960 '()))))
                        (declare (not safe))
                        (cons __tmp14963 __tmp14959))))
                 (declare (not safe))
                 (cons __tmp14966 __tmp14958)))
              (__tmp14955
               (let ((__tmp14956
                      (let () (declare (not safe)) (cons _L13976_ '()))))
                 (declare (not safe))
                 (cons _L13978_ __tmp14956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14957
                                                        __tmp14955))))
                                           (declare (not safe))
                                           (cons __tmp14967 __tmp14954))))
                                     _hd1394213970_
                                     _hd1393913960_)
                                    (_g1393413949_ _g1393513953_))))
                            (_g1393413949_ _g1393513953_))))
                    (_g1393413949_ _g1393513953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1393313994_
                                                 (list _K13869_ _E13870_))))))
                                       (let ((_g1390014113_
                                              (lambda ()
                                                (let ((_L14005_
                                                       ___stx1478514786_))
                                                  (if (gx#identifier? _L14005_)
                                                      (___kont1479014791_
                                                       _L14005_)
                                                      (___kont1479214793_
                                                       ___stx1478514786_))))))
                                         (if (gx#stx-pair? ___stx1478514786_)
                                             (let ((_e1390814120_
                                                    (gx#syntax-e
                                                     ___stx1478514786_)))
                                               (let ((_tl1390614127_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1390814120_)))
                                                     (_hd1390714124_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1390814120_))))
                                                 (___kont1478814789_
                                                  _tl1390614127_
                                                  _hd1390714124_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1390014113_))))))))
                               _g1387413885_))))
                      (_g1387214308_ _tgt13868_)))))
          (let* ((_g1332813356_
                  (lambda (_g1332913352_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1332913352_)))
                 (_g1332713862_
                  (lambda (_g1332913360_)
                    (if (gx#stx-pair? _g1332913360_)
                        (let ((_e1333513363_ (gx#syntax-e _g1332913360_)))
                          (let ((_hd1333413367_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1333513363_)))
                                (_tl1333313370_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1333513363_))))
                            (if (gx#stx-pair? _tl1333313370_)
                                (let ((_e1333813373_
                                       (gx#syntax-e _tl1333313370_)))
                                  (let ((_hd1333713377_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1333813373_)))
                                        (_tl1333613380_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1333813373_))))
                                    (if (gx#stx-pair? _tl1333613380_)
                                        (let ((_e1334113383_
                                               (gx#syntax-e _tl1333613380_)))
                                          (let ((_hd1334013387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1334113383_)))
                                                (_tl1333913390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1334113383_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1333913390_)
                                                (let ((_g14968_
                                                       (gx#syntax-split-splice
                                                        _tl1333913390_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14968_)
                         (##vector-length _g14968_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14969_ 2)))
                  (error "Context expects 2 values" _g14969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1334213393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14968_
                                                              0)))
                                                          (_tl1334413396_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14968_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1334413396_)
                                                          (letrec ((_loop1334513399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1334313403_ _clause1334913406_)
                              (if (gx#stx-pair? _hd1334313403_)
                                  (let ((_e1334613409_
                                         (gx#syntax-e _hd1334313403_)))
                                    (let ((_lp-hd1334713413_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1334613409_)))
                                          (_lp-tl1334813416_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1334613409_))))
                                      (_loop1334513399_
                                       _lp-tl1334813416_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1334713413_
                                               _clause1334913406_)))))
                                  (let ((_clause1335013419_
                                         (reverse _clause1334913406_)))
                                    ((lambda (_L13423_ _L13425_ _L13426_)
                                       (let _recur13448_ ((_rest13451_
                                                           (let ((__tmp14991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1385313856_ _g1385413859_)
                            (let ()
                              (declare (not safe))
                              (cons _g1385313856_ _g1385413859_)))))
                     (declare (not safe))
                     (foldr1 __tmp14991 '() _L13423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1345313462_ _rest13451_)
                                                (_E1345613468_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1345313462_))))
                                           (let ((_K1345813838_
                                                  (lambda (_rest13484_
                                                           _hd13486_)
                                                    (let* ((_g1348813496_
                                                            (lambda (_g1348913492_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1348913492_)))
                                                           (_g1348713834_
                                                            (lambda (_g1348913500_)
                                                              ((lambda (_L13503_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1352113529_
                                   (lambda (_g1352213525_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1352213525_)))
                                  (_g1352013830_
                                   (lambda (_g1352213533_)
                                     ((lambda (_L13536_)
                                        (let ()
                                          (let* ((_g1354913557_
                                                  (lambda (_g1355013553_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1355013553_)))
                                                 (_g1354813826_
                                                  (lambda (_g1355013561_)
                                                    ((lambda (_L13564_)
                                                       (let ()
                                                         (let* ((_g1357713585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1357813581_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1357813581_)))
                        (_g1357613607_
                         (lambda (_g1357813589_)
                           ((lambda (_L13592_)
                              (let ()
                                (let ()
                                  (let ((__tmp14978
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14970
                                         (let ((__tmp14972
                                                (let ((__tmp14973
                                                       (let ((__tmp14974
                                                              (let ((__tmp14977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14975
                             (let ((__tmp14976
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13564_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14976))))
                        (declare (not safe))
                        (cons __tmp14977 __tmp14975))))
                 (declare (not safe))
                 (cons __tmp14974 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13503_ __tmp14973)))
                                               (__tmp14971
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13592_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14972 __tmp14971))))
                                    (declare (not safe))
                                    (cons __tmp14978 __tmp14970)))))
                            _g1357813589_))))
                   (_g1357613607_
                    (let* ((___stx1480314804_ _hd13486_)
                           (_g1361313653_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1480314804_))))
                      (let ((___kont1480614807_
                             (lambda (_L13799_)
                               (let ((__tmp14981 (gx#datum->syntax '#f 'begin))
                                     (__tmp14979
                                      (let ((__tmp14980
                                             (lambda (_g1381313816_
                                                      _g1381413819_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1381313816_
                                                       _g1381413819_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14980 '() _L13799_))))
                                 (declare (not safe))
                                 (cons __tmp14981 __tmp14979))))
                            (___kont1481014811_
                             (lambda (_L13737_ _L13739_)
                               (_generate113325_
                                _L13739_
                                _L13426_
                                _L13737_
                                _L13536_
                                _L13425_)))
                            (___kont1481214813_
                             (lambda (_L13690_ _L13692_ _L13693_)
                               (_generate113325_
                                _L13693_
                                _L13426_
                                (let ((__tmp14985 (gx#datum->syntax '#f 'if))
                                      (__tmp14982
                                       (let ((__tmp14983
                                              (let ((__tmp14984
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13536_ '()))))
                                                (declare (not safe))
                                                (cons _L13690_ __tmp14984))))
                                         (declare (not safe))
                                         (cons _L13692_ __tmp14983))))
                                  (declare (not safe))
                                  (cons __tmp14985 __tmp14982))
                                _L13536_
                                _L13425_))))
                        (let ((___match1483214833_
                               (lambda (_e1361813759_
                                        _hd1361713763_
                                        _tl1361613766_
                                        ___splice1480814809_
                                        _target1361913769_
                                        _tl1362113772_)
                                 (letrec ((_loop1362213775_
                                           (lambda (_hd1362013779_
                                                    _expr1362613782_)
                                             (if (gx#stx-pair? _hd1362013779_)
                                                 (let ((_e1362313785_
                                                        (gx#syntax-e
                                                         _hd1362013779_)))
                                                   (let ((_lp-tl1362513792_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1362313785_)))
                                                         (_lp-hd1362413789_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1362313785_))))
                                                     (_loop1362213775_
                                                      _lp-tl1362513792_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1362413789_
                                                              _expr1362613782_)))))
                                                 (let ((_expr1362713795_
                                                        (reverse _expr1362613782_)))
                                                   (___kont1480614807_
                                                    _expr1362713795_))))))
                                   (_loop1362213775_
                                    _target1361913769_
                                    '())))))
                          (if (gx#stx-pair? ___stx1480314804_)
                              (let ((_e1361813759_
                                     (gx#syntax-e ___stx1480314804_)))
                                (let ((_tl1361613766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1361813759_)))
                                      (_hd1361713763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1361813759_))))
                                  (if (gx#identifier? _hd1361713763_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14986_|
                                           _hd1361713763_)
                                          (if (gx#stx-pair/null?
                                               _tl1361613766_)
                                              (let ((___splice1480814809_
                                                     (gx#syntax-split-splice
                                                      _tl1361613766_
                                                      '0)))
                                                (let ((_tl1362113772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1480814809_
                                                          '1)))
                                                      (_target1361913769_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1480814809_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1362113772_)
                                                      (___match1483214833_
                                                       _e1361813759_
                                                       _hd1361713763_
                                                       _tl1361613766_
                                                       ___splice1480814809_
                                                       _target1361913769_
                                                       _tl1362113772_)
                                                      (if (gx#stx-pair?
                                                           _tl1361613766_)
                                                          (let ((_e1363513727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1361613766_)))
                    (let ((_tl1363313734_
                           (let () (declare (not safe)) (##cdr _e1363513727_)))
                          (_hd1363413731_
                           (let ()
                             (declare (not safe))
                             (##car _e1363513727_))))
                      (if (gx#stx-null? _tl1363313734_)
                          (___kont1481014811_ _hd1363413731_ _hd1361713763_)
                          (if (gx#stx-pair? _tl1363313734_)
                              (let ((_e1364713680_
                                     (gx#syntax-e _tl1363313734_)))
                                (let ((_tl1364513687_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1364713680_)))
                                      (_hd1364613684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1364713680_))))
                                  (if (gx#stx-null? _tl1364513687_)
                                      (___kont1481214813_
                                       _hd1364613684_
                                       _hd1363413731_
                                       _hd1361713763_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1361313653_)))))
                              (let () (declare (not safe)) (_g1361313653_))))))
                  (let () (declare (not safe)) (_g1361313653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1361613766_)
                                                  (let ((_e1363513727_
                                                         (gx#syntax-e
                                                          _tl1361613766_)))
                                                    (let ((_tl1363313734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1363513727_)))
                                                          (_hd1363413731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1363513727_))))
                                                      (if (gx#stx-null?
                                                           _tl1363313734_)
                                                          (___kont1481014811_
                                                           _hd1363413731_
                                                           _hd1361713763_)
                                                          (if (gx#stx-pair?
                                                               _tl1363313734_)
                                                              (let ((_e1364713680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1363313734_)))
                        (let ((_tl1364513687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1364713680_)))
                              (_hd1364613684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1364713680_))))
                          (if (gx#stx-null? _tl1364513687_)
                              (___kont1481214813_
                               _hd1364613684_
                               _hd1363413731_
                               _hd1361713763_)
                              (let () (declare (not safe)) (_g1361313653_)))))
                      (let () (declare (not safe)) (_g1361313653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1361313653_))))
                                          (if (gx#stx-pair? _tl1361613766_)
                                              (let ((_e1363513727_
                                                     (gx#syntax-e
                                                      _tl1361613766_)))
                                                (let ((_tl1363313734_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1363513727_)))
                                                      (_hd1363413731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1363513727_))))
                                                  (if (gx#stx-null?
                                                       _tl1363313734_)
                                                      (___kont1481014811_
                                                       _hd1363413731_
                                                       _hd1361713763_)
                                                      (if (gx#stx-pair?
                                                           _tl1363313734_)
                                                          (let ((_e1364713680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1363313734_)))
                    (let ((_tl1364513687_
                           (let () (declare (not safe)) (##cdr _e1364713680_)))
                          (_hd1364613684_
                           (let ()
                             (declare (not safe))
                             (##car _e1364713680_))))
                      (if (gx#stx-null? _tl1364513687_)
                          (___kont1481214813_
                           _hd1364613684_
                           _hd1363413731_
                           _hd1361713763_)
                          (let () (declare (not safe)) (_g1361313653_)))))
                  (let () (declare (not safe)) (_g1361313653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1361313653_))))
                                      (if (gx#stx-pair? _tl1361613766_)
                                          (let ((_e1363513727_
                                                 (gx#syntax-e _tl1361613766_)))
                                            (let ((_tl1363313734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1363513727_)))
                                                  (_hd1363413731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1363513727_))))
                                              (if (gx#stx-null? _tl1363313734_)
                                                  (___kont1481014811_
                                                   _hd1363413731_
                                                   _hd1361713763_)
                                                  (if (gx#stx-pair?
                                                       _tl1363313734_)
                                                      (let ((_e1364713680_
                                                             (gx#syntax-e
                                                              _tl1363313734_)))
                                                        (let ((_tl1364513687_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1364713680_)))
                      (_hd1364613684_
                       (let () (declare (not safe)) (##car _e1364713680_))))
                  (if (gx#stx-null? _tl1364513687_)
                      (___kont1481214813_
                       _hd1364613684_
                       _hd1363413731_
                       _hd1361713763_)
                      (let () (declare (not safe)) (_g1361313653_)))))
              (let () (declare (not safe)) (_g1361313653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1361313653_))))))
                              (let ()
                                (declare (not safe))
                                (_g1361313653_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1355013561_))))
                                            (_g1354813826_
                                             (_recur13448_ _rest13484_)))))
                                      _g1352213533_))))
                             (_g1352013830_
                              (let ()
                                (declare (not safe))
                                (cons _L13503_ '()))))))
                       _g1348913500_))))
              (_g1348713834_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1345713476_
                                                  (lambda ()
                                                    (let ((__tmp14990
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14987
                                                           (let ((__tmp14988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14989
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13426_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax" __tmp14989))))
                     (declare (not safe))
                     (cons '#f __tmp14988))))
              (declare (not safe))
              (cons __tmp14990 __tmp14987)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1345513480_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1345313462_))
                                                          (_K1345713476_)
                                                          (_E1345613468_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1345313462_))
                                                   (let ((_tl1346013845_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1345313462_)))
                                                         (_hd1345913842_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1345313462_))))
                                                     (let ((_hd13848_
                                                            _hd1345913842_)
                                                           (_rest13851_
                                                            _tl1346013845_))
                                                       (_K1345813838_
                                                        _rest13851_
                                                        _hd13848_)))
                                                   (_try-match1345513480_)))))))
                                     _clause1335013419_
                                     _hd1334013387_
                                     _hd1333713377_))))))
                    (_loop1334513399_ _target1334213393_ '()))
                  (_g1332813356_ _g1332913360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1332813356_
                                                 _g1332913360_))))
                                        (_g1332813356_ _g1332913360_))))
                                (_g1332813356_ _g1332913360_))))
                        (_g1332813356_ _g1332913360_)))))
            (_g1332713862_ _stx13322_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14992_|
       'expander-identifiers:
       (let ((__tmp15039
              (let ((__tmp15040 |[1]#_g15041_|))
                (declare (not safe))
                (cons __tmp15040 '())))
             (__tmp14993
              (let ((__tmp15038 |[1]#_g14992_|)
                    (__tmp14994
                     (let ((__tmp15036 |[1]#_g15037_|)
                           (__tmp14995
                            (let ((__tmp15034 |[1]#_g15035_|)
                                  (__tmp14996
                                   (let ((__tmp15016
                                          (let ((__tmp15032 |[1]#_g15033_|)
                                                (__tmp15017
                                                 (let ((__tmp15030
                                                        |[1]#_g15031_|)
                                                       (__tmp15018
                                                        (let ((__tmp15028
                                                               |[1]#_g15029_|)
                                                              (__tmp15019
                                                               (let ((__tmp15026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g15027_|)
                             (__tmp15020
                              (let ((__tmp15024 |[1]#_g15025_|)
                                    (__tmp15021
                                     (let ((__tmp15022 |[1]#_g15023_|))
                                       (declare (not safe))
                                       (cons __tmp15022 '()))))
                                (declare (not safe))
                                (cons __tmp15024 __tmp15021))))
                         (declare (not safe))
                         (cons __tmp15026 __tmp15020))))
                  (declare (not safe))
                  (cons __tmp15028 __tmp15019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15030
                                                         __tmp15018))))
                                            (declare (not safe))
                                            (cons __tmp15032 __tmp15017)))
                                         (__tmp14997
                                          (let ((__tmp14998
                                                 (let ((__tmp15014
                                                        |[1]#_g15015_|)
                                                       (__tmp14999
                                                        (let ((__tmp15012
                                                               |[1]#_g15013_|)
                                                              (__tmp15000
                                                               (let ((__tmp15010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g15011_|)
                             (__tmp15001
                              (let ((__tmp15008 |[1]#_g15009_|)
                                    (__tmp15002
                                     (let ((__tmp15006 |[1]#_g15007_|)
                                           (__tmp15003
                                            (let ((__tmp15004 |[1]#_g15005_|))
                                              (declare (not safe))
                                              (cons __tmp15004 '()))))
                                       (declare (not safe))
                                       (cons __tmp15006 __tmp15003))))
                                (declare (not safe))
                                (cons __tmp15008 __tmp15002))))
                         (declare (not safe))
                         (cons __tmp15010 __tmp15001))))
                  (declare (not safe))
                  (cons __tmp15012 __tmp15000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15014
                                                         __tmp14999))))
                                            (declare (not safe))
                                            (cons __tmp14998 '()))))
                                     (declare (not safe))
                                     (cons __tmp15016 __tmp14997))))
                              (declare (not safe))
                              (cons __tmp15034 __tmp14996))))
                       (declare (not safe))
                       (cons __tmp15036 __tmp14995))))
                (declare (not safe))
                (cons __tmp15038 __tmp14994))))
         (declare (not safe))
         (cons __tmp15039 __tmp14993))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g15042_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g15043_|
       'expander-identifiers:
       (let ((__tmp15044
              (let ((__tmp15065 |[1]#_g15043_|)
                    (__tmp15045
                     (let ((__tmp15063 |[1]#_g15064_|)
                           (__tmp15046
                            (let ((__tmp15061 |[1]#_g15062_|)
                                  (__tmp15047
                                   (let ((__tmp15055
                                          (let ((__tmp15059 |[1]#_g15060_|)
                                                (__tmp15056
                                                 (let ((__tmp15057
                                                        |[1]#_g15058_|))
                                                   (declare (not safe))
                                                   (cons __tmp15057 '()))))
                                            (declare (not safe))
                                            (cons __tmp15059 __tmp15056)))
                                         (__tmp15048
                                          (let ((__tmp15049
                                                 (let ((__tmp15053
                                                        |[1]#_g15054_|)
                                                       (__tmp15050
                                                        (let ((__tmp15051
                                                               |[1]#_g15052_|))
                                                          (declare (not safe))
                                                          (cons __tmp15051
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp15053
                                                         __tmp15050))))
                                            (declare (not safe))
                                            (cons __tmp15049 '()))))
                                     (declare (not safe))
                                     (cons __tmp15055 __tmp15048))))
                              (declare (not safe))
                              (cons __tmp15061 __tmp15047))))
                       (declare (not safe))
                       (cons __tmp15063 __tmp15046))))
                (declare (not safe))
                (cons __tmp15065 __tmp15045))))
         (declare (not safe))
         (cons '#f __tmp15044))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
