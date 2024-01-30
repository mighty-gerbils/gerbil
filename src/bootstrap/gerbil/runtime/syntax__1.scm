(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14889_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14895_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14908_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14910_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14912_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14914_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14916_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14918_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14926_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14928_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14930_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14932_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14934_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14936_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14938_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14940_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14944_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14945_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14946_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14955_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14957_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14961_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14963_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14965_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14967_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13106_)
        (let* ((_g1311013134_
                (lambda (_g1311113130_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1311113130_)))
               (_g1310913220_
                (lambda (_g1311113138_)
                  (if (gx#stx-pair? _g1311113138_)
                      (let ((_e1311613141_ (gx#syntax-e _g1311113138_)))
                        (let ((_hd1311513145_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1311613141_)))
                              (_tl1311413148_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1311613141_))))
                          (if (gx#stx-pair? _tl1311413148_)
                              (let ((_e1311913151_
                                     (gx#syntax-e _tl1311413148_)))
                                (let ((_hd1311813155_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1311913151_)))
                                      (_tl1311713158_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1311913151_))))
                                  (if (gx#stx-pair/null? _tl1311713158_)
                                      (let ((_g14785_
                                             (gx#syntax-split-splice
                                              _tl1311713158_
                                              '0)))
                                        (begin
                                          (let ((_g14786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14785_)
                                                       (##vector-length
                                                        _g14785_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14786_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14786_)))
                                          (let ((_target1312013161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14785_ 0)))
                                                (_tl1312213164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14785_ 1))))
                                            (if (gx#stx-null? _tl1312213164_)
                                                (letrec ((_loop1312313167_
                                                          (lambda (_hd1312113171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1312713174_)
                    (if (gx#stx-pair? _hd1312113171_)
                        (let ((_e1312413177_ (gx#syntax-e _hd1312113171_)))
                          (let ((_lp-hd1312513181_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1312413177_)))
                                (_lp-tl1312613184_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1312413177_))))
                            (_loop1312313167_
                             _lp-tl1312613184_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1312513181_ _body1312713174_)))))
                        (let ((_body1312813187_ (reverse _body1312713174_)))
                          ((lambda (_L13191_ _L13193_)
                             (let ((__tmp14798 (gx#datum->syntax '#f 'let))
                                   (__tmp14787
                                    (let ((__tmp14795
                                           (let ((__tmp14797
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14796
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13193_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14797 __tmp14796)))
                                          (__tmp14788
                                           (let ((__tmp14789
                                                  (let ((__tmp14794
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14790
                                                         (let ((__tmp14793
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14791
                        (let ((__tmp14792
                               (lambda (_g1321113214_ _g1321213217_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1321113214_ _g1321213217_)))))
                          (declare (not safe))
                          (foldr1 __tmp14792 '() _L13191_))))
                   (declare (not safe))
                   (cons __tmp14793 __tmp14791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14794
                                                          __tmp14790))))
                                             (declare (not safe))
                                             (cons __tmp14789 '()))))
                                      (declare (not safe))
                                      (cons __tmp14795 __tmp14788))))
                               (declare (not safe))
                               (cons __tmp14798 __tmp14787)))
                           _body1312813187_
                           _hd1311813155_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1312313167_
                                                   _target1312013161_
                                                   '()))
                                                (_g1311013134_
                                                 _g1311113138_)))))
                                      (_g1311013134_ _g1311113138_))))
                              (_g1311013134_ _g1311113138_))))
                      (_g1311013134_ _g1311113138_)))))
          (_g1310913220_ _$stx13106_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13225_)
        (letrec ((_generate113228_
                  (lambda (_hd13769_ _tgt13771_ _K13772_ _E13773_ _kws13774_)
                    (let* ((_g1377613784_
                            (lambda (_g1377713780_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1377713780_)))
                           (_g1377514211_
                            (lambda (_g1377713788_)
                              ((lambda (_L13791_)
                                 (let ()
                                   (let* ((___stx1468814689_ _hd13769_)
                                          (_g1380513819_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx1468814689_))))
                                     (let ((___kont1469114692_
                                            (lambda (_L14033_ _L14035_)
                                              (let* ((_g1404614054_
                                                      (lambda (_g1404714050_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1404714050_)))
                                                     (_g1404514203_
                                                      (lambda (_g1404714058_)
                                                        ((lambda (_L14061_)
                                                           (let ()
                                                             (let* ((_g1407314081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1407414077_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1407414077_)))
                            (_g1407214199_
                             (lambda (_g1407414085_)
                               ((lambda (_L14088_)
                                  (let ()
                                    (let* ((_g1410114109_
                                            (lambda (_g1410214105_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1410214105_)))
                                           (_g1410014195_
                                            (lambda (_g1410214113_)
                                              ((lambda (_L14116_)
                                                 (let ()
                                                   (let* ((_g1412914137_
                                                           (lambda (_g1413014133_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1413014133_)))
                                                          (_g1412814191_
                                                           (lambda (_g1413014141_)
                                                             ((lambda (_L14144_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1415714165_
                                  (lambda (_g1415814161_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1415814161_)))
                                 (_g1415614187_
                                  (lambda (_g1415814169_)
                                    ((lambda (_L14172_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14827
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14799
                                                  (let ((__tmp14824
                                                         (let ((__tmp14826
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14825
                        (let () (declare (not safe)) (cons _L13791_ '()))))
                   (declare (not safe))
                   (cons __tmp14826 __tmp14825)))
                (__tmp14800
                 (let ((__tmp14802
                        (let ((__tmp14823 (gx#datum->syntax '#f 'let*))
                              (__tmp14803
                               (let ((__tmp14805
                                      (let ((__tmp14818
                                             (let ((__tmp14819
                                                    (let ((__tmp14820
                                                           (let ((__tmp14822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14821
                          (let () (declare (not safe)) (cons _L13791_ '()))))
                     (declare (not safe))
                     (cons __tmp14822 __tmp14821))))
              (declare (not safe))
              (cons __tmp14820 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14061_ __tmp14819)))
                                            (__tmp14806
                                             (let ((__tmp14813
                                                    (let ((__tmp14814
                                                           (let ((__tmp14815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14817 (gx#datum->syntax '#f '##car))
                                (__tmp14816
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14061_ '()))))
                            (declare (not safe))
                            (cons __tmp14817 __tmp14816))))
                     (declare (not safe))
                     (cons __tmp14815 '()))))
              (declare (not safe))
              (cons _L14088_ __tmp14814)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14807
                                                    (let ((__tmp14808
                                                           (let ((__tmp14809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14810
                                 (let ((__tmp14812
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14811
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14061_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14812 __tmp14811))))
                            (declare (not safe))
                            (cons __tmp14810 '()))))
                     (declare (not safe))
                     (cons _L14116_ __tmp14809))))
              (declare (not safe))
              (cons __tmp14808 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14813 __tmp14807))))
                                        (declare (not safe))
                                        (cons __tmp14818 __tmp14806)))
                                     (__tmp14804
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14144_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14805 __tmp14804))))
                          (declare (not safe))
                          (cons __tmp14823 __tmp14803)))
                       (__tmp14801
                        (let () (declare (not safe)) (cons _L14172_ '()))))
                   (declare (not safe))
                   (cons __tmp14802 __tmp14801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14824
                                                          __tmp14800))))
                                             (declare (not safe))
                                             (cons __tmp14827 __tmp14799)))))
                                     _g1415814169_))))
                            (_g1415614187_ _E13773_))))
                      _g1413014141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1412814191_
                                                      (_generate113228_
                                                       _L14035_
                                                       _L14088_
                                                       (_generate113228_
                                                        _L14033_
                                                        _L14116_
                                                        _K13772_
                                                        _E13773_
                                                        _kws13774_)
                                                       _E13773_
                                                       _kws13774_)))))
                                               _g1410214113_))))
                                      (_g1410014195_ (gx#genident '$tl)))))
                                _g1407414085_))))
                       (_g1407214199_ (gx#genident '$hd)))))
                 _g1404714058_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1404514203_
                                                 (gx#genident '$tgt)))))
                                           (___kont1469314694_
                                            (lambda (_L13908_)
                                              (if (gx#underscore? _L13908_)
                                                  _K13772_
                                                  (if (let ((__tmp14856
                                                             (lambda (_g1391613918_)
                                                               (gx#bound-identifier=?
                                                                _g1391613918_
                                                                _L13908_)))
                                                            (__tmp14855
                                                             (gx#syntax->list
                                                              _kws13774_)))
                                                        (declare (not safe))
                                                        (find __tmp14856
                                                              __tmp14855))
                                                      (let* ((_g1392213937_
                                                              (lambda (_g1392313933_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1392313933_)))
                     (_g1392113982_
                      (lambda (_g1392313941_)
                        (if (gx#stx-pair? _g1392313941_)
                            (let ((_e1392813944_ (gx#syntax-e _g1392313941_)))
                              (let ((_hd1392713948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1392813944_)))
                                    (_tl1392613951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1392813944_))))
                                (if (gx#stx-pair? _tl1392613951_)
                                    (let ((_e1393113954_
                                           (gx#syntax-e _tl1392613951_)))
                                      (let ((_hd1393013958_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1393113954_)))
                                            (_tl1392913961_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1393113954_))))
                                        (if (gx#stx-null? _tl1392913961_)
                                            ((lambda (_L13964_ _L13966_)
                                               (let ()
                                                 (let ((__tmp14854
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14834
                                                        (let ((__tmp14837
                                                               (let ((__tmp14853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14838
                              (let ((__tmp14850
                                     (let ((__tmp14852
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14851
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13791_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14852 __tmp14851)))
                                    (__tmp14839
                                     (let ((__tmp14840
                                            (let ((__tmp14849
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14841
                                                   (let ((__tmp14846
                                                          (let ((__tmp14848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14847
                         (let () (declare (not safe)) (cons _L13791_ '()))))
                    (declare (not safe))
                    (cons __tmp14848 __tmp14847)))
                 (__tmp14842
                  (let ((__tmp14843
                         (let ((__tmp14845 (gx#datum->syntax '#f 'quote))
                               (__tmp14844
                                (let ()
                                  (declare (not safe))
                                  (cons _L13908_ '()))))
                           (declare (not safe))
                           (cons __tmp14845 __tmp14844))))
                    (declare (not safe))
                    (cons __tmp14843 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14846
                                                           __tmp14842))))
                                              (declare (not safe))
                                              (cons __tmp14849 __tmp14841))))
                                       (declare (not safe))
                                       (cons __tmp14840 '()))))
                                (declare (not safe))
                                (cons __tmp14850 __tmp14839))))
                         (declare (not safe))
                         (cons __tmp14853 __tmp14838)))
                      (__tmp14835
                       (let ((__tmp14836
                              (let ()
                                (declare (not safe))
                                (cons _L13964_ '()))))
                         (declare (not safe))
                         (cons _L13966_ __tmp14836))))
                  (declare (not safe))
                  (cons __tmp14837 __tmp14835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14854
                                                         __tmp14834))))
                                             _hd1393013958_
                                             _hd1392713948_)
                                            (_g1392213937_ _g1392313941_))))
                                    (_g1392213937_ _g1392313941_))))
                            (_g1392213937_ _g1392313941_)))))
                (_g1392113982_ (list _K13772_ _E13773_)))
              (let* ((_g1398613994_
                      (lambda (_g1398713990_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1398713990_)))
                     (_g1398514012_
                      (lambda (_g1398713998_)
                        ((lambda (_L14001_)
                           (let ()
                             (let ((__tmp14833 (gx#datum->syntax '#f 'let))
                                   (__tmp14828
                                    (let ((__tmp14830
                                           (let ((__tmp14831
                                                  (let ((__tmp14832
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13908_
                                                          __tmp14832))))
                                             (declare (not safe))
                                             (cons __tmp14831 '())))
                                          (__tmp14829
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14001_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14830 __tmp14829))))
                               (declare (not safe))
                               (cons __tmp14833 __tmp14828))))
                         _g1398713998_))))
                (_g1398514012_ _K13772_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1469514696_
                                            (lambda (_L13826_)
                                              (let* ((_g1383713852_
                                                      (lambda (_g1383813848_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1383813848_)))
                                                     (_g1383613897_
                                                      (lambda (_g1383813856_)
                                                        (if (gx#stx-pair?
                                                             _g1383813856_)
                                                            (let ((_e1384313859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1383813856_)))
                      (let ((_hd1384213863_
                             (let ()
                               (declare (not safe))
                               (##car _e1384313859_)))
                            (_tl1384113866_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1384313859_))))
                        (if (gx#stx-pair? _tl1384113866_)
                            (let ((_e1384613869_ (gx#syntax-e _tl1384113866_)))
                              (let ((_hd1384513873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1384613869_)))
                                    (_tl1384413876_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1384613869_))))
                                (if (gx#stx-null? _tl1384413876_)
                                    ((lambda (_L13879_ _L13881_)
                                       (let ()
                                         (let ((__tmp14870
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14857
                                                (let ((__tmp14860
                                                       (let ((__tmp14869
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14861
                                                              (let ((__tmp14866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14868 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14867
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13791_ '()))))
                               (declare (not safe))
                               (cons __tmp14868 __tmp14867)))
                            (__tmp14862
                             (let ((__tmp14863
                                    (let ((__tmp14865
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14864
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13826_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14865 __tmp14864))))
                               (declare (not safe))
                               (cons __tmp14863 '()))))
                        (declare (not safe))
                        (cons __tmp14866 __tmp14862))))
                 (declare (not safe))
                 (cons __tmp14869 __tmp14861)))
              (__tmp14858
               (let ((__tmp14859
                      (let () (declare (not safe)) (cons _L13879_ '()))))
                 (declare (not safe))
                 (cons _L13881_ __tmp14859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14860
                                                        __tmp14858))))
                                           (declare (not safe))
                                           (cons __tmp14870 __tmp14857))))
                                     _hd1384513873_
                                     _hd1384213863_)
                                    (_g1383713852_ _g1383813856_))))
                            (_g1383713852_ _g1383813856_))))
                    (_g1383713852_ _g1383813856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1383613897_
                                                 (list _K13772_ _E13773_))))))
                                       (let ((_g1380314016_
                                              (lambda ()
                                                (let ((_L13908_
                                                       ___stx1468814689_))
                                                  (if (gx#identifier? _L13908_)
                                                      (___kont1469314694_
                                                       _L13908_)
                                                      (___kont1469514696_
                                                       ___stx1468814689_))))))
                                         (if (gx#stx-pair? ___stx1468814689_)
                                             (let ((_e1381114023_
                                                    (gx#syntax-e
                                                     ___stx1468814689_)))
                                               (let ((_tl1380914030_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1381114023_)))
                                                     (_hd1381014027_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1381114023_))))
                                                 (___kont1469114692_
                                                  _tl1380914030_
                                                  _hd1381014027_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1380314016_))))))))
                               _g1377713788_))))
                      (_g1377514211_ _tgt13771_)))))
          (let* ((_g1323113259_
                  (lambda (_g1323213255_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1323213255_)))
                 (_g1323013765_
                  (lambda (_g1323213263_)
                    (if (gx#stx-pair? _g1323213263_)
                        (let ((_e1323813266_ (gx#syntax-e _g1323213263_)))
                          (let ((_hd1323713270_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1323813266_)))
                                (_tl1323613273_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1323813266_))))
                            (if (gx#stx-pair? _tl1323613273_)
                                (let ((_e1324113276_
                                       (gx#syntax-e _tl1323613273_)))
                                  (let ((_hd1324013280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1324113276_)))
                                        (_tl1323913283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1324113276_))))
                                    (if (gx#stx-pair? _tl1323913283_)
                                        (let ((_e1324413286_
                                               (gx#syntax-e _tl1323913283_)))
                                          (let ((_hd1324313290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1324413286_)))
                                                (_tl1324213293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1324413286_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1324213293_)
                                                (let ((_g14871_
                                                       (gx#syntax-split-splice
                                                        _tl1324213293_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14871_)
                         (##vector-length _g14871_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14872_ 2)))
                  (error "Context expects 2 values" _g14872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1324513296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14871_
                                                              0)))
                                                          (_tl1324713299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14871_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1324713299_)
                                                          (letrec ((_loop1324813302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1324613306_ _clause1325213309_)
                              (if (gx#stx-pair? _hd1324613306_)
                                  (let ((_e1324913312_
                                         (gx#syntax-e _hd1324613306_)))
                                    (let ((_lp-hd1325013316_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1324913312_)))
                                          (_lp-tl1325113319_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1324913312_))))
                                      (_loop1324813302_
                                       _lp-tl1325113319_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1325013316_
                                               _clause1325213309_)))))
                                  (let ((_clause1325313322_
                                         (reverse _clause1325213309_)))
                                    ((lambda (_L13326_ _L13328_ _L13329_)
                                       (let _recur13351_ ((_rest13354_
                                                           (let ((__tmp14894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1375613759_ _g1375713762_)
                            (let ()
                              (declare (not safe))
                              (cons _g1375613759_ _g1375713762_)))))
                     (declare (not safe))
                     (foldr1 __tmp14894 '() _L13326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1335613365_ _rest13354_)
                                                (_E1335913371_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1335613365_))))
                                           (let ((_K1336113741_
                                                  (lambda (_rest13387_
                                                           _hd13389_)
                                                    (let* ((_g1339113399_
                                                            (lambda (_g1339213395_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1339213395_)))
                                                           (_g1339013737_
                                                            (lambda (_g1339213403_)
                                                              ((lambda (_L13406_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1342413432_
                                   (lambda (_g1342513428_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1342513428_)))
                                  (_g1342313733_
                                   (lambda (_g1342513436_)
                                     ((lambda (_L13439_)
                                        (let ()
                                          (let* ((_g1345213460_
                                                  (lambda (_g1345313456_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1345313456_)))
                                                 (_g1345113729_
                                                  (lambda (_g1345313464_)
                                                    ((lambda (_L13467_)
                                                       (let ()
                                                         (let* ((_g1348013488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1348113484_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1348113484_)))
                        (_g1347913510_
                         (lambda (_g1348113492_)
                           ((lambda (_L13495_)
                              (let ()
                                (let ()
                                  (let ((__tmp14881
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14873
                                         (let ((__tmp14875
                                                (let ((__tmp14876
                                                       (let ((__tmp14877
                                                              (let ((__tmp14880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14878
                             (let ((__tmp14879
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13467_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14879))))
                        (declare (not safe))
                        (cons __tmp14880 __tmp14878))))
                 (declare (not safe))
                 (cons __tmp14877 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13406_ __tmp14876)))
                                               (__tmp14874
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13495_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14875 __tmp14874))))
                                    (declare (not safe))
                                    (cons __tmp14881 __tmp14873)))))
                            _g1348113492_))))
                   (_g1347913510_
                    (let* ((___stx1470614707_ _hd13389_)
                           (_g1351613556_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx1470614707_))))
                      (let ((___kont1470914710_
                             (lambda (_L13702_)
                               (let ((__tmp14884 (gx#datum->syntax '#f 'begin))
                                     (__tmp14882
                                      (let ((__tmp14883
                                             (lambda (_g1371613719_
                                                      _g1371713722_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1371613719_
                                                       _g1371713722_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14883 '() _L13702_))))
                                 (declare (not safe))
                                 (cons __tmp14884 __tmp14882))))
                            (___kont1471314714_
                             (lambda (_L13640_ _L13642_)
                               (_generate113228_
                                _L13642_
                                _L13329_
                                _L13640_
                                _L13439_
                                _L13328_)))
                            (___kont1471514716_
                             (lambda (_L13593_ _L13595_ _L13596_)
                               (_generate113228_
                                _L13596_
                                _L13329_
                                (let ((__tmp14888 (gx#datum->syntax '#f 'if))
                                      (__tmp14885
                                       (let ((__tmp14886
                                              (let ((__tmp14887
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13439_ '()))))
                                                (declare (not safe))
                                                (cons _L13593_ __tmp14887))))
                                         (declare (not safe))
                                         (cons _L13595_ __tmp14886))))
                                  (declare (not safe))
                                  (cons __tmp14888 __tmp14885))
                                _L13439_
                                _L13328_))))
                        (let ((___match1473514736_
                               (lambda (_e1352113662_
                                        _hd1352013666_
                                        _tl1351913669_
                                        ___splice1471114712_
                                        _target1352213672_
                                        _tl1352413675_)
                                 (letrec ((_loop1352513678_
                                           (lambda (_hd1352313682_
                                                    _expr1352913685_)
                                             (if (gx#stx-pair? _hd1352313682_)
                                                 (let ((_e1352613688_
                                                        (gx#syntax-e
                                                         _hd1352313682_)))
                                                   (let ((_lp-tl1352813695_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1352613688_)))
                                                         (_lp-hd1352713692_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1352613688_))))
                                                     (_loop1352513678_
                                                      _lp-tl1352813695_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1352713692_
                                                              _expr1352913685_)))))
                                                 (let ((_expr1353013698_
                                                        (reverse _expr1352913685_)))
                                                   (___kont1470914710_
                                                    _expr1353013698_))))))
                                   (_loop1352513678_
                                    _target1352213672_
                                    '())))))
                          (if (gx#stx-pair? ___stx1470614707_)
                              (let ((_e1352113662_
                                     (gx#syntax-e ___stx1470614707_)))
                                (let ((_tl1351913669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1352113662_)))
                                      (_hd1352013666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1352113662_))))
                                  (if (gx#identifier? _hd1352013666_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14889_|
                                           _hd1352013666_)
                                          (if (gx#stx-pair/null?
                                               _tl1351913669_)
                                              (let ((___splice1471114712_
                                                     (gx#syntax-split-splice
                                                      _tl1351913669_
                                                      '0)))
                                                (let ((_tl1352413675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1471114712_
                                                          '1)))
                                                      (_target1352213672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1471114712_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1352413675_)
                                                      (___match1473514736_
                                                       _e1352113662_
                                                       _hd1352013666_
                                                       _tl1351913669_
                                                       ___splice1471114712_
                                                       _target1352213672_
                                                       _tl1352413675_)
                                                      (if (gx#stx-pair?
                                                           _tl1351913669_)
                                                          (let ((_e1353813630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1351913669_)))
                    (let ((_tl1353613637_
                           (let () (declare (not safe)) (##cdr _e1353813630_)))
                          (_hd1353713634_
                           (let ()
                             (declare (not safe))
                             (##car _e1353813630_))))
                      (if (gx#stx-null? _tl1353613637_)
                          (___kont1471314714_ _hd1353713634_ _hd1352013666_)
                          (if (gx#stx-pair? _tl1353613637_)
                              (let ((_e1355013583_
                                     (gx#syntax-e _tl1353613637_)))
                                (let ((_tl1354813590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1355013583_)))
                                      (_hd1354913587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1355013583_))))
                                  (if (gx#stx-null? _tl1354813590_)
                                      (___kont1471514716_
                                       _hd1354913587_
                                       _hd1353713634_
                                       _hd1352013666_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1351613556_)))))
                              (let () (declare (not safe)) (_g1351613556_))))))
                  (let () (declare (not safe)) (_g1351613556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1351913669_)
                                                  (let ((_e1353813630_
                                                         (gx#syntax-e
                                                          _tl1351913669_)))
                                                    (let ((_tl1353613637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1353813630_)))
                                                          (_hd1353713634_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1353813630_))))
                                                      (if (gx#stx-null?
                                                           _tl1353613637_)
                                                          (___kont1471314714_
                                                           _hd1353713634_
                                                           _hd1352013666_)
                                                          (if (gx#stx-pair?
                                                               _tl1353613637_)
                                                              (let ((_e1355013583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1353613637_)))
                        (let ((_tl1354813590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1355013583_)))
                              (_hd1354913587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1355013583_))))
                          (if (gx#stx-null? _tl1354813590_)
                              (___kont1471514716_
                               _hd1354913587_
                               _hd1353713634_
                               _hd1352013666_)
                              (let () (declare (not safe)) (_g1351613556_)))))
                      (let () (declare (not safe)) (_g1351613556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1351613556_))))
                                          (if (gx#stx-pair? _tl1351913669_)
                                              (let ((_e1353813630_
                                                     (gx#syntax-e
                                                      _tl1351913669_)))
                                                (let ((_tl1353613637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1353813630_)))
                                                      (_hd1353713634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1353813630_))))
                                                  (if (gx#stx-null?
                                                       _tl1353613637_)
                                                      (___kont1471314714_
                                                       _hd1353713634_
                                                       _hd1352013666_)
                                                      (if (gx#stx-pair?
                                                           _tl1353613637_)
                                                          (let ((_e1355013583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1353613637_)))
                    (let ((_tl1354813590_
                           (let () (declare (not safe)) (##cdr _e1355013583_)))
                          (_hd1354913587_
                           (let ()
                             (declare (not safe))
                             (##car _e1355013583_))))
                      (if (gx#stx-null? _tl1354813590_)
                          (___kont1471514716_
                           _hd1354913587_
                           _hd1353713634_
                           _hd1352013666_)
                          (let () (declare (not safe)) (_g1351613556_)))))
                  (let () (declare (not safe)) (_g1351613556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1351613556_))))
                                      (if (gx#stx-pair? _tl1351913669_)
                                          (let ((_e1353813630_
                                                 (gx#syntax-e _tl1351913669_)))
                                            (let ((_tl1353613637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1353813630_)))
                                                  (_hd1353713634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1353813630_))))
                                              (if (gx#stx-null? _tl1353613637_)
                                                  (___kont1471314714_
                                                   _hd1353713634_
                                                   _hd1352013666_)
                                                  (if (gx#stx-pair?
                                                       _tl1353613637_)
                                                      (let ((_e1355013583_
                                                             (gx#syntax-e
                                                              _tl1353613637_)))
                                                        (let ((_tl1354813590_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1355013583_)))
                      (_hd1354913587_
                       (let () (declare (not safe)) (##car _e1355013583_))))
                  (if (gx#stx-null? _tl1354813590_)
                      (___kont1471514716_
                       _hd1354913587_
                       _hd1353713634_
                       _hd1352013666_)
                      (let () (declare (not safe)) (_g1351613556_)))))
              (let () (declare (not safe)) (_g1351613556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1351613556_))))))
                              (let ()
                                (declare (not safe))
                                (_g1351613556_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1345313464_))))
                                            (_g1345113729_
                                             (_recur13351_ _rest13387_)))))
                                      _g1342513436_))))
                             (_g1342313733_
                              (let ()
                                (declare (not safe))
                                (cons _L13406_ '()))))))
                       _g1339213403_))))
              (_g1339013737_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1336013379_
                                                  (lambda ()
                                                    (let ((__tmp14893
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14890
                                                           (let ((__tmp14891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14892
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13329_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax; malformed ast clause"
                                  __tmp14892))))
                     (declare (not safe))
                     (cons '#f __tmp14891))))
              (declare (not safe))
              (cons __tmp14893 __tmp14890)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1335813383_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1335613365_))
                                                          (_K1336013379_)
                                                          (_E1335913371_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1335613365_))
                                                   (let ((_tl1336313748_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1335613365_)))
                                                         (_hd1336213745_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1335613365_))))
                                                     (let ((_hd13751_
                                                            _hd1336213745_)
                                                           (_rest13754_
                                                            _tl1336313748_))
                                                       (_K1336113741_
                                                        _rest13754_
                                                        _hd13751_)))
                                                   (_try-match1335813383_)))))))
                                     _clause1325313322_
                                     _hd1324313290_
                                     _hd1324013280_))))))
                    (_loop1324813302_ _target1324513296_ '()))
                  (_g1323113259_ _g1323213263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1323113259_
                                                 _g1323213263_))))
                                        (_g1323113259_ _g1323213263_))))
                                (_g1323113259_ _g1323213263_))))
                        (_g1323113259_ _g1323213263_)))))
            (_g1323013765_ _stx13225_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14895_|
       'expander-identifiers:
       (let ((__tmp14942
              (let ((__tmp14943 |[1]#_g14944_|))
                (declare (not safe))
                (cons __tmp14943 '())))
             (__tmp14896
              (let ((__tmp14941 |[1]#_g14895_|)
                    (__tmp14897
                     (let ((__tmp14939 |[1]#_g14940_|)
                           (__tmp14898
                            (let ((__tmp14937 |[1]#_g14938_|)
                                  (__tmp14899
                                   (let ((__tmp14919
                                          (let ((__tmp14935 |[1]#_g14936_|)
                                                (__tmp14920
                                                 (let ((__tmp14933
                                                        |[1]#_g14934_|)
                                                       (__tmp14921
                                                        (let ((__tmp14931
                                                               |[1]#_g14932_|)
                                                              (__tmp14922
                                                               (let ((__tmp14929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14930_|)
                             (__tmp14923
                              (let ((__tmp14927 |[1]#_g14928_|)
                                    (__tmp14924
                                     (let ((__tmp14925 |[1]#_g14926_|))
                                       (declare (not safe))
                                       (cons __tmp14925 '()))))
                                (declare (not safe))
                                (cons __tmp14927 __tmp14924))))
                         (declare (not safe))
                         (cons __tmp14929 __tmp14923))))
                  (declare (not safe))
                  (cons __tmp14931 __tmp14922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14933
                                                         __tmp14921))))
                                            (declare (not safe))
                                            (cons __tmp14935 __tmp14920)))
                                         (__tmp14900
                                          (let ((__tmp14901
                                                 (let ((__tmp14917
                                                        |[1]#_g14918_|)
                                                       (__tmp14902
                                                        (let ((__tmp14915
                                                               |[1]#_g14916_|)
                                                              (__tmp14903
                                                               (let ((__tmp14913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14914_|)
                             (__tmp14904
                              (let ((__tmp14911 |[1]#_g14912_|)
                                    (__tmp14905
                                     (let ((__tmp14909 |[1]#_g14910_|)
                                           (__tmp14906
                                            (let ((__tmp14907 |[1]#_g14908_|))
                                              (declare (not safe))
                                              (cons __tmp14907 '()))))
                                       (declare (not safe))
                                       (cons __tmp14909 __tmp14906))))
                                (declare (not safe))
                                (cons __tmp14911 __tmp14905))))
                         (declare (not safe))
                         (cons __tmp14913 __tmp14904))))
                  (declare (not safe))
                  (cons __tmp14915 __tmp14903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14917
                                                         __tmp14902))))
                                            (declare (not safe))
                                            (cons __tmp14901 '()))))
                                     (declare (not safe))
                                     (cons __tmp14919 __tmp14900))))
                              (declare (not safe))
                              (cons __tmp14937 __tmp14899))))
                       (declare (not safe))
                       (cons __tmp14939 __tmp14898))))
                (declare (not safe))
                (cons __tmp14941 __tmp14897))))
         (declare (not safe))
         (cons __tmp14942 __tmp14896))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14945_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14946_|
       'expander-identifiers:
       (let ((__tmp14947
              (let ((__tmp14968 |[1]#_g14946_|)
                    (__tmp14948
                     (let ((__tmp14966 |[1]#_g14967_|)
                           (__tmp14949
                            (let ((__tmp14964 |[1]#_g14965_|)
                                  (__tmp14950
                                   (let ((__tmp14958
                                          (let ((__tmp14962 |[1]#_g14963_|)
                                                (__tmp14959
                                                 (let ((__tmp14960
                                                        |[1]#_g14961_|))
                                                   (declare (not safe))
                                                   (cons __tmp14960 '()))))
                                            (declare (not safe))
                                            (cons __tmp14962 __tmp14959)))
                                         (__tmp14951
                                          (let ((__tmp14952
                                                 (let ((__tmp14956
                                                        |[1]#_g14957_|)
                                                       (__tmp14953
                                                        (let ((__tmp14954
                                                               |[1]#_g14955_|))
                                                          (declare (not safe))
                                                          (cons __tmp14954
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp14956
                                                         __tmp14953))))
                                            (declare (not safe))
                                            (cons __tmp14952 '()))))
                                     (declare (not safe))
                                     (cons __tmp14958 __tmp14951))))
                              (declare (not safe))
                              (cons __tmp14964 __tmp14950))))
                       (declare (not safe))
                       (cons __tmp14966 __tmp14949))))
                (declare (not safe))
                (cons __tmp14968 __tmp14948))))
         (declare (not safe))
         (cons '#f __tmp14947))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
