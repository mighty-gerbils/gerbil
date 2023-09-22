(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14861_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14867_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14880_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14882_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14884_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14886_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14888_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14890_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14898_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14900_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14902_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14904_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14906_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14908_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14910_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14912_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14916_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14917_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14918_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14927_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14929_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14933_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14935_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14937_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14939_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13078_)
        (let* ((_g1308213106_
                (lambda (_g1308313102_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1308313102_)))
               (_g1308113192_
                (lambda (_g1308313110_)
                  (if (gx#stx-pair? _g1308313110_)
                      (let ((_e1308813113_ (gx#syntax-e _g1308313110_)))
                        (let ((_hd1308713117_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1308813113_)))
                              (_tl1308613120_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1308813113_))))
                          (if (gx#stx-pair? _tl1308613120_)
                              (let ((_e1309113123_
                                     (gx#syntax-e _tl1308613120_)))
                                (let ((_hd1309013127_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1309113123_)))
                                      (_tl1308913130_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1309113123_))))
                                  (if (gx#stx-pair/null? _tl1308913130_)
                                      (let ((_g14757_
                                             (gx#syntax-split-splice
                                              _tl1308913130_
                                              '0)))
                                        (begin
                                          (let ((_g14758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14757_)
                                                       (##vector-length
                                                        _g14757_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14758_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14758_)))
                                          (let ((_target1309213133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14757_ 0)))
                                                (_tl1309413136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14757_ 1))))
                                            (if (gx#stx-null? _tl1309413136_)
                                                (letrec ((_loop1309513139_
                                                          (lambda (_hd1309313143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1309913146_)
                    (if (gx#stx-pair? _hd1309313143_)
                        (let ((_e1309613149_ (gx#syntax-e _hd1309313143_)))
                          (let ((_lp-hd1309713153_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1309613149_)))
                                (_lp-tl1309813156_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1309613149_))))
                            (_loop1309513139_
                             _lp-tl1309813156_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1309713153_ _body1309913146_)))))
                        (let ((_body1310013159_ (reverse _body1309913146_)))
                          ((lambda (_L13163_ _L13165_)
                             (let ((__tmp14770 (gx#datum->syntax '#f 'let))
                                   (__tmp14759
                                    (let ((__tmp14767
                                           (let ((__tmp14769
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14768
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13165_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14769 __tmp14768)))
                                          (__tmp14760
                                           (let ((__tmp14761
                                                  (let ((__tmp14766
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14762
                                                         (let ((__tmp14765
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14763
                        (let ((__tmp14764
                               (lambda (_g1318313186_ _g1318413189_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1318313186_ _g1318413189_)))))
                          (declare (not safe))
                          (foldr1 __tmp14764 '() _L13163_))))
                   (declare (not safe))
                   (cons __tmp14765 __tmp14763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14766
                                                          __tmp14762))))
                                             (declare (not safe))
                                             (cons __tmp14761 '()))))
                                      (declare (not safe))
                                      (cons __tmp14767 __tmp14760))))
                               (declare (not safe))
                               (cons __tmp14770 __tmp14759)))
                           _body1310013159_
                           _hd1309013127_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1309513139_
                                                   _target1309213133_
                                                   '()))
                                                (_g1308213106_
                                                 _g1308313110_)))))
                                      (_g1308213106_ _g1308313110_))))
                              (_g1308213106_ _g1308313110_))))
                      (_g1308213106_ _g1308313110_)))))
          (_g1308113192_ _$stx13078_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13197_)
        (letrec ((_generate113200_
                  (lambda (_hd13741_ _tgt13743_ _K13744_ _E13745_ _kws13746_)
                    (let* ((_g1374813756_
                            (lambda (_g1374913752_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1374913752_)))
                           (_g1374714183_
                            (lambda (_g1374913760_)
                              ((lambda (_L13763_)
                                 (let ()
                                   (let* ((___stx1466014661_ _hd13741_)
                                          (_g1377713791_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1466014661_))))
                                     (let ((___kont1466314664_
                                            (lambda (_L14005_ _L14007_)
                                              (let* ((_g1401814026_
                                                      (lambda (_g1401914022_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1401914022_)))
                                                     (_g1401714175_
                                                      (lambda (_g1401914030_)
                                                        ((lambda (_L14033_)
                                                           (let ()
                                                             (let* ((_g1404514053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1404614049_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1404614049_)))
                            (_g1404414171_
                             (lambda (_g1404614057_)
                               ((lambda (_L14060_)
                                  (let ()
                                    (let* ((_g1407314081_
                                            (lambda (_g1407414077_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1407414077_)))
                                           (_g1407214167_
                                            (lambda (_g1407414085_)
                                              ((lambda (_L14088_)
                                                 (let ()
                                                   (let* ((_g1410114109_
                                                           (lambda (_g1410214105_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1410214105_)))
                                                          (_g1410014163_
                                                           (lambda (_g1410214113_)
                                                             ((lambda (_L14116_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1412914137_
                                  (lambda (_g1413014133_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1413014133_)))
                                 (_g1412814159_
                                  (lambda (_g1413014141_)
                                    ((lambda (_L14144_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14799
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14771
                                                  (let ((__tmp14796
                                                         (let ((__tmp14798
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14797
                        (let () (declare (not safe)) (cons _L13763_ '()))))
                   (declare (not safe))
                   (cons __tmp14798 __tmp14797)))
                (__tmp14772
                 (let ((__tmp14774
                        (let ((__tmp14795 (gx#datum->syntax '#f 'let*))
                              (__tmp14775
                               (let ((__tmp14777
                                      (let ((__tmp14790
                                             (let ((__tmp14791
                                                    (let ((__tmp14792
                                                           (let ((__tmp14794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14793
                          (let () (declare (not safe)) (cons _L13763_ '()))))
                     (declare (not safe))
                     (cons __tmp14794 __tmp14793))))
              (declare (not safe))
              (cons __tmp14792 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14033_ __tmp14791)))
                                            (__tmp14778
                                             (let ((__tmp14785
                                                    (let ((__tmp14786
                                                           (let ((__tmp14787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14789 (gx#datum->syntax '#f '##car))
                                (__tmp14788
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14033_ '()))))
                            (declare (not safe))
                            (cons __tmp14789 __tmp14788))))
                     (declare (not safe))
                     (cons __tmp14787 '()))))
              (declare (not safe))
              (cons _L14060_ __tmp14786)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14779
                                                    (let ((__tmp14780
                                                           (let ((__tmp14781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14782
                                 (let ((__tmp14784
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14783
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14033_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14784 __tmp14783))))
                            (declare (not safe))
                            (cons __tmp14782 '()))))
                     (declare (not safe))
                     (cons _L14088_ __tmp14781))))
              (declare (not safe))
              (cons __tmp14780 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14785 __tmp14779))))
                                        (declare (not safe))
                                        (cons __tmp14790 __tmp14778)))
                                     (__tmp14776
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14116_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14777 __tmp14776))))
                          (declare (not safe))
                          (cons __tmp14795 __tmp14775)))
                       (__tmp14773
                        (let () (declare (not safe)) (cons _L14144_ '()))))
                   (declare (not safe))
                   (cons __tmp14774 __tmp14773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14796
                                                          __tmp14772))))
                                             (declare (not safe))
                                             (cons __tmp14799 __tmp14771)))))
                                     _g1413014141_))))
                            (_g1412814159_ _E13745_))))
                      _g1410214113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1410014163_
                                                      (_generate113200_
                                                       _L14007_
                                                       _L14060_
                                                       (_generate113200_
                                                        _L14005_
                                                        _L14088_
                                                        _K13744_
                                                        _E13745_
                                                        _kws13746_)
                                                       _E13745_
                                                       _kws13746_)))))
                                               _g1407414085_))))
                                      (_g1407214167_ (gx#genident '$tl)))))
                                _g1404614057_))))
                       (_g1404414171_ (gx#genident '$hd)))))
                 _g1401914030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1401714175_
                                                 (gx#genident '$tgt)))))
                                           (___kont1466514666_
                                            (lambda (_L13880_)
                                              (if (gx#underscore? _L13880_)
                                                  _K13744_
                                                  (if (let ((__tmp14828
                                                             (lambda (_g1388813890_)
                                                               (gx#bound-identifier=?
                                                                _g1388813890_
                                                                _L13880_)))
                                                            (__tmp14827
                                                             (gx#syntax->list
                                                              _kws13746_)))
                                                        (declare (not safe))
                                                        (find __tmp14828
                                                              __tmp14827))
                                                      (let* ((_g1389413909_
                                                              (lambda (_g1389513905_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1389513905_)))
                     (_g1389313954_
                      (lambda (_g1389513913_)
                        (if (gx#stx-pair? _g1389513913_)
                            (let ((_e1390013916_ (gx#syntax-e _g1389513913_)))
                              (let ((_hd1389913920_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1390013916_)))
                                    (_tl1389813923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1390013916_))))
                                (if (gx#stx-pair? _tl1389813923_)
                                    (let ((_e1390313926_
                                           (gx#syntax-e _tl1389813923_)))
                                      (let ((_hd1390213930_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1390313926_)))
                                            (_tl1390113933_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1390313926_))))
                                        (if (gx#stx-null? _tl1390113933_)
                                            ((lambda (_L13936_ _L13938_)
                                               (let ()
                                                 (let ((__tmp14826
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14806
                                                        (let ((__tmp14809
                                                               (let ((__tmp14825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14810
                              (let ((__tmp14822
                                     (let ((__tmp14824
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14823
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13763_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14824 __tmp14823)))
                                    (__tmp14811
                                     (let ((__tmp14812
                                            (let ((__tmp14821
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14813
                                                   (let ((__tmp14818
                                                          (let ((__tmp14820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14819
                         (let () (declare (not safe)) (cons _L13763_ '()))))
                    (declare (not safe))
                    (cons __tmp14820 __tmp14819)))
                 (__tmp14814
                  (let ((__tmp14815
                         (let ((__tmp14817 (gx#datum->syntax '#f 'quote))
                               (__tmp14816
                                (let ()
                                  (declare (not safe))
                                  (cons _L13880_ '()))))
                           (declare (not safe))
                           (cons __tmp14817 __tmp14816))))
                    (declare (not safe))
                    (cons __tmp14815 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14818
                                                           __tmp14814))))
                                              (declare (not safe))
                                              (cons __tmp14821 __tmp14813))))
                                       (declare (not safe))
                                       (cons __tmp14812 '()))))
                                (declare (not safe))
                                (cons __tmp14822 __tmp14811))))
                         (declare (not safe))
                         (cons __tmp14825 __tmp14810)))
                      (__tmp14807
                       (let ((__tmp14808
                              (let ()
                                (declare (not safe))
                                (cons _L13936_ '()))))
                         (declare (not safe))
                         (cons _L13938_ __tmp14808))))
                  (declare (not safe))
                  (cons __tmp14809 __tmp14807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14826
                                                         __tmp14806))))
                                             _hd1390213930_
                                             _hd1389913920_)
                                            (_g1389413909_ _g1389513913_))))
                                    (_g1389413909_ _g1389513913_))))
                            (_g1389413909_ _g1389513913_)))))
                (_g1389313954_ (list _K13744_ _E13745_)))
              (let* ((_g1395813966_
                      (lambda (_g1395913962_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1395913962_)))
                     (_g1395713984_
                      (lambda (_g1395913970_)
                        ((lambda (_L13973_)
                           (let ()
                             (let ((__tmp14805 (gx#datum->syntax '#f 'let))
                                   (__tmp14800
                                    (let ((__tmp14802
                                           (let ((__tmp14803
                                                  (let ((__tmp14804
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13880_
                                                          __tmp14804))))
                                             (declare (not safe))
                                             (cons __tmp14803 '())))
                                          (__tmp14801
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13973_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14802 __tmp14801))))
                               (declare (not safe))
                               (cons __tmp14805 __tmp14800))))
                         _g1395913970_))))
                (_g1395713984_ _K13744_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1466714668_
                                            (lambda (_L13798_)
                                              (let* ((_g1380913824_
                                                      (lambda (_g1381013820_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1381013820_)))
                                                     (_g1380813869_
                                                      (lambda (_g1381013828_)
                                                        (if (gx#stx-pair?
                                                             _g1381013828_)
                                                            (let ((_e1381513831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1381013828_)))
                      (let ((_hd1381413835_
                             (let ()
                               (declare (not safe))
                               (##car _e1381513831_)))
                            (_tl1381313838_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1381513831_))))
                        (if (gx#stx-pair? _tl1381313838_)
                            (let ((_e1381813841_ (gx#syntax-e _tl1381313838_)))
                              (let ((_hd1381713845_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1381813841_)))
                                    (_tl1381613848_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1381813841_))))
                                (if (gx#stx-null? _tl1381613848_)
                                    ((lambda (_L13851_ _L13853_)
                                       (let ()
                                         (let ((__tmp14842
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14829
                                                (let ((__tmp14832
                                                       (let ((__tmp14841
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14833
                                                              (let ((__tmp14838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14840 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14839
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13763_ '()))))
                               (declare (not safe))
                               (cons __tmp14840 __tmp14839)))
                            (__tmp14834
                             (let ((__tmp14835
                                    (let ((__tmp14837
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14836
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13798_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14837 __tmp14836))))
                               (declare (not safe))
                               (cons __tmp14835 '()))))
                        (declare (not safe))
                        (cons __tmp14838 __tmp14834))))
                 (declare (not safe))
                 (cons __tmp14841 __tmp14833)))
              (__tmp14830
               (let ((__tmp14831
                      (let () (declare (not safe)) (cons _L13851_ '()))))
                 (declare (not safe))
                 (cons _L13853_ __tmp14831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14832
                                                        __tmp14830))))
                                           (declare (not safe))
                                           (cons __tmp14842 __tmp14829))))
                                     _hd1381713845_
                                     _hd1381413835_)
                                    (_g1380913824_ _g1381013828_))))
                            (_g1380913824_ _g1381013828_))))
                    (_g1380913824_ _g1381013828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1380813869_
                                                 (list _K13744_ _E13745_))))))
                                       (let ((_g1377513988_
                                              (lambda ()
                                                (let ((_L13880_
                                                       ___stx1466014661_))
                                                  (if (gx#identifier? _L13880_)
                                                      (___kont1466514666_
                                                       _L13880_)
                                                      (___kont1466714668_
                                                       ___stx1466014661_))))))
                                         (if (gx#stx-pair? ___stx1466014661_)
                                             (let ((_e1378313995_
                                                    (gx#syntax-e
                                                     ___stx1466014661_)))
                                               (let ((_tl1378114002_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1378313995_)))
                                                     (_hd1378213999_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1378313995_))))
                                                 (___kont1466314664_
                                                  _tl1378114002_
                                                  _hd1378213999_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1377513988_))))))))
                               _g1374913760_))))
                      (_g1374714183_ _tgt13743_)))))
          (let* ((_g1320313231_
                  (lambda (_g1320413227_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1320413227_)))
                 (_g1320213737_
                  (lambda (_g1320413235_)
                    (if (gx#stx-pair? _g1320413235_)
                        (let ((_e1321013238_ (gx#syntax-e _g1320413235_)))
                          (let ((_hd1320913242_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1321013238_)))
                                (_tl1320813245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1321013238_))))
                            (if (gx#stx-pair? _tl1320813245_)
                                (let ((_e1321313248_
                                       (gx#syntax-e _tl1320813245_)))
                                  (let ((_hd1321213252_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1321313248_)))
                                        (_tl1321113255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1321313248_))))
                                    (if (gx#stx-pair? _tl1321113255_)
                                        (let ((_e1321613258_
                                               (gx#syntax-e _tl1321113255_)))
                                          (let ((_hd1321513262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1321613258_)))
                                                (_tl1321413265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1321613258_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1321413265_)
                                                (let ((_g14843_
                                                       (gx#syntax-split-splice
                                                        _tl1321413265_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14843_)
                         (##vector-length _g14843_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14844_ 2)))
                  (error "Context expects 2 values" _g14844_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1321713268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14843_
                                                              0)))
                                                          (_tl1321913271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14843_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1321913271_)
                                                          (letrec ((_loop1322013274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1321813278_ _clause1322413281_)
                              (if (gx#stx-pair? _hd1321813278_)
                                  (let ((_e1322113284_
                                         (gx#syntax-e _hd1321813278_)))
                                    (let ((_lp-hd1322213288_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1322113284_)))
                                          (_lp-tl1322313291_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1322113284_))))
                                      (_loop1322013274_
                                       _lp-tl1322313291_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1322213288_
                                               _clause1322413281_)))))
                                  (let ((_clause1322513294_
                                         (reverse _clause1322413281_)))
                                    ((lambda (_L13298_ _L13300_ _L13301_)
                                       (let _recur13323_ ((_rest13326_
                                                           (let ((__tmp14866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1372813731_ _g1372913734_)
                            (let ()
                              (declare (not safe))
                              (cons _g1372813731_ _g1372913734_)))))
                     (declare (not safe))
                     (foldr1 __tmp14866 '() _L13298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1332813337_ _rest13326_)
                                                (_E1333113343_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1332813337_))))
                                           (let ((_K1333313713_
                                                  (lambda (_rest13359_
                                                           _hd13361_)
                                                    (let* ((_g1336313371_
                                                            (lambda (_g1336413367_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1336413367_)))
                                                           (_g1336213709_
                                                            (lambda (_g1336413375_)
                                                              ((lambda (_L13378_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1339613404_
                                   (lambda (_g1339713400_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1339713400_)))
                                  (_g1339513705_
                                   (lambda (_g1339713408_)
                                     ((lambda (_L13411_)
                                        (let ()
                                          (let* ((_g1342413432_
                                                  (lambda (_g1342513428_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1342513428_)))
                                                 (_g1342313701_
                                                  (lambda (_g1342513436_)
                                                    ((lambda (_L13439_)
                                                       (let ()
                                                         (let* ((_g1345213460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1345313456_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1345313456_)))
                        (_g1345113482_
                         (lambda (_g1345313464_)
                           ((lambda (_L13467_)
                              (let ()
                                (let ()
                                  (let ((__tmp14853
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14845
                                         (let ((__tmp14847
                                                (let ((__tmp14848
                                                       (let ((__tmp14849
                                                              (let ((__tmp14852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14850
                             (let ((__tmp14851
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13439_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14851))))
                        (declare (not safe))
                        (cons __tmp14852 __tmp14850))))
                 (declare (not safe))
                 (cons __tmp14849 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13378_ __tmp14848)))
                                               (__tmp14846
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13467_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14847 __tmp14846))))
                                    (declare (not safe))
                                    (cons __tmp14853 __tmp14845)))))
                            _g1345313464_))))
                   (_g1345113482_
                    (let* ((___stx1467814679_ _hd13361_)
                           (_g1348813528_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1467814679_))))
                      (let ((___kont1468114682_
                             (lambda (_L13674_)
                               (let ((__tmp14856 (gx#datum->syntax '#f 'begin))
                                     (__tmp14854
                                      (let ((__tmp14855
                                             (lambda (_g1368813691_
                                                      _g1368913694_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1368813691_
                                                       _g1368913694_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14855 '() _L13674_))))
                                 (declare (not safe))
                                 (cons __tmp14856 __tmp14854))))
                            (___kont1468514686_
                             (lambda (_L13612_ _L13614_)
                               (_generate113200_
                                _L13614_
                                _L13301_
                                _L13612_
                                _L13411_
                                _L13300_)))
                            (___kont1468714688_
                             (lambda (_L13565_ _L13567_ _L13568_)
                               (_generate113200_
                                _L13568_
                                _L13301_
                                (let ((__tmp14860 (gx#datum->syntax '#f 'if))
                                      (__tmp14857
                                       (let ((__tmp14858
                                              (let ((__tmp14859
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13411_ '()))))
                                                (declare (not safe))
                                                (cons _L13565_ __tmp14859))))
                                         (declare (not safe))
                                         (cons _L13567_ __tmp14858))))
                                  (declare (not safe))
                                  (cons __tmp14860 __tmp14857))
                                _L13411_
                                _L13300_))))
                        (let ((___match1470714708_
                               (lambda (_e1349313634_
                                        _hd1349213638_
                                        _tl1349113641_
                                        ___splice1468314684_
                                        _target1349413644_
                                        _tl1349613647_)
                                 (letrec ((_loop1349713650_
                                           (lambda (_hd1349513654_
                                                    _expr1350113657_)
                                             (if (gx#stx-pair? _hd1349513654_)
                                                 (let ((_e1349813660_
                                                        (gx#syntax-e
                                                         _hd1349513654_)))
                                                   (let ((_lp-tl1350013667_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1349813660_)))
                                                         (_lp-hd1349913664_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1349813660_))))
                                                     (_loop1349713650_
                                                      _lp-tl1350013667_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1349913664_
                                                              _expr1350113657_)))))
                                                 (let ((_expr1350213670_
                                                        (reverse _expr1350113657_)))
                                                   (___kont1468114682_
                                                    _expr1350213670_))))))
                                   (_loop1349713650_
                                    _target1349413644_
                                    '())))))
                          (if (gx#stx-pair? ___stx1467814679_)
                              (let ((_e1349313634_
                                     (gx#syntax-e ___stx1467814679_)))
                                (let ((_tl1349113641_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1349313634_)))
                                      (_hd1349213638_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1349313634_))))
                                  (if (gx#identifier? _hd1349213638_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14861_|
                                           _hd1349213638_)
                                          (if (gx#stx-pair/null?
                                               _tl1349113641_)
                                              (let ((___splice1468314684_
                                                     (gx#syntax-split-splice
                                                      _tl1349113641_
                                                      '0)))
                                                (let ((_tl1349613647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1468314684_
                                                          '1)))
                                                      (_target1349413644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1468314684_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1349613647_)
                                                      (___match1470714708_
                                                       _e1349313634_
                                                       _hd1349213638_
                                                       _tl1349113641_
                                                       ___splice1468314684_
                                                       _target1349413644_
                                                       _tl1349613647_)
                                                      (if (gx#stx-pair?
                                                           _tl1349113641_)
                                                          (let ((_e1351013602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1349113641_)))
                    (let ((_tl1350813609_
                           (let () (declare (not safe)) (##cdr _e1351013602_)))
                          (_hd1350913606_
                           (let ()
                             (declare (not safe))
                             (##car _e1351013602_))))
                      (if (gx#stx-null? _tl1350813609_)
                          (___kont1468514686_ _hd1350913606_ _hd1349213638_)
                          (if (gx#stx-pair? _tl1350813609_)
                              (let ((_e1352213555_
                                     (gx#syntax-e _tl1350813609_)))
                                (let ((_tl1352013562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1352213555_)))
                                      (_hd1352113559_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1352213555_))))
                                  (if (gx#stx-null? _tl1352013562_)
                                      (___kont1468714688_
                                       _hd1352113559_
                                       _hd1350913606_
                                       _hd1349213638_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1348813528_)))))
                              (let () (declare (not safe)) (_g1348813528_))))))
                  (let () (declare (not safe)) (_g1348813528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1349113641_)
                                                  (let ((_e1351013602_
                                                         (gx#syntax-e
                                                          _tl1349113641_)))
                                                    (let ((_tl1350813609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1351013602_)))
                                                          (_hd1350913606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1351013602_))))
                                                      (if (gx#stx-null?
                                                           _tl1350813609_)
                                                          (___kont1468514686_
                                                           _hd1350913606_
                                                           _hd1349213638_)
                                                          (if (gx#stx-pair?
                                                               _tl1350813609_)
                                                              (let ((_e1352213555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1350813609_)))
                        (let ((_tl1352013562_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1352213555_)))
                              (_hd1352113559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1352213555_))))
                          (if (gx#stx-null? _tl1352013562_)
                              (___kont1468714688_
                               _hd1352113559_
                               _hd1350913606_
                               _hd1349213638_)
                              (let () (declare (not safe)) (_g1348813528_)))))
                      (let () (declare (not safe)) (_g1348813528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1348813528_))))
                                          (if (gx#stx-pair? _tl1349113641_)
                                              (let ((_e1351013602_
                                                     (gx#syntax-e
                                                      _tl1349113641_)))
                                                (let ((_tl1350813609_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1351013602_)))
                                                      (_hd1350913606_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1351013602_))))
                                                  (if (gx#stx-null?
                                                       _tl1350813609_)
                                                      (___kont1468514686_
                                                       _hd1350913606_
                                                       _hd1349213638_)
                                                      (if (gx#stx-pair?
                                                           _tl1350813609_)
                                                          (let ((_e1352213555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1350813609_)))
                    (let ((_tl1352013562_
                           (let () (declare (not safe)) (##cdr _e1352213555_)))
                          (_hd1352113559_
                           (let ()
                             (declare (not safe))
                             (##car _e1352213555_))))
                      (if (gx#stx-null? _tl1352013562_)
                          (___kont1468714688_
                           _hd1352113559_
                           _hd1350913606_
                           _hd1349213638_)
                          (let () (declare (not safe)) (_g1348813528_)))))
                  (let () (declare (not safe)) (_g1348813528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1348813528_))))
                                      (if (gx#stx-pair? _tl1349113641_)
                                          (let ((_e1351013602_
                                                 (gx#syntax-e _tl1349113641_)))
                                            (let ((_tl1350813609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1351013602_)))
                                                  (_hd1350913606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1351013602_))))
                                              (if (gx#stx-null? _tl1350813609_)
                                                  (___kont1468514686_
                                                   _hd1350913606_
                                                   _hd1349213638_)
                                                  (if (gx#stx-pair?
                                                       _tl1350813609_)
                                                      (let ((_e1352213555_
                                                             (gx#syntax-e
                                                              _tl1350813609_)))
                                                        (let ((_tl1352013562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1352213555_)))
                      (_hd1352113559_
                       (let () (declare (not safe)) (##car _e1352213555_))))
                  (if (gx#stx-null? _tl1352013562_)
                      (___kont1468714688_
                       _hd1352113559_
                       _hd1350913606_
                       _hd1349213638_)
                      (let () (declare (not safe)) (_g1348813528_)))))
              (let () (declare (not safe)) (_g1348813528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1348813528_))))))
                              (let ()
                                (declare (not safe))
                                (_g1348813528_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1342513436_))))
                                            (_g1342313701_
                                             (_recur13323_ _rest13359_)))))
                                      _g1339713408_))))
                             (_g1339513705_
                              (let ()
                                (declare (not safe))
                                (cons _L13378_ '()))))))
                       _g1336413375_))))
              (_g1336213709_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1333213351_
                                                  (lambda ()
                                                    (let ((__tmp14865
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14862
                                                           (let ((__tmp14863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14864
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13301_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax" __tmp14864))))
                     (declare (not safe))
                     (cons '#f __tmp14863))))
              (declare (not safe))
              (cons __tmp14865 __tmp14862)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1333013355_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1332813337_))
                                                          (_K1333213351_)
                                                          (_E1333113343_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1332813337_))
                                                   (let ((_tl1333513720_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1332813337_)))
                                                         (_hd1333413717_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1332813337_))))
                                                     (let ((_hd13723_
                                                            _hd1333413717_)
                                                           (_rest13726_
                                                            _tl1333513720_))
                                                       (_K1333313713_
                                                        _rest13726_
                                                        _hd13723_)))
                                                   (_try-match1333013355_)))))))
                                     _clause1322513294_
                                     _hd1321513262_
                                     _hd1321213252_))))))
                    (_loop1322013274_ _target1321713268_ '()))
                  (_g1320313231_ _g1320413235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1320313231_
                                                 _g1320413235_))))
                                        (_g1320313231_ _g1320413235_))))
                                (_g1320313231_ _g1320413235_))))
                        (_g1320313231_ _g1320413235_)))))
            (_g1320213737_ _stx13197_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14867_|
       'expander-identifiers:
       (let ((__tmp14914
              (let ((__tmp14915 |[1]#_g14916_|))
                (declare (not safe))
                (cons __tmp14915 '())))
             (__tmp14868
              (let ((__tmp14913 |[1]#_g14867_|)
                    (__tmp14869
                     (let ((__tmp14911 |[1]#_g14912_|)
                           (__tmp14870
                            (let ((__tmp14909 |[1]#_g14910_|)
                                  (__tmp14871
                                   (let ((__tmp14891
                                          (let ((__tmp14907 |[1]#_g14908_|)
                                                (__tmp14892
                                                 (let ((__tmp14905
                                                        |[1]#_g14906_|)
                                                       (__tmp14893
                                                        (let ((__tmp14903
                                                               |[1]#_g14904_|)
                                                              (__tmp14894
                                                               (let ((__tmp14901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14902_|)
                             (__tmp14895
                              (let ((__tmp14899 |[1]#_g14900_|)
                                    (__tmp14896
                                     (let ((__tmp14897 |[1]#_g14898_|))
                                       (declare (not safe))
                                       (cons __tmp14897 '()))))
                                (declare (not safe))
                                (cons __tmp14899 __tmp14896))))
                         (declare (not safe))
                         (cons __tmp14901 __tmp14895))))
                  (declare (not safe))
                  (cons __tmp14903 __tmp14894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14905
                                                         __tmp14893))))
                                            (declare (not safe))
                                            (cons __tmp14907 __tmp14892)))
                                         (__tmp14872
                                          (let ((__tmp14873
                                                 (let ((__tmp14889
                                                        |[1]#_g14890_|)
                                                       (__tmp14874
                                                        (let ((__tmp14887
                                                               |[1]#_g14888_|)
                                                              (__tmp14875
                                                               (let ((__tmp14885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14886_|)
                             (__tmp14876
                              (let ((__tmp14883 |[1]#_g14884_|)
                                    (__tmp14877
                                     (let ((__tmp14881 |[1]#_g14882_|)
                                           (__tmp14878
                                            (let ((__tmp14879 |[1]#_g14880_|))
                                              (declare (not safe))
                                              (cons __tmp14879 '()))))
                                       (declare (not safe))
                                       (cons __tmp14881 __tmp14878))))
                                (declare (not safe))
                                (cons __tmp14883 __tmp14877))))
                         (declare (not safe))
                         (cons __tmp14885 __tmp14876))))
                  (declare (not safe))
                  (cons __tmp14887 __tmp14875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14889
                                                         __tmp14874))))
                                            (declare (not safe))
                                            (cons __tmp14873 '()))))
                                     (declare (not safe))
                                     (cons __tmp14891 __tmp14872))))
                              (declare (not safe))
                              (cons __tmp14909 __tmp14871))))
                       (declare (not safe))
                       (cons __tmp14911 __tmp14870))))
                (declare (not safe))
                (cons __tmp14913 __tmp14869))))
         (declare (not safe))
         (cons __tmp14914 __tmp14868))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14917_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14918_|
       'expander-identifiers:
       (let ((__tmp14919
              (let ((__tmp14940 |[1]#_g14918_|)
                    (__tmp14920
                     (let ((__tmp14938 |[1]#_g14939_|)
                           (__tmp14921
                            (let ((__tmp14936 |[1]#_g14937_|)
                                  (__tmp14922
                                   (let ((__tmp14930
                                          (let ((__tmp14934 |[1]#_g14935_|)
                                                (__tmp14931
                                                 (let ((__tmp14932
                                                        |[1]#_g14933_|))
                                                   (declare (not safe))
                                                   (cons __tmp14932 '()))))
                                            (declare (not safe))
                                            (cons __tmp14934 __tmp14931)))
                                         (__tmp14923
                                          (let ((__tmp14924
                                                 (let ((__tmp14928
                                                        |[1]#_g14929_|)
                                                       (__tmp14925
                                                        (let ((__tmp14926
                                                               |[1]#_g14927_|))
                                                          (declare (not safe))
                                                          (cons __tmp14926
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp14928
                                                         __tmp14925))))
                                            (declare (not safe))
                                            (cons __tmp14924 '()))))
                                     (declare (not safe))
                                     (cons __tmp14930 __tmp14923))))
                              (declare (not safe))
                              (cons __tmp14936 __tmp14922))))
                       (declare (not safe))
                       (cons __tmp14938 __tmp14921))))
                (declare (not safe))
                (cons __tmp14940 __tmp14920))))
         (declare (not safe))
         (cons '#f __tmp14919))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
