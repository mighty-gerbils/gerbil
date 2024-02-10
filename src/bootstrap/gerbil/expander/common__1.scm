(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129865_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129867_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129869_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129874_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129877_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129882_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129885_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129890_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129893_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129898_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129901_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130008_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj129861
             (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129864 |gx[1]#_g129865_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129864
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129866 |gx[1]#_g129867_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129866
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129868 |gx[1]#_g129869_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129868
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129870
               (let ((__tmp129875
                      (let ((__tmp129876 |gx[1]#_g129877_|))
                        (declare (not safe))
                        (cons 'e __tmp129876)))
                     (__tmp129871
                      (let ((__tmp129872
                             (let ((__tmp129873 |gx[1]#_g129874_|))
                               (declare (not safe))
                               (cons 'source __tmp129873))))
                        (declare (not safe))
                        (cons __tmp129872 '()))))
                 (declare (not safe))
                 (cons __tmp129875 __tmp129871))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129870
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129878
               (let ((__tmp129883
                      (let ((__tmp129884 |gx[1]#_g129885_|))
                        (declare (not safe))
                        (cons 'e __tmp129884)))
                     (__tmp129879
                      (let ((__tmp129880
                             (let ((__tmp129881 |gx[1]#_g129882_|))
                               (declare (not safe))
                               (cons 'source __tmp129881))))
                        (declare (not safe))
                        (cons __tmp129880 '()))))
                 (declare (not safe))
                 (cons __tmp129883 __tmp129879))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129878
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129886
               (let ((__tmp129891
                      (let ((__tmp129892 |gx[1]#_g129893_|))
                        (declare (not safe))
                        (cons 'e __tmp129892)))
                     (__tmp129887
                      (let ((__tmp129888
                             (let ((__tmp129889 |gx[1]#_g129890_|))
                               (declare (not safe))
                               (cons 'source __tmp129889))))
                        (declare (not safe))
                        (cons __tmp129888 '()))))
                 (declare (not safe))
                 (cons __tmp129891 __tmp129887))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129886
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129894
               (let ((__tmp129899
                      (let ((__tmp129900 |gx[1]#_g129901_|))
                        (declare (not safe))
                        (cons 'e __tmp129900)))
                     (__tmp129895
                      (let ((__tmp129896
                             (let ((__tmp129897 |gx[1]#_g129898_|))
                               (declare (not safe))
                               (cons 'source __tmp129897))))
                        (declare (not safe))
                        (cons __tmp129896 '()))))
                 (declare (not safe))
                 (cons __tmp129899 __tmp129895))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129861
           __tmp129894
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj129861))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx124287_)
        (let* ((_g124291124305_
                (lambda (_g124292124301_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g124292124301_)))
               (_g124290124347_
                (lambda (_g124292124309_)
                  (if (gx#stx-pair? _g124292124309_)
                      (let ((_e124296124312_ (gx#syntax-e _g124292124309_)))
                        (let ((_hd124295124316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124296124312_)))
                              (_tl124294124319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124296124312_))))
                          (if (gx#stx-pair? _tl124294124319_)
                              (let ((_e124299124322_
                                     (gx#syntax-e _tl124294124319_)))
                                (let ((_hd124298124326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124299124322_)))
                                      (_tl124297124329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124299124322_))))
                                  (if (gx#stx-null? _tl124297124329_)
                                      ((lambda (_L124332_)
                                         (let ((__tmp129911
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp129902
                                                (let ((__tmp129908
                                                       (let ((__tmp129910
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp129909
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L124332_ '()))))
                 (declare (not safe))
                 (cons __tmp129910 __tmp129909)))
              (__tmp129903
               (let ((__tmp129904
                      (let ((__tmp129907 (gx#datum->syntax '#f 'error))
                            (__tmp129905
                             (let ((__tmp129906
                                    (let ()
                                      (declare (not safe))
                                      (cons _L124332_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp129906))))
                        (declare (not safe))
                        (cons __tmp129907 __tmp129905))))
                 (declare (not safe))
                 (cons __tmp129904 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129908
                                                        __tmp129903))))
                                           (declare (not safe))
                                           (cons __tmp129911 __tmp129902)))
                                       _hd124298124326_)
                                      (_g124291124305_ _g124292124309_))))
                              (_g124291124305_ _g124292124309_))))
                      (_g124291124305_ _g124292124309_)))))
          (_g124290124347_ _$stx124287_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx124351_)
        (letrec ((_generate124354_
                  (lambda (_tgt124503_ _kws124505_ _clauses124506_)
                    (letrec ((_generate-clause124508_
                              (lambda (_hd125418_ _E125420_)
                                (let* ((___stx129764129765_ _hd125418_)
                                       (_g125424125451_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx129764129765_))))
                                  (let ((___kont129767129768_
                                         (lambda (_L125547_ _L125549_)
                                           (_generate1124510_
                                            _hd125418_
                                            _L125549_
                                            '#t
                                            _L125547_
                                            _E125420_)))
                                        (___kont129769129770_
                                         (lambda (_L125499_
                                                  _L125501_
                                                  _L125502_)
                                           (_generate1124510_
                                            _hd125418_
                                            _L125502_
                                            _L125501_
                                            _L125499_
                                            _E125420_)))
                                        (___kont129771129772_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx124351_
                                            _hd125418_))))
                                    (if (gx#stx-pair? ___stx129764129765_)
                                        (let ((_e125430125527_
                                               (gx#syntax-e
                                                ___stx129764129765_)))
                                          (let ((_tl125428125534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125430125527_)))
                                                (_hd125429125531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125430125527_))))
                                            (if (gx#stx-pair? _tl125428125534_)
                                                (let ((_e125433125537_
                                                       (gx#syntax-e
                                                        _tl125428125534_)))
                                                  (let ((_tl125431125544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125433125537_)))
                                                        (_hd125432125541_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125433125537_))))
                                                    (if (gx#stx-null?
                                                         _tl125431125544_)
                                                        (___kont129767129768_
                                                         _hd125432125541_
                                                         _hd125429125531_)
                                                        (if (gx#stx-pair?
                                                             _tl125431125544_)
                                                            (let ((_e125445125489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl125431125544_)))
                      (let ((_tl125443125496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e125445125489_)))
                            (_hd125444125493_
                             (let ()
                               (declare (not safe))
                               (##car _e125445125489_))))
                        (if (gx#stx-null? _tl125443125496_)
                            (___kont129769129770_
                             _hd125444125493_
                             _hd125432125541_
                             _hd125429125531_)
                            (___kont129771129772_))))
                    (___kont129771129772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129771129772_))))
                                        (___kont129771129772_))))))
                             (_generate1124510_
                              (lambda (_where124896_
                                       _hd124898_
                                       _fender124899_
                                       _body124900_
                                       _E124901_)
                                (letrec ((_recur124903_
                                          (lambda (_hd124906_
                                                   _tgt124908_
                                                   _K124909_)
                                            (let* ((___stx129810129811_
                                                    _hd124906_)
                                                   (_g124912124924_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx129810129811_))))
                                              (let ((___kont129813129814_
                                                     (lambda (_L125208_
                                                              _L125210_)
                                                       (let* ((_g125221125229_
                                                               (lambda (_g125222125225_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g125222125225_)))
                      (_g125220125410_
                       (lambda (_g125222125233_)
                         ((lambda (_L125236_)
                            (let ()
                              (let* ((_g125248125256_
                                      (lambda (_g125249125252_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g125249125252_)))
                                     (_g125247125406_
                                      (lambda (_g125249125260_)
                                        ((lambda (_L125263_)
                                           (let ()
                                             (let* ((_g125276125284_
                                                     (lambda (_g125277125280_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g125277125280_)))
                                                    (_g125275125402_
                                                     (lambda (_g125277125288_)
                                                       ((lambda (_L125291_)
                                                          (let ()
                                                            (let* ((_g125304125312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g125305125308_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g125305125308_)))
                           (_g125303125398_
                            (lambda (_g125305125316_)
                              ((lambda (_L125319_)
                                 (let ()
                                   (let* ((_g125332125340_
                                           (lambda (_g125333125336_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g125333125336_)))
                                          (_g125331125394_
                                           (lambda (_g125333125344_)
                                             ((lambda (_L125347_)
                                                (let ()
                                                  (let* ((_g125360125368_
                                                          (lambda (_g125361125364_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g125361125364_)))
                                                         (_g125359125390_
                                                          (lambda (_g125361125372_)
                                                            ((lambda (_L125375_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp129944 (gx#datum->syntax '#f 'if))
                                 (__tmp129912
                                  (let ((__tmp129941
                                         (let ((__tmp129943
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp129942
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125236_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129943 __tmp129942)))
                                        (__tmp129913
                                         (let ((__tmp129915
                                                (let ((__tmp129940
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp129916
                                                       (let ((__tmp129934
                                                              (let ((__tmp129935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129936
                                    (let ((__tmp129937
                                           (let ((__tmp129939
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp129938
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125236_ '()))))
                                             (declare (not safe))
                                             (cons __tmp129939 __tmp129938))))
                                      (declare (not safe))
                                      (cons __tmp129937 '()))))
                               (declare (not safe))
                               (cons _L125263_ __tmp129936))))
                        (declare (not safe))
                        (cons __tmp129935 '())))
                     (__tmp129917
                      (let ((__tmp129918
                             (let ((__tmp129933 (gx#datum->syntax '#f 'let))
                                   (__tmp129919
                                    (let ((__tmp129921
                                           (let ((__tmp129928
                                                  (let ((__tmp129929
                                                         (let ((__tmp129930
                                                                (let ((__tmp129932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp129931
                               (let ()
                                 (declare (not safe))
                                 (cons _L125263_ '()))))
                          (declare (not safe))
                          (cons __tmp129932 __tmp129931))))
                   (declare (not safe))
                   (cons __tmp129930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L125291_
                                                          __tmp129929)))
                                                 (__tmp129922
                                                  (let ((__tmp129923
                                                         (let ((__tmp129924
                                                                (let ((__tmp129925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129927
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp129926
                                      (let ()
                                        (declare (not safe))
                                        (cons _L125263_ '()))))
                                 (declare (not safe))
                                 (cons __tmp129927 __tmp129926))))
                          (declare (not safe))
                          (cons __tmp129925 '()))))
                   (declare (not safe))
                   (cons _L125319_ __tmp129924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129923 '()))))
                                             (declare (not safe))
                                             (cons __tmp129928 __tmp129922)))
                                          (__tmp129920
                                           (let ()
                                             (declare (not safe))
                                             (cons _L125347_ '()))))
                                      (declare (not safe))
                                      (cons __tmp129921 __tmp129920))))
                               (declare (not safe))
                               (cons __tmp129933 __tmp129919))))
                        (declare (not safe))
                        (cons __tmp129918 '()))))
                 (declare (not safe))
                 (cons __tmp129934 __tmp129917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129940
                                                        __tmp129916)))
                                               (__tmp129914
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125375_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129915 __tmp129914))))
                                    (declare (not safe))
                                    (cons __tmp129941 __tmp129913))))
                             (declare (not safe))
                             (cons __tmp129944 __tmp129912)))))
                     _g125361125372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g125359125390_
                                                     _E124901_))))
                                              _g125333125344_))))
                                     (_g125331125394_
                                      (_recur124903_
                                       _L125210_
                                       _L125291_
                                       (_recur124903_
                                        _L125208_
                                        _L125319_
                                        _K124909_))))))
                               _g125305125316_))))
                      (_g125303125398_ (gx#genident 'tl)))))
                _g125277125288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g125275125402_
                                                (gx#genident 'hd)))))
                                         _g125249125260_))))
                                (_g125247125406_ (gx#genident 'e)))))
                          _g125222125233_))))
                 (_g125220125410_ _tgt124908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129815129816_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd124906_)
                                                           (if (gx#underscore?
                                                                _hd124906_)
                                                               _K124909_
                                                               (if (let ((__tmp129989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124934124936_)
                                    (gx#bound-identifier=?
                                     _g124934124936_
                                     _hd124906_))))
                             (declare (not safe))
                             (find __tmp129989 _kws124505_))
                           (let* ((_g124940124955_
                                   (lambda (_g124941124951_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g124941124951_)))
                                  (_g124939125006_
                                   (lambda (_g124941124959_)
                                     (if (gx#stx-pair? _g124941124959_)
                                         (let ((_e124946124962_
                                                (gx#syntax-e _g124941124959_)))
                                           (let ((_hd124945124966_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e124946124962_)))
                                                 (_tl124944124969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e124946124962_))))
                                             (if (gx#stx-pair?
                                                  _tl124944124969_)
                                                 (let ((_e124949124972_
                                                        (gx#syntax-e
                                                         _tl124944124969_)))
                                                   (let ((_hd124948124976_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e124949124972_)))
                                                         (_tl124947124979_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e124949124972_))))
                                                     (if (gx#stx-null?
                                                          _tl124947124979_)
                                                         ((lambda (_L124982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124984_)
                    (let ()
                      (let ((__tmp129988 (gx#datum->syntax '#f 'if))
                            (__tmp129971
                             (let ((__tmp129974
                                    (let ((__tmp129987
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp129975
                                           (let ((__tmp129984
                                                  (let ((__tmp129986
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp129985
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L124984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129986
                                                          __tmp129985)))
                                                 (__tmp129976
                                                  (let ((__tmp129977
                                                         (let ((__tmp129983
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp129978
                        (let ((__tmp129979
                               (let ((__tmp129980
                                      (let ((__tmp129982
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp129981
                                             (let ()
                                               (declare (not safe))
                                               (cons _L124982_ '()))))
                                        (declare (not safe))
                                        (cons __tmp129982 __tmp129981))))
                                 (declare (not safe))
                                 (cons __tmp129980 '()))))
                          (declare (not safe))
                          (cons _L124984_ __tmp129979))))
                   (declare (not safe))
                   (cons __tmp129983 __tmp129978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129977 '()))))
                                             (declare (not safe))
                                             (cons __tmp129984 __tmp129976))))
                                      (declare (not safe))
                                      (cons __tmp129987 __tmp129975)))
                                   (__tmp129972
                                    (let ((__tmp129973
                                           (let ()
                                             (declare (not safe))
                                             (cons _E124901_ '()))))
                                      (declare (not safe))
                                      (cons _K124909_ __tmp129973))))
                               (declare (not safe))
                               (cons __tmp129974 __tmp129972))))
                        (declare (not safe))
                        (cons __tmp129988 __tmp129971))))
                  _hd124948124976_
                  _hd124945124966_)
                 (_g124940124955_ _g124941124959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g124940124955_
                                                  _g124941124959_))))
                                         (_g124940124955_ _g124941124959_)))))
                             (_g124939125006_ (list _tgt124908_ _hd124906_)))
                           (let* ((_g125010125025_
                                   (lambda (_g125011125021_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125011125021_)))
                                  (_g125009125069_
                                   (lambda (_g125011125029_)
                                     (if (gx#stx-pair? _g125011125029_)
                                         (let ((_e125016125032_
                                                (gx#syntax-e _g125011125029_)))
                                           (let ((_hd125015125036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125016125032_)))
                                                 (_tl125014125039_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125016125032_))))
                                             (if (gx#stx-pair?
                                                  _tl125014125039_)
                                                 (let ((_e125019125042_
                                                        (gx#syntax-e
                                                         _tl125014125039_)))
                                                   (let ((_hd125018125046_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125019125042_)))
                                                         (_tl125017125049_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125019125042_))))
                                                     (if (gx#stx-null?
                                                          _tl125017125049_)
                                                         ((lambda (_L125052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125054_)
                    (let ()
                      (let ((__tmp129970 (gx#datum->syntax '#f 'let))
                            (__tmp129965
                             (let ((__tmp129967
                                    (let ((__tmp129968
                                           (let ((__tmp129969
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125054_ '()))))
                                             (declare (not safe))
                                             (cons _L125052_ __tmp129969))))
                                      (declare (not safe))
                                      (cons __tmp129968 '())))
                                   (__tmp129966
                                    (let ()
                                      (declare (not safe))
                                      (cons _K124909_ '()))))
                               (declare (not safe))
                               (cons __tmp129967 __tmp129966))))
                        (declare (not safe))
                        (cons __tmp129970 __tmp129965))))
                  _hd125018125046_
                  _hd125015125036_)
                 (_g125010125025_ _g125011125029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125010125025_
                                                  _g125011125029_))))
                                         (_g125010125025_ _g125011125029_)))))
                             (_g125009125069_ (list _tgt124908_ _hd124906_)))))
                   (if (gx#stx-null? _hd124906_)
                       (let* ((_g125073125081_
                               (lambda (_g125074125077_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g125074125077_)))
                              (_g125072125099_
                               (lambda (_g125074125085_)
                                 ((lambda (_L125088_)
                                    (let ()
                                      (let ((__tmp129964
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp129958
                                             (let ((__tmp129961
                                                    (let ((__tmp129963
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp129962
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L125088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp129963 __tmp129962)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129959
                                                    (let ((__tmp129960
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E124901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K124909_ __tmp129960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp129961
                                                     __tmp129959))))
                                        (declare (not safe))
                                        (cons __tmp129964 __tmp129958))))
                                  _g125074125085_))))
                         (_g125072125099_ _tgt124908_))
                       (if (gx#stx-datum? _hd124906_)
                           (let* ((_g125103125122_
                                   (lambda (_g125104125118_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125104125118_)))
                                  (_g125102125180_
                                   (lambda (_g125104125126_)
                                     (if (gx#stx-pair? _g125104125126_)
                                         (let ((_e125110125129_
                                                (gx#syntax-e _g125104125126_)))
                                           (let ((_hd125109125133_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125110125129_)))
                                                 (_tl125108125136_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125110125129_))))
                                             (if (gx#stx-pair?
                                                  _tl125108125136_)
                                                 (let ((_e125113125139_
                                                        (gx#syntax-e
                                                         _tl125108125136_)))
                                                   (let ((_hd125112125143_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125113125139_)))
                                                         (_tl125111125146_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125113125139_))))
                                                     (if (gx#stx-pair?
                                                          _tl125111125146_)
                                                         (let ((_e125116125149_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl125111125146_)))
                   (let ((_hd125115125153_
                          (let ()
                            (declare (not safe))
                            (##car _e125116125149_)))
                         (_tl125114125156_
                          (let ()
                            (declare (not safe))
                            (##cdr _e125116125149_))))
                     (if (gx#stx-null? _tl125114125156_)
                         ((lambda (_L125159_ _L125161_ _L125162_)
                            (let ()
                              (let ((__tmp129957 (gx#datum->syntax '#f 'if))
                                    (__tmp129945
                                     (let ((__tmp129948
                                            (let ((__tmp129949
                                                   (let ((__tmp129954
                                                          (let ((__tmp129956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp129955
                         (let () (declare (not safe)) (cons _L125162_ '()))))
                    (declare (not safe))
                    (cons __tmp129956 __tmp129955)))
                 (__tmp129950
                  (let ((__tmp129951
                         (let ((__tmp129953 (gx#datum->syntax '#f 'quote))
                               (__tmp129952
                                (let ()
                                  (declare (not safe))
                                  (cons _L125161_ '()))))
                           (declare (not safe))
                           (cons __tmp129953 __tmp129952))))
                    (declare (not safe))
                    (cons __tmp129951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129954
                                                           __tmp129950))))
                                              (declare (not safe))
                                              (cons _L125159_ __tmp129949)))
                                           (__tmp129946
                                            (let ((__tmp129947
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E124901_ '()))))
                                              (declare (not safe))
                                              (cons _K124909_ __tmp129947))))
                                       (declare (not safe))
                                       (cons __tmp129948 __tmp129946))))
                                (declare (not safe))
                                (cons __tmp129957 __tmp129945))))
                          _hd125115125153_
                          _hd125112125143_
                          _hd125109125133_)
                         (_g125103125122_ _g125104125126_))))
                 (_g125103125122_ _g125104125126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125103125122_
                                                  _g125104125126_))))
                                         (_g125103125122_ _g125104125126_)))))
                             (_g125102125180_
                              (list _tgt124908_
                                    _hd124906_
                                    (let ((_e125184_ (gx#stx-e _hd124906_)))
                                      (if (or (keyword? _e125184_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e125184_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e125184_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx124351_
                            _where124896_
                            _hd124906_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx129810129811_)
                                                    (let ((_e124918125198_
                                                           (gx#syntax-e
                                                            ___stx129810129811_)))
                                                      (let ((_tl124916125205_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124918125198_)))
                    (_hd124917125202_
                     (let () (declare (not safe)) (##car _e124918125198_))))
                (___kont129813129814_ _tl124916125205_ _hd124917125202_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129815129816_)))))))
                                  (_recur124903_
                                   _hd124898_
                                   _tgt124503_
                                   (let ((__tmp129993
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp129990
                                          (let ((__tmp129991
                                                 (let ((__tmp129992
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E124901_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body124900_
                                                         __tmp129992))))
                                            (declare (not safe))
                                            (cons _fender124899_
                                                  __tmp129991))))
                                     (declare (not safe))
                                     (cons __tmp129993 __tmp129990))))))
                             (_generate-clauses124511_
                              (lambda (_clauses124634_)
                                (let _lp124637_ ((_rest124640_ _clauses124634_)
                                                 (_E124642_ (gx#genident 'E))
                                                 (_r124643_ '()))
                                  (let* ((___stx129846129847_ _rest124640_)
                                         (_g124646124658_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx129846129847_))))
                                    (let ((___kont129849129850_
                                           (lambda (_L124723_ _L124725_)
                                             (let* ((___stx129826129827_
                                                     _L124725_)
                                                    (_g124737124748_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx129826129827_))))
                                               (let ((___kont129829129830_
                                                      (lambda (_L124877_)
                                                        (if (gx#stx-null?
                                                             _L124723_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L124877_)
                             (let ((__tmp130002 (gx#stx-null? _L124877_)))
                               (declare (not safe))
                               (not __tmp130002)))
                        (let ((__tmp129994
                               (let ((__tmp129995
                                      (let ((__tmp129996
                                             (gx#stx-wrap-source
                                              (let ((__tmp130001
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp129997
                                                     (let ((__tmp129998
                                                            (let ((__tmp129999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp130000 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp130000 _L124877_))))
                      (declare (not safe))
                      (cons __tmp129999 '()))))
               (declare (not safe))
               (cons '() __tmp129998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp130001 __tmp129997))
                                              (gx#stx-source _L124725_))))
                                        (declare (not safe))
                                        (cons __tmp129996 '()))))
                                 (declare (not safe))
                                 (cons _E124642_ __tmp129995))))
                          (declare (not safe))
                          (cons __tmp129994 _r124643_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx124351_
                         _L124725_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx124351_
                     _L124725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129831129832_
                                                      (lambda ()
                                                        (let* ((_g124759124767_
                                                                (lambda (_g124760124763_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g124760124763_)))
                       (_g124758124856_
                        (lambda (_g124760124771_)
                          ((lambda (_L124774_)
                             (let ()
                               (let* ((_g124790124798_
                                       (lambda (_g124791124794_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g124791124794_)))
                                      (_g124789124852_
                                       (lambda (_g124791124802_)
                                         ((lambda (_L124805_)
                                            (let ()
                                              (let* ((_g124818124826_
                                                      (lambda (_g124819124822_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g124819124822_)))
                                                     (_g124817124848_
                                                      (lambda (_g124819124830_)
                                                        ((lambda (_L124833_)
                                                           (let ()
                                                             (let ()
                                                               (_lp124637_
                                                                _L124723_
                                                                _L124774_
                                                                (let ((__tmp130003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp130004
                                      (let ()
                                        (declare (not safe))
                                        (cons _L124833_ '()))))
                                 (declare (not safe))
                                 (cons _E124642_ __tmp130004))))
                          (declare (not safe))
                          (cons __tmp130003 _r124643_))))))
                 _g124819124830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g124817124848_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp130007
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp130005
                                                         (let ((__tmp130006
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L124805_ '()))))
                   (declare (not safe))
                   (cons '() __tmp130006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130007
                                                          __tmp130005))
                                                  (gx#stx-source
                                                   _L124725_))))))
                                          _g124791124802_))))
                                 (_g124789124852_
                                  (_generate-clause124508_
                                   _L124725_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L124774_ '())))))))
                           _g124760124771_))))
                  (_g124758124856_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx129826129827_)
                                                     (let ((_e124742124867_
                                                            (gx#syntax-e
                                                             ___stx129826129827_)))
                                                       (let ((_tl124740124874_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e124742124867_)))
                     (_hd124741124871_
                      (let () (declare (not safe)) (##car _e124742124867_))))
                 (if (gx#identifier? _hd124741124871_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g130008_|
                          _hd124741124871_)
                         (___kont129829129830_ _tl124740124874_)
                         (___kont129831129832_))
                     (___kont129831129832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129831129832_))))))
                                          (___kont129851129852_
                                           (lambda ()
                                             (let* ((_g124669124677_
                                                     (lambda (_g124670124673_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g124670124673_)))
                                                    (_g124668124702_
                                                     (lambda (_g124670124681_)
                                                       ((lambda (_L124684_)
                                                          (let ()
                                                            (let ((__tmp130009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp130010
                                  (let ((__tmp130011
                                         (gx#stx-wrap-source
                                          (let ((__tmp130019
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp130012
                                                 (let ((__tmp130013
                                                        (let ((__tmp130014
                                                               (let ((__tmp130018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp130015
                              (let ((__tmp130016
                                     (let ((__tmp130017
                                            (let ()
                                              (declare (not safe))
                                              (cons _L124684_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp130017))))
                                (declare (not safe))
                                (cons '#f __tmp130016))))
                         (declare (not safe))
                         (cons __tmp130018 __tmp130015))))
                  (declare (not safe))
                  (cons __tmp130014 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp130013))))
                                            (declare (not safe))
                                            (cons __tmp130019 __tmp130012))
                                          (gx#stx-source _stx124351_))))
                                    (declare (not safe))
                                    (cons __tmp130011 '()))))
                             (declare (not safe))
                             (cons _E124642_ __tmp130010))))
                      (declare (not safe))
                      (cons __tmp130009 _r124643_))))
                _g124670124681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g124668124702_
                                                _tgt124503_)))))
                                      (if (gx#stx-pair? ___stx129846129847_)
                                          (let ((_e124652124713_
                                                 (gx#syntax-e
                                                  ___stx129846129847_)))
                                            (let ((_tl124650124720_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124652124713_)))
                                                  (_hd124651124717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124652124713_))))
                                              (___kont129849129850_
                                               _tl124650124720_
                                               _hd124651124717_)))
                                          (___kont129851129852_))))))))
                      (let* ((_bind124513_
                              (_generate-clauses124511_ _clauses124506_))
                             (_g124516124533_
                              (lambda (_g124517124529_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g124517124529_)))
                             (_g124515124630_
                              (lambda (_g124517124537_)
                                (if (gx#stx-pair/null? _g124517124537_)
                                    (let ((_g130020_
                                           (gx#syntax-split-splice
                                            _g124517124537_
                                            '0)))
                                      (begin
                                        (let ((_g130021_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g130020_)
                                                     (##vector-length
                                                      _g130020_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g130021_ 2)))
                                              (error "Context expects 2 values"
                                                     _g130021_)))
                                        (let ((_target124519124540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130020_ 0)))
                                              (_tl124521124543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130020_ 1))))
                                          (if (gx#stx-null? _tl124521124543_)
                                              (letrec ((_loop124522124546_
                                                        (lambda (_hd124520124550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try124526124553_)
                  (if (gx#stx-pair? _hd124520124550_)
                      (let ((_e124523124556_ (gx#syntax-e _hd124520124550_)))
                        (let ((_lp-hd124524124560_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124523124556_)))
                              (_lp-tl124525124563_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124523124556_))))
                          (_loop124522124546_
                           _lp-tl124525124563_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd124524124560_
                                   _bind-try124526124553_)))))
                      (let ((_bind-try124527124566_
                             (reverse _bind-try124526124553_)))
                        ((lambda (_L124570_)
                           (let ()
                             (let* ((_g124588124596_
                                     (lambda (_g124589124592_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g124589124592_)))
                                    (_g124587124626_
                                     (lambda (_g124589124600_)
                                       ((lambda (_L124603_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp130027
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp130022
                                                     (let ((__tmp130025
                                                            (let ((__tmp130026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124617124620_ _g124618124623_)
                             (let ()
                               (declare (not safe))
                               (cons _g124617124620_ _g124618124623_)))))
                      (declare (not safe))
                      (foldr1 __tmp130026 '() _L124570_)))
                   (__tmp130023
                    (let ((__tmp130024
                           (let () (declare (not safe)) (cons _L124603_ '()))))
                      (declare (not safe))
                      (cons __tmp130024 '()))))
               (declare (not safe))
               (cons __tmp130025 __tmp130023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp130027
                                                      __tmp130022)))))
                                        _g124589124600_))))
                               (_g124587124626_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind124513_)))))))
                         _bind-try124527124566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop124522124546_
                                                 _target124519124540_
                                                 '()))
                                              (_g124516124533_
                                               _g124517124537_)))))
                                    (_g124516124533_ _g124517124537_)))))
                        (_g124515124630_ _bind124513_))))))
          (let* ((_g124357124376_
                  (lambda (_g124358124372_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124358124372_)))
                 (_g124356124499_
                  (lambda (_g124358124380_)
                    (if (gx#stx-pair? _g124358124380_)
                        (let ((_e124364124383_ (gx#syntax-e _g124358124380_)))
                          (let ((_hd124363124387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124364124383_)))
                                (_tl124362124390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124364124383_))))
                            (if (gx#stx-pair? _tl124362124390_)
                                (let ((_e124367124393_
                                       (gx#syntax-e _tl124362124390_)))
                                  (let ((_hd124366124397_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124367124393_)))
                                        (_tl124365124400_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124367124393_))))
                                    (if (gx#stx-pair? _tl124365124400_)
                                        (let ((_e124370124403_
                                               (gx#syntax-e _tl124365124400_)))
                                          (let ((_hd124369124407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124370124403_)))
                                                (_tl124368124410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124370124403_))))
                                            ((lambda (_L124413_
                                                      _L124415_
                                                      _L124416_)
                                               (if (and (gx#identifier-list?
                                                         _L124415_)
                                                        (gx#stx-list?
                                                         _L124413_))
                                                   (let* ((_g124434124442_
                                                           (lambda (_g124435124438_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g124435124438_)))
                                                          (_g124433124495_
                                                           (lambda (_g124435124446_)
                                                             ((lambda (_L124449_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g124461124469_
                                  (lambda (_g124462124465_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g124462124465_)))
                                 (_g124460124491_
                                  (lambda (_g124462124473_)
                                    ((lambda (_L124476_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp130033
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp130028
                                                  (let ((__tmp130030
                                                         (let ((__tmp130031
                                                                (let ((__tmp130032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L124416_ '()))))
                          (declare (not safe))
                          (cons _L124449_ __tmp130032))))
                   (declare (not safe))
                   (cons __tmp130031 '())))
                (__tmp130029
                 (let () (declare (not safe)) (cons _L124476_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130030
                                                          __tmp130029))))
                                             (declare (not safe))
                                             (cons __tmp130033 __tmp130028)))))
                                     _g124462124473_))))
                            (_g124460124491_
                             (_generate124354_
                              _L124449_
                              (gx#syntax->list _L124415_)
                              _L124413_)))))
                      _g124435124446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g124433124495_
                                                      (gx#genident 'e)))
                                                   (_g124357124376_
                                                    _g124358124380_)))
                                             _tl124368124410_
                                             _hd124369124407_
                                             _hd124366124397_)))
                                        (_g124357124376_ _g124358124380_))))
                                (_g124357124376_ _g124358124380_))))
                        (_g124357124376_ _g124358124380_)))))
            (_g124356124499_ _stx124351_)))))))
