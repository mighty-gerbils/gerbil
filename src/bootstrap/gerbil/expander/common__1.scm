(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129860_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129862_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129864_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129869_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129872_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129877_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129880_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129885_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129888_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129893_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129896_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130003_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj129856
             (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129859 |gx[1]#_g129860_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129859
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129861 |gx[1]#_g129862_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129861
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129863 |gx[1]#_g129864_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129863
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129865
               (let ((__tmp129870
                      (let ((__tmp129871 |gx[1]#_g129872_|))
                        (declare (not safe))
                        (cons 'e __tmp129871)))
                     (__tmp129866
                      (let ((__tmp129867
                             (let ((__tmp129868 |gx[1]#_g129869_|))
                               (declare (not safe))
                               (cons 'source __tmp129868))))
                        (declare (not safe))
                        (cons __tmp129867 '()))))
                 (declare (not safe))
                 (cons __tmp129870 __tmp129866))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129865
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129873
               (let ((__tmp129878
                      (let ((__tmp129879 |gx[1]#_g129880_|))
                        (declare (not safe))
                        (cons 'e __tmp129879)))
                     (__tmp129874
                      (let ((__tmp129875
                             (let ((__tmp129876 |gx[1]#_g129877_|))
                               (declare (not safe))
                               (cons 'source __tmp129876))))
                        (declare (not safe))
                        (cons __tmp129875 '()))))
                 (declare (not safe))
                 (cons __tmp129878 __tmp129874))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129873
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129881
               (let ((__tmp129886
                      (let ((__tmp129887 |gx[1]#_g129888_|))
                        (declare (not safe))
                        (cons 'e __tmp129887)))
                     (__tmp129882
                      (let ((__tmp129883
                             (let ((__tmp129884 |gx[1]#_g129885_|))
                               (declare (not safe))
                               (cons 'source __tmp129884))))
                        (declare (not safe))
                        (cons __tmp129883 '()))))
                 (declare (not safe))
                 (cons __tmp129886 __tmp129882))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129881
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp129889
               (let ((__tmp129894
                      (let ((__tmp129895 |gx[1]#_g129896_|))
                        (declare (not safe))
                        (cons 'e __tmp129895)))
                     (__tmp129890
                      (let ((__tmp129891
                             (let ((__tmp129892 |gx[1]#_g129893_|))
                               (declare (not safe))
                               (cons 'source __tmp129892))))
                        (declare (not safe))
                        (cons __tmp129891 '()))))
                 (declare (not safe))
                 (cons __tmp129894 __tmp129890))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129856
           __tmp129889
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj129856))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx124282_)
        (let* ((_g124286124300_
                (lambda (_g124287124296_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g124287124296_)))
               (_g124285124342_
                (lambda (_g124287124304_)
                  (if (gx#stx-pair? _g124287124304_)
                      (let ((_e124291124307_ (gx#syntax-e _g124287124304_)))
                        (let ((_hd124290124311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124291124307_)))
                              (_tl124289124314_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124291124307_))))
                          (if (gx#stx-pair? _tl124289124314_)
                              (let ((_e124294124317_
                                     (gx#syntax-e _tl124289124314_)))
                                (let ((_hd124293124321_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124294124317_)))
                                      (_tl124292124324_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124294124317_))))
                                  (if (gx#stx-null? _tl124292124324_)
                                      ((lambda (_L124327_)
                                         (let ((__tmp129906
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp129897
                                                (let ((__tmp129903
                                                       (let ((__tmp129905
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp129904
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L124327_ '()))))
                 (declare (not safe))
                 (cons __tmp129905 __tmp129904)))
              (__tmp129898
               (let ((__tmp129899
                      (let ((__tmp129902 (gx#datum->syntax '#f 'error))
                            (__tmp129900
                             (let ((__tmp129901
                                    (let ()
                                      (declare (not safe))
                                      (cons _L124327_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp129901))))
                        (declare (not safe))
                        (cons __tmp129902 __tmp129900))))
                 (declare (not safe))
                 (cons __tmp129899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129903
                                                        __tmp129898))))
                                           (declare (not safe))
                                           (cons __tmp129906 __tmp129897)))
                                       _hd124293124321_)
                                      (_g124286124300_ _g124287124304_))))
                              (_g124286124300_ _g124287124304_))))
                      (_g124286124300_ _g124287124304_)))))
          (_g124285124342_ _$stx124282_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx124346_)
        (letrec ((_generate124349_
                  (lambda (_tgt124498_ _kws124500_ _clauses124501_)
                    (letrec ((_generate-clause124503_
                              (lambda (_hd125413_ _E125415_)
                                (let* ((___stx129759129760_ _hd125413_)
                                       (_g125419125446_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx129759129760_))))
                                  (let ((___kont129762129763_
                                         (lambda (_L125542_ _L125544_)
                                           (_generate1124505_
                                            _hd125413_
                                            _L125544_
                                            '#t
                                            _L125542_
                                            _E125415_)))
                                        (___kont129764129765_
                                         (lambda (_L125494_
                                                  _L125496_
                                                  _L125497_)
                                           (_generate1124505_
                                            _hd125413_
                                            _L125497_
                                            _L125496_
                                            _L125494_
                                            _E125415_)))
                                        (___kont129766129767_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx124346_
                                            _hd125413_))))
                                    (if (gx#stx-pair? ___stx129759129760_)
                                        (let ((_e125425125522_
                                               (gx#syntax-e
                                                ___stx129759129760_)))
                                          (let ((_tl125423125529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125425125522_)))
                                                (_hd125424125526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125425125522_))))
                                            (if (gx#stx-pair? _tl125423125529_)
                                                (let ((_e125428125532_
                                                       (gx#syntax-e
                                                        _tl125423125529_)))
                                                  (let ((_tl125426125539_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125428125532_)))
                                                        (_hd125427125536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125428125532_))))
                                                    (if (gx#stx-null?
                                                         _tl125426125539_)
                                                        (___kont129762129763_
                                                         _hd125427125536_
                                                         _hd125424125526_)
                                                        (if (gx#stx-pair?
                                                             _tl125426125539_)
                                                            (let ((_e125440125484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl125426125539_)))
                      (let ((_tl125438125491_
                             (let ()
                               (declare (not safe))
                               (##cdr _e125440125484_)))
                            (_hd125439125488_
                             (let ()
                               (declare (not safe))
                               (##car _e125440125484_))))
                        (if (gx#stx-null? _tl125438125491_)
                            (___kont129764129765_
                             _hd125439125488_
                             _hd125427125536_
                             _hd125424125526_)
                            (___kont129766129767_))))
                    (___kont129766129767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129766129767_))))
                                        (___kont129766129767_))))))
                             (_generate1124505_
                              (lambda (_where124891_
                                       _hd124893_
                                       _fender124894_
                                       _body124895_
                                       _E124896_)
                                (letrec ((_recur124898_
                                          (lambda (_hd124901_
                                                   _tgt124903_
                                                   _K124904_)
                                            (let* ((___stx129805129806_
                                                    _hd124901_)
                                                   (_g124907124919_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx129805129806_))))
                                              (let ((___kont129808129809_
                                                     (lambda (_L125203_
                                                              _L125205_)
                                                       (let* ((_g125216125224_
                                                               (lambda (_g125217125220_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g125217125220_)))
                      (_g125215125405_
                       (lambda (_g125217125228_)
                         ((lambda (_L125231_)
                            (let ()
                              (let* ((_g125243125251_
                                      (lambda (_g125244125247_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g125244125247_)))
                                     (_g125242125401_
                                      (lambda (_g125244125255_)
                                        ((lambda (_L125258_)
                                           (let ()
                                             (let* ((_g125271125279_
                                                     (lambda (_g125272125275_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g125272125275_)))
                                                    (_g125270125397_
                                                     (lambda (_g125272125283_)
                                                       ((lambda (_L125286_)
                                                          (let ()
                                                            (let* ((_g125299125307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g125300125303_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g125300125303_)))
                           (_g125298125393_
                            (lambda (_g125300125311_)
                              ((lambda (_L125314_)
                                 (let ()
                                   (let* ((_g125327125335_
                                           (lambda (_g125328125331_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g125328125331_)))
                                          (_g125326125389_
                                           (lambda (_g125328125339_)
                                             ((lambda (_L125342_)
                                                (let ()
                                                  (let* ((_g125355125363_
                                                          (lambda (_g125356125359_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g125356125359_)))
                                                         (_g125354125385_
                                                          (lambda (_g125356125367_)
                                                            ((lambda (_L125370_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp129939 (gx#datum->syntax '#f 'if))
                                 (__tmp129907
                                  (let ((__tmp129936
                                         (let ((__tmp129938
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp129937
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125231_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129938 __tmp129937)))
                                        (__tmp129908
                                         (let ((__tmp129910
                                                (let ((__tmp129935
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp129911
                                                       (let ((__tmp129929
                                                              (let ((__tmp129930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129931
                                    (let ((__tmp129932
                                           (let ((__tmp129934
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp129933
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125231_ '()))))
                                             (declare (not safe))
                                             (cons __tmp129934 __tmp129933))))
                                      (declare (not safe))
                                      (cons __tmp129932 '()))))
                               (declare (not safe))
                               (cons _L125258_ __tmp129931))))
                        (declare (not safe))
                        (cons __tmp129930 '())))
                     (__tmp129912
                      (let ((__tmp129913
                             (let ((__tmp129928 (gx#datum->syntax '#f 'let))
                                   (__tmp129914
                                    (let ((__tmp129916
                                           (let ((__tmp129923
                                                  (let ((__tmp129924
                                                         (let ((__tmp129925
                                                                (let ((__tmp129927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp129926
                               (let ()
                                 (declare (not safe))
                                 (cons _L125258_ '()))))
                          (declare (not safe))
                          (cons __tmp129927 __tmp129926))))
                   (declare (not safe))
                   (cons __tmp129925 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L125286_
                                                          __tmp129924)))
                                                 (__tmp129917
                                                  (let ((__tmp129918
                                                         (let ((__tmp129919
                                                                (let ((__tmp129920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129922
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp129921
                                      (let ()
                                        (declare (not safe))
                                        (cons _L125258_ '()))))
                                 (declare (not safe))
                                 (cons __tmp129922 __tmp129921))))
                          (declare (not safe))
                          (cons __tmp129920 '()))))
                   (declare (not safe))
                   (cons _L125314_ __tmp129919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129918 '()))))
                                             (declare (not safe))
                                             (cons __tmp129923 __tmp129917)))
                                          (__tmp129915
                                           (let ()
                                             (declare (not safe))
                                             (cons _L125342_ '()))))
                                      (declare (not safe))
                                      (cons __tmp129916 __tmp129915))))
                               (declare (not safe))
                               (cons __tmp129928 __tmp129914))))
                        (declare (not safe))
                        (cons __tmp129913 '()))))
                 (declare (not safe))
                 (cons __tmp129929 __tmp129912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129935
                                                        __tmp129911)))
                                               (__tmp129909
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L125370_ '()))))
                                           (declare (not safe))
                                           (cons __tmp129910 __tmp129909))))
                                    (declare (not safe))
                                    (cons __tmp129936 __tmp129908))))
                             (declare (not safe))
                             (cons __tmp129939 __tmp129907)))))
                     _g125356125367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g125354125385_
                                                     _E124896_))))
                                              _g125328125339_))))
                                     (_g125326125389_
                                      (_recur124898_
                                       _L125205_
                                       _L125286_
                                       (_recur124898_
                                        _L125203_
                                        _L125314_
                                        _K124904_))))))
                               _g125300125311_))))
                      (_g125298125393_ (gx#genident 'tl)))))
                _g125272125283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g125270125397_
                                                (gx#genident 'hd)))))
                                         _g125244125255_))))
                                (_g125242125401_ (gx#genident 'e)))))
                          _g125217125228_))))
                 (_g125215125405_ _tgt124903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129810129811_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd124901_)
                                                           (if (gx#underscore?
                                                                _hd124901_)
                                                               _K124904_
                                                               (if (let ((__tmp129984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124929124931_)
                                    (gx#bound-identifier=?
                                     _g124929124931_
                                     _hd124901_))))
                             (declare (not safe))
                             (find __tmp129984 _kws124500_))
                           (let* ((_g124935124950_
                                   (lambda (_g124936124946_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g124936124946_)))
                                  (_g124934125001_
                                   (lambda (_g124936124954_)
                                     (if (gx#stx-pair? _g124936124954_)
                                         (let ((_e124941124957_
                                                (gx#syntax-e _g124936124954_)))
                                           (let ((_hd124940124961_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e124941124957_)))
                                                 (_tl124939124964_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e124941124957_))))
                                             (if (gx#stx-pair?
                                                  _tl124939124964_)
                                                 (let ((_e124944124967_
                                                        (gx#syntax-e
                                                         _tl124939124964_)))
                                                   (let ((_hd124943124971_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e124944124967_)))
                                                         (_tl124942124974_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e124944124967_))))
                                                     (if (gx#stx-null?
                                                          _tl124942124974_)
                                                         ((lambda (_L124977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124979_)
                    (let ()
                      (let ((__tmp129983 (gx#datum->syntax '#f 'if))
                            (__tmp129966
                             (let ((__tmp129969
                                    (let ((__tmp129982
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp129970
                                           (let ((__tmp129979
                                                  (let ((__tmp129981
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp129980
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L124979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129981
                                                          __tmp129980)))
                                                 (__tmp129971
                                                  (let ((__tmp129972
                                                         (let ((__tmp129978
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp129973
                        (let ((__tmp129974
                               (let ((__tmp129975
                                      (let ((__tmp129977
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp129976
                                             (let ()
                                               (declare (not safe))
                                               (cons _L124977_ '()))))
                                        (declare (not safe))
                                        (cons __tmp129977 __tmp129976))))
                                 (declare (not safe))
                                 (cons __tmp129975 '()))))
                          (declare (not safe))
                          (cons _L124979_ __tmp129974))))
                   (declare (not safe))
                   (cons __tmp129978 __tmp129973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129972 '()))))
                                             (declare (not safe))
                                             (cons __tmp129979 __tmp129971))))
                                      (declare (not safe))
                                      (cons __tmp129982 __tmp129970)))
                                   (__tmp129967
                                    (let ((__tmp129968
                                           (let ()
                                             (declare (not safe))
                                             (cons _E124896_ '()))))
                                      (declare (not safe))
                                      (cons _K124904_ __tmp129968))))
                               (declare (not safe))
                               (cons __tmp129969 __tmp129967))))
                        (declare (not safe))
                        (cons __tmp129983 __tmp129966))))
                  _hd124943124971_
                  _hd124940124961_)
                 (_g124935124950_ _g124936124954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g124935124950_
                                                  _g124936124954_))))
                                         (_g124935124950_ _g124936124954_)))))
                             (_g124934125001_ (list _tgt124903_ _hd124901_)))
                           (let* ((_g125005125020_
                                   (lambda (_g125006125016_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125006125016_)))
                                  (_g125004125064_
                                   (lambda (_g125006125024_)
                                     (if (gx#stx-pair? _g125006125024_)
                                         (let ((_e125011125027_
                                                (gx#syntax-e _g125006125024_)))
                                           (let ((_hd125010125031_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125011125027_)))
                                                 (_tl125009125034_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125011125027_))))
                                             (if (gx#stx-pair?
                                                  _tl125009125034_)
                                                 (let ((_e125014125037_
                                                        (gx#syntax-e
                                                         _tl125009125034_)))
                                                   (let ((_hd125013125041_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125014125037_)))
                                                         (_tl125012125044_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125014125037_))))
                                                     (if (gx#stx-null?
                                                          _tl125012125044_)
                                                         ((lambda (_L125047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125049_)
                    (let ()
                      (let ((__tmp129965 (gx#datum->syntax '#f 'let))
                            (__tmp129960
                             (let ((__tmp129962
                                    (let ((__tmp129963
                                           (let ((__tmp129964
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L125049_ '()))))
                                             (declare (not safe))
                                             (cons _L125047_ __tmp129964))))
                                      (declare (not safe))
                                      (cons __tmp129963 '())))
                                   (__tmp129961
                                    (let ()
                                      (declare (not safe))
                                      (cons _K124904_ '()))))
                               (declare (not safe))
                               (cons __tmp129962 __tmp129961))))
                        (declare (not safe))
                        (cons __tmp129965 __tmp129960))))
                  _hd125013125041_
                  _hd125010125031_)
                 (_g125005125020_ _g125006125024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125005125020_
                                                  _g125006125024_))))
                                         (_g125005125020_ _g125006125024_)))))
                             (_g125004125064_ (list _tgt124903_ _hd124901_)))))
                   (if (gx#stx-null? _hd124901_)
                       (let* ((_g125068125076_
                               (lambda (_g125069125072_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g125069125072_)))
                              (_g125067125094_
                               (lambda (_g125069125080_)
                                 ((lambda (_L125083_)
                                    (let ()
                                      (let ((__tmp129959
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp129953
                                             (let ((__tmp129956
                                                    (let ((__tmp129958
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp129957
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L125083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp129958 __tmp129957)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129954
                                                    (let ((__tmp129955
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E124896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K124904_ __tmp129955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp129956
                                                     __tmp129954))))
                                        (declare (not safe))
                                        (cons __tmp129959 __tmp129953))))
                                  _g125069125080_))))
                         (_g125067125094_ _tgt124903_))
                       (if (gx#stx-datum? _hd124901_)
                           (let* ((_g125098125117_
                                   (lambda (_g125099125113_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g125099125113_)))
                                  (_g125097125175_
                                   (lambda (_g125099125121_)
                                     (if (gx#stx-pair? _g125099125121_)
                                         (let ((_e125105125124_
                                                (gx#syntax-e _g125099125121_)))
                                           (let ((_hd125104125128_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e125105125124_)))
                                                 (_tl125103125131_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e125105125124_))))
                                             (if (gx#stx-pair?
                                                  _tl125103125131_)
                                                 (let ((_e125108125134_
                                                        (gx#syntax-e
                                                         _tl125103125131_)))
                                                   (let ((_hd125107125138_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e125108125134_)))
                                                         (_tl125106125141_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e125108125134_))))
                                                     (if (gx#stx-pair?
                                                          _tl125106125141_)
                                                         (let ((_e125111125144_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl125106125141_)))
                   (let ((_hd125110125148_
                          (let ()
                            (declare (not safe))
                            (##car _e125111125144_)))
                         (_tl125109125151_
                          (let ()
                            (declare (not safe))
                            (##cdr _e125111125144_))))
                     (if (gx#stx-null? _tl125109125151_)
                         ((lambda (_L125154_ _L125156_ _L125157_)
                            (let ()
                              (let ((__tmp129952 (gx#datum->syntax '#f 'if))
                                    (__tmp129940
                                     (let ((__tmp129943
                                            (let ((__tmp129944
                                                   (let ((__tmp129949
                                                          (let ((__tmp129951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp129950
                         (let () (declare (not safe)) (cons _L125157_ '()))))
                    (declare (not safe))
                    (cons __tmp129951 __tmp129950)))
                 (__tmp129945
                  (let ((__tmp129946
                         (let ((__tmp129948 (gx#datum->syntax '#f 'quote))
                               (__tmp129947
                                (let ()
                                  (declare (not safe))
                                  (cons _L125156_ '()))))
                           (declare (not safe))
                           (cons __tmp129948 __tmp129947))))
                    (declare (not safe))
                    (cons __tmp129946 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129949
                                                           __tmp129945))))
                                              (declare (not safe))
                                              (cons _L125154_ __tmp129944)))
                                           (__tmp129941
                                            (let ((__tmp129942
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E124896_ '()))))
                                              (declare (not safe))
                                              (cons _K124904_ __tmp129942))))
                                       (declare (not safe))
                                       (cons __tmp129943 __tmp129941))))
                                (declare (not safe))
                                (cons __tmp129952 __tmp129940))))
                          _hd125110125148_
                          _hd125107125138_
                          _hd125104125128_)
                         (_g125098125117_ _g125099125121_))))
                 (_g125098125117_ _g125099125121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g125098125117_
                                                  _g125099125121_))))
                                         (_g125098125117_ _g125099125121_)))))
                             (_g125097125175_
                              (list _tgt124903_
                                    _hd124901_
                                    (let ((_e125179_ (gx#stx-e _hd124901_)))
                                      (if (or (keyword? _e125179_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e125179_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e125179_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx124346_
                            _where124891_
                            _hd124901_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx129805129806_)
                                                    (let ((_e124913125193_
                                                           (gx#syntax-e
                                                            ___stx129805129806_)))
                                                      (let ((_tl124911125200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124913125193_)))
                    (_hd124912125197_
                     (let () (declare (not safe)) (##car _e124913125193_))))
                (___kont129808129809_ _tl124911125200_ _hd124912125197_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129810129811_)))))))
                                  (_recur124898_
                                   _hd124893_
                                   _tgt124498_
                                   (let ((__tmp129988
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp129985
                                          (let ((__tmp129986
                                                 (let ((__tmp129987
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E124896_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body124895_
                                                         __tmp129987))))
                                            (declare (not safe))
                                            (cons _fender124894_
                                                  __tmp129986))))
                                     (declare (not safe))
                                     (cons __tmp129988 __tmp129985))))))
                             (_generate-clauses124506_
                              (lambda (_clauses124629_)
                                (let _lp124632_ ((_rest124635_ _clauses124629_)
                                                 (_E124637_ (gx#genident 'E))
                                                 (_r124638_ '()))
                                  (let* ((___stx129841129842_ _rest124635_)
                                         (_g124641124653_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx129841129842_))))
                                    (let ((___kont129844129845_
                                           (lambda (_L124718_ _L124720_)
                                             (let* ((___stx129821129822_
                                                     _L124720_)
                                                    (_g124732124743_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx129821129822_))))
                                               (let ((___kont129824129825_
                                                      (lambda (_L124872_)
                                                        (if (gx#stx-null?
                                                             _L124718_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L124872_)
                             (let ((__tmp129997 (gx#stx-null? _L124872_)))
                               (declare (not safe))
                               (not __tmp129997)))
                        (let ((__tmp129989
                               (let ((__tmp129990
                                      (let ((__tmp129991
                                             (gx#stx-wrap-source
                                              (let ((__tmp129996
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp129992
                                                     (let ((__tmp129993
                                                            (let ((__tmp129994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp129995 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp129995 _L124872_))))
                      (declare (not safe))
                      (cons __tmp129994 '()))))
               (declare (not safe))
               (cons '() __tmp129993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp129996 __tmp129992))
                                              (gx#stx-source _L124720_))))
                                        (declare (not safe))
                                        (cons __tmp129991 '()))))
                                 (declare (not safe))
                                 (cons _E124637_ __tmp129990))))
                          (declare (not safe))
                          (cons __tmp129989 _r124638_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx124346_
                         _L124720_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx124346_
                     _L124720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129826129827_
                                                      (lambda ()
                                                        (let* ((_g124754124762_
                                                                (lambda (_g124755124758_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g124755124758_)))
                       (_g124753124851_
                        (lambda (_g124755124766_)
                          ((lambda (_L124769_)
                             (let ()
                               (let* ((_g124785124793_
                                       (lambda (_g124786124789_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g124786124789_)))
                                      (_g124784124847_
                                       (lambda (_g124786124797_)
                                         ((lambda (_L124800_)
                                            (let ()
                                              (let* ((_g124813124821_
                                                      (lambda (_g124814124817_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g124814124817_)))
                                                     (_g124812124843_
                                                      (lambda (_g124814124825_)
                                                        ((lambda (_L124828_)
                                                           (let ()
                                                             (let ()
                                                               (_lp124632_
                                                                _L124718_
                                                                _L124769_
                                                                (let ((__tmp129998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129999
                                      (let ()
                                        (declare (not safe))
                                        (cons _L124828_ '()))))
                                 (declare (not safe))
                                 (cons _E124637_ __tmp129999))))
                          (declare (not safe))
                          (cons __tmp129998 _r124638_))))))
                 _g124814124825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g124812124843_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp130002
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp130000
                                                         (let ((__tmp130001
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L124800_ '()))))
                   (declare (not safe))
                   (cons '() __tmp130001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130002
                                                          __tmp130000))
                                                  (gx#stx-source
                                                   _L124720_))))))
                                          _g124786124797_))))
                                 (_g124784124847_
                                  (_generate-clause124503_
                                   _L124720_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L124769_ '())))))))
                           _g124755124766_))))
                  (_g124753124851_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx129821129822_)
                                                     (let ((_e124737124862_
                                                            (gx#syntax-e
                                                             ___stx129821129822_)))
                                                       (let ((_tl124735124869_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e124737124862_)))
                     (_hd124736124866_
                      (let () (declare (not safe)) (##car _e124737124862_))))
                 (if (gx#identifier? _hd124736124866_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g130003_|
                          _hd124736124866_)
                         (___kont129824129825_ _tl124735124869_)
                         (___kont129826129827_))
                     (___kont129826129827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129826129827_))))))
                                          (___kont129846129847_
                                           (lambda ()
                                             (let* ((_g124664124672_
                                                     (lambda (_g124665124668_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g124665124668_)))
                                                    (_g124663124697_
                                                     (lambda (_g124665124676_)
                                                       ((lambda (_L124679_)
                                                          (let ()
                                                            (let ((__tmp130004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp130005
                                  (let ((__tmp130006
                                         (gx#stx-wrap-source
                                          (let ((__tmp130014
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp130007
                                                 (let ((__tmp130008
                                                        (let ((__tmp130009
                                                               (let ((__tmp130013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp130010
                              (let ((__tmp130011
                                     (let ((__tmp130012
                                            (let ()
                                              (declare (not safe))
                                              (cons _L124679_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp130012))))
                                (declare (not safe))
                                (cons '#f __tmp130011))))
                         (declare (not safe))
                         (cons __tmp130013 __tmp130010))))
                  (declare (not safe))
                  (cons __tmp130009 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp130008))))
                                            (declare (not safe))
                                            (cons __tmp130014 __tmp130007))
                                          (gx#stx-source _stx124346_))))
                                    (declare (not safe))
                                    (cons __tmp130006 '()))))
                             (declare (not safe))
                             (cons _E124637_ __tmp130005))))
                      (declare (not safe))
                      (cons __tmp130004 _r124638_))))
                _g124665124676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g124663124697_
                                                _tgt124498_)))))
                                      (if (gx#stx-pair? ___stx129841129842_)
                                          (let ((_e124647124708_
                                                 (gx#syntax-e
                                                  ___stx129841129842_)))
                                            (let ((_tl124645124715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124647124708_)))
                                                  (_hd124646124712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124647124708_))))
                                              (___kont129844129845_
                                               _tl124645124715_
                                               _hd124646124712_)))
                                          (___kont129846129847_))))))))
                      (let* ((_bind124508_
                              (_generate-clauses124506_ _clauses124501_))
                             (_g124511124528_
                              (lambda (_g124512124524_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g124512124524_)))
                             (_g124510124625_
                              (lambda (_g124512124532_)
                                (if (gx#stx-pair/null? _g124512124532_)
                                    (let ((_g130015_
                                           (gx#syntax-split-splice
                                            _g124512124532_
                                            '0)))
                                      (begin
                                        (let ((_g130016_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g130015_)
                                                     (##vector-length
                                                      _g130015_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g130016_ 2)))
                                              (error "Context expects 2 values"
                                                     _g130016_)))
                                        (let ((_target124514124535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130015_ 0)))
                                              (_tl124516124538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g130015_ 1))))
                                          (if (gx#stx-null? _tl124516124538_)
                                              (letrec ((_loop124517124541_
                                                        (lambda (_hd124515124545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try124521124548_)
                  (if (gx#stx-pair? _hd124515124545_)
                      (let ((_e124518124551_ (gx#syntax-e _hd124515124545_)))
                        (let ((_lp-hd124519124555_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124518124551_)))
                              (_lp-tl124520124558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124518124551_))))
                          (_loop124517124541_
                           _lp-tl124520124558_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd124519124555_
                                   _bind-try124521124548_)))))
                      (let ((_bind-try124522124561_
                             (reverse _bind-try124521124548_)))
                        ((lambda (_L124565_)
                           (let ()
                             (let* ((_g124583124591_
                                     (lambda (_g124584124587_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g124584124587_)))
                                    (_g124582124621_
                                     (lambda (_g124584124595_)
                                       ((lambda (_L124598_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp130022
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp130017
                                                     (let ((__tmp130020
                                                            (let ((__tmp130021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124612124615_ _g124613124618_)
                             (let ()
                               (declare (not safe))
                               (cons _g124612124615_ _g124613124618_)))))
                      (declare (not safe))
                      (foldr1 __tmp130021 '() _L124565_)))
                   (__tmp130018
                    (let ((__tmp130019
                           (let () (declare (not safe)) (cons _L124598_ '()))))
                      (declare (not safe))
                      (cons __tmp130019 '()))))
               (declare (not safe))
               (cons __tmp130020 __tmp130018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp130022
                                                      __tmp130017)))))
                                        _g124584124595_))))
                               (_g124582124621_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind124508_)))))))
                         _bind-try124522124561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop124517124541_
                                                 _target124514124535_
                                                 '()))
                                              (_g124511124528_
                                               _g124512124532_)))))
                                    (_g124511124528_ _g124512124532_)))))
                        (_g124510124625_ _bind124508_))))))
          (let* ((_g124352124371_
                  (lambda (_g124353124367_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124353124367_)))
                 (_g124351124494_
                  (lambda (_g124353124375_)
                    (if (gx#stx-pair? _g124353124375_)
                        (let ((_e124359124378_ (gx#syntax-e _g124353124375_)))
                          (let ((_hd124358124382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124359124378_)))
                                (_tl124357124385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124359124378_))))
                            (if (gx#stx-pair? _tl124357124385_)
                                (let ((_e124362124388_
                                       (gx#syntax-e _tl124357124385_)))
                                  (let ((_hd124361124392_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124362124388_)))
                                        (_tl124360124395_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124362124388_))))
                                    (if (gx#stx-pair? _tl124360124395_)
                                        (let ((_e124365124398_
                                               (gx#syntax-e _tl124360124395_)))
                                          (let ((_hd124364124402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124365124398_)))
                                                (_tl124363124405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124365124398_))))
                                            ((lambda (_L124408_
                                                      _L124410_
                                                      _L124411_)
                                               (if (and (gx#identifier-list?
                                                         _L124410_)
                                                        (gx#stx-list?
                                                         _L124408_))
                                                   (let* ((_g124429124437_
                                                           (lambda (_g124430124433_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g124430124433_)))
                                                          (_g124428124490_
                                                           (lambda (_g124430124441_)
                                                             ((lambda (_L124444_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g124456124464_
                                  (lambda (_g124457124460_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g124457124460_)))
                                 (_g124455124486_
                                  (lambda (_g124457124468_)
                                    ((lambda (_L124471_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp130028
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp130023
                                                  (let ((__tmp130025
                                                         (let ((__tmp130026
                                                                (let ((__tmp130027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L124411_ '()))))
                          (declare (not safe))
                          (cons _L124444_ __tmp130027))))
                   (declare (not safe))
                   (cons __tmp130026 '())))
                (__tmp130024
                 (let () (declare (not safe)) (cons _L124471_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130025
                                                          __tmp130024))))
                                             (declare (not safe))
                                             (cons __tmp130028 __tmp130023)))))
                                     _g124457124468_))))
                            (_g124455124486_
                             (_generate124349_
                              _L124444_
                              (gx#syntax->list _L124410_)
                              _L124408_)))))
                      _g124430124441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g124428124490_
                                                      (gx#genident 'e)))
                                                   (_g124352124371_
                                                    _g124353124375_)))
                                             _tl124363124405_
                                             _hd124364124402_
                                             _hd124361124392_)))
                                        (_g124352124371_ _g124353124375_))))
                                (_g124352124371_ _g124353124375_))))
                        (_g124352124371_ _g124353124375_)))))
            (_g124351124494_ _stx124346_)))))))
