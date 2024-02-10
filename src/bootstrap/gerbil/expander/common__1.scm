(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129859_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129861_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129863_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129868_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129871_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129876_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129879_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129884_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129887_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129892_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129895_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130002_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj129855
             (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129858 |gx[1]#_g129859_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129858
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129860 |gx[1]#_g129861_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129860
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129862 |gx[1]#_g129863_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129862
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129864
               (let ((__tmp129869
                      (let ((__tmp129870 |gx[1]#_g129871_|))
                        (declare (not safe))
                        (cons 'e __tmp129870)))
                     (__tmp129865
                      (let ((__tmp129866
                             (let ((__tmp129867 |gx[1]#_g129868_|))
                               (declare (not safe))
                               (cons 'source __tmp129867))))
                        (declare (not safe))
                        (cons __tmp129866 '()))))
                 (declare (not safe))
                 (cons __tmp129869 __tmp129865))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129864
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129872
               (let ((__tmp129877
                      (let ((__tmp129878 |gx[1]#_g129879_|))
                        (declare (not safe))
                        (cons 'e __tmp129878)))
                     (__tmp129873
                      (let ((__tmp129874
                             (let ((__tmp129875 |gx[1]#_g129876_|))
                               (declare (not safe))
                               (cons 'source __tmp129875))))
                        (declare (not safe))
                        (cons __tmp129874 '()))))
                 (declare (not safe))
                 (cons __tmp129877 __tmp129873))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129872
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129880
               (let ((__tmp129885
                      (let ((__tmp129886 |gx[1]#_g129887_|))
                        (declare (not safe))
                        (cons 'e __tmp129886)))
                     (__tmp129881
                      (let ((__tmp129882
                             (let ((__tmp129883 |gx[1]#_g129884_|))
                               (declare (not safe))
                               (cons 'source __tmp129883))))
                        (declare (not safe))
                        (cons __tmp129882 '()))))
                 (declare (not safe))
                 (cons __tmp129885 __tmp129881))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129880
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129888
               (let ((__tmp129893
                      (let ((__tmp129894 |gx[1]#_g129895_|))
                        (declare (not safe))
                        (cons 'e __tmp129894)))
                     (__tmp129889
                      (let ((__tmp129890
                             (let ((__tmp129891 |gx[1]#_g129892_|))
                               (declare (not safe))
                               (cons 'source __tmp129891))))
                        (declare (not safe))
                        (cons __tmp129890 '()))))
                 (declare (not safe))
                 (cons __tmp129893 __tmp129889))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129855
           __tmp129888
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj129855))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx124281_)
        (let* ((_g124285124299_
                (lambda (_g124286124295_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g124286124295_)))
               (_g124284124341_
                (lambda (_g124286124303_)
                  (if (gx#stx-pair? _g124286124303_)
                      (let ((_e124290124306_ (gx#syntax-e _g124286124303_)))
                        (let ((_hd124289124310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124290124306_)))
                              (_tl124288124313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124290124306_))))
                          (if (gx#stx-pair? _tl124288124313_)
                              (let ((_e124293124316_
                                     (gx#syntax-e _tl124288124313_)))
                                (let ((_hd124292124320_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124293124316_)))
                                      (_tl124291124323_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124293124316_))))
                                  (if (gx#stx-null? _tl124291124323_)
                                      ((lambda (_L124326_)
                                         (let ((__tmp129905
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp129896
                                                (let ((__tmp129902
                                                       (let ((__tmp129904
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp129903
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L124326_ '()))))
                 (declare (not safe))
                 (cons __tmp129904 __tmp129903)))
              (__tmp129897
               (let ((__tmp129898
                      (let ((__tmp129901 (gx#datum->syntax '#f 'error))
                            (__tmp129899
                             (let ((__tmp129900
                                    (let ()
                                      (declare (not safe))
                                      (cons _L124326_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp129900))))
                        (declare (not safe))
                        (cons __tmp129901 __tmp129899))))
                 (declare (not safe))
                 (cons __tmp129898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129902
                                                        __tmp129897))))
                                           (declare (not safe))
                                           (cons __tmp129905 __tmp129896)))
                                       _hd124292124320_)
                                      (_g124285124299_ _g124286124303_))))
                              (_g124285124299_ _g124286124303_))))
                      (_g124285124299_ _g124286124303_)))))
          (_g124284124341_ _$stx124281_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx124345_)
        (letrec ((_generate124348_
                  (lambda (_tgt124497_ _kws124499_ _clauses124500_)
                    (letrec ((_generate-clause124502_
                              (lambda (_hd125412_ _E125414_)
                                (let* ((___stx129758129759_ _hd125412_)
                                       (_g125418125445_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx129758129759_))))
                                  (let ((___kont129761129762_
                                         (lambda (_L125541_ _L125543_)
                                           (_generate1124504_
                                            _hd125412_
                                            _L125543_
                                            '#t
                                            _L125541_
                                            _E125414_)))
                                        (___kont129763129764_
                                         (lambda (_L125493_
                                                  _L125495_
                                                  _L125496_)
                                           (_generate1124504_
                                            _hd125412_
                                            _L125496_
                                            _L125495_
                                            _L125493_
                                            _E125414_)))
                                        (___kont129765129766_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx124345_
                                            _hd125412_))))
                                    (if (gx#stx-pair? ___stx129758129759_)
                                        (let ((_e125424125521_
                                               (gx#syntax-e
                                                ___stx129758129759_)))
                                          (let ((_tl125422125528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125424125521_)))
                                                (_hd125423125525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125424125521_))))
                                            (if (gx#stx-pair? _tl125422125528_)
                                                (let ((_e125427125531_
                                                       (gx#syntax-e
                                                        _tl125422125528_)))
                                                  (let ((_tl125425125538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125427125531_)))
                                                        (_hd125426125535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125427125531_))))
                                                    (if (gx#stx-null?
                                                         _tl125425125538_)
                                                        (___kont129761129762_
                                                         _hd125426125535_
                                                         _hd125423125525_)
                                                        (if (gx#stx-pair?
                                                             _tl125425125538_)
                                                            (let ((_e125439125483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl125425125538_)))
                      (let ((_tl125437125490_
                             (let ()
                               (declare (not safe))
                               (##cdr _e125439125483_)))
                            (_hd125438125487_
                             (let ()
                               (declare (not safe))
                               (##car _e125439125483_))))
                        (if (gx#stx-null? _tl125437125490_)
                            (___kont129763129764_
                             _hd125438125487_
                             _hd125426125535_
                             _hd125423125525_)
                            (___kont129765129766_))))
                    (___kont129765129766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129765129766_))))
                                        (___kont129765129766_))))))
                             (_generate1124504_
                              (lambda (_where124890_
                                       _hd124892_
                                       _fender124893_
                                       _body124894_
                                       _E124895_)
                                (letrec ((_recur124897_
                                          (lambda (_hd124900_
                                                   _tgt124902_
                                                   _K124903_)
                                            (let* ((___stx129804129805_
                                                    _hd124900_)
                                                   (_g124906124918_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx129804129805_))))
                                              (let ((___kont129807129808_
                                                     (lambda (_L125202_
                                                              _L125204_)
                                                       (let* ((_g125215125223_
                                                               (lambda (_g125216125219_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g125216125219_)))
                      (_g125214125404_
                       (lambda (_g125216125227_)
                         ((lambda (_L125230_)
                            (let ()
                              (let* ((_g125242125250_
                                      (lambda (_g125243125246_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g125243125246_)))
                                     (_g125241125400_
                                      (lambda (_g125243125254_)
                                        ((lambda (_L125257_)
                                           (let ()
                                             (let* ((_g125270125278_
                                                     (lambda (_g125271125274_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g125271125274_)))
                                                    (_g125269125396_
                                                     (lambda (_g125271125282_)
                                                       ((lambda (_L125285_)
                                                          (let ()
                                                            (let* ((_g125298125306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g125299125302_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g125299125302_)))
                           (_g125297125392_
                            (lambda (_g125299125310_)
                              ((lambda (_L125313_)
                                 (let ()
                                   (let* ((_g125326125334_
                                           (lambda (_g125327125330_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g125327125330_)))
                                          (_g125325125388_
                                           (lambda (_g125327125338_)
                                             ((lambda (_L125341_)
                                                (let ()
                                                  (let* ((_g125354125362_
                                                          (lambda (_g125355125358_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g125355125358_)))
                                                         (_g125353125384_
                                                          (lambda (_g125355125366_)
                                                            ((lambda (_L125369_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp129938 (gx#datum->syntax '#f 'if))
                                 (__tmp129906
                                  (let ((__tmp129935
                                         (let ((__tmp129937
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp129936
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125230_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129937 __tmp129936)))
                                        (__tmp129907
                                         (let ((__tmp129909
                                                (let ((__tmp129934
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp129910
                                                       (let ((__tmp129928
                                                              (let ((__tmp129929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129930
                                    (let ((__tmp129931
                                           (let ((__tmp129933
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp129932
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125230_ '()))))
                                             (declare (not safe))
                                             (cons __tmp129933 __tmp129932))))
                                      (declare (not safe))
                                      (cons __tmp129931 '()))))
                               (declare (not safe))
                               (cons _L125257_ __tmp129930))))
                        (declare (not safe))
                        (cons __tmp129929 '())))
                     (__tmp129911
                      (let ((__tmp129912
                             (let ((__tmp129927 (gx#datum->syntax '#f 'let))
                                   (__tmp129913
                                    (let ((__tmp129915
                                           (let ((__tmp129922
                                                  (let ((__tmp129923
                                                         (let ((__tmp129924
                                                                (let ((__tmp129926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp129925
                               (let ()
                                 (declare (not safe))
                                 (cons _L125257_ '()))))
                          (declare (not safe))
                          (cons __tmp129926 __tmp129925))))
                   (declare (not safe))
                   (cons __tmp129924 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L125285_
                                                          __tmp129923)))
                                                 (__tmp129916
                                                  (let ((__tmp129917
                                                         (let ((__tmp129918
                                                                (let ((__tmp129919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129921
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp129920
                                      (let ()
                                        (declare (not safe))
                                        (cons _L125257_ '()))))
                                 (declare (not safe))
                                 (cons __tmp129921 __tmp129920))))
                          (declare (not safe))
                          (cons __tmp129919 '()))))
                   (declare (not safe))
                   (cons _L125313_ __tmp129918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129917 '()))))
                                             (declare (not safe))
                                             (cons __tmp129922 __tmp129916)))
                                          (__tmp129914
                                           (let ()
                                             (declare (not safe))
                                             (cons _L125341_ '()))))
                                      (declare (not safe))
                                      (cons __tmp129915 __tmp129914))))
                               (declare (not safe))
                               (cons __tmp129927 __tmp129913))))
                        (declare (not safe))
                        (cons __tmp129912 '()))))
                 (declare (not safe))
                 (cons __tmp129928 __tmp129911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129934
                                                        __tmp129910)))
                                               (__tmp129908
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125369_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129909 __tmp129908))))
                                    (declare (not safe))
                                    (cons __tmp129935 __tmp129907))))
                             (declare (not safe))
                             (cons __tmp129938 __tmp129906)))))
                     _g125355125366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g125353125384_
                                                     _E124895_))))
                                              _g125327125338_))))
                                     (_g125325125388_
                                      (_recur124897_
                                       _L125204_
                                       _L125285_
                                       (_recur124897_
                                        _L125202_
                                        _L125313_
                                        _K124903_))))))
                               _g125299125310_))))
                      (_g125297125392_ (gx#genident 'tl)))))
                _g125271125282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g125269125396_
                                                (gx#genident 'hd)))))
                                         _g125243125254_))))
                                (_g125241125400_ (gx#genident 'e)))))
                          _g125216125227_))))
                 (_g125214125404_ _tgt124902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129809129810_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd124900_)
                                                           (if (gx#underscore?
                                                                _hd124900_)
                                                               _K124903_
                                                               (if (let ((__tmp129983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124928124930_)
                                    (gx#bound-identifier=?
                                     _g124928124930_
                                     _hd124900_))))
                             (declare (not safe))
                             (find __tmp129983 _kws124499_))
                           (let* ((_g124934124949_
                                   (lambda (_g124935124945_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g124935124945_)))
                                  (_g124933125000_
                                   (lambda (_g124935124953_)
                                     (if (gx#stx-pair? _g124935124953_)
                                         (let ((_e124940124956_
                                                (gx#syntax-e _g124935124953_)))
                                           (let ((_hd124939124960_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e124940124956_)))
                                                 (_tl124938124963_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e124940124956_))))
                                             (if (gx#stx-pair?
                                                  _tl124938124963_)
                                                 (let ((_e124943124966_
                                                        (gx#syntax-e
                                                         _tl124938124963_)))
                                                   (let ((_hd124942124970_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e124943124966_)))
                                                         (_tl124941124973_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e124943124966_))))
                                                     (if (gx#stx-null?
                                                          _tl124941124973_)
                                                         ((lambda (_L124976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124978_)
                    (let ()
                      (let ((__tmp129982 (gx#datum->syntax '#f 'if))
                            (__tmp129965
                             (let ((__tmp129968
                                    (let ((__tmp129981
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp129969
                                           (let ((__tmp129978
                                                  (let ((__tmp129980
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp129979
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L124978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129980
                                                          __tmp129979)))
                                                 (__tmp129970
                                                  (let ((__tmp129971
                                                         (let ((__tmp129977
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp129972
                        (let ((__tmp129973
                               (let ((__tmp129974
                                      (let ((__tmp129976
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp129975
                                             (let ()
                                               (declare (not safe))
                                               (cons _L124976_ '()))))
                                        (declare (not safe))
                                        (cons __tmp129976 __tmp129975))))
                                 (declare (not safe))
                                 (cons __tmp129974 '()))))
                          (declare (not safe))
                          (cons _L124978_ __tmp129973))))
                   (declare (not safe))
                   (cons __tmp129977 __tmp129972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129971 '()))))
                                             (declare (not safe))
                                             (cons __tmp129978 __tmp129970))))
                                      (declare (not safe))
                                      (cons __tmp129981 __tmp129969)))
                                   (__tmp129966
                                    (let ((__tmp129967
                                           (let ()
                                             (declare (not safe))
                                             (cons _E124895_ '()))))
                                      (declare (not safe))
                                      (cons _K124903_ __tmp129967))))
                               (declare (not safe))
                               (cons __tmp129968 __tmp129966))))
                        (declare (not safe))
                        (cons __tmp129982 __tmp129965))))
                  _hd124942124970_
                  _hd124939124960_)
                 (_g124934124949_ _g124935124953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g124934124949_
                                                  _g124935124953_))))
                                         (_g124934124949_ _g124935124953_)))))
                             (_g124933125000_ (list _tgt124902_ _hd124900_)))
                           (let* ((_g125004125019_
                                   (lambda (_g125005125015_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125005125015_)))
                                  (_g125003125063_
                                   (lambda (_g125005125023_)
                                     (if (gx#stx-pair? _g125005125023_)
                                         (let ((_e125010125026_
                                                (gx#syntax-e _g125005125023_)))
                                           (let ((_hd125009125030_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125010125026_)))
                                                 (_tl125008125033_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125010125026_))))
                                             (if (gx#stx-pair?
                                                  _tl125008125033_)
                                                 (let ((_e125013125036_
                                                        (gx#syntax-e
                                                         _tl125008125033_)))
                                                   (let ((_hd125012125040_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125013125036_)))
                                                         (_tl125011125043_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125013125036_))))
                                                     (if (gx#stx-null?
                                                          _tl125011125043_)
                                                         ((lambda (_L125046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125048_)
                    (let ()
                      (let ((__tmp129964 (gx#datum->syntax '#f 'let))
                            (__tmp129959
                             (let ((__tmp129961
                                    (let ((__tmp129962
                                           (let ((__tmp129963
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125048_ '()))))
                                             (declare (not safe))
                                             (cons _L125046_ __tmp129963))))
                                      (declare (not safe))
                                      (cons __tmp129962 '())))
                                   (__tmp129960
                                    (let ()
                                      (declare (not safe))
                                      (cons _K124903_ '()))))
                               (declare (not safe))
                               (cons __tmp129961 __tmp129960))))
                        (declare (not safe))
                        (cons __tmp129964 __tmp129959))))
                  _hd125012125040_
                  _hd125009125030_)
                 (_g125004125019_ _g125005125023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125004125019_
                                                  _g125005125023_))))
                                         (_g125004125019_ _g125005125023_)))))
                             (_g125003125063_ (list _tgt124902_ _hd124900_)))))
                   (if (gx#stx-null? _hd124900_)
                       (let* ((_g125067125075_
                               (lambda (_g125068125071_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g125068125071_)))
                              (_g125066125093_
                               (lambda (_g125068125079_)
                                 ((lambda (_L125082_)
                                    (let ()
                                      (let ((__tmp129958
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp129952
                                             (let ((__tmp129955
                                                    (let ((__tmp129957
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp129956
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L125082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp129957 __tmp129956)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129953
                                                    (let ((__tmp129954
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E124895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K124903_ __tmp129954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp129955
                                                     __tmp129953))))
                                        (declare (not safe))
                                        (cons __tmp129958 __tmp129952))))
                                  _g125068125079_))))
                         (_g125066125093_ _tgt124902_))
                       (if (gx#stx-datum? _hd124900_)
                           (let* ((_g125097125116_
                                   (lambda (_g125098125112_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125098125112_)))
                                  (_g125096125174_
                                   (lambda (_g125098125120_)
                                     (if (gx#stx-pair? _g125098125120_)
                                         (let ((_e125104125123_
                                                (gx#syntax-e _g125098125120_)))
                                           (let ((_hd125103125127_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125104125123_)))
                                                 (_tl125102125130_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125104125123_))))
                                             (if (gx#stx-pair?
                                                  _tl125102125130_)
                                                 (let ((_e125107125133_
                                                        (gx#syntax-e
                                                         _tl125102125130_)))
                                                   (let ((_hd125106125137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125107125133_)))
                                                         (_tl125105125140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125107125133_))))
                                                     (if (gx#stx-pair?
                                                          _tl125105125140_)
                                                         (let ((_e125110125143_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl125105125140_)))
                   (let ((_hd125109125147_
                          (let ()
                            (declare (not safe))
                            (##car _e125110125143_)))
                         (_tl125108125150_
                          (let ()
                            (declare (not safe))
                            (##cdr _e125110125143_))))
                     (if (gx#stx-null? _tl125108125150_)
                         ((lambda (_L125153_ _L125155_ _L125156_)
                            (let ()
                              (let ((__tmp129951 (gx#datum->syntax '#f 'if))
                                    (__tmp129939
                                     (let ((__tmp129942
                                            (let ((__tmp129943
                                                   (let ((__tmp129948
                                                          (let ((__tmp129950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp129949
                         (let () (declare (not safe)) (cons _L125156_ '()))))
                    (declare (not safe))
                    (cons __tmp129950 __tmp129949)))
                 (__tmp129944
                  (let ((__tmp129945
                         (let ((__tmp129947 (gx#datum->syntax '#f 'quote))
                               (__tmp129946
                                (let ()
                                  (declare (not safe))
                                  (cons _L125155_ '()))))
                           (declare (not safe))
                           (cons __tmp129947 __tmp129946))))
                    (declare (not safe))
                    (cons __tmp129945 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129948
                                                           __tmp129944))))
                                              (declare (not safe))
                                              (cons _L125153_ __tmp129943)))
                                           (__tmp129940
                                            (let ((__tmp129941
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E124895_ '()))))
                                              (declare (not safe))
                                              (cons _K124903_ __tmp129941))))
                                       (declare (not safe))
                                       (cons __tmp129942 __tmp129940))))
                                (declare (not safe))
                                (cons __tmp129951 __tmp129939))))
                          _hd125109125147_
                          _hd125106125137_
                          _hd125103125127_)
                         (_g125097125116_ _g125098125120_))))
                 (_g125097125116_ _g125098125120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125097125116_
                                                  _g125098125120_))))
                                         (_g125097125116_ _g125098125120_)))))
                             (_g125096125174_
                              (list _tgt124902_
                                    _hd124900_
                                    (let ((_e125178_ (gx#stx-e _hd124900_)))
                                      (if (or (keyword? _e125178_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e125178_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e125178_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx124345_
                            _where124890_
                            _hd124900_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx129804129805_)
                                                    (let ((_e124912125192_
                                                           (gx#syntax-e
                                                            ___stx129804129805_)))
                                                      (let ((_tl124910125199_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124912125192_)))
                    (_hd124911125196_
                     (let () (declare (not safe)) (##car _e124912125192_))))
                (___kont129807129808_ _tl124910125199_ _hd124911125196_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129809129810_)))))))
                                  (_recur124897_
                                   _hd124892_
                                   _tgt124497_
                                   (let ((__tmp129987
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp129984
                                          (let ((__tmp129985
                                                 (let ((__tmp129986
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E124895_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body124894_
                                                         __tmp129986))))
                                            (declare (not safe))
                                            (cons _fender124893_
                                                  __tmp129985))))
                                     (declare (not safe))
                                     (cons __tmp129987 __tmp129984))))))
                             (_generate-clauses124505_
                              (lambda (_clauses124628_)
                                (let _lp124631_ ((_rest124634_ _clauses124628_)
                                                 (_E124636_ (gx#genident 'E))
                                                 (_r124637_ '()))
                                  (let* ((___stx129840129841_ _rest124634_)
                                         (_g124640124652_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx129840129841_))))
                                    (let ((___kont129843129844_
                                           (lambda (_L124717_ _L124719_)
                                             (let* ((___stx129820129821_
                                                     _L124719_)
                                                    (_g124731124742_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx129820129821_))))
                                               (let ((___kont129823129824_
                                                      (lambda (_L124871_)
                                                        (if (gx#stx-null?
                                                             _L124717_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L124871_)
                             (let ((__tmp129996 (gx#stx-null? _L124871_)))
                               (declare (not safe))
                               (not __tmp129996)))
                        (let ((__tmp129988
                               (let ((__tmp129989
                                      (let ((__tmp129990
                                             (gx#stx-wrap-source
                                              (let ((__tmp129995
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp129991
                                                     (let ((__tmp129992
                                                            (let ((__tmp129993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp129994 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp129994 _L124871_))))
                      (declare (not safe))
                      (cons __tmp129993 '()))))
               (declare (not safe))
               (cons '() __tmp129992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp129995 __tmp129991))
                                              (gx#stx-source _L124719_))))
                                        (declare (not safe))
                                        (cons __tmp129990 '()))))
                                 (declare (not safe))
                                 (cons _E124636_ __tmp129989))))
                          (declare (not safe))
                          (cons __tmp129988 _r124637_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx124345_
                         _L124719_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx124345_
                     _L124719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129825129826_
                                                      (lambda ()
                                                        (let* ((_g124753124761_
                                                                (lambda (_g124754124757_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g124754124757_)))
                       (_g124752124850_
                        (lambda (_g124754124765_)
                          ((lambda (_L124768_)
                             (let ()
                               (let* ((_g124784124792_
                                       (lambda (_g124785124788_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g124785124788_)))
                                      (_g124783124846_
                                       (lambda (_g124785124796_)
                                         ((lambda (_L124799_)
                                            (let ()
                                              (let* ((_g124812124820_
                                                      (lambda (_g124813124816_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g124813124816_)))
                                                     (_g124811124842_
                                                      (lambda (_g124813124824_)
                                                        ((lambda (_L124827_)
                                                           (let ()
                                                             (let ()
                                                               (_lp124631_
                                                                _L124717_
                                                                _L124768_
                                                                (let ((__tmp129997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129998
                                      (let ()
                                        (declare (not safe))
                                        (cons _L124827_ '()))))
                                 (declare (not safe))
                                 (cons _E124636_ __tmp129998))))
                          (declare (not safe))
                          (cons __tmp129997 _r124637_))))))
                 _g124813124824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g124811124842_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp130001
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp129999
                                                         (let ((__tmp130000
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L124799_ '()))))
                   (declare (not safe))
                   (cons '() __tmp130000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130001
                                                          __tmp129999))
                                                  (gx#stx-source
                                                   _L124719_))))))
                                          _g124785124796_))))
                                 (_g124783124846_
                                  (_generate-clause124502_
                                   _L124719_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L124768_ '())))))))
                           _g124754124765_))))
                  (_g124752124850_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx129820129821_)
                                                     (let ((_e124736124861_
                                                            (gx#syntax-e
                                                             ___stx129820129821_)))
                                                       (let ((_tl124734124868_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e124736124861_)))
                     (_hd124735124865_
                      (let () (declare (not safe)) (##car _e124736124861_))))
                 (if (gx#identifier? _hd124735124865_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g130002_|
                          _hd124735124865_)
                         (___kont129823129824_ _tl124734124868_)
                         (___kont129825129826_))
                     (___kont129825129826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129825129826_))))))
                                          (___kont129845129846_
                                           (lambda ()
                                             (let* ((_g124663124671_
                                                     (lambda (_g124664124667_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g124664124667_)))
                                                    (_g124662124696_
                                                     (lambda (_g124664124675_)
                                                       ((lambda (_L124678_)
                                                          (let ()
                                                            (let ((__tmp130003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp130004
                                  (let ((__tmp130005
                                         (gx#stx-wrap-source
                                          (let ((__tmp130013
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp130006
                                                 (let ((__tmp130007
                                                        (let ((__tmp130008
                                                               (let ((__tmp130012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp130009
                              (let ((__tmp130010
                                     (let ((__tmp130011
                                            (let ()
                                              (declare (not safe))
                                              (cons _L124678_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp130011))))
                                (declare (not safe))
                                (cons '#f __tmp130010))))
                         (declare (not safe))
                         (cons __tmp130012 __tmp130009))))
                  (declare (not safe))
                  (cons __tmp130008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp130007))))
                                            (declare (not safe))
                                            (cons __tmp130013 __tmp130006))
                                          (gx#stx-source _stx124345_))))
                                    (declare (not safe))
                                    (cons __tmp130005 '()))))
                             (declare (not safe))
                             (cons _E124636_ __tmp130004))))
                      (declare (not safe))
                      (cons __tmp130003 _r124637_))))
                _g124664124675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g124662124696_
                                                _tgt124497_)))))
                                      (if (gx#stx-pair? ___stx129840129841_)
                                          (let ((_e124646124707_
                                                 (gx#syntax-e
                                                  ___stx129840129841_)))
                                            (let ((_tl124644124714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124646124707_)))
                                                  (_hd124645124711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124646124707_))))
                                              (___kont129843129844_
                                               _tl124644124714_
                                               _hd124645124711_)))
                                          (___kont129845129846_))))))))
                      (let* ((_bind124507_
                              (_generate-clauses124505_ _clauses124500_))
                             (_g124510124527_
                              (lambda (_g124511124523_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g124511124523_)))
                             (_g124509124624_
                              (lambda (_g124511124531_)
                                (if (gx#stx-pair/null? _g124511124531_)
                                    (let ((_g130014_
                                           (gx#syntax-split-splice
                                            _g124511124531_
                                            '0)))
                                      (begin
                                        (let ((_g130015_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g130014_)
                                                     (##vector-length
                                                      _g130014_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g130015_ 2)))
                                              (error "Context expects 2 values"
                                                     _g130015_)))
                                        (let ((_target124513124534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130014_ 0)))
                                              (_tl124515124537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130014_ 1))))
                                          (if (gx#stx-null? _tl124515124537_)
                                              (letrec ((_loop124516124540_
                                                        (lambda (_hd124514124544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try124520124547_)
                  (if (gx#stx-pair? _hd124514124544_)
                      (let ((_e124517124550_ (gx#syntax-e _hd124514124544_)))
                        (let ((_lp-hd124518124554_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124517124550_)))
                              (_lp-tl124519124557_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124517124550_))))
                          (_loop124516124540_
                           _lp-tl124519124557_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd124518124554_
                                   _bind-try124520124547_)))))
                      (let ((_bind-try124521124560_
                             (reverse _bind-try124520124547_)))
                        ((lambda (_L124564_)
                           (let ()
                             (let* ((_g124582124590_
                                     (lambda (_g124583124586_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g124583124586_)))
                                    (_g124581124620_
                                     (lambda (_g124583124594_)
                                       ((lambda (_L124597_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp130021
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp130016
                                                     (let ((__tmp130019
                                                            (let ((__tmp130020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124611124614_ _g124612124617_)
                             (let ()
                               (declare (not safe))
                               (cons _g124611124614_ _g124612124617_)))))
                      (declare (not safe))
                      (foldr1 __tmp130020 '() _L124564_)))
                   (__tmp130017
                    (let ((__tmp130018
                           (let () (declare (not safe)) (cons _L124597_ '()))))
                      (declare (not safe))
                      (cons __tmp130018 '()))))
               (declare (not safe))
               (cons __tmp130019 __tmp130017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp130021
                                                      __tmp130016)))))
                                        _g124583124594_))))
                               (_g124581124620_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind124507_)))))))
                         _bind-try124521124560_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop124516124540_
                                                 _target124513124534_
                                                 '()))
                                              (_g124510124527_
                                               _g124511124531_)))))
                                    (_g124510124527_ _g124511124531_)))))
                        (_g124509124624_ _bind124507_))))))
          (let* ((_g124351124370_
                  (lambda (_g124352124366_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124352124366_)))
                 (_g124350124493_
                  (lambda (_g124352124374_)
                    (if (gx#stx-pair? _g124352124374_)
                        (let ((_e124358124377_ (gx#syntax-e _g124352124374_)))
                          (let ((_hd124357124381_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124358124377_)))
                                (_tl124356124384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124358124377_))))
                            (if (gx#stx-pair? _tl124356124384_)
                                (let ((_e124361124387_
                                       (gx#syntax-e _tl124356124384_)))
                                  (let ((_hd124360124391_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124361124387_)))
                                        (_tl124359124394_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124361124387_))))
                                    (if (gx#stx-pair? _tl124359124394_)
                                        (let ((_e124364124397_
                                               (gx#syntax-e _tl124359124394_)))
                                          (let ((_hd124363124401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124364124397_)))
                                                (_tl124362124404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124364124397_))))
                                            ((lambda (_L124407_
                                                      _L124409_
                                                      _L124410_)
                                               (if (and (gx#identifier-list?
                                                         _L124409_)
                                                        (gx#stx-list?
                                                         _L124407_))
                                                   (let* ((_g124428124436_
                                                           (lambda (_g124429124432_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g124429124432_)))
                                                          (_g124427124489_
                                                           (lambda (_g124429124440_)
                                                             ((lambda (_L124443_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g124455124463_
                                  (lambda (_g124456124459_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g124456124459_)))
                                 (_g124454124485_
                                  (lambda (_g124456124467_)
                                    ((lambda (_L124470_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp130027
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp130022
                                                  (let ((__tmp130024
                                                         (let ((__tmp130025
                                                                (let ((__tmp130026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L124410_ '()))))
                          (declare (not safe))
                          (cons _L124443_ __tmp130026))))
                   (declare (not safe))
                   (cons __tmp130025 '())))
                (__tmp130023
                 (let () (declare (not safe)) (cons _L124470_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130024
                                                          __tmp130023))))
                                             (declare (not safe))
                                             (cons __tmp130027 __tmp130022)))))
                                     _g124456124467_))))
                            (_g124454124485_
                             (_generate124348_
                              _L124443_
                              (gx#syntax->list _L124409_)
                              _L124407_)))))
                      _g124429124440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g124427124489_
                                                      (gx#genident 'e)))
                                                   (_g124351124370_
                                                    _g124352124374_)))
                                             _tl124362124404_
                                             _hd124363124401_
                                             _hd124360124391_)))
                                        (_g124351124370_ _g124352124374_))))
                                (_g124351124370_ _g124352124374_))))
                        (_g124351124370_ _g124352124374_)))))
            (_g124350124493_ _stx124345_)))))))
