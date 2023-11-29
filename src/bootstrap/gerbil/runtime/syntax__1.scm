(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14935_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14941_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14954_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14956_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14958_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14960_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14962_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14964_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14972_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14974_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14976_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14978_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14980_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14982_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14984_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14986_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14990_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14991_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14992_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15001_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15003_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15007_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15009_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15011_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15013_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13152_)
        (let* ((_g1315613180_
                (lambda (_g1315713176_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1315713176_)))
               (_g1315513266_
                (lambda (_g1315713184_)
                  (if (gx#stx-pair? _g1315713184_)
                      (let ((_e1316213187_ (gx#syntax-e _g1315713184_)))
                        (let ((_hd1316113191_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1316213187_)))
                              (_tl1316013194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1316213187_))))
                          (if (gx#stx-pair? _tl1316013194_)
                              (let ((_e1316513197_
                                     (gx#syntax-e _tl1316013194_)))
                                (let ((_hd1316413201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1316513197_)))
                                      (_tl1316313204_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1316513197_))))
                                  (if (gx#stx-pair/null? _tl1316313204_)
                                      (let ((_g14831_
                                             (gx#syntax-split-splice
                                              _tl1316313204_
                                              '0)))
                                        (begin
                                          (let ((_g14832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14831_)
                                                       (##vector-length
                                                        _g14831_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14832_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14832_)))
                                          (let ((_target1316613207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14831_ 0)))
                                                (_tl1316813210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14831_ 1))))
                                            (if (gx#stx-null? _tl1316813210_)
                                                (letrec ((_loop1316913213_
                                                          (lambda (_hd1316713217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1317313220_)
                    (if (gx#stx-pair? _hd1316713217_)
                        (let ((_e1317013223_ (gx#syntax-e _hd1316713217_)))
                          (let ((_lp-hd1317113227_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1317013223_)))
                                (_lp-tl1317213230_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1317013223_))))
                            (_loop1316913213_
                             _lp-tl1317213230_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1317113227_ _body1317313220_)))))
                        (let ((_body1317413233_ (reverse _body1317313220_)))
                          ((lambda (_L13237_ _L13239_)
                             (let ((__tmp14844 (gx#datum->syntax '#f 'let))
                                   (__tmp14833
                                    (let ((__tmp14841
                                           (let ((__tmp14843
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14842
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13239_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14843 __tmp14842)))
                                          (__tmp14834
                                           (let ((__tmp14835
                                                  (let ((__tmp14840
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14836
                                                         (let ((__tmp14839
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14837
                        (let ((__tmp14838
                               (lambda (_g1325713260_ _g1325813263_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1325713260_ _g1325813263_)))))
                          (declare (not safe))
                          (foldr1 __tmp14838 '() _L13237_))))
                   (declare (not safe))
                   (cons __tmp14839 __tmp14837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14840
                                                          __tmp14836))))
                                             (declare (not safe))
                                             (cons __tmp14835 '()))))
                                      (declare (not safe))
                                      (cons __tmp14841 __tmp14834))))
                               (declare (not safe))
                               (cons __tmp14844 __tmp14833)))
                           _body1317413233_
                           _hd1316413201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1316913213_
                                                   _target1316613207_
                                                   '()))
                                                (_g1315613180_
                                                 _g1315713184_)))))
                                      (_g1315613180_ _g1315713184_))))
                              (_g1315613180_ _g1315713184_))))
                      (_g1315613180_ _g1315713184_)))))
          (_g1315513266_ _$stx13152_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13271_)
        (letrec ((_generate113274_
                  (lambda (_hd13815_ _tgt13817_ _K13818_ _E13819_ _kws13820_)
                    (let* ((_g1382213830_
                            (lambda (_g1382313826_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1382313826_)))
                           (_g1382114257_
                            (lambda (_g1382313834_)
                              ((lambda (_L13837_)
                                 (let ()
                                   (let* ((___stx1473414735_ _hd13815_)
                                          (_g1385113865_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx1473414735_))))
                                     (let ((___kont1473714738_
                                            (lambda (_L14079_ _L14081_)
                                              (let* ((_g1409214100_
                                                      (lambda (_g1409314096_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1409314096_)))
                                                     (_g1409114249_
                                                      (lambda (_g1409314104_)
                                                        ((lambda (_L14107_)
                                                           (let ()
                                                             (let* ((_g1411914127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1412014123_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1412014123_)))
                            (_g1411814245_
                             (lambda (_g1412014131_)
                               ((lambda (_L14134_)
                                  (let ()
                                    (let* ((_g1414714155_
                                            (lambda (_g1414814151_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1414814151_)))
                                           (_g1414614241_
                                            (lambda (_g1414814159_)
                                              ((lambda (_L14162_)
                                                 (let ()
                                                   (let* ((_g1417514183_
                                                           (lambda (_g1417614179_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1417614179_)))
                                                          (_g1417414237_
                                                           (lambda (_g1417614187_)
                                                             ((lambda (_L14190_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1420314211_
                                  (lambda (_g1420414207_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1420414207_)))
                                 (_g1420214233_
                                  (lambda (_g1420414215_)
                                    ((lambda (_L14218_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14873
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14845
                                                  (let ((__tmp14870
                                                         (let ((__tmp14872
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14871
                        (let () (declare (not safe)) (cons _L13837_ '()))))
                   (declare (not safe))
                   (cons __tmp14872 __tmp14871)))
                (__tmp14846
                 (let ((__tmp14848
                        (let ((__tmp14869 (gx#datum->syntax '#f 'let*))
                              (__tmp14849
                               (let ((__tmp14851
                                      (let ((__tmp14864
                                             (let ((__tmp14865
                                                    (let ((__tmp14866
                                                           (let ((__tmp14868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14867
                          (let () (declare (not safe)) (cons _L13837_ '()))))
                     (declare (not safe))
                     (cons __tmp14868 __tmp14867))))
              (declare (not safe))
              (cons __tmp14866 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14107_ __tmp14865)))
                                            (__tmp14852
                                             (let ((__tmp14859
                                                    (let ((__tmp14860
                                                           (let ((__tmp14861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14863 (gx#datum->syntax '#f '##car))
                                (__tmp14862
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14107_ '()))))
                            (declare (not safe))
                            (cons __tmp14863 __tmp14862))))
                     (declare (not safe))
                     (cons __tmp14861 '()))))
              (declare (not safe))
              (cons _L14134_ __tmp14860)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14853
                                                    (let ((__tmp14854
                                                           (let ((__tmp14855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14856
                                 (let ((__tmp14858
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14857
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14107_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14858 __tmp14857))))
                            (declare (not safe))
                            (cons __tmp14856 '()))))
                     (declare (not safe))
                     (cons _L14162_ __tmp14855))))
              (declare (not safe))
              (cons __tmp14854 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14859 __tmp14853))))
                                        (declare (not safe))
                                        (cons __tmp14864 __tmp14852)))
                                     (__tmp14850
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14190_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14851 __tmp14850))))
                          (declare (not safe))
                          (cons __tmp14869 __tmp14849)))
                       (__tmp14847
                        (let () (declare (not safe)) (cons _L14218_ '()))))
                   (declare (not safe))
                   (cons __tmp14848 __tmp14847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14870
                                                          __tmp14846))))
                                             (declare (not safe))
                                             (cons __tmp14873 __tmp14845)))))
                                     _g1420414215_))))
                            (_g1420214233_ _E13819_))))
                      _g1417614187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1417414237_
                                                      (_generate113274_
                                                       _L14081_
                                                       _L14134_
                                                       (_generate113274_
                                                        _L14079_
                                                        _L14162_
                                                        _K13818_
                                                        _E13819_
                                                        _kws13820_)
                                                       _E13819_
                                                       _kws13820_)))))
                                               _g1414814159_))))
                                      (_g1414614241_ (gx#genident '$tl)))))
                                _g1412014131_))))
                       (_g1411814245_ (gx#genident '$hd)))))
                 _g1409314104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1409114249_
                                                 (gx#genident '$tgt)))))
                                           (___kont1473914740_
                                            (lambda (_L13954_)
                                              (if (gx#underscore? _L13954_)
                                                  _K13818_
                                                  (if (let ((__tmp14902
                                                             (lambda (_g1396213964_)
                                                               (gx#bound-identifier=?
                                                                _g1396213964_
                                                                _L13954_)))
                                                            (__tmp14901
                                                             (gx#syntax->list
                                                              _kws13820_)))
                                                        (declare (not safe))
                                                        (find __tmp14902
                                                              __tmp14901))
                                                      (let* ((_g1396813983_
                                                              (lambda (_g1396913979_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1396913979_)))
                     (_g1396714028_
                      (lambda (_g1396913987_)
                        (if (gx#stx-pair? _g1396913987_)
                            (let ((_e1397413990_ (gx#syntax-e _g1396913987_)))
                              (let ((_hd1397313994_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1397413990_)))
                                    (_tl1397213997_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1397413990_))))
                                (if (gx#stx-pair? _tl1397213997_)
                                    (let ((_e1397714000_
                                           (gx#syntax-e _tl1397213997_)))
                                      (let ((_hd1397614004_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1397714000_)))
                                            (_tl1397514007_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1397714000_))))
                                        (if (gx#stx-null? _tl1397514007_)
                                            ((lambda (_L14010_ _L14012_)
                                               (let ()
                                                 (let ((__tmp14900
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14880
                                                        (let ((__tmp14883
                                                               (let ((__tmp14899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14884
                              (let ((__tmp14896
                                     (let ((__tmp14898
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14897
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13837_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14898 __tmp14897)))
                                    (__tmp14885
                                     (let ((__tmp14886
                                            (let ((__tmp14895
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14887
                                                   (let ((__tmp14892
                                                          (let ((__tmp14894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14893
                         (let () (declare (not safe)) (cons _L13837_ '()))))
                    (declare (not safe))
                    (cons __tmp14894 __tmp14893)))
                 (__tmp14888
                  (let ((__tmp14889
                         (let ((__tmp14891 (gx#datum->syntax '#f 'quote))
                               (__tmp14890
                                (let ()
                                  (declare (not safe))
                                  (cons _L13954_ '()))))
                           (declare (not safe))
                           (cons __tmp14891 __tmp14890))))
                    (declare (not safe))
                    (cons __tmp14889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14892
                                                           __tmp14888))))
                                              (declare (not safe))
                                              (cons __tmp14895 __tmp14887))))
                                       (declare (not safe))
                                       (cons __tmp14886 '()))))
                                (declare (not safe))
                                (cons __tmp14896 __tmp14885))))
                         (declare (not safe))
                         (cons __tmp14899 __tmp14884)))
                      (__tmp14881
                       (let ((__tmp14882
                              (let ()
                                (declare (not safe))
                                (cons _L14010_ '()))))
                         (declare (not safe))
                         (cons _L14012_ __tmp14882))))
                  (declare (not safe))
                  (cons __tmp14883 __tmp14881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14900
                                                         __tmp14880))))
                                             _hd1397614004_
                                             _hd1397313994_)
                                            (_g1396813983_ _g1396913987_))))
                                    (_g1396813983_ _g1396913987_))))
                            (_g1396813983_ _g1396913987_)))))
                (_g1396714028_ (list _K13818_ _E13819_)))
              (let* ((_g1403214040_
                      (lambda (_g1403314036_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1403314036_)))
                     (_g1403114058_
                      (lambda (_g1403314044_)
                        ((lambda (_L14047_)
                           (let ()
                             (let ((__tmp14879 (gx#datum->syntax '#f 'let))
                                   (__tmp14874
                                    (let ((__tmp14876
                                           (let ((__tmp14877
                                                  (let ((__tmp14878
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13954_
                                                          __tmp14878))))
                                             (declare (not safe))
                                             (cons __tmp14877 '())))
                                          (__tmp14875
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14047_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14876 __tmp14875))))
                               (declare (not safe))
                               (cons __tmp14879 __tmp14874))))
                         _g1403314044_))))
                (_g1403114058_ _K13818_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1474114742_
                                            (lambda (_L13872_)
                                              (let* ((_g1388313898_
                                                      (lambda (_g1388413894_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1388413894_)))
                                                     (_g1388213943_
                                                      (lambda (_g1388413902_)
                                                        (if (gx#stx-pair?
                                                             _g1388413902_)
                                                            (let ((_e1388913905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1388413902_)))
                      (let ((_hd1388813909_
                             (let ()
                               (declare (not safe))
                               (##car _e1388913905_)))
                            (_tl1388713912_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1388913905_))))
                        (if (gx#stx-pair? _tl1388713912_)
                            (let ((_e1389213915_ (gx#syntax-e _tl1388713912_)))
                              (let ((_hd1389113919_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1389213915_)))
                                    (_tl1389013922_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1389213915_))))
                                (if (gx#stx-null? _tl1389013922_)
                                    ((lambda (_L13925_ _L13927_)
                                       (let ()
                                         (let ((__tmp14916
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14903
                                                (let ((__tmp14906
                                                       (let ((__tmp14915
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14907
                                                              (let ((__tmp14912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14914 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14913
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13837_ '()))))
                               (declare (not safe))
                               (cons __tmp14914 __tmp14913)))
                            (__tmp14908
                             (let ((__tmp14909
                                    (let ((__tmp14911
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14910
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13872_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14911 __tmp14910))))
                               (declare (not safe))
                               (cons __tmp14909 '()))))
                        (declare (not safe))
                        (cons __tmp14912 __tmp14908))))
                 (declare (not safe))
                 (cons __tmp14915 __tmp14907)))
              (__tmp14904
               (let ((__tmp14905
                      (let () (declare (not safe)) (cons _L13925_ '()))))
                 (declare (not safe))
                 (cons _L13927_ __tmp14905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14906
                                                        __tmp14904))))
                                           (declare (not safe))
                                           (cons __tmp14916 __tmp14903))))
                                     _hd1389113919_
                                     _hd1388813909_)
                                    (_g1388313898_ _g1388413902_))))
                            (_g1388313898_ _g1388413902_))))
                    (_g1388313898_ _g1388413902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1388213943_
                                                 (list _K13818_ _E13819_))))))
                                       (let ((_g1384914062_
                                              (lambda ()
                                                (let ((_L13954_
                                                       ___stx1473414735_))
                                                  (if (gx#identifier? _L13954_)
                                                      (___kont1473914740_
                                                       _L13954_)
                                                      (___kont1474114742_
                                                       ___stx1473414735_))))))
                                         (if (gx#stx-pair? ___stx1473414735_)
                                             (let ((_e1385714069_
                                                    (gx#syntax-e
                                                     ___stx1473414735_)))
                                               (let ((_tl1385514076_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1385714069_)))
                                                     (_hd1385614073_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1385714069_))))
                                                 (___kont1473714738_
                                                  _tl1385514076_
                                                  _hd1385614073_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1384914062_))))))))
                               _g1382313834_))))
                      (_g1382114257_ _tgt13817_)))))
          (let* ((_g1327713305_
                  (lambda (_g1327813301_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1327813301_)))
                 (_g1327613811_
                  (lambda (_g1327813309_)
                    (if (gx#stx-pair? _g1327813309_)
                        (let ((_e1328413312_ (gx#syntax-e _g1327813309_)))
                          (let ((_hd1328313316_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1328413312_)))
                                (_tl1328213319_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1328413312_))))
                            (if (gx#stx-pair? _tl1328213319_)
                                (let ((_e1328713322_
                                       (gx#syntax-e _tl1328213319_)))
                                  (let ((_hd1328613326_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1328713322_)))
                                        (_tl1328513329_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1328713322_))))
                                    (if (gx#stx-pair? _tl1328513329_)
                                        (let ((_e1329013332_
                                               (gx#syntax-e _tl1328513329_)))
                                          (let ((_hd1328913336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1329013332_)))
                                                (_tl1328813339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1329013332_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1328813339_)
                                                (let ((_g14917_
                                                       (gx#syntax-split-splice
                                                        _tl1328813339_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14917_)
                         (##vector-length _g14917_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14918_ 2)))
                  (error "Context expects 2 values" _g14918_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1329113342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14917_
                                                              0)))
                                                          (_tl1329313345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14917_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1329313345_)
                                                          (letrec ((_loop1329413348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1329213352_ _clause1329813355_)
                              (if (gx#stx-pair? _hd1329213352_)
                                  (let ((_e1329513358_
                                         (gx#syntax-e _hd1329213352_)))
                                    (let ((_lp-hd1329613362_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1329513358_)))
                                          (_lp-tl1329713365_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1329513358_))))
                                      (_loop1329413348_
                                       _lp-tl1329713365_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1329613362_
                                               _clause1329813355_)))))
                                  (let ((_clause1329913368_
                                         (reverse _clause1329813355_)))
                                    ((lambda (_L13372_ _L13374_ _L13375_)
                                       (let _recur13397_ ((_rest13400_
                                                           (let ((__tmp14940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1380213805_ _g1380313808_)
                            (let ()
                              (declare (not safe))
                              (cons _g1380213805_ _g1380313808_)))))
                     (declare (not safe))
                     (foldr1 __tmp14940 '() _L13372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1340213411_ _rest13400_)
                                                (_E1340513417_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1340213411_))))
                                           (let ((_K1340713787_
                                                  (lambda (_rest13433_
                                                           _hd13435_)
                                                    (let* ((_g1343713445_
                                                            (lambda (_g1343813441_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1343813441_)))
                                                           (_g1343613783_
                                                            (lambda (_g1343813449_)
                                                              ((lambda (_L13452_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1347013478_
                                   (lambda (_g1347113474_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1347113474_)))
                                  (_g1346913779_
                                   (lambda (_g1347113482_)
                                     ((lambda (_L13485_)
                                        (let ()
                                          (let* ((_g1349813506_
                                                  (lambda (_g1349913502_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1349913502_)))
                                                 (_g1349713775_
                                                  (lambda (_g1349913510_)
                                                    ((lambda (_L13513_)
                                                       (let ()
                                                         (let* ((_g1352613534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1352713530_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1352713530_)))
                        (_g1352513556_
                         (lambda (_g1352713538_)
                           ((lambda (_L13541_)
                              (let ()
                                (let ()
                                  (let ((__tmp14927
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14919
                                         (let ((__tmp14921
                                                (let ((__tmp14922
                                                       (let ((__tmp14923
                                                              (let ((__tmp14926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14924
                             (let ((__tmp14925
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13513_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14925))))
                        (declare (not safe))
                        (cons __tmp14926 __tmp14924))))
                 (declare (not safe))
                 (cons __tmp14923 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13452_ __tmp14922)))
                                               (__tmp14920
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13541_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14921 __tmp14920))))
                                    (declare (not safe))
                                    (cons __tmp14927 __tmp14919)))))
                            _g1352713538_))))
                   (_g1352513556_
                    (let* ((___stx1475214753_ _hd13435_)
                           (_g1356213602_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx1475214753_))))
                      (let ((___kont1475514756_
                             (lambda (_L13748_)
                               (let ((__tmp14930 (gx#datum->syntax '#f 'begin))
                                     (__tmp14928
                                      (let ((__tmp14929
                                             (lambda (_g1376213765_
                                                      _g1376313768_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1376213765_
                                                       _g1376313768_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14929 '() _L13748_))))
                                 (declare (not safe))
                                 (cons __tmp14930 __tmp14928))))
                            (___kont1475914760_
                             (lambda (_L13686_ _L13688_)
                               (_generate113274_
                                _L13688_
                                _L13375_
                                _L13686_
                                _L13485_
                                _L13374_)))
                            (___kont1476114762_
                             (lambda (_L13639_ _L13641_ _L13642_)
                               (_generate113274_
                                _L13642_
                                _L13375_
                                (let ((__tmp14934 (gx#datum->syntax '#f 'if))
                                      (__tmp14931
                                       (let ((__tmp14932
                                              (let ((__tmp14933
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13485_ '()))))
                                                (declare (not safe))
                                                (cons _L13639_ __tmp14933))))
                                         (declare (not safe))
                                         (cons _L13641_ __tmp14932))))
                                  (declare (not safe))
                                  (cons __tmp14934 __tmp14931))
                                _L13485_
                                _L13374_))))
                        (let ((___match1478114782_
                               (lambda (_e1356713708_
                                        _hd1356613712_
                                        _tl1356513715_
                                        ___splice1475714758_
                                        _target1356813718_
                                        _tl1357013721_)
                                 (letrec ((_loop1357113724_
                                           (lambda (_hd1356913728_
                                                    _expr1357513731_)
                                             (if (gx#stx-pair? _hd1356913728_)
                                                 (let ((_e1357213734_
                                                        (gx#syntax-e
                                                         _hd1356913728_)))
                                                   (let ((_lp-tl1357413741_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1357213734_)))
                                                         (_lp-hd1357313738_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1357213734_))))
                                                     (_loop1357113724_
                                                      _lp-tl1357413741_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1357313738_
                                                              _expr1357513731_)))))
                                                 (let ((_expr1357613744_
                                                        (reverse _expr1357513731_)))
                                                   (___kont1475514756_
                                                    _expr1357613744_))))))
                                   (_loop1357113724_
                                    _target1356813718_
                                    '())))))
                          (if (gx#stx-pair? ___stx1475214753_)
                              (let ((_e1356713708_
                                     (gx#syntax-e ___stx1475214753_)))
                                (let ((_tl1356513715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1356713708_)))
                                      (_hd1356613712_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1356713708_))))
                                  (if (gx#identifier? _hd1356613712_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14935_|
                                           _hd1356613712_)
                                          (if (gx#stx-pair/null?
                                               _tl1356513715_)
                                              (let ((___splice1475714758_
                                                     (gx#syntax-split-splice
                                                      _tl1356513715_
                                                      '0)))
                                                (let ((_tl1357013721_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1475714758_
                                                          '1)))
                                                      (_target1356813718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1475714758_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1357013721_)
                                                      (___match1478114782_
                                                       _e1356713708_
                                                       _hd1356613712_
                                                       _tl1356513715_
                                                       ___splice1475714758_
                                                       _target1356813718_
                                                       _tl1357013721_)
                                                      (if (gx#stx-pair?
                                                           _tl1356513715_)
                                                          (let ((_e1358413676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1356513715_)))
                    (let ((_tl1358213683_
                           (let () (declare (not safe)) (##cdr _e1358413676_)))
                          (_hd1358313680_
                           (let ()
                             (declare (not safe))
                             (##car _e1358413676_))))
                      (if (gx#stx-null? _tl1358213683_)
                          (___kont1475914760_ _hd1358313680_ _hd1356613712_)
                          (if (gx#stx-pair? _tl1358213683_)
                              (let ((_e1359613629_
                                     (gx#syntax-e _tl1358213683_)))
                                (let ((_tl1359413636_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1359613629_)))
                                      (_hd1359513633_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1359613629_))))
                                  (if (gx#stx-null? _tl1359413636_)
                                      (___kont1476114762_
                                       _hd1359513633_
                                       _hd1358313680_
                                       _hd1356613712_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1356213602_)))))
                              (let () (declare (not safe)) (_g1356213602_))))))
                  (let () (declare (not safe)) (_g1356213602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1356513715_)
                                                  (let ((_e1358413676_
                                                         (gx#syntax-e
                                                          _tl1356513715_)))
                                                    (let ((_tl1358213683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1358413676_)))
                                                          (_hd1358313680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1358413676_))))
                                                      (if (gx#stx-null?
                                                           _tl1358213683_)
                                                          (___kont1475914760_
                                                           _hd1358313680_
                                                           _hd1356613712_)
                                                          (if (gx#stx-pair?
                                                               _tl1358213683_)
                                                              (let ((_e1359613629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1358213683_)))
                        (let ((_tl1359413636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1359613629_)))
                              (_hd1359513633_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1359613629_))))
                          (if (gx#stx-null? _tl1359413636_)
                              (___kont1476114762_
                               _hd1359513633_
                               _hd1358313680_
                               _hd1356613712_)
                              (let () (declare (not safe)) (_g1356213602_)))))
                      (let () (declare (not safe)) (_g1356213602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1356213602_))))
                                          (if (gx#stx-pair? _tl1356513715_)
                                              (let ((_e1358413676_
                                                     (gx#syntax-e
                                                      _tl1356513715_)))
                                                (let ((_tl1358213683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1358413676_)))
                                                      (_hd1358313680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1358413676_))))
                                                  (if (gx#stx-null?
                                                       _tl1358213683_)
                                                      (___kont1475914760_
                                                       _hd1358313680_
                                                       _hd1356613712_)
                                                      (if (gx#stx-pair?
                                                           _tl1358213683_)
                                                          (let ((_e1359613629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1358213683_)))
                    (let ((_tl1359413636_
                           (let () (declare (not safe)) (##cdr _e1359613629_)))
                          (_hd1359513633_
                           (let ()
                             (declare (not safe))
                             (##car _e1359613629_))))
                      (if (gx#stx-null? _tl1359413636_)
                          (___kont1476114762_
                           _hd1359513633_
                           _hd1358313680_
                           _hd1356613712_)
                          (let () (declare (not safe)) (_g1356213602_)))))
                  (let () (declare (not safe)) (_g1356213602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1356213602_))))
                                      (if (gx#stx-pair? _tl1356513715_)
                                          (let ((_e1358413676_
                                                 (gx#syntax-e _tl1356513715_)))
                                            (let ((_tl1358213683_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1358413676_)))
                                                  (_hd1358313680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1358413676_))))
                                              (if (gx#stx-null? _tl1358213683_)
                                                  (___kont1475914760_
                                                   _hd1358313680_
                                                   _hd1356613712_)
                                                  (if (gx#stx-pair?
                                                       _tl1358213683_)
                                                      (let ((_e1359613629_
                                                             (gx#syntax-e
                                                              _tl1358213683_)))
                                                        (let ((_tl1359413636_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1359613629_)))
                      (_hd1359513633_
                       (let () (declare (not safe)) (##car _e1359613629_))))
                  (if (gx#stx-null? _tl1359413636_)
                      (___kont1476114762_
                       _hd1359513633_
                       _hd1358313680_
                       _hd1356613712_)
                      (let () (declare (not safe)) (_g1356213602_)))))
              (let () (declare (not safe)) (_g1356213602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1356213602_))))))
                              (let ()
                                (declare (not safe))
                                (_g1356213602_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1349913510_))))
                                            (_g1349713775_
                                             (_recur13397_ _rest13433_)))))
                                      _g1347113482_))))
                             (_g1346913779_
                              (let ()
                                (declare (not safe))
                                (cons _L13452_ '()))))))
                       _g1343813449_))))
              (_g1343613783_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1340613425_
                                                  (lambda ()
                                                    (let ((__tmp14939
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14936
                                                           (let ((__tmp14937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14938
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13375_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax; malformed ast clause"
                                  __tmp14938))))
                     (declare (not safe))
                     (cons '#f __tmp14937))))
              (declare (not safe))
              (cons __tmp14939 __tmp14936)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1340413429_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1340213411_))
                                                          (_K1340613425_)
                                                          (_E1340513417_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1340213411_))
                                                   (let ((_tl1340913794_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1340213411_)))
                                                         (_hd1340813791_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1340213411_))))
                                                     (let ((_hd13797_
                                                            _hd1340813791_)
                                                           (_rest13800_
                                                            _tl1340913794_))
                                                       (_K1340713787_
                                                        _rest13800_
                                                        _hd13797_)))
                                                   (_try-match1340413429_)))))))
                                     _clause1329913368_
                                     _hd1328913336_
                                     _hd1328613326_))))))
                    (_loop1329413348_ _target1329113342_ '()))
                  (_g1327713305_ _g1327813309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1327713305_
                                                 _g1327813309_))))
                                        (_g1327713305_ _g1327813309_))))
                                (_g1327713305_ _g1327813309_))))
                        (_g1327713305_ _g1327813309_)))))
            (_g1327613811_ _stx13271_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14941_|
       'expander-identifiers:
       (let ((__tmp14988
              (let ((__tmp14989 |[1]#_g14990_|))
                (declare (not safe))
                (cons __tmp14989 '())))
             (__tmp14942
              (let ((__tmp14987 |[1]#_g14941_|)
                    (__tmp14943
                     (let ((__tmp14985 |[1]#_g14986_|)
                           (__tmp14944
                            (let ((__tmp14983 |[1]#_g14984_|)
                                  (__tmp14945
                                   (let ((__tmp14965
                                          (let ((__tmp14981 |[1]#_g14982_|)
                                                (__tmp14966
                                                 (let ((__tmp14979
                                                        |[1]#_g14980_|)
                                                       (__tmp14967
                                                        (let ((__tmp14977
                                                               |[1]#_g14978_|)
                                                              (__tmp14968
                                                               (let ((__tmp14975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14976_|)
                             (__tmp14969
                              (let ((__tmp14973 |[1]#_g14974_|)
                                    (__tmp14970
                                     (let ((__tmp14971 |[1]#_g14972_|))
                                       (declare (not safe))
                                       (cons __tmp14971 '()))))
                                (declare (not safe))
                                (cons __tmp14973 __tmp14970))))
                         (declare (not safe))
                         (cons __tmp14975 __tmp14969))))
                  (declare (not safe))
                  (cons __tmp14977 __tmp14968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14979
                                                         __tmp14967))))
                                            (declare (not safe))
                                            (cons __tmp14981 __tmp14966)))
                                         (__tmp14946
                                          (let ((__tmp14947
                                                 (let ((__tmp14963
                                                        |[1]#_g14964_|)
                                                       (__tmp14948
                                                        (let ((__tmp14961
                                                               |[1]#_g14962_|)
                                                              (__tmp14949
                                                               (let ((__tmp14959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14960_|)
                             (__tmp14950
                              (let ((__tmp14957 |[1]#_g14958_|)
                                    (__tmp14951
                                     (let ((__tmp14955 |[1]#_g14956_|)
                                           (__tmp14952
                                            (let ((__tmp14953 |[1]#_g14954_|))
                                              (declare (not safe))
                                              (cons __tmp14953 '()))))
                                       (declare (not safe))
                                       (cons __tmp14955 __tmp14952))))
                                (declare (not safe))
                                (cons __tmp14957 __tmp14951))))
                         (declare (not safe))
                         (cons __tmp14959 __tmp14950))))
                  (declare (not safe))
                  (cons __tmp14961 __tmp14949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14963
                                                         __tmp14948))))
                                            (declare (not safe))
                                            (cons __tmp14947 '()))))
                                     (declare (not safe))
                                     (cons __tmp14965 __tmp14946))))
                              (declare (not safe))
                              (cons __tmp14983 __tmp14945))))
                       (declare (not safe))
                       (cons __tmp14985 __tmp14944))))
                (declare (not safe))
                (cons __tmp14987 __tmp14943))))
         (declare (not safe))
         (cons __tmp14988 __tmp14942))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14991_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14992_|
       'expander-identifiers:
       (let ((__tmp14993
              (let ((__tmp15014 |[1]#_g14992_|)
                    (__tmp14994
                     (let ((__tmp15012 |[1]#_g15013_|)
                           (__tmp14995
                            (let ((__tmp15010 |[1]#_g15011_|)
                                  (__tmp14996
                                   (let ((__tmp15004
                                          (let ((__tmp15008 |[1]#_g15009_|)
                                                (__tmp15005
                                                 (let ((__tmp15006
                                                        |[1]#_g15007_|))
                                                   (declare (not safe))
                                                   (cons __tmp15006 '()))))
                                            (declare (not safe))
                                            (cons __tmp15008 __tmp15005)))
                                         (__tmp14997
                                          (let ((__tmp14998
                                                 (let ((__tmp15002
                                                        |[1]#_g15003_|)
                                                       (__tmp14999
                                                        (let ((__tmp15000
                                                               |[1]#_g15001_|))
                                                          (declare (not safe))
                                                          (cons __tmp15000
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp15002
                                                         __tmp14999))))
                                            (declare (not safe))
                                            (cons __tmp14998 '()))))
                                     (declare (not safe))
                                     (cons __tmp15004 __tmp14997))))
                              (declare (not safe))
                              (cons __tmp15010 __tmp14996))))
                       (declare (not safe))
                       (cons __tmp15012 __tmp14995))))
                (declare (not safe))
                (cons __tmp15014 __tmp14994))))
         (declare (not safe))
         (cons '#f __tmp14993))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
