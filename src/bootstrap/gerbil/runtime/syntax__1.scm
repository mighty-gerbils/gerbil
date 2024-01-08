(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14891_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14897_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14910_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14912_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14914_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14916_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14918_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14920_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14928_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14930_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14932_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14934_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14936_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14938_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14940_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14942_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14946_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14947_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14948_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14957_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14959_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14963_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14965_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14967_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14969_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13108_)
        (let* ((_g1311213136_
                (lambda (_g1311313132_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1311313132_)))
               (_g1311113222_
                (lambda (_g1311313140_)
                  (if (gx#stx-pair? _g1311313140_)
                      (let ((_e1311813143_ (gx#syntax-e _g1311313140_)))
                        (let ((_hd1311713147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1311813143_)))
                              (_tl1311613150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1311813143_))))
                          (if (gx#stx-pair? _tl1311613150_)
                              (let ((_e1312113153_
                                     (gx#syntax-e _tl1311613150_)))
                                (let ((_hd1312013157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1312113153_)))
                                      (_tl1311913160_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1312113153_))))
                                  (if (gx#stx-pair/null? _tl1311913160_)
                                      (let ((_g14787_
                                             (gx#syntax-split-splice
                                              _tl1311913160_
                                              '0)))
                                        (begin
                                          (let ((_g14788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14787_)
                                                       (##vector-length
                                                        _g14787_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14788_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14788_)))
                                          (let ((_target1312213163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14787_ 0)))
                                                (_tl1312413166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14787_ 1))))
                                            (if (gx#stx-null? _tl1312413166_)
                                                (letrec ((_loop1312513169_
                                                          (lambda (_hd1312313173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1312913176_)
                    (if (gx#stx-pair? _hd1312313173_)
                        (let ((_e1312613179_ (gx#syntax-e _hd1312313173_)))
                          (let ((_lp-hd1312713183_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1312613179_)))
                                (_lp-tl1312813186_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1312613179_))))
                            (_loop1312513169_
                             _lp-tl1312813186_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1312713183_ _body1312913176_)))))
                        (let ((_body1313013189_ (reverse _body1312913176_)))
                          ((lambda (_L13193_ _L13195_)
                             (let ((__tmp14800 (gx#datum->syntax '#f 'let))
                                   (__tmp14789
                                    (let ((__tmp14797
                                           (let ((__tmp14799
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14798
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13195_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14799 __tmp14798)))
                                          (__tmp14790
                                           (let ((__tmp14791
                                                  (let ((__tmp14796
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14792
                                                         (let ((__tmp14795
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14793
                        (let ((__tmp14794
                               (lambda (_g1321313216_ _g1321413219_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1321313216_ _g1321413219_)))))
                          (declare (not safe))
                          (foldr1 __tmp14794 '() _L13193_))))
                   (declare (not safe))
                   (cons __tmp14795 __tmp14793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14796
                                                          __tmp14792))))
                                             (declare (not safe))
                                             (cons __tmp14791 '()))))
                                      (declare (not safe))
                                      (cons __tmp14797 __tmp14790))))
                               (declare (not safe))
                               (cons __tmp14800 __tmp14789)))
                           _body1313013189_
                           _hd1312013157_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1312513169_
                                                   _target1312213163_
                                                   '()))
                                                (_g1311213136_
                                                 _g1311313140_)))))
                                      (_g1311213136_ _g1311313140_))))
                              (_g1311213136_ _g1311313140_))))
                      (_g1311213136_ _g1311313140_)))))
          (_g1311113222_ _$stx13108_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13227_)
        (letrec ((_generate113230_
                  (lambda (_hd13771_ _tgt13773_ _K13774_ _E13775_ _kws13776_)
                    (let* ((_g1377813786_
                            (lambda (_g1377913782_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1377913782_)))
                           (_g1377714213_
                            (lambda (_g1377913790_)
                              ((lambda (_L13793_)
                                 (let ()
                                   (let* ((___stx1469014691_ _hd13771_)
                                          (_g1380713821_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx1469014691_))))
                                     (let ((___kont1469314694_
                                            (lambda (_L14035_ _L14037_)
                                              (let* ((_g1404814056_
                                                      (lambda (_g1404914052_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1404914052_)))
                                                     (_g1404714205_
                                                      (lambda (_g1404914060_)
                                                        ((lambda (_L14063_)
                                                           (let ()
                                                             (let* ((_g1407514083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1407614079_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1407614079_)))
                            (_g1407414201_
                             (lambda (_g1407614087_)
                               ((lambda (_L14090_)
                                  (let ()
                                    (let* ((_g1410314111_
                                            (lambda (_g1410414107_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1410414107_)))
                                           (_g1410214197_
                                            (lambda (_g1410414115_)
                                              ((lambda (_L14118_)
                                                 (let ()
                                                   (let* ((_g1413114139_
                                                           (lambda (_g1413214135_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1413214135_)))
                                                          (_g1413014193_
                                                           (lambda (_g1413214143_)
                                                             ((lambda (_L14146_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1415914167_
                                  (lambda (_g1416014163_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1416014163_)))
                                 (_g1415814189_
                                  (lambda (_g1416014171_)
                                    ((lambda (_L14174_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14829
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14801
                                                  (let ((__tmp14826
                                                         (let ((__tmp14828
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14827
                        (let () (declare (not safe)) (cons _L13793_ '()))))
                   (declare (not safe))
                   (cons __tmp14828 __tmp14827)))
                (__tmp14802
                 (let ((__tmp14804
                        (let ((__tmp14825 (gx#datum->syntax '#f 'let*))
                              (__tmp14805
                               (let ((__tmp14807
                                      (let ((__tmp14820
                                             (let ((__tmp14821
                                                    (let ((__tmp14822
                                                           (let ((__tmp14824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14823
                          (let () (declare (not safe)) (cons _L13793_ '()))))
                     (declare (not safe))
                     (cons __tmp14824 __tmp14823))))
              (declare (not safe))
              (cons __tmp14822 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14063_ __tmp14821)))
                                            (__tmp14808
                                             (let ((__tmp14815
                                                    (let ((__tmp14816
                                                           (let ((__tmp14817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14819 (gx#datum->syntax '#f '##car))
                                (__tmp14818
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14063_ '()))))
                            (declare (not safe))
                            (cons __tmp14819 __tmp14818))))
                     (declare (not safe))
                     (cons __tmp14817 '()))))
              (declare (not safe))
              (cons _L14090_ __tmp14816)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14809
                                                    (let ((__tmp14810
                                                           (let ((__tmp14811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14812
                                 (let ((__tmp14814
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14813
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14063_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14814 __tmp14813))))
                            (declare (not safe))
                            (cons __tmp14812 '()))))
                     (declare (not safe))
                     (cons _L14118_ __tmp14811))))
              (declare (not safe))
              (cons __tmp14810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14815 __tmp14809))))
                                        (declare (not safe))
                                        (cons __tmp14820 __tmp14808)))
                                     (__tmp14806
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14146_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14807 __tmp14806))))
                          (declare (not safe))
                          (cons __tmp14825 __tmp14805)))
                       (__tmp14803
                        (let () (declare (not safe)) (cons _L14174_ '()))))
                   (declare (not safe))
                   (cons __tmp14804 __tmp14803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14826
                                                          __tmp14802))))
                                             (declare (not safe))
                                             (cons __tmp14829 __tmp14801)))))
                                     _g1416014171_))))
                            (_g1415814189_ _E13775_))))
                      _g1413214143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1413014193_
                                                      (_generate113230_
                                                       _L14037_
                                                       _L14090_
                                                       (_generate113230_
                                                        _L14035_
                                                        _L14118_
                                                        _K13774_
                                                        _E13775_
                                                        _kws13776_)
                                                       _E13775_
                                                       _kws13776_)))))
                                               _g1410414115_))))
                                      (_g1410214197_ (gx#genident '$tl)))))
                                _g1407614087_))))
                       (_g1407414201_ (gx#genident '$hd)))))
                 _g1404914060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1404714205_
                                                 (gx#genident '$tgt)))))
                                           (___kont1469514696_
                                            (lambda (_L13910_)
                                              (if (gx#underscore? _L13910_)
                                                  _K13774_
                                                  (if (let ((__tmp14858
                                                             (lambda (_g1391813920_)
                                                               (gx#bound-identifier=?
                                                                _g1391813920_
                                                                _L13910_)))
                                                            (__tmp14857
                                                             (gx#syntax->list
                                                              _kws13776_)))
                                                        (declare (not safe))
                                                        (find __tmp14858
                                                              __tmp14857))
                                                      (let* ((_g1392413939_
                                                              (lambda (_g1392513935_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1392513935_)))
                     (_g1392313984_
                      (lambda (_g1392513943_)
                        (if (gx#stx-pair? _g1392513943_)
                            (let ((_e1393013946_ (gx#syntax-e _g1392513943_)))
                              (let ((_hd1392913950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1393013946_)))
                                    (_tl1392813953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1393013946_))))
                                (if (gx#stx-pair? _tl1392813953_)
                                    (let ((_e1393313956_
                                           (gx#syntax-e _tl1392813953_)))
                                      (let ((_hd1393213960_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1393313956_)))
                                            (_tl1393113963_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1393313956_))))
                                        (if (gx#stx-null? _tl1393113963_)
                                            ((lambda (_L13966_ _L13968_)
                                               (let ()
                                                 (let ((__tmp14856
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14836
                                                        (let ((__tmp14839
                                                               (let ((__tmp14855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14840
                              (let ((__tmp14852
                                     (let ((__tmp14854
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14853
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13793_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14854 __tmp14853)))
                                    (__tmp14841
                                     (let ((__tmp14842
                                            (let ((__tmp14851
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14843
                                                   (let ((__tmp14848
                                                          (let ((__tmp14850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14849
                         (let () (declare (not safe)) (cons _L13793_ '()))))
                    (declare (not safe))
                    (cons __tmp14850 __tmp14849)))
                 (__tmp14844
                  (let ((__tmp14845
                         (let ((__tmp14847 (gx#datum->syntax '#f 'quote))
                               (__tmp14846
                                (let ()
                                  (declare (not safe))
                                  (cons _L13910_ '()))))
                           (declare (not safe))
                           (cons __tmp14847 __tmp14846))))
                    (declare (not safe))
                    (cons __tmp14845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14848
                                                           __tmp14844))))
                                              (declare (not safe))
                                              (cons __tmp14851 __tmp14843))))
                                       (declare (not safe))
                                       (cons __tmp14842 '()))))
                                (declare (not safe))
                                (cons __tmp14852 __tmp14841))))
                         (declare (not safe))
                         (cons __tmp14855 __tmp14840)))
                      (__tmp14837
                       (let ((__tmp14838
                              (let ()
                                (declare (not safe))
                                (cons _L13966_ '()))))
                         (declare (not safe))
                         (cons _L13968_ __tmp14838))))
                  (declare (not safe))
                  (cons __tmp14839 __tmp14837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14856
                                                         __tmp14836))))
                                             _hd1393213960_
                                             _hd1392913950_)
                                            (_g1392413939_ _g1392513943_))))
                                    (_g1392413939_ _g1392513943_))))
                            (_g1392413939_ _g1392513943_)))))
                (_g1392313984_ (list _K13774_ _E13775_)))
              (let* ((_g1398813996_
                      (lambda (_g1398913992_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1398913992_)))
                     (_g1398714014_
                      (lambda (_g1398914000_)
                        ((lambda (_L14003_)
                           (let ()
                             (let ((__tmp14835 (gx#datum->syntax '#f 'let))
                                   (__tmp14830
                                    (let ((__tmp14832
                                           (let ((__tmp14833
                                                  (let ((__tmp14834
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13910_
                                                          __tmp14834))))
                                             (declare (not safe))
                                             (cons __tmp14833 '())))
                                          (__tmp14831
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14003_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14832 __tmp14831))))
                               (declare (not safe))
                               (cons __tmp14835 __tmp14830))))
                         _g1398914000_))))
                (_g1398714014_ _K13774_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1469714698_
                                            (lambda (_L13828_)
                                              (let* ((_g1383913854_
                                                      (lambda (_g1384013850_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1384013850_)))
                                                     (_g1383813899_
                                                      (lambda (_g1384013858_)
                                                        (if (gx#stx-pair?
                                                             _g1384013858_)
                                                            (let ((_e1384513861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1384013858_)))
                      (let ((_hd1384413865_
                             (let ()
                               (declare (not safe))
                               (##car _e1384513861_)))
                            (_tl1384313868_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1384513861_))))
                        (if (gx#stx-pair? _tl1384313868_)
                            (let ((_e1384813871_ (gx#syntax-e _tl1384313868_)))
                              (let ((_hd1384713875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1384813871_)))
                                    (_tl1384613878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1384813871_))))
                                (if (gx#stx-null? _tl1384613878_)
                                    ((lambda (_L13881_ _L13883_)
                                       (let ()
                                         (let ((__tmp14872
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14859
                                                (let ((__tmp14862
                                                       (let ((__tmp14871
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14863
                                                              (let ((__tmp14868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14870 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14869
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13793_ '()))))
                               (declare (not safe))
                               (cons __tmp14870 __tmp14869)))
                            (__tmp14864
                             (let ((__tmp14865
                                    (let ((__tmp14867
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14866
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13828_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14867 __tmp14866))))
                               (declare (not safe))
                               (cons __tmp14865 '()))))
                        (declare (not safe))
                        (cons __tmp14868 __tmp14864))))
                 (declare (not safe))
                 (cons __tmp14871 __tmp14863)))
              (__tmp14860
               (let ((__tmp14861
                      (let () (declare (not safe)) (cons _L13881_ '()))))
                 (declare (not safe))
                 (cons _L13883_ __tmp14861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14862
                                                        __tmp14860))))
                                           (declare (not safe))
                                           (cons __tmp14872 __tmp14859))))
                                     _hd1384713875_
                                     _hd1384413865_)
                                    (_g1383913854_ _g1384013858_))))
                            (_g1383913854_ _g1384013858_))))
                    (_g1383913854_ _g1384013858_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1383813899_
                                                 (list _K13774_ _E13775_))))))
                                       (let ((_g1380514018_
                                              (lambda ()
                                                (let ((_L13910_
                                                       ___stx1469014691_))
                                                  (if (gx#identifier? _L13910_)
                                                      (___kont1469514696_
                                                       _L13910_)
                                                      (___kont1469714698_
                                                       ___stx1469014691_))))))
                                         (if (gx#stx-pair? ___stx1469014691_)
                                             (let ((_e1381314025_
                                                    (gx#syntax-e
                                                     ___stx1469014691_)))
                                               (let ((_tl1381114032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1381314025_)))
                                                     (_hd1381214029_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1381314025_))))
                                                 (___kont1469314694_
                                                  _tl1381114032_
                                                  _hd1381214029_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1380514018_))))))))
                               _g1377913790_))))
                      (_g1377714213_ _tgt13773_)))))
          (let* ((_g1323313261_
                  (lambda (_g1323413257_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1323413257_)))
                 (_g1323213767_
                  (lambda (_g1323413265_)
                    (if (gx#stx-pair? _g1323413265_)
                        (let ((_e1324013268_ (gx#syntax-e _g1323413265_)))
                          (let ((_hd1323913272_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1324013268_)))
                                (_tl1323813275_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1324013268_))))
                            (if (gx#stx-pair? _tl1323813275_)
                                (let ((_e1324313278_
                                       (gx#syntax-e _tl1323813275_)))
                                  (let ((_hd1324213282_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1324313278_)))
                                        (_tl1324113285_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1324313278_))))
                                    (if (gx#stx-pair? _tl1324113285_)
                                        (let ((_e1324613288_
                                               (gx#syntax-e _tl1324113285_)))
                                          (let ((_hd1324513292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1324613288_)))
                                                (_tl1324413295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1324613288_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1324413295_)
                                                (let ((_g14873_
                                                       (gx#syntax-split-splice
                                                        _tl1324413295_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14873_)
                         (##vector-length _g14873_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14874_ 2)))
                  (error "Context expects 2 values" _g14874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1324713298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14873_
                                                              0)))
                                                          (_tl1324913301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14873_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1324913301_)
                                                          (letrec ((_loop1325013304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1324813308_ _clause1325413311_)
                              (if (gx#stx-pair? _hd1324813308_)
                                  (let ((_e1325113314_
                                         (gx#syntax-e _hd1324813308_)))
                                    (let ((_lp-hd1325213318_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1325113314_)))
                                          (_lp-tl1325313321_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1325113314_))))
                                      (_loop1325013304_
                                       _lp-tl1325313321_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1325213318_
                                               _clause1325413311_)))))
                                  (let ((_clause1325513324_
                                         (reverse _clause1325413311_)))
                                    ((lambda (_L13328_ _L13330_ _L13331_)
                                       (let _recur13353_ ((_rest13356_
                                                           (let ((__tmp14896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1375813761_ _g1375913764_)
                            (let ()
                              (declare (not safe))
                              (cons _g1375813761_ _g1375913764_)))))
                     (declare (not safe))
                     (foldr1 __tmp14896 '() _L13328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1335813367_ _rest13356_)
                                                (_E1336113373_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1335813367_))))
                                           (let ((_K1336313743_
                                                  (lambda (_rest13389_
                                                           _hd13391_)
                                                    (let* ((_g1339313401_
                                                            (lambda (_g1339413397_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1339413397_)))
                                                           (_g1339213739_
                                                            (lambda (_g1339413405_)
                                                              ((lambda (_L13408_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1342613434_
                                   (lambda (_g1342713430_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1342713430_)))
                                  (_g1342513735_
                                   (lambda (_g1342713438_)
                                     ((lambda (_L13441_)
                                        (let ()
                                          (let* ((_g1345413462_
                                                  (lambda (_g1345513458_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1345513458_)))
                                                 (_g1345313731_
                                                  (lambda (_g1345513466_)
                                                    ((lambda (_L13469_)
                                                       (let ()
                                                         (let* ((_g1348213490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1348313486_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1348313486_)))
                        (_g1348113512_
                         (lambda (_g1348313494_)
                           ((lambda (_L13497_)
                              (let ()
                                (let ()
                                  (let ((__tmp14883
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14875
                                         (let ((__tmp14877
                                                (let ((__tmp14878
                                                       (let ((__tmp14879
                                                              (let ((__tmp14882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14880
                             (let ((__tmp14881
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13469_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14881))))
                        (declare (not safe))
                        (cons __tmp14882 __tmp14880))))
                 (declare (not safe))
                 (cons __tmp14879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13408_ __tmp14878)))
                                               (__tmp14876
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13497_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14877 __tmp14876))))
                                    (declare (not safe))
                                    (cons __tmp14883 __tmp14875)))))
                            _g1348313494_))))
                   (_g1348113512_
                    (let* ((___stx1470814709_ _hd13391_)
                           (_g1351813558_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx1470814709_))))
                      (let ((___kont1471114712_
                             (lambda (_L13704_)
                               (let ((__tmp14886 (gx#datum->syntax '#f 'begin))
                                     (__tmp14884
                                      (let ((__tmp14885
                                             (lambda (_g1371813721_
                                                      _g1371913724_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1371813721_
                                                       _g1371913724_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14885 '() _L13704_))))
                                 (declare (not safe))
                                 (cons __tmp14886 __tmp14884))))
                            (___kont1471514716_
                             (lambda (_L13642_ _L13644_)
                               (_generate113230_
                                _L13644_
                                _L13331_
                                _L13642_
                                _L13441_
                                _L13330_)))
                            (___kont1471714718_
                             (lambda (_L13595_ _L13597_ _L13598_)
                               (_generate113230_
                                _L13598_
                                _L13331_
                                (let ((__tmp14890 (gx#datum->syntax '#f 'if))
                                      (__tmp14887
                                       (let ((__tmp14888
                                              (let ((__tmp14889
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13441_ '()))))
                                                (declare (not safe))
                                                (cons _L13595_ __tmp14889))))
                                         (declare (not safe))
                                         (cons _L13597_ __tmp14888))))
                                  (declare (not safe))
                                  (cons __tmp14890 __tmp14887))
                                _L13441_
                                _L13330_))))
                        (let ((___match1473714738_
                               (lambda (_e1352313664_
                                        _hd1352213668_
                                        _tl1352113671_
                                        ___splice1471314714_
                                        _target1352413674_
                                        _tl1352613677_)
                                 (letrec ((_loop1352713680_
                                           (lambda (_hd1352513684_
                                                    _expr1353113687_)
                                             (if (gx#stx-pair? _hd1352513684_)
                                                 (let ((_e1352813690_
                                                        (gx#syntax-e
                                                         _hd1352513684_)))
                                                   (let ((_lp-tl1353013697_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1352813690_)))
                                                         (_lp-hd1352913694_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1352813690_))))
                                                     (_loop1352713680_
                                                      _lp-tl1353013697_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1352913694_
                                                              _expr1353113687_)))))
                                                 (let ((_expr1353213700_
                                                        (reverse _expr1353113687_)))
                                                   (___kont1471114712_
                                                    _expr1353213700_))))))
                                   (_loop1352713680_
                                    _target1352413674_
                                    '())))))
                          (if (gx#stx-pair? ___stx1470814709_)
                              (let ((_e1352313664_
                                     (gx#syntax-e ___stx1470814709_)))
                                (let ((_tl1352113671_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1352313664_)))
                                      (_hd1352213668_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1352313664_))))
                                  (if (gx#identifier? _hd1352213668_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14891_|
                                           _hd1352213668_)
                                          (if (gx#stx-pair/null?
                                               _tl1352113671_)
                                              (let ((___splice1471314714_
                                                     (gx#syntax-split-splice
                                                      _tl1352113671_
                                                      '0)))
                                                (let ((_tl1352613677_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1471314714_
                                                          '1)))
                                                      (_target1352413674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1471314714_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1352613677_)
                                                      (___match1473714738_
                                                       _e1352313664_
                                                       _hd1352213668_
                                                       _tl1352113671_
                                                       ___splice1471314714_
                                                       _target1352413674_
                                                       _tl1352613677_)
                                                      (if (gx#stx-pair?
                                                           _tl1352113671_)
                                                          (let ((_e1354013632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1352113671_)))
                    (let ((_tl1353813639_
                           (let () (declare (not safe)) (##cdr _e1354013632_)))
                          (_hd1353913636_
                           (let ()
                             (declare (not safe))
                             (##car _e1354013632_))))
                      (if (gx#stx-null? _tl1353813639_)
                          (___kont1471514716_ _hd1353913636_ _hd1352213668_)
                          (if (gx#stx-pair? _tl1353813639_)
                              (let ((_e1355213585_
                                     (gx#syntax-e _tl1353813639_)))
                                (let ((_tl1355013592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1355213585_)))
                                      (_hd1355113589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1355213585_))))
                                  (if (gx#stx-null? _tl1355013592_)
                                      (___kont1471714718_
                                       _hd1355113589_
                                       _hd1353913636_
                                       _hd1352213668_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1351813558_)))))
                              (let () (declare (not safe)) (_g1351813558_))))))
                  (let () (declare (not safe)) (_g1351813558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1352113671_)
                                                  (let ((_e1354013632_
                                                         (gx#syntax-e
                                                          _tl1352113671_)))
                                                    (let ((_tl1353813639_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1354013632_)))
                                                          (_hd1353913636_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1354013632_))))
                                                      (if (gx#stx-null?
                                                           _tl1353813639_)
                                                          (___kont1471514716_
                                                           _hd1353913636_
                                                           _hd1352213668_)
                                                          (if (gx#stx-pair?
                                                               _tl1353813639_)
                                                              (let ((_e1355213585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1353813639_)))
                        (let ((_tl1355013592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1355213585_)))
                              (_hd1355113589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1355213585_))))
                          (if (gx#stx-null? _tl1355013592_)
                              (___kont1471714718_
                               _hd1355113589_
                               _hd1353913636_
                               _hd1352213668_)
                              (let () (declare (not safe)) (_g1351813558_)))))
                      (let () (declare (not safe)) (_g1351813558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1351813558_))))
                                          (if (gx#stx-pair? _tl1352113671_)
                                              (let ((_e1354013632_
                                                     (gx#syntax-e
                                                      _tl1352113671_)))
                                                (let ((_tl1353813639_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1354013632_)))
                                                      (_hd1353913636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1354013632_))))
                                                  (if (gx#stx-null?
                                                       _tl1353813639_)
                                                      (___kont1471514716_
                                                       _hd1353913636_
                                                       _hd1352213668_)
                                                      (if (gx#stx-pair?
                                                           _tl1353813639_)
                                                          (let ((_e1355213585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1353813639_)))
                    (let ((_tl1355013592_
                           (let () (declare (not safe)) (##cdr _e1355213585_)))
                          (_hd1355113589_
                           (let ()
                             (declare (not safe))
                             (##car _e1355213585_))))
                      (if (gx#stx-null? _tl1355013592_)
                          (___kont1471714718_
                           _hd1355113589_
                           _hd1353913636_
                           _hd1352213668_)
                          (let () (declare (not safe)) (_g1351813558_)))))
                  (let () (declare (not safe)) (_g1351813558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1351813558_))))
                                      (if (gx#stx-pair? _tl1352113671_)
                                          (let ((_e1354013632_
                                                 (gx#syntax-e _tl1352113671_)))
                                            (let ((_tl1353813639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1354013632_)))
                                                  (_hd1353913636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1354013632_))))
                                              (if (gx#stx-null? _tl1353813639_)
                                                  (___kont1471514716_
                                                   _hd1353913636_
                                                   _hd1352213668_)
                                                  (if (gx#stx-pair?
                                                       _tl1353813639_)
                                                      (let ((_e1355213585_
                                                             (gx#syntax-e
                                                              _tl1353813639_)))
                                                        (let ((_tl1355013592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1355213585_)))
                      (_hd1355113589_
                       (let () (declare (not safe)) (##car _e1355213585_))))
                  (if (gx#stx-null? _tl1355013592_)
                      (___kont1471714718_
                       _hd1355113589_
                       _hd1353913636_
                       _hd1352213668_)
                      (let () (declare (not safe)) (_g1351813558_)))))
              (let () (declare (not safe)) (_g1351813558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1351813558_))))))
                              (let ()
                                (declare (not safe))
                                (_g1351813558_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1345513466_))))
                                            (_g1345313731_
                                             (_recur13353_ _rest13389_)))))
                                      _g1342713438_))))
                             (_g1342513735_
                              (let ()
                                (declare (not safe))
                                (cons _L13408_ '()))))))
                       _g1339413405_))))
              (_g1339213739_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1336213381_
                                                  (lambda ()
                                                    (let ((__tmp14895
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14892
                                                           (let ((__tmp14893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14894
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13331_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax; malformed ast clause"
                                  __tmp14894))))
                     (declare (not safe))
                     (cons '#f __tmp14893))))
              (declare (not safe))
              (cons __tmp14895 __tmp14892)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1336013385_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1335813367_))
                                                          (_K1336213381_)
                                                          (_E1336113373_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1335813367_))
                                                   (let ((_tl1336513750_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1335813367_)))
                                                         (_hd1336413747_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1335813367_))))
                                                     (let ((_hd13753_
                                                            _hd1336413747_)
                                                           (_rest13756_
                                                            _tl1336513750_))
                                                       (_K1336313743_
                                                        _rest13756_
                                                        _hd13753_)))
                                                   (_try-match1336013385_)))))))
                                     _clause1325513324_
                                     _hd1324513292_
                                     _hd1324213282_))))))
                    (_loop1325013304_ _target1324713298_ '()))
                  (_g1323313261_ _g1323413265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1323313261_
                                                 _g1323413265_))))
                                        (_g1323313261_ _g1323413265_))))
                                (_g1323313261_ _g1323413265_))))
                        (_g1323313261_ _g1323413265_)))))
            (_g1323213767_ _stx13227_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14897_|
       'expander-identifiers:
       (let ((__tmp14944
              (let ((__tmp14945 |[1]#_g14946_|))
                (declare (not safe))
                (cons __tmp14945 '())))
             (__tmp14898
              (let ((__tmp14943 |[1]#_g14897_|)
                    (__tmp14899
                     (let ((__tmp14941 |[1]#_g14942_|)
                           (__tmp14900
                            (let ((__tmp14939 |[1]#_g14940_|)
                                  (__tmp14901
                                   (let ((__tmp14921
                                          (let ((__tmp14937 |[1]#_g14938_|)
                                                (__tmp14922
                                                 (let ((__tmp14935
                                                        |[1]#_g14936_|)
                                                       (__tmp14923
                                                        (let ((__tmp14933
                                                               |[1]#_g14934_|)
                                                              (__tmp14924
                                                               (let ((__tmp14931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14932_|)
                             (__tmp14925
                              (let ((__tmp14929 |[1]#_g14930_|)
                                    (__tmp14926
                                     (let ((__tmp14927 |[1]#_g14928_|))
                                       (declare (not safe))
                                       (cons __tmp14927 '()))))
                                (declare (not safe))
                                (cons __tmp14929 __tmp14926))))
                         (declare (not safe))
                         (cons __tmp14931 __tmp14925))))
                  (declare (not safe))
                  (cons __tmp14933 __tmp14924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14935
                                                         __tmp14923))))
                                            (declare (not safe))
                                            (cons __tmp14937 __tmp14922)))
                                         (__tmp14902
                                          (let ((__tmp14903
                                                 (let ((__tmp14919
                                                        |[1]#_g14920_|)
                                                       (__tmp14904
                                                        (let ((__tmp14917
                                                               |[1]#_g14918_|)
                                                              (__tmp14905
                                                               (let ((__tmp14915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14916_|)
                             (__tmp14906
                              (let ((__tmp14913 |[1]#_g14914_|)
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
                  (declare (not safe))
                  (cons __tmp14917 __tmp14905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14919
                                                         __tmp14904))))
                                            (declare (not safe))
                                            (cons __tmp14903 '()))))
                                     (declare (not safe))
                                     (cons __tmp14921 __tmp14902))))
                              (declare (not safe))
                              (cons __tmp14939 __tmp14901))))
                       (declare (not safe))
                       (cons __tmp14941 __tmp14900))))
                (declare (not safe))
                (cons __tmp14943 __tmp14899))))
         (declare (not safe))
         (cons __tmp14944 __tmp14898))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14947_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14948_|
       'expander-identifiers:
       (let ((__tmp14949
              (let ((__tmp14970 |[1]#_g14948_|)
                    (__tmp14950
                     (let ((__tmp14968 |[1]#_g14969_|)
                           (__tmp14951
                            (let ((__tmp14966 |[1]#_g14967_|)
                                  (__tmp14952
                                   (let ((__tmp14960
                                          (let ((__tmp14964 |[1]#_g14965_|)
                                                (__tmp14961
                                                 (let ((__tmp14962
                                                        |[1]#_g14963_|))
                                                   (declare (not safe))
                                                   (cons __tmp14962 '()))))
                                            (declare (not safe))
                                            (cons __tmp14964 __tmp14961)))
                                         (__tmp14953
                                          (let ((__tmp14954
                                                 (let ((__tmp14958
                                                        |[1]#_g14959_|)
                                                       (__tmp14955
                                                        (let ((__tmp14956
                                                               |[1]#_g14957_|))
                                                          (declare (not safe))
                                                          (cons __tmp14956
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp14958
                                                         __tmp14955))))
                                            (declare (not safe))
                                            (cons __tmp14954 '()))))
                                     (declare (not safe))
                                     (cons __tmp14960 __tmp14953))))
                              (declare (not safe))
                              (cons __tmp14966 __tmp14952))))
                       (declare (not safe))
                       (cons __tmp14968 __tmp14951))))
                (declare (not safe))
                (cons __tmp14970 __tmp14950))))
         (declare (not safe))
         (cons '#f __tmp14949))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
