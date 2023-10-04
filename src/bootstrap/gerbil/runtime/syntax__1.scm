(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14934_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14940_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14953_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14955_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14957_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14959_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14961_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14963_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14971_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14973_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14975_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14977_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14979_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14981_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14983_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14985_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14989_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14990_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14991_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15000_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15002_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15006_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15008_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15010_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15012_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13151_)
        (let* ((_g1315513179_
                (lambda (_g1315613175_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1315613175_)))
               (_g1315413265_
                (lambda (_g1315613183_)
                  (if (gx#stx-pair? _g1315613183_)
                      (let ((_e1316113186_ (gx#syntax-e _g1315613183_)))
                        (let ((_hd1316013190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1316113186_)))
                              (_tl1315913193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1316113186_))))
                          (if (gx#stx-pair? _tl1315913193_)
                              (let ((_e1316413196_
                                     (gx#syntax-e _tl1315913193_)))
                                (let ((_hd1316313200_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1316413196_)))
                                      (_tl1316213203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1316413196_))))
                                  (if (gx#stx-pair/null? _tl1316213203_)
                                      (let ((_g14830_
                                             (gx#syntax-split-splice
                                              _tl1316213203_
                                              '0)))
                                        (begin
                                          (let ((_g14831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14830_)
                                                       (##vector-length
                                                        _g14830_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14831_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14831_)))
                                          (let ((_target1316513206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14830_ 0)))
                                                (_tl1316713209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14830_ 1))))
                                            (if (gx#stx-null? _tl1316713209_)
                                                (letrec ((_loop1316813212_
                                                          (lambda (_hd1316613216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1317213219_)
                    (if (gx#stx-pair? _hd1316613216_)
                        (let ((_e1316913222_ (gx#syntax-e _hd1316613216_)))
                          (let ((_lp-hd1317013226_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1316913222_)))
                                (_lp-tl1317113229_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1316913222_))))
                            (_loop1316813212_
                             _lp-tl1317113229_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1317013226_ _body1317213219_)))))
                        (let ((_body1317313232_ (reverse _body1317213219_)))
                          ((lambda (_L13236_ _L13238_)
                             (let ((__tmp14843 (gx#datum->syntax '#f 'let))
                                   (__tmp14832
                                    (let ((__tmp14840
                                           (let ((__tmp14842
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14841
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13238_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14842 __tmp14841)))
                                          (__tmp14833
                                           (let ((__tmp14834
                                                  (let ((__tmp14839
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14835
                                                         (let ((__tmp14838
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14836
                        (let ((__tmp14837
                               (lambda (_g1325613259_ _g1325713262_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1325613259_ _g1325713262_)))))
                          (declare (not safe))
                          (foldr1 __tmp14837 '() _L13236_))))
                   (declare (not safe))
                   (cons __tmp14838 __tmp14836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14839
                                                          __tmp14835))))
                                             (declare (not safe))
                                             (cons __tmp14834 '()))))
                                      (declare (not safe))
                                      (cons __tmp14840 __tmp14833))))
                               (declare (not safe))
                               (cons __tmp14843 __tmp14832)))
                           _body1317313232_
                           _hd1316313200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1316813212_
                                                   _target1316513206_
                                                   '()))
                                                (_g1315513179_
                                                 _g1315613183_)))))
                                      (_g1315513179_ _g1315613183_))))
                              (_g1315513179_ _g1315613183_))))
                      (_g1315513179_ _g1315613183_)))))
          (_g1315413265_ _$stx13151_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13270_)
        (letrec ((_generate113273_
                  (lambda (_hd13814_ _tgt13816_ _K13817_ _E13818_ _kws13819_)
                    (let* ((_g1382113829_
                            (lambda (_g1382213825_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1382213825_)))
                           (_g1382014256_
                            (lambda (_g1382213833_)
                              ((lambda (_L13836_)
                                 (let ()
                                   (let* ((___stx1473314734_ _hd13814_)
                                          (_g1385013864_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1473314734_))))
                                     (let ((___kont1473614737_
                                            (lambda (_L14078_ _L14080_)
                                              (let* ((_g1409114099_
                                                      (lambda (_g1409214095_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1409214095_)))
                                                     (_g1409014248_
                                                      (lambda (_g1409214103_)
                                                        ((lambda (_L14106_)
                                                           (let ()
                                                             (let* ((_g1411814126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1411914122_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1411914122_)))
                            (_g1411714244_
                             (lambda (_g1411914130_)
                               ((lambda (_L14133_)
                                  (let ()
                                    (let* ((_g1414614154_
                                            (lambda (_g1414714150_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1414714150_)))
                                           (_g1414514240_
                                            (lambda (_g1414714158_)
                                              ((lambda (_L14161_)
                                                 (let ()
                                                   (let* ((_g1417414182_
                                                           (lambda (_g1417514178_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1417514178_)))
                                                          (_g1417314236_
                                                           (lambda (_g1417514186_)
                                                             ((lambda (_L14189_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1420214210_
                                  (lambda (_g1420314206_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1420314206_)))
                                 (_g1420114232_
                                  (lambda (_g1420314214_)
                                    ((lambda (_L14217_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14872
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14844
                                                  (let ((__tmp14869
                                                         (let ((__tmp14871
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14870
                        (let () (declare (not safe)) (cons _L13836_ '()))))
                   (declare (not safe))
                   (cons __tmp14871 __tmp14870)))
                (__tmp14845
                 (let ((__tmp14847
                        (let ((__tmp14868 (gx#datum->syntax '#f 'let*))
                              (__tmp14848
                               (let ((__tmp14850
                                      (let ((__tmp14863
                                             (let ((__tmp14864
                                                    (let ((__tmp14865
                                                           (let ((__tmp14867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14866
                          (let () (declare (not safe)) (cons _L13836_ '()))))
                     (declare (not safe))
                     (cons __tmp14867 __tmp14866))))
              (declare (not safe))
              (cons __tmp14865 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14106_ __tmp14864)))
                                            (__tmp14851
                                             (let ((__tmp14858
                                                    (let ((__tmp14859
                                                           (let ((__tmp14860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14862 (gx#datum->syntax '#f '##car))
                                (__tmp14861
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14106_ '()))))
                            (declare (not safe))
                            (cons __tmp14862 __tmp14861))))
                     (declare (not safe))
                     (cons __tmp14860 '()))))
              (declare (not safe))
              (cons _L14133_ __tmp14859)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14852
                                                    (let ((__tmp14853
                                                           (let ((__tmp14854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14855
                                 (let ((__tmp14857
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14856
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14106_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14857 __tmp14856))))
                            (declare (not safe))
                            (cons __tmp14855 '()))))
                     (declare (not safe))
                     (cons _L14161_ __tmp14854))))
              (declare (not safe))
              (cons __tmp14853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14858 __tmp14852))))
                                        (declare (not safe))
                                        (cons __tmp14863 __tmp14851)))
                                     (__tmp14849
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14189_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14850 __tmp14849))))
                          (declare (not safe))
                          (cons __tmp14868 __tmp14848)))
                       (__tmp14846
                        (let () (declare (not safe)) (cons _L14217_ '()))))
                   (declare (not safe))
                   (cons __tmp14847 __tmp14846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14869
                                                          __tmp14845))))
                                             (declare (not safe))
                                             (cons __tmp14872 __tmp14844)))))
                                     _g1420314214_))))
                            (_g1420114232_ _E13818_))))
                      _g1417514186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1417314236_
                                                      (_generate113273_
                                                       _L14080_
                                                       _L14133_
                                                       (_generate113273_
                                                        _L14078_
                                                        _L14161_
                                                        _K13817_
                                                        _E13818_
                                                        _kws13819_)
                                                       _E13818_
                                                       _kws13819_)))))
                                               _g1414714158_))))
                                      (_g1414514240_ (gx#genident '$tl)))))
                                _g1411914130_))))
                       (_g1411714244_ (gx#genident '$hd)))))
                 _g1409214103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1409014248_
                                                 (gx#genident '$tgt)))))
                                           (___kont1473814739_
                                            (lambda (_L13953_)
                                              (if (gx#underscore? _L13953_)
                                                  _K13817_
                                                  (if (let ((__tmp14901
                                                             (lambda (_g1396113963_)
                                                               (gx#bound-identifier=?
                                                                _g1396113963_
                                                                _L13953_)))
                                                            (__tmp14900
                                                             (gx#syntax->list
                                                              _kws13819_)))
                                                        (declare (not safe))
                                                        (find __tmp14901
                                                              __tmp14900))
                                                      (let* ((_g1396713982_
                                                              (lambda (_g1396813978_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1396813978_)))
                     (_g1396614027_
                      (lambda (_g1396813986_)
                        (if (gx#stx-pair? _g1396813986_)
                            (let ((_e1397313989_ (gx#syntax-e _g1396813986_)))
                              (let ((_hd1397213993_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1397313989_)))
                                    (_tl1397113996_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1397313989_))))
                                (if (gx#stx-pair? _tl1397113996_)
                                    (let ((_e1397613999_
                                           (gx#syntax-e _tl1397113996_)))
                                      (let ((_hd1397514003_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1397613999_)))
                                            (_tl1397414006_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1397613999_))))
                                        (if (gx#stx-null? _tl1397414006_)
                                            ((lambda (_L14009_ _L14011_)
                                               (let ()
                                                 (let ((__tmp14899
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14879
                                                        (let ((__tmp14882
                                                               (let ((__tmp14898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14883
                              (let ((__tmp14895
                                     (let ((__tmp14897
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14896
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13836_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14897 __tmp14896)))
                                    (__tmp14884
                                     (let ((__tmp14885
                                            (let ((__tmp14894
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14886
                                                   (let ((__tmp14891
                                                          (let ((__tmp14893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14892
                         (let () (declare (not safe)) (cons _L13836_ '()))))
                    (declare (not safe))
                    (cons __tmp14893 __tmp14892)))
                 (__tmp14887
                  (let ((__tmp14888
                         (let ((__tmp14890 (gx#datum->syntax '#f 'quote))
                               (__tmp14889
                                (let ()
                                  (declare (not safe))
                                  (cons _L13953_ '()))))
                           (declare (not safe))
                           (cons __tmp14890 __tmp14889))))
                    (declare (not safe))
                    (cons __tmp14888 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14891
                                                           __tmp14887))))
                                              (declare (not safe))
                                              (cons __tmp14894 __tmp14886))))
                                       (declare (not safe))
                                       (cons __tmp14885 '()))))
                                (declare (not safe))
                                (cons __tmp14895 __tmp14884))))
                         (declare (not safe))
                         (cons __tmp14898 __tmp14883)))
                      (__tmp14880
                       (let ((__tmp14881
                              (let ()
                                (declare (not safe))
                                (cons _L14009_ '()))))
                         (declare (not safe))
                         (cons _L14011_ __tmp14881))))
                  (declare (not safe))
                  (cons __tmp14882 __tmp14880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14899
                                                         __tmp14879))))
                                             _hd1397514003_
                                             _hd1397213993_)
                                            (_g1396713982_ _g1396813986_))))
                                    (_g1396713982_ _g1396813986_))))
                            (_g1396713982_ _g1396813986_)))))
                (_g1396614027_ (list _K13817_ _E13818_)))
              (let* ((_g1403114039_
                      (lambda (_g1403214035_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1403214035_)))
                     (_g1403014057_
                      (lambda (_g1403214043_)
                        ((lambda (_L14046_)
                           (let ()
                             (let ((__tmp14878 (gx#datum->syntax '#f 'let))
                                   (__tmp14873
                                    (let ((__tmp14875
                                           (let ((__tmp14876
                                                  (let ((__tmp14877
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13953_
                                                          __tmp14877))))
                                             (declare (not safe))
                                             (cons __tmp14876 '())))
                                          (__tmp14874
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14046_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14875 __tmp14874))))
                               (declare (not safe))
                               (cons __tmp14878 __tmp14873))))
                         _g1403214043_))))
                (_g1403014057_ _K13817_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1474014741_
                                            (lambda (_L13871_)
                                              (let* ((_g1388213897_
                                                      (lambda (_g1388313893_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1388313893_)))
                                                     (_g1388113942_
                                                      (lambda (_g1388313901_)
                                                        (if (gx#stx-pair?
                                                             _g1388313901_)
                                                            (let ((_e1388813904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1388313901_)))
                      (let ((_hd1388713908_
                             (let ()
                               (declare (not safe))
                               (##car _e1388813904_)))
                            (_tl1388613911_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1388813904_))))
                        (if (gx#stx-pair? _tl1388613911_)
                            (let ((_e1389113914_ (gx#syntax-e _tl1388613911_)))
                              (let ((_hd1389013918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1389113914_)))
                                    (_tl1388913921_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1389113914_))))
                                (if (gx#stx-null? _tl1388913921_)
                                    ((lambda (_L13924_ _L13926_)
                                       (let ()
                                         (let ((__tmp14915
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14902
                                                (let ((__tmp14905
                                                       (let ((__tmp14914
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14906
                                                              (let ((__tmp14911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14913 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14912
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13836_ '()))))
                               (declare (not safe))
                               (cons __tmp14913 __tmp14912)))
                            (__tmp14907
                             (let ((__tmp14908
                                    (let ((__tmp14910
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14909
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13871_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14910 __tmp14909))))
                               (declare (not safe))
                               (cons __tmp14908 '()))))
                        (declare (not safe))
                        (cons __tmp14911 __tmp14907))))
                 (declare (not safe))
                 (cons __tmp14914 __tmp14906)))
              (__tmp14903
               (let ((__tmp14904
                      (let () (declare (not safe)) (cons _L13924_ '()))))
                 (declare (not safe))
                 (cons _L13926_ __tmp14904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14905
                                                        __tmp14903))))
                                           (declare (not safe))
                                           (cons __tmp14915 __tmp14902))))
                                     _hd1389013918_
                                     _hd1388713908_)
                                    (_g1388213897_ _g1388313901_))))
                            (_g1388213897_ _g1388313901_))))
                    (_g1388213897_ _g1388313901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1388113942_
                                                 (list _K13817_ _E13818_))))))
                                       (let ((_g1384814061_
                                              (lambda ()
                                                (let ((_L13953_
                                                       ___stx1473314734_))
                                                  (if (gx#identifier? _L13953_)
                                                      (___kont1473814739_
                                                       _L13953_)
                                                      (___kont1474014741_
                                                       ___stx1473314734_))))))
                                         (if (gx#stx-pair? ___stx1473314734_)
                                             (let ((_e1385614068_
                                                    (gx#syntax-e
                                                     ___stx1473314734_)))
                                               (let ((_tl1385414075_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1385614068_)))
                                                     (_hd1385514072_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1385614068_))))
                                                 (___kont1473614737_
                                                  _tl1385414075_
                                                  _hd1385514072_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1384814061_))))))))
                               _g1382213833_))))
                      (_g1382014256_ _tgt13816_)))))
          (let* ((_g1327613304_
                  (lambda (_g1327713300_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1327713300_)))
                 (_g1327513810_
                  (lambda (_g1327713308_)
                    (if (gx#stx-pair? _g1327713308_)
                        (let ((_e1328313311_ (gx#syntax-e _g1327713308_)))
                          (let ((_hd1328213315_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1328313311_)))
                                (_tl1328113318_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1328313311_))))
                            (if (gx#stx-pair? _tl1328113318_)
                                (let ((_e1328613321_
                                       (gx#syntax-e _tl1328113318_)))
                                  (let ((_hd1328513325_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1328613321_)))
                                        (_tl1328413328_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1328613321_))))
                                    (if (gx#stx-pair? _tl1328413328_)
                                        (let ((_e1328913331_
                                               (gx#syntax-e _tl1328413328_)))
                                          (let ((_hd1328813335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1328913331_)))
                                                (_tl1328713338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1328913331_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1328713338_)
                                                (let ((_g14916_
                                                       (gx#syntax-split-splice
                                                        _tl1328713338_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14916_)
                         (##vector-length _g14916_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14917_ 2)))
                  (error "Context expects 2 values" _g14917_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1329013341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14916_
                                                              0)))
                                                          (_tl1329213344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14916_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1329213344_)
                                                          (letrec ((_loop1329313347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1329113351_ _clause1329713354_)
                              (if (gx#stx-pair? _hd1329113351_)
                                  (let ((_e1329413357_
                                         (gx#syntax-e _hd1329113351_)))
                                    (let ((_lp-hd1329513361_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1329413357_)))
                                          (_lp-tl1329613364_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1329413357_))))
                                      (_loop1329313347_
                                       _lp-tl1329613364_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1329513361_
                                               _clause1329713354_)))))
                                  (let ((_clause1329813367_
                                         (reverse _clause1329713354_)))
                                    ((lambda (_L13371_ _L13373_ _L13374_)
                                       (let _recur13396_ ((_rest13399_
                                                           (let ((__tmp14939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1380113804_ _g1380213807_)
                            (let ()
                              (declare (not safe))
                              (cons _g1380113804_ _g1380213807_)))))
                     (declare (not safe))
                     (foldr1 __tmp14939 '() _L13371_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1340113410_ _rest13399_)
                                                (_E1340413416_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1340113410_))))
                                           (let ((_K1340613786_
                                                  (lambda (_rest13432_
                                                           _hd13434_)
                                                    (let* ((_g1343613444_
                                                            (lambda (_g1343713440_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1343713440_)))
                                                           (_g1343513782_
                                                            (lambda (_g1343713448_)
                                                              ((lambda (_L13451_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1346913477_
                                   (lambda (_g1347013473_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1347013473_)))
                                  (_g1346813778_
                                   (lambda (_g1347013481_)
                                     ((lambda (_L13484_)
                                        (let ()
                                          (let* ((_g1349713505_
                                                  (lambda (_g1349813501_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1349813501_)))
                                                 (_g1349613774_
                                                  (lambda (_g1349813509_)
                                                    ((lambda (_L13512_)
                                                       (let ()
                                                         (let* ((_g1352513533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1352613529_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1352613529_)))
                        (_g1352413555_
                         (lambda (_g1352613537_)
                           ((lambda (_L13540_)
                              (let ()
                                (let ()
                                  (let ((__tmp14926
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14918
                                         (let ((__tmp14920
                                                (let ((__tmp14921
                                                       (let ((__tmp14922
                                                              (let ((__tmp14925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14923
                             (let ((__tmp14924
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13512_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14924))))
                        (declare (not safe))
                        (cons __tmp14925 __tmp14923))))
                 (declare (not safe))
                 (cons __tmp14922 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13451_ __tmp14921)))
                                               (__tmp14919
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13540_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14920 __tmp14919))))
                                    (declare (not safe))
                                    (cons __tmp14926 __tmp14918)))))
                            _g1352613537_))))
                   (_g1352413555_
                    (let* ((___stx1475114752_ _hd13434_)
                           (_g1356113601_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1475114752_))))
                      (let ((___kont1475414755_
                             (lambda (_L13747_)
                               (let ((__tmp14929 (gx#datum->syntax '#f 'begin))
                                     (__tmp14927
                                      (let ((__tmp14928
                                             (lambda (_g1376113764_
                                                      _g1376213767_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1376113764_
                                                       _g1376213767_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14928 '() _L13747_))))
                                 (declare (not safe))
                                 (cons __tmp14929 __tmp14927))))
                            (___kont1475814759_
                             (lambda (_L13685_ _L13687_)
                               (_generate113273_
                                _L13687_
                                _L13374_
                                _L13685_
                                _L13484_
                                _L13373_)))
                            (___kont1476014761_
                             (lambda (_L13638_ _L13640_ _L13641_)
                               (_generate113273_
                                _L13641_
                                _L13374_
                                (let ((__tmp14933 (gx#datum->syntax '#f 'if))
                                      (__tmp14930
                                       (let ((__tmp14931
                                              (let ((__tmp14932
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13484_ '()))))
                                                (declare (not safe))
                                                (cons _L13638_ __tmp14932))))
                                         (declare (not safe))
                                         (cons _L13640_ __tmp14931))))
                                  (declare (not safe))
                                  (cons __tmp14933 __tmp14930))
                                _L13484_
                                _L13373_))))
                        (let ((___match1478014781_
                               (lambda (_e1356613707_
                                        _hd1356513711_
                                        _tl1356413714_
                                        ___splice1475614757_
                                        _target1356713717_
                                        _tl1356913720_)
                                 (letrec ((_loop1357013723_
                                           (lambda (_hd1356813727_
                                                    _expr1357413730_)
                                             (if (gx#stx-pair? _hd1356813727_)
                                                 (let ((_e1357113733_
                                                        (gx#syntax-e
                                                         _hd1356813727_)))
                                                   (let ((_lp-tl1357313740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1357113733_)))
                                                         (_lp-hd1357213737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1357113733_))))
                                                     (_loop1357013723_
                                                      _lp-tl1357313740_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1357213737_
                                                              _expr1357413730_)))))
                                                 (let ((_expr1357513743_
                                                        (reverse _expr1357413730_)))
                                                   (___kont1475414755_
                                                    _expr1357513743_))))))
                                   (_loop1357013723_
                                    _target1356713717_
                                    '())))))
                          (if (gx#stx-pair? ___stx1475114752_)
                              (let ((_e1356613707_
                                     (gx#syntax-e ___stx1475114752_)))
                                (let ((_tl1356413714_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1356613707_)))
                                      (_hd1356513711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1356613707_))))
                                  (if (gx#identifier? _hd1356513711_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14934_|
                                           _hd1356513711_)
                                          (if (gx#stx-pair/null?
                                               _tl1356413714_)
                                              (let ((___splice1475614757_
                                                     (gx#syntax-split-splice
                                                      _tl1356413714_
                                                      '0)))
                                                (let ((_tl1356913720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1475614757_
                                                          '1)))
                                                      (_target1356713717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1475614757_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1356913720_)
                                                      (___match1478014781_
                                                       _e1356613707_
                                                       _hd1356513711_
                                                       _tl1356413714_
                                                       ___splice1475614757_
                                                       _target1356713717_
                                                       _tl1356913720_)
                                                      (if (gx#stx-pair?
                                                           _tl1356413714_)
                                                          (let ((_e1358313675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1356413714_)))
                    (let ((_tl1358113682_
                           (let () (declare (not safe)) (##cdr _e1358313675_)))
                          (_hd1358213679_
                           (let ()
                             (declare (not safe))
                             (##car _e1358313675_))))
                      (if (gx#stx-null? _tl1358113682_)
                          (___kont1475814759_ _hd1358213679_ _hd1356513711_)
                          (if (gx#stx-pair? _tl1358113682_)
                              (let ((_e1359513628_
                                     (gx#syntax-e _tl1358113682_)))
                                (let ((_tl1359313635_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1359513628_)))
                                      (_hd1359413632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1359513628_))))
                                  (if (gx#stx-null? _tl1359313635_)
                                      (___kont1476014761_
                                       _hd1359413632_
                                       _hd1358213679_
                                       _hd1356513711_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1356113601_)))))
                              (let () (declare (not safe)) (_g1356113601_))))))
                  (let () (declare (not safe)) (_g1356113601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1356413714_)
                                                  (let ((_e1358313675_
                                                         (gx#syntax-e
                                                          _tl1356413714_)))
                                                    (let ((_tl1358113682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1358313675_)))
                                                          (_hd1358213679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1358313675_))))
                                                      (if (gx#stx-null?
                                                           _tl1358113682_)
                                                          (___kont1475814759_
                                                           _hd1358213679_
                                                           _hd1356513711_)
                                                          (if (gx#stx-pair?
                                                               _tl1358113682_)
                                                              (let ((_e1359513628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1358113682_)))
                        (let ((_tl1359313635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1359513628_)))
                              (_hd1359413632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1359513628_))))
                          (if (gx#stx-null? _tl1359313635_)
                              (___kont1476014761_
                               _hd1359413632_
                               _hd1358213679_
                               _hd1356513711_)
                              (let () (declare (not safe)) (_g1356113601_)))))
                      (let () (declare (not safe)) (_g1356113601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1356113601_))))
                                          (if (gx#stx-pair? _tl1356413714_)
                                              (let ((_e1358313675_
                                                     (gx#syntax-e
                                                      _tl1356413714_)))
                                                (let ((_tl1358113682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1358313675_)))
                                                      (_hd1358213679_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1358313675_))))
                                                  (if (gx#stx-null?
                                                       _tl1358113682_)
                                                      (___kont1475814759_
                                                       _hd1358213679_
                                                       _hd1356513711_)
                                                      (if (gx#stx-pair?
                                                           _tl1358113682_)
                                                          (let ((_e1359513628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1358113682_)))
                    (let ((_tl1359313635_
                           (let () (declare (not safe)) (##cdr _e1359513628_)))
                          (_hd1359413632_
                           (let ()
                             (declare (not safe))
                             (##car _e1359513628_))))
                      (if (gx#stx-null? _tl1359313635_)
                          (___kont1476014761_
                           _hd1359413632_
                           _hd1358213679_
                           _hd1356513711_)
                          (let () (declare (not safe)) (_g1356113601_)))))
                  (let () (declare (not safe)) (_g1356113601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1356113601_))))
                                      (if (gx#stx-pair? _tl1356413714_)
                                          (let ((_e1358313675_
                                                 (gx#syntax-e _tl1356413714_)))
                                            (let ((_tl1358113682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1358313675_)))
                                                  (_hd1358213679_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1358313675_))))
                                              (if (gx#stx-null? _tl1358113682_)
                                                  (___kont1475814759_
                                                   _hd1358213679_
                                                   _hd1356513711_)
                                                  (if (gx#stx-pair?
                                                       _tl1358113682_)
                                                      (let ((_e1359513628_
                                                             (gx#syntax-e
                                                              _tl1358113682_)))
                                                        (let ((_tl1359313635_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1359513628_)))
                      (_hd1359413632_
                       (let () (declare (not safe)) (##car _e1359513628_))))
                  (if (gx#stx-null? _tl1359313635_)
                      (___kont1476014761_
                       _hd1359413632_
                       _hd1358213679_
                       _hd1356513711_)
                      (let () (declare (not safe)) (_g1356113601_)))))
              (let () (declare (not safe)) (_g1356113601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1356113601_))))))
                              (let ()
                                (declare (not safe))
                                (_g1356113601_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1349813509_))))
                                            (_g1349613774_
                                             (_recur13396_ _rest13432_)))))
                                      _g1347013481_))))
                             (_g1346813778_
                              (let ()
                                (declare (not safe))
                                (cons _L13451_ '()))))))
                       _g1343713448_))))
              (_g1343513782_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1340513424_
                                                  (lambda ()
                                                    (let ((__tmp14938
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14935
                                                           (let ((__tmp14936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14937
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13374_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax" __tmp14937))))
                     (declare (not safe))
                     (cons '#f __tmp14936))))
              (declare (not safe))
              (cons __tmp14938 __tmp14935)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1340313428_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1340113410_))
                                                          (_K1340513424_)
                                                          (_E1340413416_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1340113410_))
                                                   (let ((_tl1340813793_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1340113410_)))
                                                         (_hd1340713790_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1340113410_))))
                                                     (let ((_hd13796_
                                                            _hd1340713790_)
                                                           (_rest13799_
                                                            _tl1340813793_))
                                                       (_K1340613786_
                                                        _rest13799_
                                                        _hd13796_)))
                                                   (_try-match1340313428_)))))))
                                     _clause1329813367_
                                     _hd1328813335_
                                     _hd1328513325_))))))
                    (_loop1329313347_ _target1329013341_ '()))
                  (_g1327613304_ _g1327713308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1327613304_
                                                 _g1327713308_))))
                                        (_g1327613304_ _g1327713308_))))
                                (_g1327613304_ _g1327713308_))))
                        (_g1327613304_ _g1327713308_)))))
            (_g1327513810_ _stx13270_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14940_|
       'expander-identifiers:
       (let ((__tmp14987
              (let ((__tmp14988 |[1]#_g14989_|))
                (declare (not safe))
                (cons __tmp14988 '())))
             (__tmp14941
              (let ((__tmp14986 |[1]#_g14940_|)
                    (__tmp14942
                     (let ((__tmp14984 |[1]#_g14985_|)
                           (__tmp14943
                            (let ((__tmp14982 |[1]#_g14983_|)
                                  (__tmp14944
                                   (let ((__tmp14964
                                          (let ((__tmp14980 |[1]#_g14981_|)
                                                (__tmp14965
                                                 (let ((__tmp14978
                                                        |[1]#_g14979_|)
                                                       (__tmp14966
                                                        (let ((__tmp14976
                                                               |[1]#_g14977_|)
                                                              (__tmp14967
                                                               (let ((__tmp14974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14975_|)
                             (__tmp14968
                              (let ((__tmp14972 |[1]#_g14973_|)
                                    (__tmp14969
                                     (let ((__tmp14970 |[1]#_g14971_|))
                                       (declare (not safe))
                                       (cons __tmp14970 '()))))
                                (declare (not safe))
                                (cons __tmp14972 __tmp14969))))
                         (declare (not safe))
                         (cons __tmp14974 __tmp14968))))
                  (declare (not safe))
                  (cons __tmp14976 __tmp14967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14978
                                                         __tmp14966))))
                                            (declare (not safe))
                                            (cons __tmp14980 __tmp14965)))
                                         (__tmp14945
                                          (let ((__tmp14946
                                                 (let ((__tmp14962
                                                        |[1]#_g14963_|)
                                                       (__tmp14947
                                                        (let ((__tmp14960
                                                               |[1]#_g14961_|)
                                                              (__tmp14948
                                                               (let ((__tmp14958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14959_|)
                             (__tmp14949
                              (let ((__tmp14956 |[1]#_g14957_|)
                                    (__tmp14950
                                     (let ((__tmp14954 |[1]#_g14955_|)
                                           (__tmp14951
                                            (let ((__tmp14952 |[1]#_g14953_|))
                                              (declare (not safe))
                                              (cons __tmp14952 '()))))
                                       (declare (not safe))
                                       (cons __tmp14954 __tmp14951))))
                                (declare (not safe))
                                (cons __tmp14956 __tmp14950))))
                         (declare (not safe))
                         (cons __tmp14958 __tmp14949))))
                  (declare (not safe))
                  (cons __tmp14960 __tmp14948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14962
                                                         __tmp14947))))
                                            (declare (not safe))
                                            (cons __tmp14946 '()))))
                                     (declare (not safe))
                                     (cons __tmp14964 __tmp14945))))
                              (declare (not safe))
                              (cons __tmp14982 __tmp14944))))
                       (declare (not safe))
                       (cons __tmp14984 __tmp14943))))
                (declare (not safe))
                (cons __tmp14986 __tmp14942))))
         (declare (not safe))
         (cons __tmp14987 __tmp14941))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14990_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14991_|
       'expander-identifiers:
       (let ((__tmp14992
              (let ((__tmp15013 |[1]#_g14991_|)
                    (__tmp14993
                     (let ((__tmp15011 |[1]#_g15012_|)
                           (__tmp14994
                            (let ((__tmp15009 |[1]#_g15010_|)
                                  (__tmp14995
                                   (let ((__tmp15003
                                          (let ((__tmp15007 |[1]#_g15008_|)
                                                (__tmp15004
                                                 (let ((__tmp15005
                                                        |[1]#_g15006_|))
                                                   (declare (not safe))
                                                   (cons __tmp15005 '()))))
                                            (declare (not safe))
                                            (cons __tmp15007 __tmp15004)))
                                         (__tmp14996
                                          (let ((__tmp14997
                                                 (let ((__tmp15001
                                                        |[1]#_g15002_|)
                                                       (__tmp14998
                                                        (let ((__tmp14999
                                                               |[1]#_g15000_|))
                                                          (declare (not safe))
                                                          (cons __tmp14999
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp15001
                                                         __tmp14998))))
                                            (declare (not safe))
                                            (cons __tmp14997 '()))))
                                     (declare (not safe))
                                     (cons __tmp15003 __tmp14996))))
                              (declare (not safe))
                              (cons __tmp15009 __tmp14995))))
                       (declare (not safe))
                       (cons __tmp15011 __tmp14994))))
                (declare (not safe))
                (cons __tmp15013 __tmp14993))))
         (declare (not safe))
         (cons '#f __tmp14992))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
