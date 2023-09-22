(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14873_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14879_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14892_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14894_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14896_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14898_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14900_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14902_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14910_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14912_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14914_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14916_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14918_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14920_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14922_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14924_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14928_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14929_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14930_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14939_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14941_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14945_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14947_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14949_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14951_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13090_)
        (let* ((_g1309413118_
                (lambda (_g1309513114_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1309513114_)))
               (_g1309313204_
                (lambda (_g1309513122_)
                  (if (gx#stx-pair? _g1309513122_)
                      (let ((_e1310013125_ (gx#syntax-e _g1309513122_)))
                        (let ((_hd1309913129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1310013125_)))
                              (_tl1309813132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1310013125_))))
                          (if (gx#stx-pair? _tl1309813132_)
                              (let ((_e1310313135_
                                     (gx#syntax-e _tl1309813132_)))
                                (let ((_hd1310213139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1310313135_)))
                                      (_tl1310113142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1310313135_))))
                                  (if (gx#stx-pair/null? _tl1310113142_)
                                      (let ((_g14769_
                                             (gx#syntax-split-splice
                                              _tl1310113142_
                                              '0)))
                                        (begin
                                          (let ((_g14770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14769_)
                                                       (##vector-length
                                                        _g14769_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14770_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14770_)))
                                          (let ((_target1310413145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14769_ 0)))
                                                (_tl1310613148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14769_ 1))))
                                            (if (gx#stx-null? _tl1310613148_)
                                                (letrec ((_loop1310713151_
                                                          (lambda (_hd1310513155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1311113158_)
                    (if (gx#stx-pair? _hd1310513155_)
                        (let ((_e1310813161_ (gx#syntax-e _hd1310513155_)))
                          (let ((_lp-hd1310913165_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1310813161_)))
                                (_lp-tl1311013168_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1310813161_))))
                            (_loop1310713151_
                             _lp-tl1311013168_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1310913165_ _body1311113158_)))))
                        (let ((_body1311213171_ (reverse _body1311113158_)))
                          ((lambda (_L13175_ _L13177_)
                             (let ((__tmp14782 (gx#datum->syntax '#f 'let))
                                   (__tmp14771
                                    (let ((__tmp14779
                                           (let ((__tmp14781
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14780
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13177_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14781 __tmp14780)))
                                          (__tmp14772
                                           (let ((__tmp14773
                                                  (let ((__tmp14778
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14774
                                                         (let ((__tmp14777
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14775
                        (let ((__tmp14776
                               (lambda (_g1319513198_ _g1319613201_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1319513198_ _g1319613201_)))))
                          (declare (not safe))
                          (foldr1 __tmp14776 '() _L13175_))))
                   (declare (not safe))
                   (cons __tmp14777 __tmp14775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14778
                                                          __tmp14774))))
                                             (declare (not safe))
                                             (cons __tmp14773 '()))))
                                      (declare (not safe))
                                      (cons __tmp14779 __tmp14772))))
                               (declare (not safe))
                               (cons __tmp14782 __tmp14771)))
                           _body1311213171_
                           _hd1310213139_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1310713151_
                                                   _target1310413145_
                                                   '()))
                                                (_g1309413118_
                                                 _g1309513122_)))))
                                      (_g1309413118_ _g1309513122_))))
                              (_g1309413118_ _g1309513122_))))
                      (_g1309413118_ _g1309513122_)))))
          (_g1309313204_ _$stx13090_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13209_)
        (letrec ((_generate113212_
                  (lambda (_hd13753_ _tgt13755_ _K13756_ _E13757_ _kws13758_)
                    (let* ((_g1376013768_
                            (lambda (_g1376113764_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1376113764_)))
                           (_g1375914195_
                            (lambda (_g1376113772_)
                              ((lambda (_L13775_)
                                 (let ()
                                   (let* ((___stx1467214673_ _hd13753_)
                                          (_g1378913803_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1467214673_))))
                                     (let ((___kont1467514676_
                                            (lambda (_L14017_ _L14019_)
                                              (let* ((_g1403014038_
                                                      (lambda (_g1403114034_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1403114034_)))
                                                     (_g1402914187_
                                                      (lambda (_g1403114042_)
                                                        ((lambda (_L14045_)
                                                           (let ()
                                                             (let* ((_g1405714065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1405814061_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1405814061_)))
                            (_g1405614183_
                             (lambda (_g1405814069_)
                               ((lambda (_L14072_)
                                  (let ()
                                    (let* ((_g1408514093_
                                            (lambda (_g1408614089_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1408614089_)))
                                           (_g1408414179_
                                            (lambda (_g1408614097_)
                                              ((lambda (_L14100_)
                                                 (let ()
                                                   (let* ((_g1411314121_
                                                           (lambda (_g1411414117_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1411414117_)))
                                                          (_g1411214175_
                                                           (lambda (_g1411414125_)
                                                             ((lambda (_L14128_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1414114149_
                                  (lambda (_g1414214145_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1414214145_)))
                                 (_g1414014171_
                                  (lambda (_g1414214153_)
                                    ((lambda (_L14156_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14811
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14783
                                                  (let ((__tmp14808
                                                         (let ((__tmp14810
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14809
                        (let () (declare (not safe)) (cons _L13775_ '()))))
                   (declare (not safe))
                   (cons __tmp14810 __tmp14809)))
                (__tmp14784
                 (let ((__tmp14786
                        (let ((__tmp14807 (gx#datum->syntax '#f 'let*))
                              (__tmp14787
                               (let ((__tmp14789
                                      (let ((__tmp14802
                                             (let ((__tmp14803
                                                    (let ((__tmp14804
                                                           (let ((__tmp14806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14805
                          (let () (declare (not safe)) (cons _L13775_ '()))))
                     (declare (not safe))
                     (cons __tmp14806 __tmp14805))))
              (declare (not safe))
              (cons __tmp14804 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14045_ __tmp14803)))
                                            (__tmp14790
                                             (let ((__tmp14797
                                                    (let ((__tmp14798
                                                           (let ((__tmp14799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14801 (gx#datum->syntax '#f '##car))
                                (__tmp14800
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14045_ '()))))
                            (declare (not safe))
                            (cons __tmp14801 __tmp14800))))
                     (declare (not safe))
                     (cons __tmp14799 '()))))
              (declare (not safe))
              (cons _L14072_ __tmp14798)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14791
                                                    (let ((__tmp14792
                                                           (let ((__tmp14793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14794
                                 (let ((__tmp14796
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14795
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14045_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14796 __tmp14795))))
                            (declare (not safe))
                            (cons __tmp14794 '()))))
                     (declare (not safe))
                     (cons _L14100_ __tmp14793))))
              (declare (not safe))
              (cons __tmp14792 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14797 __tmp14791))))
                                        (declare (not safe))
                                        (cons __tmp14802 __tmp14790)))
                                     (__tmp14788
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14128_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14789 __tmp14788))))
                          (declare (not safe))
                          (cons __tmp14807 __tmp14787)))
                       (__tmp14785
                        (let () (declare (not safe)) (cons _L14156_ '()))))
                   (declare (not safe))
                   (cons __tmp14786 __tmp14785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14808
                                                          __tmp14784))))
                                             (declare (not safe))
                                             (cons __tmp14811 __tmp14783)))))
                                     _g1414214153_))))
                            (_g1414014171_ _E13757_))))
                      _g1411414125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1411214175_
                                                      (_generate113212_
                                                       _L14019_
                                                       _L14072_
                                                       (_generate113212_
                                                        _L14017_
                                                        _L14100_
                                                        _K13756_
                                                        _E13757_
                                                        _kws13758_)
                                                       _E13757_
                                                       _kws13758_)))))
                                               _g1408614097_))))
                                      (_g1408414179_ (gx#genident '$tl)))))
                                _g1405814069_))))
                       (_g1405614183_ (gx#genident '$hd)))))
                 _g1403114042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1402914187_
                                                 (gx#genident '$tgt)))))
                                           (___kont1467714678_
                                            (lambda (_L13892_)
                                              (if (gx#underscore? _L13892_)
                                                  _K13756_
                                                  (if (let ((__tmp14840
                                                             (lambda (_g1390013902_)
                                                               (gx#bound-identifier=?
                                                                _g1390013902_
                                                                _L13892_)))
                                                            (__tmp14839
                                                             (gx#syntax->list
                                                              _kws13758_)))
                                                        (declare (not safe))
                                                        (find __tmp14840
                                                              __tmp14839))
                                                      (let* ((_g1390613921_
                                                              (lambda (_g1390713917_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1390713917_)))
                     (_g1390513966_
                      (lambda (_g1390713925_)
                        (if (gx#stx-pair? _g1390713925_)
                            (let ((_e1391213928_ (gx#syntax-e _g1390713925_)))
                              (let ((_hd1391113932_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1391213928_)))
                                    (_tl1391013935_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1391213928_))))
                                (if (gx#stx-pair? _tl1391013935_)
                                    (let ((_e1391513938_
                                           (gx#syntax-e _tl1391013935_)))
                                      (let ((_hd1391413942_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1391513938_)))
                                            (_tl1391313945_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1391513938_))))
                                        (if (gx#stx-null? _tl1391313945_)
                                            ((lambda (_L13948_ _L13950_)
                                               (let ()
                                                 (let ((__tmp14838
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14818
                                                        (let ((__tmp14821
                                                               (let ((__tmp14837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14822
                              (let ((__tmp14834
                                     (let ((__tmp14836
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14835
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13775_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14836 __tmp14835)))
                                    (__tmp14823
                                     (let ((__tmp14824
                                            (let ((__tmp14833
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14825
                                                   (let ((__tmp14830
                                                          (let ((__tmp14832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14831
                         (let () (declare (not safe)) (cons _L13775_ '()))))
                    (declare (not safe))
                    (cons __tmp14832 __tmp14831)))
                 (__tmp14826
                  (let ((__tmp14827
                         (let ((__tmp14829 (gx#datum->syntax '#f 'quote))
                               (__tmp14828
                                (let ()
                                  (declare (not safe))
                                  (cons _L13892_ '()))))
                           (declare (not safe))
                           (cons __tmp14829 __tmp14828))))
                    (declare (not safe))
                    (cons __tmp14827 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14830
                                                           __tmp14826))))
                                              (declare (not safe))
                                              (cons __tmp14833 __tmp14825))))
                                       (declare (not safe))
                                       (cons __tmp14824 '()))))
                                (declare (not safe))
                                (cons __tmp14834 __tmp14823))))
                         (declare (not safe))
                         (cons __tmp14837 __tmp14822)))
                      (__tmp14819
                       (let ((__tmp14820
                              (let ()
                                (declare (not safe))
                                (cons _L13948_ '()))))
                         (declare (not safe))
                         (cons _L13950_ __tmp14820))))
                  (declare (not safe))
                  (cons __tmp14821 __tmp14819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14838
                                                         __tmp14818))))
                                             _hd1391413942_
                                             _hd1391113932_)
                                            (_g1390613921_ _g1390713925_))))
                                    (_g1390613921_ _g1390713925_))))
                            (_g1390613921_ _g1390713925_)))))
                (_g1390513966_ (list _K13756_ _E13757_)))
              (let* ((_g1397013978_
                      (lambda (_g1397113974_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1397113974_)))
                     (_g1396913996_
                      (lambda (_g1397113982_)
                        ((lambda (_L13985_)
                           (let ()
                             (let ((__tmp14817 (gx#datum->syntax '#f 'let))
                                   (__tmp14812
                                    (let ((__tmp14814
                                           (let ((__tmp14815
                                                  (let ((__tmp14816
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13892_
                                                          __tmp14816))))
                                             (declare (not safe))
                                             (cons __tmp14815 '())))
                                          (__tmp14813
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13985_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14814 __tmp14813))))
                               (declare (not safe))
                               (cons __tmp14817 __tmp14812))))
                         _g1397113982_))))
                (_g1396913996_ _K13756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1467914680_
                                            (lambda (_L13810_)
                                              (let* ((_g1382113836_
                                                      (lambda (_g1382213832_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1382213832_)))
                                                     (_g1382013881_
                                                      (lambda (_g1382213840_)
                                                        (if (gx#stx-pair?
                                                             _g1382213840_)
                                                            (let ((_e1382713843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1382213840_)))
                      (let ((_hd1382613847_
                             (let ()
                               (declare (not safe))
                               (##car _e1382713843_)))
                            (_tl1382513850_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1382713843_))))
                        (if (gx#stx-pair? _tl1382513850_)
                            (let ((_e1383013853_ (gx#syntax-e _tl1382513850_)))
                              (let ((_hd1382913857_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1383013853_)))
                                    (_tl1382813860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1383013853_))))
                                (if (gx#stx-null? _tl1382813860_)
                                    ((lambda (_L13863_ _L13865_)
                                       (let ()
                                         (let ((__tmp14854
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14841
                                                (let ((__tmp14844
                                                       (let ((__tmp14853
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14845
                                                              (let ((__tmp14850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14852 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14851
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13775_ '()))))
                               (declare (not safe))
                               (cons __tmp14852 __tmp14851)))
                            (__tmp14846
                             (let ((__tmp14847
                                    (let ((__tmp14849
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14848
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13810_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14849 __tmp14848))))
                               (declare (not safe))
                               (cons __tmp14847 '()))))
                        (declare (not safe))
                        (cons __tmp14850 __tmp14846))))
                 (declare (not safe))
                 (cons __tmp14853 __tmp14845)))
              (__tmp14842
               (let ((__tmp14843
                      (let () (declare (not safe)) (cons _L13863_ '()))))
                 (declare (not safe))
                 (cons _L13865_ __tmp14843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14844
                                                        __tmp14842))))
                                           (declare (not safe))
                                           (cons __tmp14854 __tmp14841))))
                                     _hd1382913857_
                                     _hd1382613847_)
                                    (_g1382113836_ _g1382213840_))))
                            (_g1382113836_ _g1382213840_))))
                    (_g1382113836_ _g1382213840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1382013881_
                                                 (list _K13756_ _E13757_))))))
                                       (let ((_g1378714000_
                                              (lambda ()
                                                (let ((_L13892_
                                                       ___stx1467214673_))
                                                  (if (gx#identifier? _L13892_)
                                                      (___kont1467714678_
                                                       _L13892_)
                                                      (___kont1467914680_
                                                       ___stx1467214673_))))))
                                         (if (gx#stx-pair? ___stx1467214673_)
                                             (let ((_e1379514007_
                                                    (gx#syntax-e
                                                     ___stx1467214673_)))
                                               (let ((_tl1379314014_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1379514007_)))
                                                     (_hd1379414011_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1379514007_))))
                                                 (___kont1467514676_
                                                  _tl1379314014_
                                                  _hd1379414011_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1378714000_))))))))
                               _g1376113772_))))
                      (_g1375914195_ _tgt13755_)))))
          (let* ((_g1321513243_
                  (lambda (_g1321613239_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1321613239_)))
                 (_g1321413749_
                  (lambda (_g1321613247_)
                    (if (gx#stx-pair? _g1321613247_)
                        (let ((_e1322213250_ (gx#syntax-e _g1321613247_)))
                          (let ((_hd1322113254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1322213250_)))
                                (_tl1322013257_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1322213250_))))
                            (if (gx#stx-pair? _tl1322013257_)
                                (let ((_e1322513260_
                                       (gx#syntax-e _tl1322013257_)))
                                  (let ((_hd1322413264_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1322513260_)))
                                        (_tl1322313267_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1322513260_))))
                                    (if (gx#stx-pair? _tl1322313267_)
                                        (let ((_e1322813270_
                                               (gx#syntax-e _tl1322313267_)))
                                          (let ((_hd1322713274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1322813270_)))
                                                (_tl1322613277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1322813270_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1322613277_)
                                                (let ((_g14855_
                                                       (gx#syntax-split-splice
                                                        _tl1322613277_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14855_)
                         (##vector-length _g14855_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14856_ 2)))
                  (error "Context expects 2 values" _g14856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1322913280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14855_
                                                              0)))
                                                          (_tl1323113283_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14855_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1323113283_)
                                                          (letrec ((_loop1323213286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1323013290_ _clause1323613293_)
                              (if (gx#stx-pair? _hd1323013290_)
                                  (let ((_e1323313296_
                                         (gx#syntax-e _hd1323013290_)))
                                    (let ((_lp-hd1323413300_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1323313296_)))
                                          (_lp-tl1323513303_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1323313296_))))
                                      (_loop1323213286_
                                       _lp-tl1323513303_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1323413300_
                                               _clause1323613293_)))))
                                  (let ((_clause1323713306_
                                         (reverse _clause1323613293_)))
                                    ((lambda (_L13310_ _L13312_ _L13313_)
                                       (let _recur13335_ ((_rest13338_
                                                           (let ((__tmp14878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1374013743_ _g1374113746_)
                            (let ()
                              (declare (not safe))
                              (cons _g1374013743_ _g1374113746_)))))
                     (declare (not safe))
                     (foldr1 __tmp14878 '() _L13310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1334013349_ _rest13338_)
                                                (_E1334313355_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1334013349_))))
                                           (let ((_K1334513725_
                                                  (lambda (_rest13371_
                                                           _hd13373_)
                                                    (let* ((_g1337513383_
                                                            (lambda (_g1337613379_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1337613379_)))
                                                           (_g1337413721_
                                                            (lambda (_g1337613387_)
                                                              ((lambda (_L13390_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1340813416_
                                   (lambda (_g1340913412_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1340913412_)))
                                  (_g1340713717_
                                   (lambda (_g1340913420_)
                                     ((lambda (_L13423_)
                                        (let ()
                                          (let* ((_g1343613444_
                                                  (lambda (_g1343713440_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1343713440_)))
                                                 (_g1343513713_
                                                  (lambda (_g1343713448_)
                                                    ((lambda (_L13451_)
                                                       (let ()
                                                         (let* ((_g1346413472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1346513468_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1346513468_)))
                        (_g1346313494_
                         (lambda (_g1346513476_)
                           ((lambda (_L13479_)
                              (let ()
                                (let ()
                                  (let ((__tmp14865
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14857
                                         (let ((__tmp14859
                                                (let ((__tmp14860
                                                       (let ((__tmp14861
                                                              (let ((__tmp14864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14862
                             (let ((__tmp14863
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13451_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14863))))
                        (declare (not safe))
                        (cons __tmp14864 __tmp14862))))
                 (declare (not safe))
                 (cons __tmp14861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13390_ __tmp14860)))
                                               (__tmp14858
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13479_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14859 __tmp14858))))
                                    (declare (not safe))
                                    (cons __tmp14865 __tmp14857)))))
                            _g1346513476_))))
                   (_g1346313494_
                    (let* ((___stx1469014691_ _hd13373_)
                           (_g1350013540_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1469014691_))))
                      (let ((___kont1469314694_
                             (lambda (_L13686_)
                               (let ((__tmp14868 (gx#datum->syntax '#f 'begin))
                                     (__tmp14866
                                      (let ((__tmp14867
                                             (lambda (_g1370013703_
                                                      _g1370113706_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1370013703_
                                                       _g1370113706_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14867 '() _L13686_))))
                                 (declare (not safe))
                                 (cons __tmp14868 __tmp14866))))
                            (___kont1469714698_
                             (lambda (_L13624_ _L13626_)
                               (_generate113212_
                                _L13626_
                                _L13313_
                                _L13624_
                                _L13423_
                                _L13312_)))
                            (___kont1469914700_
                             (lambda (_L13577_ _L13579_ _L13580_)
                               (_generate113212_
                                _L13580_
                                _L13313_
                                (let ((__tmp14872 (gx#datum->syntax '#f 'if))
                                      (__tmp14869
                                       (let ((__tmp14870
                                              (let ((__tmp14871
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13423_ '()))))
                                                (declare (not safe))
                                                (cons _L13577_ __tmp14871))))
                                         (declare (not safe))
                                         (cons _L13579_ __tmp14870))))
                                  (declare (not safe))
                                  (cons __tmp14872 __tmp14869))
                                _L13423_
                                _L13312_))))
                        (let ((___match1471914720_
                               (lambda (_e1350513646_
                                        _hd1350413650_
                                        _tl1350313653_
                                        ___splice1469514696_
                                        _target1350613656_
                                        _tl1350813659_)
                                 (letrec ((_loop1350913662_
                                           (lambda (_hd1350713666_
                                                    _expr1351313669_)
                                             (if (gx#stx-pair? _hd1350713666_)
                                                 (let ((_e1351013672_
                                                        (gx#syntax-e
                                                         _hd1350713666_)))
                                                   (let ((_lp-tl1351213679_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1351013672_)))
                                                         (_lp-hd1351113676_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1351013672_))))
                                                     (_loop1350913662_
                                                      _lp-tl1351213679_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1351113676_
                                                              _expr1351313669_)))))
                                                 (let ((_expr1351413682_
                                                        (reverse _expr1351313669_)))
                                                   (___kont1469314694_
                                                    _expr1351413682_))))))
                                   (_loop1350913662_
                                    _target1350613656_
                                    '())))))
                          (if (gx#stx-pair? ___stx1469014691_)
                              (let ((_e1350513646_
                                     (gx#syntax-e ___stx1469014691_)))
                                (let ((_tl1350313653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1350513646_)))
                                      (_hd1350413650_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1350513646_))))
                                  (if (gx#identifier? _hd1350413650_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14873_|
                                           _hd1350413650_)
                                          (if (gx#stx-pair/null?
                                               _tl1350313653_)
                                              (let ((___splice1469514696_
                                                     (gx#syntax-split-splice
                                                      _tl1350313653_
                                                      '0)))
                                                (let ((_tl1350813659_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1469514696_
                                                          '1)))
                                                      (_target1350613656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1469514696_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1350813659_)
                                                      (___match1471914720_
                                                       _e1350513646_
                                                       _hd1350413650_
                                                       _tl1350313653_
                                                       ___splice1469514696_
                                                       _target1350613656_
                                                       _tl1350813659_)
                                                      (if (gx#stx-pair?
                                                           _tl1350313653_)
                                                          (let ((_e1352213614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1350313653_)))
                    (let ((_tl1352013621_
                           (let () (declare (not safe)) (##cdr _e1352213614_)))
                          (_hd1352113618_
                           (let ()
                             (declare (not safe))
                             (##car _e1352213614_))))
                      (if (gx#stx-null? _tl1352013621_)
                          (___kont1469714698_ _hd1352113618_ _hd1350413650_)
                          (if (gx#stx-pair? _tl1352013621_)
                              (let ((_e1353413567_
                                     (gx#syntax-e _tl1352013621_)))
                                (let ((_tl1353213574_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1353413567_)))
                                      (_hd1353313571_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1353413567_))))
                                  (if (gx#stx-null? _tl1353213574_)
                                      (___kont1469914700_
                                       _hd1353313571_
                                       _hd1352113618_
                                       _hd1350413650_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1350013540_)))))
                              (let () (declare (not safe)) (_g1350013540_))))))
                  (let () (declare (not safe)) (_g1350013540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1350313653_)
                                                  (let ((_e1352213614_
                                                         (gx#syntax-e
                                                          _tl1350313653_)))
                                                    (let ((_tl1352013621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1352213614_)))
                                                          (_hd1352113618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1352213614_))))
                                                      (if (gx#stx-null?
                                                           _tl1352013621_)
                                                          (___kont1469714698_
                                                           _hd1352113618_
                                                           _hd1350413650_)
                                                          (if (gx#stx-pair?
                                                               _tl1352013621_)
                                                              (let ((_e1353413567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1352013621_)))
                        (let ((_tl1353213574_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1353413567_)))
                              (_hd1353313571_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1353413567_))))
                          (if (gx#stx-null? _tl1353213574_)
                              (___kont1469914700_
                               _hd1353313571_
                               _hd1352113618_
                               _hd1350413650_)
                              (let () (declare (not safe)) (_g1350013540_)))))
                      (let () (declare (not safe)) (_g1350013540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1350013540_))))
                                          (if (gx#stx-pair? _tl1350313653_)
                                              (let ((_e1352213614_
                                                     (gx#syntax-e
                                                      _tl1350313653_)))
                                                (let ((_tl1352013621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1352213614_)))
                                                      (_hd1352113618_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1352213614_))))
                                                  (if (gx#stx-null?
                                                       _tl1352013621_)
                                                      (___kont1469714698_
                                                       _hd1352113618_
                                                       _hd1350413650_)
                                                      (if (gx#stx-pair?
                                                           _tl1352013621_)
                                                          (let ((_e1353413567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1352013621_)))
                    (let ((_tl1353213574_
                           (let () (declare (not safe)) (##cdr _e1353413567_)))
                          (_hd1353313571_
                           (let ()
                             (declare (not safe))
                             (##car _e1353413567_))))
                      (if (gx#stx-null? _tl1353213574_)
                          (___kont1469914700_
                           _hd1353313571_
                           _hd1352113618_
                           _hd1350413650_)
                          (let () (declare (not safe)) (_g1350013540_)))))
                  (let () (declare (not safe)) (_g1350013540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1350013540_))))
                                      (if (gx#stx-pair? _tl1350313653_)
                                          (let ((_e1352213614_
                                                 (gx#syntax-e _tl1350313653_)))
                                            (let ((_tl1352013621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1352213614_)))
                                                  (_hd1352113618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1352213614_))))
                                              (if (gx#stx-null? _tl1352013621_)
                                                  (___kont1469714698_
                                                   _hd1352113618_
                                                   _hd1350413650_)
                                                  (if (gx#stx-pair?
                                                       _tl1352013621_)
                                                      (let ((_e1353413567_
                                                             (gx#syntax-e
                                                              _tl1352013621_)))
                                                        (let ((_tl1353213574_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1353413567_)))
                      (_hd1353313571_
                       (let () (declare (not safe)) (##car _e1353413567_))))
                  (if (gx#stx-null? _tl1353213574_)
                      (___kont1469914700_
                       _hd1353313571_
                       _hd1352113618_
                       _hd1350413650_)
                      (let () (declare (not safe)) (_g1350013540_)))))
              (let () (declare (not safe)) (_g1350013540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1350013540_))))))
                              (let ()
                                (declare (not safe))
                                (_g1350013540_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1343713448_))))
                                            (_g1343513713_
                                             (_recur13335_ _rest13371_)))))
                                      _g1340913420_))))
                             (_g1340713717_
                              (let ()
                                (declare (not safe))
                                (cons _L13390_ '()))))))
                       _g1337613387_))))
              (_g1337413721_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1334413363_
                                                  (lambda ()
                                                    (let ((__tmp14877
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14874
                                                           (let ((__tmp14875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14876
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13313_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax" __tmp14876))))
                     (declare (not safe))
                     (cons '#f __tmp14875))))
              (declare (not safe))
              (cons __tmp14877 __tmp14874)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1334213367_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1334013349_))
                                                          (_K1334413363_)
                                                          (_E1334313355_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1334013349_))
                                                   (let ((_tl1334713732_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1334013349_)))
                                                         (_hd1334613729_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1334013349_))))
                                                     (let ((_hd13735_
                                                            _hd1334613729_)
                                                           (_rest13738_
                                                            _tl1334713732_))
                                                       (_K1334513725_
                                                        _rest13738_
                                                        _hd13735_)))
                                                   (_try-match1334213367_)))))))
                                     _clause1323713306_
                                     _hd1322713274_
                                     _hd1322413264_))))))
                    (_loop1323213286_ _target1322913280_ '()))
                  (_g1321513243_ _g1321613247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1321513243_
                                                 _g1321613247_))))
                                        (_g1321513243_ _g1321613247_))))
                                (_g1321513243_ _g1321613247_))))
                        (_g1321513243_ _g1321613247_)))))
            (_g1321413749_ _stx13209_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14879_|
       'expander-identifiers:
       (let ((__tmp14926
              (let ((__tmp14927 |[1]#_g14928_|))
                (declare (not safe))
                (cons __tmp14927 '())))
             (__tmp14880
              (let ((__tmp14925 |[1]#_g14879_|)
                    (__tmp14881
                     (let ((__tmp14923 |[1]#_g14924_|)
                           (__tmp14882
                            (let ((__tmp14921 |[1]#_g14922_|)
                                  (__tmp14883
                                   (let ((__tmp14903
                                          (let ((__tmp14919 |[1]#_g14920_|)
                                                (__tmp14904
                                                 (let ((__tmp14917
                                                        |[1]#_g14918_|)
                                                       (__tmp14905
                                                        (let ((__tmp14915
                                                               |[1]#_g14916_|)
                                                              (__tmp14906
                                                               (let ((__tmp14913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14914_|)
                             (__tmp14907
                              (let ((__tmp14911 |[1]#_g14912_|)
                                    (__tmp14908
                                     (let ((__tmp14909 |[1]#_g14910_|))
                                       (declare (not safe))
                                       (cons __tmp14909 '()))))
                                (declare (not safe))
                                (cons __tmp14911 __tmp14908))))
                         (declare (not safe))
                         (cons __tmp14913 __tmp14907))))
                  (declare (not safe))
                  (cons __tmp14915 __tmp14906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14917
                                                         __tmp14905))))
                                            (declare (not safe))
                                            (cons __tmp14919 __tmp14904)))
                                         (__tmp14884
                                          (let ((__tmp14885
                                                 (let ((__tmp14901
                                                        |[1]#_g14902_|)
                                                       (__tmp14886
                                                        (let ((__tmp14899
                                                               |[1]#_g14900_|)
                                                              (__tmp14887
                                                               (let ((__tmp14897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14898_|)
                             (__tmp14888
                              (let ((__tmp14895 |[1]#_g14896_|)
                                    (__tmp14889
                                     (let ((__tmp14893 |[1]#_g14894_|)
                                           (__tmp14890
                                            (let ((__tmp14891 |[1]#_g14892_|))
                                              (declare (not safe))
                                              (cons __tmp14891 '()))))
                                       (declare (not safe))
                                       (cons __tmp14893 __tmp14890))))
                                (declare (not safe))
                                (cons __tmp14895 __tmp14889))))
                         (declare (not safe))
                         (cons __tmp14897 __tmp14888))))
                  (declare (not safe))
                  (cons __tmp14899 __tmp14887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14901
                                                         __tmp14886))))
                                            (declare (not safe))
                                            (cons __tmp14885 '()))))
                                     (declare (not safe))
                                     (cons __tmp14903 __tmp14884))))
                              (declare (not safe))
                              (cons __tmp14921 __tmp14883))))
                       (declare (not safe))
                       (cons __tmp14923 __tmp14882))))
                (declare (not safe))
                (cons __tmp14925 __tmp14881))))
         (declare (not safe))
         (cons __tmp14926 __tmp14880))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14929_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14930_|
       'expander-identifiers:
       (let ((__tmp14931
              (let ((__tmp14952 |[1]#_g14930_|)
                    (__tmp14932
                     (let ((__tmp14950 |[1]#_g14951_|)
                           (__tmp14933
                            (let ((__tmp14948 |[1]#_g14949_|)
                                  (__tmp14934
                                   (let ((__tmp14942
                                          (let ((__tmp14946 |[1]#_g14947_|)
                                                (__tmp14943
                                                 (let ((__tmp14944
                                                        |[1]#_g14945_|))
                                                   (declare (not safe))
                                                   (cons __tmp14944 '()))))
                                            (declare (not safe))
                                            (cons __tmp14946 __tmp14943)))
                                         (__tmp14935
                                          (let ((__tmp14936
                                                 (let ((__tmp14940
                                                        |[1]#_g14941_|)
                                                       (__tmp14937
                                                        (let ((__tmp14938
                                                               |[1]#_g14939_|))
                                                          (declare (not safe))
                                                          (cons __tmp14938
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp14940
                                                         __tmp14937))))
                                            (declare (not safe))
                                            (cons __tmp14936 '()))))
                                     (declare (not safe))
                                     (cons __tmp14942 __tmp14935))))
                              (declare (not safe))
                              (cons __tmp14948 __tmp14934))))
                       (declare (not safe))
                       (cons __tmp14950 __tmp14933))))
                (declare (not safe))
                (cons __tmp14952 __tmp14932))))
         (declare (not safe))
         (cons '#f __tmp14931))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
