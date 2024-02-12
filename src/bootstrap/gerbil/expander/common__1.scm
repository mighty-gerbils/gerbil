(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135833_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135835_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135837_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135842_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135845_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135850_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135853_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135858_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135861_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135866_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135869_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135976_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135828
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135832 |gx[1]#_g135833_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135832
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135834 |gx[1]#_g135835_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135834
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135836 |gx[1]#_g135837_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135836
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135838
               (let ((__tmp135843
                      (let ((__tmp135844 |gx[1]#_g135845_|))
                        (declare (not safe))
                        (cons 'e __tmp135844)))
                     (__tmp135839
                      (let ((__tmp135840
                             (let ((__tmp135841 |gx[1]#_g135842_|))
                               (declare (not safe))
                               (cons 'source __tmp135841))))
                        (declare (not safe))
                        (cons __tmp135840 '()))))
                 (declare (not safe))
                 (cons __tmp135843 __tmp135839))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135838
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135846
               (let ((__tmp135851
                      (let ((__tmp135852 |gx[1]#_g135853_|))
                        (declare (not safe))
                        (cons 'e __tmp135852)))
                     (__tmp135847
                      (let ((__tmp135848
                             (let ((__tmp135849 |gx[1]#_g135850_|))
                               (declare (not safe))
                               (cons 'source __tmp135849))))
                        (declare (not safe))
                        (cons __tmp135848 '()))))
                 (declare (not safe))
                 (cons __tmp135851 __tmp135847))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135846
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135854
               (let ((__tmp135859
                      (let ((__tmp135860 |gx[1]#_g135861_|))
                        (declare (not safe))
                        (cons 'e __tmp135860)))
                     (__tmp135855
                      (let ((__tmp135856
                             (let ((__tmp135857 |gx[1]#_g135858_|))
                               (declare (not safe))
                               (cons 'source __tmp135857))))
                        (declare (not safe))
                        (cons __tmp135856 '()))))
                 (declare (not safe))
                 (cons __tmp135859 __tmp135855))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135854
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135862
               (let ((__tmp135867
                      (let ((__tmp135868 |gx[1]#_g135869_|))
                        (declare (not safe))
                        (cons 'e __tmp135868)))
                     (__tmp135863
                      (let ((__tmp135864
                             (let ((__tmp135865 |gx[1]#_g135866_|))
                               (declare (not safe))
                               (cons 'source __tmp135865))))
                        (declare (not safe))
                        (cons __tmp135864 '()))))
                 (declare (not safe))
                 (cons __tmp135867 __tmp135863))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135828
           __tmp135862
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135828))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129880_)
        (let* ((_g129884129898_
                (lambda (_g129885129894_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129885129894_)))
               (_g129883129940_
                (lambda (_g129885129902_)
                  (if (gx#stx-pair? _g129885129902_)
                      (let ((_e129889129905_ (gx#syntax-e _g129885129902_)))
                        (let ((_hd129888129909_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129889129905_)))
                              (_tl129887129912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129889129905_))))
                          (if (gx#stx-pair? _tl129887129912_)
                              (let ((_e129892129915_
                                     (gx#syntax-e _tl129887129912_)))
                                (let ((_hd129891129919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129892129915_)))
                                      (_tl129890129922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129892129915_))))
                                  (if (gx#stx-null? _tl129890129922_)
                                      ((lambda (_L129925_)
                                         (let ((__tmp135879
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135870
                                                (let ((__tmp135876
                                                       (let ((__tmp135878
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135877
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129925_ '()))))
                 (declare (not safe))
                 (cons __tmp135878 __tmp135877)))
              (__tmp135871
               (let ((__tmp135872
                      (let ((__tmp135875 (gx#datum->syntax '#f 'error))
                            (__tmp135873
                             (let ((__tmp135874
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129925_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135874))))
                        (declare (not safe))
                        (cons __tmp135875 __tmp135873))))
                 (declare (not safe))
                 (cons __tmp135872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135876
                                                        __tmp135871))))
                                           (declare (not safe))
                                           (cons __tmp135879 __tmp135870)))
                                       _hd129891129919_)
                                      (_g129884129898_ _g129885129902_))))
                              (_g129884129898_ _g129885129902_))))
                      (_g129884129898_ _g129885129902_)))))
          (_g129883129940_ _$stx129880_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129944_)
        (letrec ((_generate129947_
                  (lambda (_tgt130096_ _kws130098_ _clauses130099_)
                    (letrec ((_generate-clause130101_
                              (lambda (_hd131011_ _E131013_)
                                (let* ((___stx135731135732_ _hd131011_)
                                       (_g131017131044_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135731135732_))))
                                  (let ((___kont135734135735_
                                         (lambda (_L131140_ _L131142_)
                                           (_generate1130103_
                                            _hd131011_
                                            _L131142_
                                            '#t
                                            _L131140_
                                            _E131013_)))
                                        (___kont135736135737_
                                         (lambda (_L131092_
                                                  _L131094_
                                                  _L131095_)
                                           (_generate1130103_
                                            _hd131011_
                                            _L131095_
                                            _L131094_
                                            _L131092_
                                            _E131013_)))
                                        (___kont135738135739_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129944_
                                            _hd131011_))))
                                    (if (gx#stx-pair? ___stx135731135732_)
                                        (let ((_e131023131120_
                                               (gx#syntax-e
                                                ___stx135731135732_)))
                                          (let ((_tl131021131127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131023131120_)))
                                                (_hd131022131124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131023131120_))))
                                            (if (gx#stx-pair? _tl131021131127_)
                                                (let ((_e131026131130_
                                                       (gx#syntax-e
                                                        _tl131021131127_)))
                                                  (let ((_tl131024131137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131026131130_)))
                                                        (_hd131025131134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131026131130_))))
                                                    (if (gx#stx-null?
                                                         _tl131024131137_)
                                                        (___kont135734135735_
                                                         _hd131025131134_
                                                         _hd131022131124_)
                                                        (if (gx#stx-pair?
                                                             _tl131024131137_)
                                                            (let ((_e131038131082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl131024131137_)))
                      (let ((_tl131036131089_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131038131082_)))
                            (_hd131037131086_
                             (let ()
                               (declare (not safe))
                               (##car _e131038131082_))))
                        (if (gx#stx-null? _tl131036131089_)
                            (___kont135736135737_
                             _hd131037131086_
                             _hd131025131134_
                             _hd131022131124_)
                            (___kont135738135739_))))
                    (___kont135738135739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135738135739_))))
                                        (___kont135738135739_))))))
                             (_generate1130103_
                              (lambda (_where130489_
                                       _hd130491_
                                       _fender130492_
                                       _body130493_
                                       _E130494_)
                                (letrec ((_recur130496_
                                          (lambda (_hd130499_
                                                   _tgt130501_
                                                   _K130502_)
                                            (let* ((___stx135777135778_
                                                    _hd130499_)
                                                   (_g130505130517_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135777135778_))))
                                              (let ((___kont135780135781_
                                                     (lambda (_L130801_
                                                              _L130803_)
                                                       (let* ((_g130814130822_
                                                               (lambda (_g130815130818_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130815130818_)))
                      (_g130813131003_
                       (lambda (_g130815130826_)
                         ((lambda (_L130829_)
                            (let ()
                              (let* ((_g130841130849_
                                      (lambda (_g130842130845_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130842130845_)))
                                     (_g130840130999_
                                      (lambda (_g130842130853_)
                                        ((lambda (_L130856_)
                                           (let ()
                                             (let* ((_g130869130877_
                                                     (lambda (_g130870130873_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130870130873_)))
                                                    (_g130868130995_
                                                     (lambda (_g130870130881_)
                                                       ((lambda (_L130884_)
                                                          (let ()
                                                            (let* ((_g130897130905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130898130901_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130898130901_)))
                           (_g130896130991_
                            (lambda (_g130898130909_)
                              ((lambda (_L130912_)
                                 (let ()
                                   (let* ((_g130925130933_
                                           (lambda (_g130926130929_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130926130929_)))
                                          (_g130924130987_
                                           (lambda (_g130926130937_)
                                             ((lambda (_L130940_)
                                                (let ()
                                                  (let* ((_g130953130961_
                                                          (lambda (_g130954130957_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130954130957_)))
                                                         (_g130952130983_
                                                          (lambda (_g130954130965_)
                                                            ((lambda (_L130968_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135912 (gx#datum->syntax '#f 'if))
                                 (__tmp135880
                                  (let ((__tmp135909
                                         (let ((__tmp135911
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135910
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130829_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135911 __tmp135910)))
                                        (__tmp135881
                                         (let ((__tmp135883
                                                (let ((__tmp135908
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135884
                                                       (let ((__tmp135902
                                                              (let ((__tmp135903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135904
                                    (let ((__tmp135905
                                           (let ((__tmp135907
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135906
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130829_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135907 __tmp135906))))
                                      (declare (not safe))
                                      (cons __tmp135905 '()))))
                               (declare (not safe))
                               (cons _L130856_ __tmp135904))))
                        (declare (not safe))
                        (cons __tmp135903 '())))
                     (__tmp135885
                      (let ((__tmp135886
                             (let ((__tmp135901 (gx#datum->syntax '#f 'let))
                                   (__tmp135887
                                    (let ((__tmp135889
                                           (let ((__tmp135896
                                                  (let ((__tmp135897
                                                         (let ((__tmp135898
                                                                (let ((__tmp135900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135899
                               (let ()
                                 (declare (not safe))
                                 (cons _L130856_ '()))))
                          (declare (not safe))
                          (cons __tmp135900 __tmp135899))))
                   (declare (not safe))
                   (cons __tmp135898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130884_
                                                          __tmp135897)))
                                                 (__tmp135890
                                                  (let ((__tmp135891
                                                         (let ((__tmp135892
                                                                (let ((__tmp135893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135895
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135894
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130856_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135895 __tmp135894))))
                          (declare (not safe))
                          (cons __tmp135893 '()))))
                   (declare (not safe))
                   (cons _L130912_ __tmp135892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135891 '()))))
                                             (declare (not safe))
                                             (cons __tmp135896 __tmp135890)))
                                          (__tmp135888
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130940_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135889 __tmp135888))))
                               (declare (not safe))
                               (cons __tmp135901 __tmp135887))))
                        (declare (not safe))
                        (cons __tmp135886 '()))))
                 (declare (not safe))
                 (cons __tmp135902 __tmp135885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135908
                                                        __tmp135884)))
                                               (__tmp135882
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130968_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135883 __tmp135882))))
                                    (declare (not safe))
                                    (cons __tmp135909 __tmp135881))))
                             (declare (not safe))
                             (cons __tmp135912 __tmp135880)))))
                     _g130954130965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130952130983_
                                                     _E130494_))))
                                              _g130926130937_))))
                                     (_g130924130987_
                                      (_recur130496_
                                       _L130803_
                                       _L130884_
                                       (_recur130496_
                                        _L130801_
                                        _L130912_
                                        _K130502_))))))
                               _g130898130909_))))
                      (_g130896130991_ (gx#genident 'tl)))))
                _g130870130881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130868130995_
                                                (gx#genident 'hd)))))
                                         _g130842130853_))))
                                (_g130840130999_ (gx#genident 'e)))))
                          _g130815130826_))))
                 (_g130813131003_ _tgt130501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135782135783_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130499_)
                                                           (if (gx#underscore?
                                                                _hd130499_)
                                                               _K130502_
                                                               (if (let ((__tmp135957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130527130529_)
                                    (gx#bound-identifier=?
                                     _g130527130529_
                                     _hd130499_))))
                             (declare (not safe))
                             (find __tmp135957 _kws130098_))
                           (let* ((_g130533130548_
                                   (lambda (_g130534130544_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130534130544_)))
                                  (_g130532130599_
                                   (lambda (_g130534130552_)
                                     (if (gx#stx-pair? _g130534130552_)
                                         (let ((_e130539130555_
                                                (gx#syntax-e _g130534130552_)))
                                           (let ((_hd130538130559_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130539130555_)))
                                                 (_tl130537130562_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130539130555_))))
                                             (if (gx#stx-pair?
                                                  _tl130537130562_)
                                                 (let ((_e130542130565_
                                                        (gx#syntax-e
                                                         _tl130537130562_)))
                                                   (let ((_hd130541130569_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130542130565_)))
                                                         (_tl130540130572_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130542130565_))))
                                                     (if (gx#stx-null?
                                                          _tl130540130572_)
                                                         ((lambda (_L130575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130577_)
                    (let ()
                      (let ((__tmp135956 (gx#datum->syntax '#f 'if))
                            (__tmp135939
                             (let ((__tmp135942
                                    (let ((__tmp135955
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135943
                                           (let ((__tmp135952
                                                  (let ((__tmp135954
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135953
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135954
                                                          __tmp135953)))
                                                 (__tmp135944
                                                  (let ((__tmp135945
                                                         (let ((__tmp135951
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135946
                        (let ((__tmp135947
                               (let ((__tmp135948
                                      (let ((__tmp135950
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135949
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130575_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135950 __tmp135949))))
                                 (declare (not safe))
                                 (cons __tmp135948 '()))))
                          (declare (not safe))
                          (cons _L130577_ __tmp135947))))
                   (declare (not safe))
                   (cons __tmp135951 __tmp135946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135945 '()))))
                                             (declare (not safe))
                                             (cons __tmp135952 __tmp135944))))
                                      (declare (not safe))
                                      (cons __tmp135955 __tmp135943)))
                                   (__tmp135940
                                    (let ((__tmp135941
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130494_ '()))))
                                      (declare (not safe))
                                      (cons _K130502_ __tmp135941))))
                               (declare (not safe))
                               (cons __tmp135942 __tmp135940))))
                        (declare (not safe))
                        (cons __tmp135956 __tmp135939))))
                  _hd130541130569_
                  _hd130538130559_)
                 (_g130533130548_ _g130534130552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130533130548_
                                                  _g130534130552_))))
                                         (_g130533130548_ _g130534130552_)))))
                             (_g130532130599_ (list _tgt130501_ _hd130499_)))
                           (let* ((_g130603130618_
                                   (lambda (_g130604130614_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130604130614_)))
                                  (_g130602130662_
                                   (lambda (_g130604130622_)
                                     (if (gx#stx-pair? _g130604130622_)
                                         (let ((_e130609130625_
                                                (gx#syntax-e _g130604130622_)))
                                           (let ((_hd130608130629_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130609130625_)))
                                                 (_tl130607130632_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130609130625_))))
                                             (if (gx#stx-pair?
                                                  _tl130607130632_)
                                                 (let ((_e130612130635_
                                                        (gx#syntax-e
                                                         _tl130607130632_)))
                                                   (let ((_hd130611130639_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130612130635_)))
                                                         (_tl130610130642_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130612130635_))))
                                                     (if (gx#stx-null?
                                                          _tl130610130642_)
                                                         ((lambda (_L130645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130647_)
                    (let ()
                      (let ((__tmp135938 (gx#datum->syntax '#f 'let))
                            (__tmp135933
                             (let ((__tmp135935
                                    (let ((__tmp135936
                                           (let ((__tmp135937
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130647_ '()))))
                                             (declare (not safe))
                                             (cons _L130645_ __tmp135937))))
                                      (declare (not safe))
                                      (cons __tmp135936 '())))
                                   (__tmp135934
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130502_ '()))))
                               (declare (not safe))
                               (cons __tmp135935 __tmp135934))))
                        (declare (not safe))
                        (cons __tmp135938 __tmp135933))))
                  _hd130611130639_
                  _hd130608130629_)
                 (_g130603130618_ _g130604130622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130603130618_
                                                  _g130604130622_))))
                                         (_g130603130618_ _g130604130622_)))))
                             (_g130602130662_ (list _tgt130501_ _hd130499_)))))
                   (if (gx#stx-null? _hd130499_)
                       (let* ((_g130666130674_
                               (lambda (_g130667130670_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130667130670_)))
                              (_g130665130692_
                               (lambda (_g130667130678_)
                                 ((lambda (_L130681_)
                                    (let ()
                                      (let ((__tmp135932
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135926
                                             (let ((__tmp135929
                                                    (let ((__tmp135931
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135930
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135931 __tmp135930)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135927
                                                    (let ((__tmp135928
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130502_ __tmp135928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135929
                                                     __tmp135927))))
                                        (declare (not safe))
                                        (cons __tmp135932 __tmp135926))))
                                  _g130667130678_))))
                         (_g130665130692_ _tgt130501_))
                       (if (gx#stx-datum? _hd130499_)
                           (let* ((_g130696130715_
                                   (lambda (_g130697130711_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130697130711_)))
                                  (_g130695130773_
                                   (lambda (_g130697130719_)
                                     (if (gx#stx-pair? _g130697130719_)
                                         (let ((_e130703130722_
                                                (gx#syntax-e _g130697130719_)))
                                           (let ((_hd130702130726_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130703130722_)))
                                                 (_tl130701130729_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130703130722_))))
                                             (if (gx#stx-pair?
                                                  _tl130701130729_)
                                                 (let ((_e130706130732_
                                                        (gx#syntax-e
                                                         _tl130701130729_)))
                                                   (let ((_hd130705130736_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130706130732_)))
                                                         (_tl130704130739_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130706130732_))))
                                                     (if (gx#stx-pair?
                                                          _tl130704130739_)
                                                         (let ((_e130709130742_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130704130739_)))
                   (let ((_hd130708130746_
                          (let ()
                            (declare (not safe))
                            (##car _e130709130742_)))
                         (_tl130707130749_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130709130742_))))
                     (if (gx#stx-null? _tl130707130749_)
                         ((lambda (_L130752_ _L130754_ _L130755_)
                            (let ()
                              (let ((__tmp135925 (gx#datum->syntax '#f 'if))
                                    (__tmp135913
                                     (let ((__tmp135916
                                            (let ((__tmp135917
                                                   (let ((__tmp135922
                                                          (let ((__tmp135924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135923
                         (let () (declare (not safe)) (cons _L130755_ '()))))
                    (declare (not safe))
                    (cons __tmp135924 __tmp135923)))
                 (__tmp135918
                  (let ((__tmp135919
                         (let ((__tmp135921 (gx#datum->syntax '#f 'quote))
                               (__tmp135920
                                (let ()
                                  (declare (not safe))
                                  (cons _L130754_ '()))))
                           (declare (not safe))
                           (cons __tmp135921 __tmp135920))))
                    (declare (not safe))
                    (cons __tmp135919 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135922
                                                           __tmp135918))))
                                              (declare (not safe))
                                              (cons _L130752_ __tmp135917)))
                                           (__tmp135914
                                            (let ((__tmp135915
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130494_ '()))))
                                              (declare (not safe))
                                              (cons _K130502_ __tmp135915))))
                                       (declare (not safe))
                                       (cons __tmp135916 __tmp135914))))
                                (declare (not safe))
                                (cons __tmp135925 __tmp135913))))
                          _hd130708130746_
                          _hd130705130736_
                          _hd130702130726_)
                         (_g130696130715_ _g130697130719_))))
                 (_g130696130715_ _g130697130719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130696130715_
                                                  _g130697130719_))))
                                         (_g130696130715_ _g130697130719_)))))
                             (_g130695130773_
                              (list _tgt130501_
                                    _hd130499_
                                    (let ((_e130777_ (gx#stx-e _hd130499_)))
                                      (if (or (keyword? _e130777_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130777_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130777_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129944_
                            _where130489_
                            _hd130499_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135777135778_)
                                                    (let ((_e130511130791_
                                                           (gx#syntax-e
                                                            ___stx135777135778_)))
                                                      (let ((_tl130509130798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130511130791_)))
                    (_hd130510130795_
                     (let () (declare (not safe)) (##car _e130511130791_))))
                (___kont135780135781_ _tl130509130798_ _hd130510130795_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135782135783_)))))))
                                  (_recur130496_
                                   _hd130491_
                                   _tgt130096_
                                   (let ((__tmp135961
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135958
                                          (let ((__tmp135959
                                                 (let ((__tmp135960
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130494_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130493_
                                                         __tmp135960))))
                                            (declare (not safe))
                                            (cons _fender130492_
                                                  __tmp135959))))
                                     (declare (not safe))
                                     (cons __tmp135961 __tmp135958))))))
                             (_generate-clauses130104_
                              (lambda (_clauses130227_)
                                (let _lp130230_ ((_rest130233_ _clauses130227_)
                                                 (_E130235_ (gx#genident 'E))
                                                 (_r130236_ '()))
                                  (let* ((___stx135813135814_ _rest130233_)
                                         (_g130239130251_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135813135814_))))
                                    (let ((___kont135816135817_
                                           (lambda (_L130316_ _L130318_)
                                             (let* ((___stx135793135794_
                                                     _L130318_)
                                                    (_g130330130341_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135793135794_))))
                                               (let ((___kont135796135797_
                                                      (lambda (_L130470_)
                                                        (if (gx#stx-null?
                                                             _L130316_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130470_)
                             (let ((__tmp135970 (gx#stx-null? _L130470_)))
                               (declare (not safe))
                               (not __tmp135970)))
                        (let ((__tmp135962
                               (let ((__tmp135963
                                      (let ((__tmp135964
                                             (gx#stx-wrap-source
                                              (let ((__tmp135969
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135965
                                                     (let ((__tmp135966
                                                            (let ((__tmp135967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135968 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135968 _L130470_))))
                      (declare (not safe))
                      (cons __tmp135967 '()))))
               (declare (not safe))
               (cons '() __tmp135966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135969 __tmp135965))
                                              (gx#stx-source _L130318_))))
                                        (declare (not safe))
                                        (cons __tmp135964 '()))))
                                 (declare (not safe))
                                 (cons _E130235_ __tmp135963))))
                          (declare (not safe))
                          (cons __tmp135962 _r130236_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129944_
                         _L130318_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129944_
                     _L130318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135798135799_
                                                      (lambda ()
                                                        (let* ((_g130352130360_
                                                                (lambda (_g130353130356_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130353130356_)))
                       (_g130351130449_
                        (lambda (_g130353130364_)
                          ((lambda (_L130367_)
                             (let ()
                               (let* ((_g130383130391_
                                       (lambda (_g130384130387_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130384130387_)))
                                      (_g130382130445_
                                       (lambda (_g130384130395_)
                                         ((lambda (_L130398_)
                                            (let ()
                                              (let* ((_g130411130419_
                                                      (lambda (_g130412130415_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130412130415_)))
                                                     (_g130410130441_
                                                      (lambda (_g130412130423_)
                                                        ((lambda (_L130426_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130230_
                                                                _L130316_
                                                                _L130367_
                                                                (let ((__tmp135971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135972
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130426_ '()))))
                                 (declare (not safe))
                                 (cons _E130235_ __tmp135972))))
                          (declare (not safe))
                          (cons __tmp135971 _r130236_))))))
                 _g130412130423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130410130441_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135975
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135973
                                                         (let ((__tmp135974
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130398_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135975
                                                          __tmp135973))
                                                  (gx#stx-source
                                                   _L130318_))))))
                                          _g130384130395_))))
                                 (_g130382130445_
                                  (_generate-clause130101_
                                   _L130318_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130367_ '())))))))
                           _g130353130364_))))
                  (_g130351130449_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135793135794_)
                                                     (let ((_e130335130460_
                                                            (gx#syntax-e
                                                             ___stx135793135794_)))
                                                       (let ((_tl130333130467_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130335130460_)))
                     (_hd130334130464_
                      (let () (declare (not safe)) (##car _e130335130460_))))
                 (if (gx#identifier? _hd130334130464_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135976_|
                          _hd130334130464_)
                         (___kont135796135797_ _tl130333130467_)
                         (___kont135798135799_))
                     (___kont135798135799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135798135799_))))))
                                          (___kont135818135819_
                                           (lambda ()
                                             (let* ((_g130262130270_
                                                     (lambda (_g130263130266_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130263130266_)))
                                                    (_g130261130295_
                                                     (lambda (_g130263130274_)
                                                       ((lambda (_L130277_)
                                                          (let ()
                                                            (let ((__tmp135977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135978
                                  (let ((__tmp135979
                                         (gx#stx-wrap-source
                                          (let ((__tmp135987
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135980
                                                 (let ((__tmp135981
                                                        (let ((__tmp135982
                                                               (let ((__tmp135986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135983
                              (let ((__tmp135984
                                     (let ((__tmp135985
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130277_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135985))))
                                (declare (not safe))
                                (cons '#f __tmp135984))))
                         (declare (not safe))
                         (cons __tmp135986 __tmp135983))))
                  (declare (not safe))
                  (cons __tmp135982 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135981))))
                                            (declare (not safe))
                                            (cons __tmp135987 __tmp135980))
                                          (gx#stx-source _stx129944_))))
                                    (declare (not safe))
                                    (cons __tmp135979 '()))))
                             (declare (not safe))
                             (cons _E130235_ __tmp135978))))
                      (declare (not safe))
                      (cons __tmp135977 _r130236_))))
                _g130263130274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130261130295_
                                                _tgt130096_)))))
                                      (if (gx#stx-pair? ___stx135813135814_)
                                          (let ((_e130245130306_
                                                 (gx#syntax-e
                                                  ___stx135813135814_)))
                                            (let ((_tl130243130313_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130245130306_)))
                                                  (_hd130244130310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130245130306_))))
                                              (___kont135816135817_
                                               _tl130243130313_
                                               _hd130244130310_)))
                                          (___kont135818135819_))))))))
                      (let* ((_bind130106_
                              (_generate-clauses130104_ _clauses130099_))
                             (_g130109130126_
                              (lambda (_g130110130122_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g130110130122_)))
                             (_g130108130223_
                              (lambda (_g130110130130_)
                                (if (gx#stx-pair/null? _g130110130130_)
                                    (let ((_g135988_
                                           (gx#syntax-split-splice
                                            _g130110130130_
                                            '0)))
                                      (begin
                                        (let ((_g135989_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135988_)
                                                     (##vector-length
                                                      _g135988_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135989_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135989_)))
                                        (let ((_target130112130133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135988_ 0)))
                                              (_tl130114130136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135988_ 1))))
                                          (if (gx#stx-null? _tl130114130136_)
                                              (letrec ((_loop130115130139_
                                                        (lambda (_hd130113130143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try130119130146_)
                  (if (gx#stx-pair? _hd130113130143_)
                      (let ((_e130116130149_ (gx#syntax-e _hd130113130143_)))
                        (let ((_lp-hd130117130153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130116130149_)))
                              (_lp-tl130118130156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130116130149_))))
                          (_loop130115130139_
                           _lp-tl130118130156_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd130117130153_
                                   _bind-try130119130146_)))))
                      (let ((_bind-try130120130159_
                             (reverse _bind-try130119130146_)))
                        ((lambda (_L130163_)
                           (let ()
                             (let* ((_g130181130189_
                                     (lambda (_g130182130185_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g130182130185_)))
                                    (_g130180130219_
                                     (lambda (_g130182130193_)
                                       ((lambda (_L130196_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135995
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135990
                                                     (let ((__tmp135993
                                                            (let ((__tmp135994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g130210130213_ _g130211130216_)
                             (let ()
                               (declare (not safe))
                               (cons _g130210130213_ _g130211130216_)))))
                      (declare (not safe))
                      (foldr1 __tmp135994 '() _L130163_)))
                   (__tmp135991
                    (let ((__tmp135992
                           (let () (declare (not safe)) (cons _L130196_ '()))))
                      (declare (not safe))
                      (cons __tmp135992 '()))))
               (declare (not safe))
               (cons __tmp135993 __tmp135991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135995
                                                      __tmp135990)))))
                                        _g130182130193_))))
                               (_g130180130219_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind130106_)))))))
                         _bind-try130120130159_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop130115130139_
                                                 _target130112130133_
                                                 '()))
                                              (_g130109130126_
                                               _g130110130130_)))))
                                    (_g130109130126_ _g130110130130_)))))
                        (_g130108130223_ _bind130106_))))))
          (let* ((_g129950129969_
                  (lambda (_g129951129965_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129951129965_)))
                 (_g129949130092_
                  (lambda (_g129951129973_)
                    (if (gx#stx-pair? _g129951129973_)
                        (let ((_e129957129976_ (gx#syntax-e _g129951129973_)))
                          (let ((_hd129956129980_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129957129976_)))
                                (_tl129955129983_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129957129976_))))
                            (if (gx#stx-pair? _tl129955129983_)
                                (let ((_e129960129986_
                                       (gx#syntax-e _tl129955129983_)))
                                  (let ((_hd129959129990_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129960129986_)))
                                        (_tl129958129993_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129960129986_))))
                                    (if (gx#stx-pair? _tl129958129993_)
                                        (let ((_e129963129996_
                                               (gx#syntax-e _tl129958129993_)))
                                          (let ((_hd129962130000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129963129996_)))
                                                (_tl129961130003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129963129996_))))
                                            ((lambda (_L130006_
                                                      _L130008_
                                                      _L130009_)
                                               (if (and (gx#identifier-list?
                                                         _L130008_)
                                                        (gx#stx-list?
                                                         _L130006_))
                                                   (let* ((_g130027130035_
                                                           (lambda (_g130028130031_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g130028130031_)))
                                                          (_g130026130088_
                                                           (lambda (_g130028130039_)
                                                             ((lambda (_L130042_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g130054130062_
                                  (lambda (_g130055130058_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g130055130058_)))
                                 (_g130053130084_
                                  (lambda (_g130055130066_)
                                    ((lambda (_L130069_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp136001
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135996
                                                  (let ((__tmp135998
                                                         (let ((__tmp135999
                                                                (let ((__tmp136000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L130009_ '()))))
                          (declare (not safe))
                          (cons _L130042_ __tmp136000))))
                   (declare (not safe))
                   (cons __tmp135999 '())))
                (__tmp135997
                 (let () (declare (not safe)) (cons _L130069_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135998
                                                          __tmp135997))))
                                             (declare (not safe))
                                             (cons __tmp136001 __tmp135996)))))
                                     _g130055130066_))))
                            (_g130053130084_
                             (_generate129947_
                              _L130042_
                              (gx#syntax->list _L130008_)
                              _L130006_)))))
                      _g130028130039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g130026130088_
                                                      (gx#genident 'e)))
                                                   (_g129950129969_
                                                    _g129951129973_)))
                                             _tl129961130003_
                                             _hd129962130000_
                                             _hd129959129990_)))
                                        (_g129950129969_ _g129951129973_))))
                                (_g129950129969_ _g129951129973_))))
                        (_g129950129969_ _g129951129973_)))))
            (_g129949130092_ _stx129944_)))))))
