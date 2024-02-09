(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129929_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129931_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129933_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129938_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129941_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129946_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129949_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129954_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129957_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129962_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129965_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130072_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj129925
             (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129928 |gx[1]#_g129929_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129928
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129930 |gx[1]#_g129931_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129930
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129932 |gx[1]#_g129933_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129932
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129934
               (let ((__tmp129939
                      (let ((__tmp129940 |gx[1]#_g129941_|))
                        (declare (not safe))
                        (cons 'e __tmp129940)))
                     (__tmp129935
                      (let ((__tmp129936
                             (let ((__tmp129937 |gx[1]#_g129938_|))
                               (declare (not safe))
                               (cons 'source __tmp129937))))
                        (declare (not safe))
                        (cons __tmp129936 '()))))
                 (declare (not safe))
                 (cons __tmp129939 __tmp129935))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129934
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129942
               (let ((__tmp129947
                      (let ((__tmp129948 |gx[1]#_g129949_|))
                        (declare (not safe))
                        (cons 'e __tmp129948)))
                     (__tmp129943
                      (let ((__tmp129944
                             (let ((__tmp129945 |gx[1]#_g129946_|))
                               (declare (not safe))
                               (cons 'source __tmp129945))))
                        (declare (not safe))
                        (cons __tmp129944 '()))))
                 (declare (not safe))
                 (cons __tmp129947 __tmp129943))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129942
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129950
               (let ((__tmp129955
                      (let ((__tmp129956 |gx[1]#_g129957_|))
                        (declare (not safe))
                        (cons 'e __tmp129956)))
                     (__tmp129951
                      (let ((__tmp129952
                             (let ((__tmp129953 |gx[1]#_g129954_|))
                               (declare (not safe))
                               (cons 'source __tmp129953))))
                        (declare (not safe))
                        (cons __tmp129952 '()))))
                 (declare (not safe))
                 (cons __tmp129955 __tmp129951))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129950
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129958
               (let ((__tmp129963
                      (let ((__tmp129964 |gx[1]#_g129965_|))
                        (declare (not safe))
                        (cons 'e __tmp129964)))
                     (__tmp129959
                      (let ((__tmp129960
                             (let ((__tmp129961 |gx[1]#_g129962_|))
                               (declare (not safe))
                               (cons 'source __tmp129961))))
                        (declare (not safe))
                        (cons __tmp129960 '()))))
                 (declare (not safe))
                 (cons __tmp129963 __tmp129959))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129925
           __tmp129958
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj129925))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx124351_)
        (let* ((_g124355124369_
                (lambda (_g124356124365_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g124356124365_)))
               (_g124354124411_
                (lambda (_g124356124373_)
                  (if (gx#stx-pair? _g124356124373_)
                      (let ((_e124360124376_ (gx#syntax-e _g124356124373_)))
                        (let ((_hd124359124380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124360124376_)))
                              (_tl124358124383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124360124376_))))
                          (if (gx#stx-pair? _tl124358124383_)
                              (let ((_e124363124386_
                                     (gx#syntax-e _tl124358124383_)))
                                (let ((_hd124362124390_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124363124386_)))
                                      (_tl124361124393_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124363124386_))))
                                  (if (gx#stx-null? _tl124361124393_)
                                      ((lambda (_L124396_)
                                         (let ((__tmp129975
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp129966
                                                (let ((__tmp129972
                                                       (let ((__tmp129974
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp129973
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L124396_ '()))))
                 (declare (not safe))
                 (cons __tmp129974 __tmp129973)))
              (__tmp129967
               (let ((__tmp129968
                      (let ((__tmp129971 (gx#datum->syntax '#f 'error))
                            (__tmp129969
                             (let ((__tmp129970
                                    (let ()
                                      (declare (not safe))
                                      (cons _L124396_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp129970))))
                        (declare (not safe))
                        (cons __tmp129971 __tmp129969))))
                 (declare (not safe))
                 (cons __tmp129968 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129972
                                                        __tmp129967))))
                                           (declare (not safe))
                                           (cons __tmp129975 __tmp129966)))
                                       _hd124362124390_)
                                      (_g124355124369_ _g124356124373_))))
                              (_g124355124369_ _g124356124373_))))
                      (_g124355124369_ _g124356124373_)))))
          (_g124354124411_ _$stx124351_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx124415_)
        (letrec ((_generate124418_
                  (lambda (_tgt124567_ _kws124569_ _clauses124570_)
                    (letrec ((_generate-clause124572_
                              (lambda (_hd125482_ _E125484_)
                                (let* ((___stx129828129829_ _hd125482_)
                                       (_g125488125515_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx129828129829_))))
                                  (let ((___kont129831129832_
                                         (lambda (_L125611_ _L125613_)
                                           (_generate1124574_
                                            _hd125482_
                                            _L125613_
                                            '#t
                                            _L125611_
                                            _E125484_)))
                                        (___kont129833129834_
                                         (lambda (_L125563_
                                                  _L125565_
                                                  _L125566_)
                                           (_generate1124574_
                                            _hd125482_
                                            _L125566_
                                            _L125565_
                                            _L125563_
                                            _E125484_)))
                                        (___kont129835129836_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx124415_
                                            _hd125482_))))
                                    (if (gx#stx-pair? ___stx129828129829_)
                                        (let ((_e125494125591_
                                               (gx#syntax-e
                                                ___stx129828129829_)))
                                          (let ((_tl125492125598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125494125591_)))
                                                (_hd125493125595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125494125591_))))
                                            (if (gx#stx-pair? _tl125492125598_)
                                                (let ((_e125497125601_
                                                       (gx#syntax-e
                                                        _tl125492125598_)))
                                                  (let ((_tl125495125608_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125497125601_)))
                                                        (_hd125496125605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125497125601_))))
                                                    (if (gx#stx-null?
                                                         _tl125495125608_)
                                                        (___kont129831129832_
                                                         _hd125496125605_
                                                         _hd125493125595_)
                                                        (if (gx#stx-pair?
                                                             _tl125495125608_)
                                                            (let ((_e125509125553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl125495125608_)))
                      (let ((_tl125507125560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e125509125553_)))
                            (_hd125508125557_
                             (let ()
                               (declare (not safe))
                               (##car _e125509125553_))))
                        (if (gx#stx-null? _tl125507125560_)
                            (___kont129833129834_
                             _hd125508125557_
                             _hd125496125605_
                             _hd125493125595_)
                            (___kont129835129836_))))
                    (___kont129835129836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129835129836_))))
                                        (___kont129835129836_))))))
                             (_generate1124574_
                              (lambda (_where124960_
                                       _hd124962_
                                       _fender124963_
                                       _body124964_
                                       _E124965_)
                                (letrec ((_recur124967_
                                          (lambda (_hd124970_
                                                   _tgt124972_
                                                   _K124973_)
                                            (let* ((___stx129874129875_
                                                    _hd124970_)
                                                   (_g124976124988_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx129874129875_))))
                                              (let ((___kont129877129878_
                                                     (lambda (_L125272_
                                                              _L125274_)
                                                       (let* ((_g125285125293_
                                                               (lambda (_g125286125289_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g125286125289_)))
                      (_g125284125474_
                       (lambda (_g125286125297_)
                         ((lambda (_L125300_)
                            (let ()
                              (let* ((_g125312125320_
                                      (lambda (_g125313125316_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g125313125316_)))
                                     (_g125311125470_
                                      (lambda (_g125313125324_)
                                        ((lambda (_L125327_)
                                           (let ()
                                             (let* ((_g125340125348_
                                                     (lambda (_g125341125344_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g125341125344_)))
                                                    (_g125339125466_
                                                     (lambda (_g125341125352_)
                                                       ((lambda (_L125355_)
                                                          (let ()
                                                            (let* ((_g125368125376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g125369125372_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g125369125372_)))
                           (_g125367125462_
                            (lambda (_g125369125380_)
                              ((lambda (_L125383_)
                                 (let ()
                                   (let* ((_g125396125404_
                                           (lambda (_g125397125400_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g125397125400_)))
                                          (_g125395125458_
                                           (lambda (_g125397125408_)
                                             ((lambda (_L125411_)
                                                (let ()
                                                  (let* ((_g125424125432_
                                                          (lambda (_g125425125428_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g125425125428_)))
                                                         (_g125423125454_
                                                          (lambda (_g125425125436_)
                                                            ((lambda (_L125439_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp130008 (gx#datum->syntax '#f 'if))
                                 (__tmp129976
                                  (let ((__tmp130005
                                         (let ((__tmp130007
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp130006
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125300_ '()))))
                                           (declare (not safe))
                                           (cons __tmp130007 __tmp130006)))
                                        (__tmp129977
                                         (let ((__tmp129979
                                                (let ((__tmp130004
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp129980
                                                       (let ((__tmp129998
                                                              (let ((__tmp129999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130000
                                    (let ((__tmp130001
                                           (let ((__tmp130003
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp130002
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125300_ '()))))
                                             (declare (not safe))
                                             (cons __tmp130003 __tmp130002))))
                                      (declare (not safe))
                                      (cons __tmp130001 '()))))
                               (declare (not safe))
                               (cons _L125327_ __tmp130000))))
                        (declare (not safe))
                        (cons __tmp129999 '())))
                     (__tmp129981
                      (let ((__tmp129982
                             (let ((__tmp129997 (gx#datum->syntax '#f 'let))
                                   (__tmp129983
                                    (let ((__tmp129985
                                           (let ((__tmp129992
                                                  (let ((__tmp129993
                                                         (let ((__tmp129994
                                                                (let ((__tmp129996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp129995
                               (let ()
                                 (declare (not safe))
                                 (cons _L125327_ '()))))
                          (declare (not safe))
                          (cons __tmp129996 __tmp129995))))
                   (declare (not safe))
                   (cons __tmp129994 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L125355_
                                                          __tmp129993)))
                                                 (__tmp129986
                                                  (let ((__tmp129987
                                                         (let ((__tmp129988
                                                                (let ((__tmp129989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129991
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp129990
                                      (let ()
                                        (declare (not safe))
                                        (cons _L125327_ '()))))
                                 (declare (not safe))
                                 (cons __tmp129991 __tmp129990))))
                          (declare (not safe))
                          (cons __tmp129989 '()))))
                   (declare (not safe))
                   (cons _L125383_ __tmp129988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129987 '()))))
                                             (declare (not safe))
                                             (cons __tmp129992 __tmp129986)))
                                          (__tmp129984
                                           (let ()
                                             (declare (not safe))
                                             (cons _L125411_ '()))))
                                      (declare (not safe))
                                      (cons __tmp129985 __tmp129984))))
                               (declare (not safe))
                               (cons __tmp129997 __tmp129983))))
                        (declare (not safe))
                        (cons __tmp129982 '()))))
                 (declare (not safe))
                 (cons __tmp129998 __tmp129981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130004
                                                        __tmp129980)))
                                               (__tmp129978
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125439_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129979 __tmp129978))))
                                    (declare (not safe))
                                    (cons __tmp130005 __tmp129977))))
                             (declare (not safe))
                             (cons __tmp130008 __tmp129976)))))
                     _g125425125436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g125423125454_
                                                     _E124965_))))
                                              _g125397125408_))))
                                     (_g125395125458_
                                      (_recur124967_
                                       _L125274_
                                       _L125355_
                                       (_recur124967_
                                        _L125272_
                                        _L125383_
                                        _K124973_))))))
                               _g125369125380_))))
                      (_g125367125462_ (gx#genident 'tl)))))
                _g125341125352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g125339125466_
                                                (gx#genident 'hd)))))
                                         _g125313125324_))))
                                (_g125311125470_ (gx#genident 'e)))))
                          _g125286125297_))))
                 (_g125284125474_ _tgt124972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129879129880_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd124970_)
                                                           (if (gx#underscore?
                                                                _hd124970_)
                                                               _K124973_
                                                               (if (let ((__tmp130053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124998125000_)
                                    (gx#bound-identifier=?
                                     _g124998125000_
                                     _hd124970_))))
                             (declare (not safe))
                             (find __tmp130053 _kws124569_))
                           (let* ((_g125004125019_
                                   (lambda (_g125005125015_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125005125015_)))
                                  (_g125003125070_
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
                      (let ((__tmp130052 (gx#datum->syntax '#f 'if))
                            (__tmp130035
                             (let ((__tmp130038
                                    (let ((__tmp130051
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp130039
                                           (let ((__tmp130048
                                                  (let ((__tmp130050
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp130049
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L125048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130050
                                                          __tmp130049)))
                                                 (__tmp130040
                                                  (let ((__tmp130041
                                                         (let ((__tmp130047
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp130042
                        (let ((__tmp130043
                               (let ((__tmp130044
                                      (let ((__tmp130046
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp130045
                                             (let ()
                                               (declare (not safe))
                                               (cons _L125046_ '()))))
                                        (declare (not safe))
                                        (cons __tmp130046 __tmp130045))))
                                 (declare (not safe))
                                 (cons __tmp130044 '()))))
                          (declare (not safe))
                          (cons _L125048_ __tmp130043))))
                   (declare (not safe))
                   (cons __tmp130047 __tmp130042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130041 '()))))
                                             (declare (not safe))
                                             (cons __tmp130048 __tmp130040))))
                                      (declare (not safe))
                                      (cons __tmp130051 __tmp130039)))
                                   (__tmp130036
                                    (let ((__tmp130037
                                           (let ()
                                             (declare (not safe))
                                             (cons _E124965_ '()))))
                                      (declare (not safe))
                                      (cons _K124973_ __tmp130037))))
                               (declare (not safe))
                               (cons __tmp130038 __tmp130036))))
                        (declare (not safe))
                        (cons __tmp130052 __tmp130035))))
                  _hd125012125040_
                  _hd125009125030_)
                 (_g125004125019_ _g125005125023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125004125019_
                                                  _g125005125023_))))
                                         (_g125004125019_ _g125005125023_)))))
                             (_g125003125070_ (list _tgt124972_ _hd124970_)))
                           (let* ((_g125074125089_
                                   (lambda (_g125075125085_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125075125085_)))
                                  (_g125073125133_
                                   (lambda (_g125075125093_)
                                     (if (gx#stx-pair? _g125075125093_)
                                         (let ((_e125080125096_
                                                (gx#syntax-e _g125075125093_)))
                                           (let ((_hd125079125100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125080125096_)))
                                                 (_tl125078125103_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125080125096_))))
                                             (if (gx#stx-pair?
                                                  _tl125078125103_)
                                                 (let ((_e125083125106_
                                                        (gx#syntax-e
                                                         _tl125078125103_)))
                                                   (let ((_hd125082125110_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125083125106_)))
                                                         (_tl125081125113_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125083125106_))))
                                                     (if (gx#stx-null?
                                                          _tl125081125113_)
                                                         ((lambda (_L125116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125118_)
                    (let ()
                      (let ((__tmp130034 (gx#datum->syntax '#f 'let))
                            (__tmp130029
                             (let ((__tmp130031
                                    (let ((__tmp130032
                                           (let ((__tmp130033
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125118_ '()))))
                                             (declare (not safe))
                                             (cons _L125116_ __tmp130033))))
                                      (declare (not safe))
                                      (cons __tmp130032 '())))
                                   (__tmp130030
                                    (let ()
                                      (declare (not safe))
                                      (cons _K124973_ '()))))
                               (declare (not safe))
                               (cons __tmp130031 __tmp130030))))
                        (declare (not safe))
                        (cons __tmp130034 __tmp130029))))
                  _hd125082125110_
                  _hd125079125100_)
                 (_g125074125089_ _g125075125093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125074125089_
                                                  _g125075125093_))))
                                         (_g125074125089_ _g125075125093_)))))
                             (_g125073125133_ (list _tgt124972_ _hd124970_)))))
                   (if (gx#stx-null? _hd124970_)
                       (let* ((_g125137125145_
                               (lambda (_g125138125141_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g125138125141_)))
                              (_g125136125163_
                               (lambda (_g125138125149_)
                                 ((lambda (_L125152_)
                                    (let ()
                                      (let ((__tmp130028
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp130022
                                             (let ((__tmp130025
                                                    (let ((__tmp130027
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp130026
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L125152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp130027 __tmp130026)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp130023
                                                    (let ((__tmp130024
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E124965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K124973_ __tmp130024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp130025
                                                     __tmp130023))))
                                        (declare (not safe))
                                        (cons __tmp130028 __tmp130022))))
                                  _g125138125149_))))
                         (_g125136125163_ _tgt124972_))
                       (if (gx#stx-datum? _hd124970_)
                           (let* ((_g125167125186_
                                   (lambda (_g125168125182_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125168125182_)))
                                  (_g125166125244_
                                   (lambda (_g125168125190_)
                                     (if (gx#stx-pair? _g125168125190_)
                                         (let ((_e125174125193_
                                                (gx#syntax-e _g125168125190_)))
                                           (let ((_hd125173125197_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125174125193_)))
                                                 (_tl125172125200_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125174125193_))))
                                             (if (gx#stx-pair?
                                                  _tl125172125200_)
                                                 (let ((_e125177125203_
                                                        (gx#syntax-e
                                                         _tl125172125200_)))
                                                   (let ((_hd125176125207_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125177125203_)))
                                                         (_tl125175125210_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125177125203_))))
                                                     (if (gx#stx-pair?
                                                          _tl125175125210_)
                                                         (let ((_e125180125213_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl125175125210_)))
                   (let ((_hd125179125217_
                          (let ()
                            (declare (not safe))
                            (##car _e125180125213_)))
                         (_tl125178125220_
                          (let ()
                            (declare (not safe))
                            (##cdr _e125180125213_))))
                     (if (gx#stx-null? _tl125178125220_)
                         ((lambda (_L125223_ _L125225_ _L125226_)
                            (let ()
                              (let ((__tmp130021 (gx#datum->syntax '#f 'if))
                                    (__tmp130009
                                     (let ((__tmp130012
                                            (let ((__tmp130013
                                                   (let ((__tmp130018
                                                          (let ((__tmp130020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp130019
                         (let () (declare (not safe)) (cons _L125226_ '()))))
                    (declare (not safe))
                    (cons __tmp130020 __tmp130019)))
                 (__tmp130014
                  (let ((__tmp130015
                         (let ((__tmp130017 (gx#datum->syntax '#f 'quote))
                               (__tmp130016
                                (let ()
                                  (declare (not safe))
                                  (cons _L125225_ '()))))
                           (declare (not safe))
                           (cons __tmp130017 __tmp130016))))
                    (declare (not safe))
                    (cons __tmp130015 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130018
                                                           __tmp130014))))
                                              (declare (not safe))
                                              (cons _L125223_ __tmp130013)))
                                           (__tmp130010
                                            (let ((__tmp130011
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E124965_ '()))))
                                              (declare (not safe))
                                              (cons _K124973_ __tmp130011))))
                                       (declare (not safe))
                                       (cons __tmp130012 __tmp130010))))
                                (declare (not safe))
                                (cons __tmp130021 __tmp130009))))
                          _hd125179125217_
                          _hd125176125207_
                          _hd125173125197_)
                         (_g125167125186_ _g125168125190_))))
                 (_g125167125186_ _g125168125190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125167125186_
                                                  _g125168125190_))))
                                         (_g125167125186_ _g125168125190_)))))
                             (_g125166125244_
                              (list _tgt124972_
                                    _hd124970_
                                    (let ((_e125248_ (gx#stx-e _hd124970_)))
                                      (if (or (keyword? _e125248_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e125248_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e125248_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx124415_
                            _where124960_
                            _hd124970_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx129874129875_)
                                                    (let ((_e124982125262_
                                                           (gx#syntax-e
                                                            ___stx129874129875_)))
                                                      (let ((_tl124980125269_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124982125262_)))
                    (_hd124981125266_
                     (let () (declare (not safe)) (##car _e124982125262_))))
                (___kont129877129878_ _tl124980125269_ _hd124981125266_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129879129880_)))))))
                                  (_recur124967_
                                   _hd124962_
                                   _tgt124567_
                                   (let ((__tmp130057
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp130054
                                          (let ((__tmp130055
                                                 (let ((__tmp130056
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E124965_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body124964_
                                                         __tmp130056))))
                                            (declare (not safe))
                                            (cons _fender124963_
                                                  __tmp130055))))
                                     (declare (not safe))
                                     (cons __tmp130057 __tmp130054))))))
                             (_generate-clauses124575_
                              (lambda (_clauses124698_)
                                (let _lp124701_ ((_rest124704_ _clauses124698_)
                                                 (_E124706_ (gx#genident 'E))
                                                 (_r124707_ '()))
                                  (let* ((___stx129910129911_ _rest124704_)
                                         (_g124710124722_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx129910129911_))))
                                    (let ((___kont129913129914_
                                           (lambda (_L124787_ _L124789_)
                                             (let* ((___stx129890129891_
                                                     _L124789_)
                                                    (_g124801124812_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx129890129891_))))
                                               (let ((___kont129893129894_
                                                      (lambda (_L124941_)
                                                        (if (gx#stx-null?
                                                             _L124787_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L124941_)
                             (let ((__tmp130066 (gx#stx-null? _L124941_)))
                               (declare (not safe))
                               (not __tmp130066)))
                        (let ((__tmp130058
                               (let ((__tmp130059
                                      (let ((__tmp130060
                                             (gx#stx-wrap-source
                                              (let ((__tmp130065
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp130061
                                                     (let ((__tmp130062
                                                            (let ((__tmp130063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp130064 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp130064 _L124941_))))
                      (declare (not safe))
                      (cons __tmp130063 '()))))
               (declare (not safe))
               (cons '() __tmp130062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp130065 __tmp130061))
                                              (gx#stx-source _L124789_))))
                                        (declare (not safe))
                                        (cons __tmp130060 '()))))
                                 (declare (not safe))
                                 (cons _E124706_ __tmp130059))))
                          (declare (not safe))
                          (cons __tmp130058 _r124707_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx124415_
                         _L124789_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx124415_
                     _L124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129895129896_
                                                      (lambda ()
                                                        (let* ((_g124823124831_
                                                                (lambda (_g124824124827_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g124824124827_)))
                       (_g124822124920_
                        (lambda (_g124824124835_)
                          ((lambda (_L124838_)
                             (let ()
                               (let* ((_g124854124862_
                                       (lambda (_g124855124858_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g124855124858_)))
                                      (_g124853124916_
                                       (lambda (_g124855124866_)
                                         ((lambda (_L124869_)
                                            (let ()
                                              (let* ((_g124882124890_
                                                      (lambda (_g124883124886_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g124883124886_)))
                                                     (_g124881124912_
                                                      (lambda (_g124883124894_)
                                                        ((lambda (_L124897_)
                                                           (let ()
                                                             (let ()
                                                               (_lp124701_
                                                                _L124787_
                                                                _L124838_
                                                                (let ((__tmp130067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp130068
                                      (let ()
                                        (declare (not safe))
                                        (cons _L124897_ '()))))
                                 (declare (not safe))
                                 (cons _E124706_ __tmp130068))))
                          (declare (not safe))
                          (cons __tmp130067 _r124707_))))))
                 _g124883124894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g124881124912_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp130071
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp130069
                                                         (let ((__tmp130070
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L124869_ '()))))
                   (declare (not safe))
                   (cons '() __tmp130070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130071
                                                          __tmp130069))
                                                  (gx#stx-source
                                                   _L124789_))))))
                                          _g124855124866_))))
                                 (_g124853124916_
                                  (_generate-clause124572_
                                   _L124789_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L124838_ '())))))))
                           _g124824124835_))))
                  (_g124822124920_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx129890129891_)
                                                     (let ((_e124806124931_
                                                            (gx#syntax-e
                                                             ___stx129890129891_)))
                                                       (let ((_tl124804124938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e124806124931_)))
                     (_hd124805124935_
                      (let () (declare (not safe)) (##car _e124806124931_))))
                 (if (gx#identifier? _hd124805124935_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g130072_|
                          _hd124805124935_)
                         (___kont129893129894_ _tl124804124938_)
                         (___kont129895129896_))
                     (___kont129895129896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129895129896_))))))
                                          (___kont129915129916_
                                           (lambda ()
                                             (let* ((_g124733124741_
                                                     (lambda (_g124734124737_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g124734124737_)))
                                                    (_g124732124766_
                                                     (lambda (_g124734124745_)
                                                       ((lambda (_L124748_)
                                                          (let ()
                                                            (let ((__tmp130073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp130074
                                  (let ((__tmp130075
                                         (gx#stx-wrap-source
                                          (let ((__tmp130083
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp130076
                                                 (let ((__tmp130077
                                                        (let ((__tmp130078
                                                               (let ((__tmp130082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp130079
                              (let ((__tmp130080
                                     (let ((__tmp130081
                                            (let ()
                                              (declare (not safe))
                                              (cons _L124748_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp130081))))
                                (declare (not safe))
                                (cons '#f __tmp130080))))
                         (declare (not safe))
                         (cons __tmp130082 __tmp130079))))
                  (declare (not safe))
                  (cons __tmp130078 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp130077))))
                                            (declare (not safe))
                                            (cons __tmp130083 __tmp130076))
                                          (gx#stx-source _stx124415_))))
                                    (declare (not safe))
                                    (cons __tmp130075 '()))))
                             (declare (not safe))
                             (cons _E124706_ __tmp130074))))
                      (declare (not safe))
                      (cons __tmp130073 _r124707_))))
                _g124734124745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g124732124766_
                                                _tgt124567_)))))
                                      (if (gx#stx-pair? ___stx129910129911_)
                                          (let ((_e124716124777_
                                                 (gx#syntax-e
                                                  ___stx129910129911_)))
                                            (let ((_tl124714124784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124716124777_)))
                                                  (_hd124715124781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124716124777_))))
                                              (___kont129913129914_
                                               _tl124714124784_
                                               _hd124715124781_)))
                                          (___kont129915129916_))))))))
                      (let* ((_bind124577_
                              (_generate-clauses124575_ _clauses124570_))
                             (_g124580124597_
                              (lambda (_g124581124593_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g124581124593_)))
                             (_g124579124694_
                              (lambda (_g124581124601_)
                                (if (gx#stx-pair/null? _g124581124601_)
                                    (let ((_g130084_
                                           (gx#syntax-split-splice
                                            _g124581124601_
                                            '0)))
                                      (begin
                                        (let ((_g130085_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g130084_)
                                                     (##vector-length
                                                      _g130084_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g130085_ 2)))
                                              (error "Context expects 2 values"
                                                     _g130085_)))
                                        (let ((_target124583124604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130084_ 0)))
                                              (_tl124585124607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130084_ 1))))
                                          (if (gx#stx-null? _tl124585124607_)
                                              (letrec ((_loop124586124610_
                                                        (lambda (_hd124584124614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try124590124617_)
                  (if (gx#stx-pair? _hd124584124614_)
                      (let ((_e124587124620_ (gx#syntax-e _hd124584124614_)))
                        (let ((_lp-hd124588124624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124587124620_)))
                              (_lp-tl124589124627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124587124620_))))
                          (_loop124586124610_
                           _lp-tl124589124627_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd124588124624_
                                   _bind-try124590124617_)))))
                      (let ((_bind-try124591124630_
                             (reverse _bind-try124590124617_)))
                        ((lambda (_L124634_)
                           (let ()
                             (let* ((_g124652124660_
                                     (lambda (_g124653124656_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g124653124656_)))
                                    (_g124651124690_
                                     (lambda (_g124653124664_)
                                       ((lambda (_L124667_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp130091
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp130086
                                                     (let ((__tmp130089
                                                            (let ((__tmp130090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124681124684_ _g124682124687_)
                             (let ()
                               (declare (not safe))
                               (cons _g124681124684_ _g124682124687_)))))
                      (declare (not safe))
                      (foldr1 __tmp130090 '() _L124634_)))
                   (__tmp130087
                    (let ((__tmp130088
                           (let () (declare (not safe)) (cons _L124667_ '()))))
                      (declare (not safe))
                      (cons __tmp130088 '()))))
               (declare (not safe))
               (cons __tmp130089 __tmp130087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp130091
                                                      __tmp130086)))))
                                        _g124653124664_))))
                               (_g124651124690_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind124577_)))))))
                         _bind-try124591124630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop124586124610_
                                                 _target124583124604_
                                                 '()))
                                              (_g124580124597_
                                               _g124581124601_)))))
                                    (_g124580124597_ _g124581124601_)))))
                        (_g124579124694_ _bind124577_))))))
          (let* ((_g124421124440_
                  (lambda (_g124422124436_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124422124436_)))
                 (_g124420124563_
                  (lambda (_g124422124444_)
                    (if (gx#stx-pair? _g124422124444_)
                        (let ((_e124428124447_ (gx#syntax-e _g124422124444_)))
                          (let ((_hd124427124451_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124428124447_)))
                                (_tl124426124454_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124428124447_))))
                            (if (gx#stx-pair? _tl124426124454_)
                                (let ((_e124431124457_
                                       (gx#syntax-e _tl124426124454_)))
                                  (let ((_hd124430124461_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124431124457_)))
                                        (_tl124429124464_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124431124457_))))
                                    (if (gx#stx-pair? _tl124429124464_)
                                        (let ((_e124434124467_
                                               (gx#syntax-e _tl124429124464_)))
                                          (let ((_hd124433124471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124434124467_)))
                                                (_tl124432124474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124434124467_))))
                                            ((lambda (_L124477_
                                                      _L124479_
                                                      _L124480_)
                                               (if (and (gx#identifier-list?
                                                         _L124479_)
                                                        (gx#stx-list?
                                                         _L124477_))
                                                   (let* ((_g124498124506_
                                                           (lambda (_g124499124502_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g124499124502_)))
                                                          (_g124497124559_
                                                           (lambda (_g124499124510_)
                                                             ((lambda (_L124513_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g124525124533_
                                  (lambda (_g124526124529_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g124526124529_)))
                                 (_g124524124555_
                                  (lambda (_g124526124537_)
                                    ((lambda (_L124540_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp130097
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp130092
                                                  (let ((__tmp130094
                                                         (let ((__tmp130095
                                                                (let ((__tmp130096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L124480_ '()))))
                          (declare (not safe))
                          (cons _L124513_ __tmp130096))))
                   (declare (not safe))
                   (cons __tmp130095 '())))
                (__tmp130093
                 (let () (declare (not safe)) (cons _L124540_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130094
                                                          __tmp130093))))
                                             (declare (not safe))
                                             (cons __tmp130097 __tmp130092)))))
                                     _g124526124537_))))
                            (_g124524124555_
                             (_generate124418_
                              _L124513_
                              (gx#syntax->list _L124479_)
                              _L124477_)))))
                      _g124499124510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g124497124559_
                                                      (gx#genident 'e)))
                                                   (_g124421124440_
                                                    _g124422124444_)))
                                             _tl124432124474_
                                             _hd124433124471_
                                             _hd124430124461_)))
                                        (_g124421124440_ _g124422124444_))))
                                (_g124421124440_ _g124422124444_))))
                        (_g124421124440_ _g124422124444_)))))
            (_g124420124563_ _stx124415_)))))))
