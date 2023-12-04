(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12907_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12913_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12926_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12928_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12930_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12932_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12934_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12936_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12944_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12946_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12948_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12950_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12952_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12954_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12956_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12958_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12962_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12963_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12964_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12973_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12975_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12979_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12981_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12983_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12985_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx11124_)
        (let* ((_g1112811152_
                (lambda (_g1112911148_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1112911148_)))
               (_g1112711238_
                (lambda (_g1112911156_)
                  (if (gx#stx-pair? _g1112911156_)
                      (let ((_e1113411159_ (gx#syntax-e _g1112911156_)))
                        (let ((_hd1113311163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1113411159_)))
                              (_tl1113211166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1113411159_))))
                          (if (gx#stx-pair? _tl1113211166_)
                              (let ((_e1113711169_
                                     (gx#syntax-e _tl1113211166_)))
                                (let ((_hd1113611173_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1113711169_)))
                                      (_tl1113511176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1113711169_))))
                                  (if (gx#stx-pair/null? _tl1113511176_)
                                      (let ((_g12803_
                                             (gx#syntax-split-splice
                                              _tl1113511176_
                                              '0)))
                                        (begin
                                          (let ((_g12804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g12803_)
                                                       (##vector-length
                                                        _g12803_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g12804_ 2)))
                                                (error "Context expects 2 values"
                                                       _g12804_)))
                                          (let ((_target1113811179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g12803_ 0)))
                                                (_tl1114011182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g12803_ 1))))
                                            (if (gx#stx-null? _tl1114011182_)
                                                (letrec ((_loop1114111185_
                                                          (lambda (_hd1113911189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1114511192_)
                    (if (gx#stx-pair? _hd1113911189_)
                        (let ((_e1114211195_ (gx#syntax-e _hd1113911189_)))
                          (let ((_lp-hd1114311199_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1114211195_)))
                                (_lp-tl1114411202_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1114211195_))))
                            (_loop1114111185_
                             _lp-tl1114411202_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1114311199_ _body1114511192_)))))
                        (let ((_body1114611205_ (reverse _body1114511192_)))
                          ((lambda (_L11209_ _L11211_)
                             (let ((__tmp12816 (gx#datum->syntax '#f 'let))
                                   (__tmp12805
                                    (let ((__tmp12813
                                           (let ((__tmp12815
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp12814
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L11211_ '()))))
                                             (declare (not safe))
                                             (cons __tmp12815 __tmp12814)))
                                          (__tmp12806
                                           (let ((__tmp12807
                                                  (let ((__tmp12812
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp12808
                                                         (let ((__tmp12811
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp12809
                        (let ((__tmp12810
                               (lambda (_g1122911232_ _g1123011235_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1122911232_ _g1123011235_)))))
                          (declare (not safe))
                          (foldr1 __tmp12810 '() _L11209_))))
                   (declare (not safe))
                   (cons __tmp12811 __tmp12809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12812
                                                          __tmp12808))))
                                             (declare (not safe))
                                             (cons __tmp12807 '()))))
                                      (declare (not safe))
                                      (cons __tmp12813 __tmp12806))))
                               (declare (not safe))
                               (cons __tmp12816 __tmp12805)))
                           _body1114611205_
                           _hd1113611173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1114111185_
                                                   _target1113811179_
                                                   '()))
                                                (_g1112811152_
                                                 _g1112911156_)))))
                                      (_g1112811152_ _g1112911156_))))
                              (_g1112811152_ _g1112911156_))))
                      (_g1112811152_ _g1112911156_)))))
          (_g1112711238_ _$stx11124_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx11243_)
        (letrec ((_generate111246_
                  (lambda (_hd11787_ _tgt11789_ _K11790_ _E11791_ _kws11792_)
                    (let* ((_g1179411802_
                            (lambda (_g1179511798_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1179511798_)))
                           (_g1179312229_
                            (lambda (_g1179511806_)
                              ((lambda (_L11809_)
                                 (let ()
                                   (let* ((___stx1270612707_ _hd11787_)
                                          (_g1182311837_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx1270612707_))))
                                     (let ((___kont1270912710_
                                            (lambda (_L12051_ _L12053_)
                                              (let* ((_g1206412072_
                                                      (lambda (_g1206512068_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1206512068_)))
                                                     (_g1206312221_
                                                      (lambda (_g1206512076_)
                                                        ((lambda (_L12079_)
                                                           (let ()
                                                             (let* ((_g1209112099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1209212095_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1209212095_)))
                            (_g1209012217_
                             (lambda (_g1209212103_)
                               ((lambda (_L12106_)
                                  (let ()
                                    (let* ((_g1211912127_
                                            (lambda (_g1212012123_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1212012123_)))
                                           (_g1211812213_
                                            (lambda (_g1212012131_)
                                              ((lambda (_L12134_)
                                                 (let ()
                                                   (let* ((_g1214712155_
                                                           (lambda (_g1214812151_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1214812151_)))
                                                          (_g1214612209_
                                                           (lambda (_g1214812159_)
                                                             ((lambda (_L12162_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1217512183_
                                  (lambda (_g1217612179_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1217612179_)))
                                 (_g1217412205_
                                  (lambda (_g1217612187_)
                                    ((lambda (_L12190_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp12845
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp12817
                                                  (let ((__tmp12842
                                                         (let ((__tmp12844
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp12843
                        (let () (declare (not safe)) (cons _L11809_ '()))))
                   (declare (not safe))
                   (cons __tmp12844 __tmp12843)))
                (__tmp12818
                 (let ((__tmp12820
                        (let ((__tmp12841 (gx#datum->syntax '#f 'let*))
                              (__tmp12821
                               (let ((__tmp12823
                                      (let ((__tmp12836
                                             (let ((__tmp12837
                                                    (let ((__tmp12838
                                                           (let ((__tmp12840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp12839
                          (let () (declare (not safe)) (cons _L11809_ '()))))
                     (declare (not safe))
                     (cons __tmp12840 __tmp12839))))
              (declare (not safe))
              (cons __tmp12838 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L12079_ __tmp12837)))
                                            (__tmp12824
                                             (let ((__tmp12831
                                                    (let ((__tmp12832
                                                           (let ((__tmp12833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12835 (gx#datum->syntax '#f '##car))
                                (__tmp12834
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12079_ '()))))
                            (declare (not safe))
                            (cons __tmp12835 __tmp12834))))
                     (declare (not safe))
                     (cons __tmp12833 '()))))
              (declare (not safe))
              (cons _L12106_ __tmp12832)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp12825
                                                    (let ((__tmp12826
                                                           (let ((__tmp12827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12828
                                 (let ((__tmp12830
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp12829
                                        (let ()
                                          (declare (not safe))
                                          (cons _L12079_ '()))))
                                   (declare (not safe))
                                   (cons __tmp12830 __tmp12829))))
                            (declare (not safe))
                            (cons __tmp12828 '()))))
                     (declare (not safe))
                     (cons _L12134_ __tmp12827))))
              (declare (not safe))
              (cons __tmp12826 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12831 __tmp12825))))
                                        (declare (not safe))
                                        (cons __tmp12836 __tmp12824)))
                                     (__tmp12822
                                      (let ()
                                        (declare (not safe))
                                        (cons _L12162_ '()))))
                                 (declare (not safe))
                                 (cons __tmp12823 __tmp12822))))
                          (declare (not safe))
                          (cons __tmp12841 __tmp12821)))
                       (__tmp12819
                        (let () (declare (not safe)) (cons _L12190_ '()))))
                   (declare (not safe))
                   (cons __tmp12820 __tmp12819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12842
                                                          __tmp12818))))
                                             (declare (not safe))
                                             (cons __tmp12845 __tmp12817)))))
                                     _g1217612187_))))
                            (_g1217412205_ _E11791_))))
                      _g1214812159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1214612209_
                                                      (_generate111246_
                                                       _L12053_
                                                       _L12106_
                                                       (_generate111246_
                                                        _L12051_
                                                        _L12134_
                                                        _K11790_
                                                        _E11791_
                                                        _kws11792_)
                                                       _E11791_
                                                       _kws11792_)))))
                                               _g1212012131_))))
                                      (_g1211812213_ (gx#genident '$tl)))))
                                _g1209212103_))))
                       (_g1209012217_ (gx#genident '$hd)))))
                 _g1206512076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1206312221_
                                                 (gx#genident '$tgt)))))
                                           (___kont1271112712_
                                            (lambda (_L11926_)
                                              (if (gx#underscore? _L11926_)
                                                  _K11790_
                                                  (if (let ((__tmp12874
                                                             (lambda (_g1193411936_)
                                                               (gx#bound-identifier=?
                                                                _g1193411936_
                                                                _L11926_)))
                                                            (__tmp12873
                                                             (gx#syntax->list
                                                              _kws11792_)))
                                                        (declare (not safe))
                                                        (find __tmp12874
                                                              __tmp12873))
                                                      (let* ((_g1194011955_
                                                              (lambda (_g1194111951_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1194111951_)))
                     (_g1193912000_
                      (lambda (_g1194111959_)
                        (if (gx#stx-pair? _g1194111959_)
                            (let ((_e1194611962_ (gx#syntax-e _g1194111959_)))
                              (let ((_hd1194511966_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1194611962_)))
                                    (_tl1194411969_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1194611962_))))
                                (if (gx#stx-pair? _tl1194411969_)
                                    (let ((_e1194911972_
                                           (gx#syntax-e _tl1194411969_)))
                                      (let ((_hd1194811976_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1194911972_)))
                                            (_tl1194711979_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1194911972_))))
                                        (if (gx#stx-null? _tl1194711979_)
                                            ((lambda (_L11982_ _L11984_)
                                               (let ()
                                                 (let ((__tmp12872
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp12852
                                                        (let ((__tmp12855
                                                               (let ((__tmp12871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp12856
                              (let ((__tmp12868
                                     (let ((__tmp12870
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp12869
                                            (let ()
                                              (declare (not safe))
                                              (cons _L11809_ '()))))
                                       (declare (not safe))
                                       (cons __tmp12870 __tmp12869)))
                                    (__tmp12857
                                     (let ((__tmp12858
                                            (let ((__tmp12867
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp12859
                                                   (let ((__tmp12864
                                                          (let ((__tmp12866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp12865
                         (let () (declare (not safe)) (cons _L11809_ '()))))
                    (declare (not safe))
                    (cons __tmp12866 __tmp12865)))
                 (__tmp12860
                  (let ((__tmp12861
                         (let ((__tmp12863 (gx#datum->syntax '#f 'quote))
                               (__tmp12862
                                (let ()
                                  (declare (not safe))
                                  (cons _L11926_ '()))))
                           (declare (not safe))
                           (cons __tmp12863 __tmp12862))))
                    (declare (not safe))
                    (cons __tmp12861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12864
                                                           __tmp12860))))
                                              (declare (not safe))
                                              (cons __tmp12867 __tmp12859))))
                                       (declare (not safe))
                                       (cons __tmp12858 '()))))
                                (declare (not safe))
                                (cons __tmp12868 __tmp12857))))
                         (declare (not safe))
                         (cons __tmp12871 __tmp12856)))
                      (__tmp12853
                       (let ((__tmp12854
                              (let ()
                                (declare (not safe))
                                (cons _L11982_ '()))))
                         (declare (not safe))
                         (cons _L11984_ __tmp12854))))
                  (declare (not safe))
                  (cons __tmp12855 __tmp12853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12872
                                                         __tmp12852))))
                                             _hd1194811976_
                                             _hd1194511966_)
                                            (_g1194011955_ _g1194111959_))))
                                    (_g1194011955_ _g1194111959_))))
                            (_g1194011955_ _g1194111959_)))))
                (_g1193912000_ (list _K11790_ _E11791_)))
              (let* ((_g1200412012_
                      (lambda (_g1200512008_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1200512008_)))
                     (_g1200312030_
                      (lambda (_g1200512016_)
                        ((lambda (_L12019_)
                           (let ()
                             (let ((__tmp12851 (gx#datum->syntax '#f 'let))
                                   (__tmp12846
                                    (let ((__tmp12848
                                           (let ((__tmp12849
                                                  (let ((__tmp12850
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L11809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11926_
                                                          __tmp12850))))
                                             (declare (not safe))
                                             (cons __tmp12849 '())))
                                          (__tmp12847
                                           (let ()
                                             (declare (not safe))
                                             (cons _L12019_ '()))))
                                      (declare (not safe))
                                      (cons __tmp12848 __tmp12847))))
                               (declare (not safe))
                               (cons __tmp12851 __tmp12846))))
                         _g1200512016_))))
                (_g1200312030_ _K11790_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1271312714_
                                            (lambda (_L11844_)
                                              (let* ((_g1185511870_
                                                      (lambda (_g1185611866_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1185611866_)))
                                                     (_g1185411915_
                                                      (lambda (_g1185611874_)
                                                        (if (gx#stx-pair?
                                                             _g1185611874_)
                                                            (let ((_e1186111877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1185611874_)))
                      (let ((_hd1186011881_
                             (let ()
                               (declare (not safe))
                               (##car _e1186111877_)))
                            (_tl1185911884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1186111877_))))
                        (if (gx#stx-pair? _tl1185911884_)
                            (let ((_e1186411887_ (gx#syntax-e _tl1185911884_)))
                              (let ((_hd1186311891_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1186411887_)))
                                    (_tl1186211894_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1186411887_))))
                                (if (gx#stx-null? _tl1186211894_)
                                    ((lambda (_L11897_ _L11899_)
                                       (let ()
                                         (let ((__tmp12888
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp12875
                                                (let ((__tmp12878
                                                       (let ((__tmp12887
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp12879
                                                              (let ((__tmp12884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp12886 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp12885
                                    (let ()
                                      (declare (not safe))
                                      (cons _L11809_ '()))))
                               (declare (not safe))
                               (cons __tmp12886 __tmp12885)))
                            (__tmp12880
                             (let ((__tmp12881
                                    (let ((__tmp12883
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp12882
                                           (let ()
                                             (declare (not safe))
                                             (cons _L11844_ '()))))
                                      (declare (not safe))
                                      (cons __tmp12883 __tmp12882))))
                               (declare (not safe))
                               (cons __tmp12881 '()))))
                        (declare (not safe))
                        (cons __tmp12884 __tmp12880))))
                 (declare (not safe))
                 (cons __tmp12887 __tmp12879)))
              (__tmp12876
               (let ((__tmp12877
                      (let () (declare (not safe)) (cons _L11897_ '()))))
                 (declare (not safe))
                 (cons _L11899_ __tmp12877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12878
                                                        __tmp12876))))
                                           (declare (not safe))
                                           (cons __tmp12888 __tmp12875))))
                                     _hd1186311891_
                                     _hd1186011881_)
                                    (_g1185511870_ _g1185611874_))))
                            (_g1185511870_ _g1185611874_))))
                    (_g1185511870_ _g1185611874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1185411915_
                                                 (list _K11790_ _E11791_))))))
                                       (let ((_g1182112034_
                                              (lambda ()
                                                (let ((_L11926_
                                                       ___stx1270612707_))
                                                  (if (gx#identifier? _L11926_)
                                                      (___kont1271112712_
                                                       _L11926_)
                                                      (___kont1271312714_
                                                       ___stx1270612707_))))))
                                         (if (gx#stx-pair? ___stx1270612707_)
                                             (let ((_e1182912041_
                                                    (gx#syntax-e
                                                     ___stx1270612707_)))
                                               (let ((_tl1182712048_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1182912041_)))
                                                     (_hd1182812045_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1182912041_))))
                                                 (___kont1270912710_
                                                  _tl1182712048_
                                                  _hd1182812045_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1182112034_))))))))
                               _g1179511806_))))
                      (_g1179312229_ _tgt11789_)))))
          (let* ((_g1124911277_
                  (lambda (_g1125011273_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1125011273_)))
                 (_g1124811783_
                  (lambda (_g1125011281_)
                    (if (gx#stx-pair? _g1125011281_)
                        (let ((_e1125611284_ (gx#syntax-e _g1125011281_)))
                          (let ((_hd1125511288_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1125611284_)))
                                (_tl1125411291_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1125611284_))))
                            (if (gx#stx-pair? _tl1125411291_)
                                (let ((_e1125911294_
                                       (gx#syntax-e _tl1125411291_)))
                                  (let ((_hd1125811298_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1125911294_)))
                                        (_tl1125711301_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1125911294_))))
                                    (if (gx#stx-pair? _tl1125711301_)
                                        (let ((_e1126211304_
                                               (gx#syntax-e _tl1125711301_)))
                                          (let ((_hd1126111308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1126211304_)))
                                                (_tl1126011311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1126211304_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1126011311_)
                                                (let ((_g12889_
                                                       (gx#syntax-split-splice
                                                        _tl1126011311_
                                                        '0)))
                                                  (begin
                                                    (let ((_g12890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g12889_)
                         (##vector-length _g12889_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g12890_ 2)))
                  (error "Context expects 2 values" _g12890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1126311314_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g12889_
                                                              0)))
                                                          (_tl1126511317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g12889_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1126511317_)
                                                          (letrec ((_loop1126611320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1126411324_ _clause1127011327_)
                              (if (gx#stx-pair? _hd1126411324_)
                                  (let ((_e1126711330_
                                         (gx#syntax-e _hd1126411324_)))
                                    (let ((_lp-hd1126811334_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1126711330_)))
                                          (_lp-tl1126911337_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1126711330_))))
                                      (_loop1126611320_
                                       _lp-tl1126911337_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1126811334_
                                               _clause1127011327_)))))
                                  (let ((_clause1127111340_
                                         (reverse _clause1127011327_)))
                                    ((lambda (_L11344_ _L11346_ _L11347_)
                                       (let _recur11369_ ((_rest11372_
                                                           (let ((__tmp12912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1177411777_ _g1177511780_)
                            (let ()
                              (declare (not safe))
                              (cons _g1177411777_ _g1177511780_)))))
                     (declare (not safe))
                     (foldr1 __tmp12912 '() _L11344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1137411383_ _rest11372_)
                                                (_E1137711389_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1137411383_))))
                                           (let ((_K1137911759_
                                                  (lambda (_rest11405_
                                                           _hd11407_)
                                                    (let* ((_g1140911417_
                                                            (lambda (_g1141011413_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1141011413_)))
                                                           (_g1140811755_
                                                            (lambda (_g1141011421_)
                                                              ((lambda (_L11424_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1144211450_
                                   (lambda (_g1144311446_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1144311446_)))
                                  (_g1144111751_
                                   (lambda (_g1144311454_)
                                     ((lambda (_L11457_)
                                        (let ()
                                          (let* ((_g1147011478_
                                                  (lambda (_g1147111474_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1147111474_)))
                                                 (_g1146911747_
                                                  (lambda (_g1147111482_)
                                                    ((lambda (_L11485_)
                                                       (let ()
                                                         (let* ((_g1149811506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1149911502_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1149911502_)))
                        (_g1149711528_
                         (lambda (_g1149911510_)
                           ((lambda (_L11513_)
                              (let ()
                                (let ()
                                  (let ((__tmp12899
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp12891
                                         (let ((__tmp12893
                                                (let ((__tmp12894
                                                       (let ((__tmp12895
                                                              (let ((__tmp12898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp12896
                             (let ((__tmp12897
                                    (let ()
                                      (declare (not safe))
                                      (cons _L11485_ '()))))
                               (declare (not safe))
                               (cons '() __tmp12897))))
                        (declare (not safe))
                        (cons __tmp12898 __tmp12896))))
                 (declare (not safe))
                 (cons __tmp12895 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L11424_ __tmp12894)))
                                               (__tmp12892
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L11513_ '()))))
                                           (declare (not safe))
                                           (cons __tmp12893 __tmp12892))))
                                    (declare (not safe))
                                    (cons __tmp12899 __tmp12891)))))
                            _g1149911510_))))
                   (_g1149711528_
                    (let* ((___stx1272412725_ _hd11407_)
                           (_g1153411574_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx1272412725_))))
                      (let ((___kont1272712728_
                             (lambda (_L11720_)
                               (let ((__tmp12902 (gx#datum->syntax '#f 'begin))
                                     (__tmp12900
                                      (let ((__tmp12901
                                             (lambda (_g1173411737_
                                                      _g1173511740_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1173411737_
                                                       _g1173511740_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp12901 '() _L11720_))))
                                 (declare (not safe))
                                 (cons __tmp12902 __tmp12900))))
                            (___kont1273112732_
                             (lambda (_L11658_ _L11660_)
                               (_generate111246_
                                _L11660_
                                _L11347_
                                _L11658_
                                _L11457_
                                _L11346_)))
                            (___kont1273312734_
                             (lambda (_L11611_ _L11613_ _L11614_)
                               (_generate111246_
                                _L11614_
                                _L11347_
                                (let ((__tmp12906 (gx#datum->syntax '#f 'if))
                                      (__tmp12903
                                       (let ((__tmp12904
                                              (let ((__tmp12905
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L11457_ '()))))
                                                (declare (not safe))
                                                (cons _L11611_ __tmp12905))))
                                         (declare (not safe))
                                         (cons _L11613_ __tmp12904))))
                                  (declare (not safe))
                                  (cons __tmp12906 __tmp12903))
                                _L11457_
                                _L11346_))))
                        (let ((___match1275312754_
                               (lambda (_e1153911680_
                                        _hd1153811684_
                                        _tl1153711687_
                                        ___splice1272912730_
                                        _target1154011690_
                                        _tl1154211693_)
                                 (letrec ((_loop1154311696_
                                           (lambda (_hd1154111700_
                                                    _expr1154711703_)
                                             (if (gx#stx-pair? _hd1154111700_)
                                                 (let ((_e1154411706_
                                                        (gx#syntax-e
                                                         _hd1154111700_)))
                                                   (let ((_lp-tl1154611713_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1154411706_)))
                                                         (_lp-hd1154511710_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1154411706_))))
                                                     (_loop1154311696_
                                                      _lp-tl1154611713_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1154511710_
                                                              _expr1154711703_)))))
                                                 (let ((_expr1154811716_
                                                        (reverse _expr1154711703_)))
                                                   (___kont1272712728_
                                                    _expr1154811716_))))))
                                   (_loop1154311696_
                                    _target1154011690_
                                    '())))))
                          (if (gx#stx-pair? ___stx1272412725_)
                              (let ((_e1153911680_
                                     (gx#syntax-e ___stx1272412725_)))
                                (let ((_tl1153711687_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1153911680_)))
                                      (_hd1153811684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1153911680_))))
                                  (if (gx#identifier? _hd1153811684_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g12907_|
                                           _hd1153811684_)
                                          (if (gx#stx-pair/null?
                                               _tl1153711687_)
                                              (let ((___splice1272912730_
                                                     (gx#syntax-split-splice
                                                      _tl1153711687_
                                                      '0)))
                                                (let ((_tl1154211693_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1272912730_
                                                          '1)))
                                                      (_target1154011690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1272912730_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1154211693_)
                                                      (___match1275312754_
                                                       _e1153911680_
                                                       _hd1153811684_
                                                       _tl1153711687_
                                                       ___splice1272912730_
                                                       _target1154011690_
                                                       _tl1154211693_)
                                                      (if (gx#stx-pair?
                                                           _tl1153711687_)
                                                          (let ((_e1155611648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1153711687_)))
                    (let ((_tl1155411655_
                           (let () (declare (not safe)) (##cdr _e1155611648_)))
                          (_hd1155511652_
                           (let ()
                             (declare (not safe))
                             (##car _e1155611648_))))
                      (if (gx#stx-null? _tl1155411655_)
                          (___kont1273112732_ _hd1155511652_ _hd1153811684_)
                          (if (gx#stx-pair? _tl1155411655_)
                              (let ((_e1156811601_
                                     (gx#syntax-e _tl1155411655_)))
                                (let ((_tl1156611608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1156811601_)))
                                      (_hd1156711605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1156811601_))))
                                  (if (gx#stx-null? _tl1156611608_)
                                      (___kont1273312734_
                                       _hd1156711605_
                                       _hd1155511652_
                                       _hd1153811684_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1153411574_)))))
                              (let () (declare (not safe)) (_g1153411574_))))))
                  (let () (declare (not safe)) (_g1153411574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1153711687_)
                                                  (let ((_e1155611648_
                                                         (gx#syntax-e
                                                          _tl1153711687_)))
                                                    (let ((_tl1155411655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1155611648_)))
                                                          (_hd1155511652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1155611648_))))
                                                      (if (gx#stx-null?
                                                           _tl1155411655_)
                                                          (___kont1273112732_
                                                           _hd1155511652_
                                                           _hd1153811684_)
                                                          (if (gx#stx-pair?
                                                               _tl1155411655_)
                                                              (let ((_e1156811601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1155411655_)))
                        (let ((_tl1156611608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1156811601_)))
                              (_hd1156711605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1156811601_))))
                          (if (gx#stx-null? _tl1156611608_)
                              (___kont1273312734_
                               _hd1156711605_
                               _hd1155511652_
                               _hd1153811684_)
                              (let () (declare (not safe)) (_g1153411574_)))))
                      (let () (declare (not safe)) (_g1153411574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1153411574_))))
                                          (if (gx#stx-pair? _tl1153711687_)
                                              (let ((_e1155611648_
                                                     (gx#syntax-e
                                                      _tl1153711687_)))
                                                (let ((_tl1155411655_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1155611648_)))
                                                      (_hd1155511652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1155611648_))))
                                                  (if (gx#stx-null?
                                                       _tl1155411655_)
                                                      (___kont1273112732_
                                                       _hd1155511652_
                                                       _hd1153811684_)
                                                      (if (gx#stx-pair?
                                                           _tl1155411655_)
                                                          (let ((_e1156811601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1155411655_)))
                    (let ((_tl1156611608_
                           (let () (declare (not safe)) (##cdr _e1156811601_)))
                          (_hd1156711605_
                           (let ()
                             (declare (not safe))
                             (##car _e1156811601_))))
                      (if (gx#stx-null? _tl1156611608_)
                          (___kont1273312734_
                           _hd1156711605_
                           _hd1155511652_
                           _hd1153811684_)
                          (let () (declare (not safe)) (_g1153411574_)))))
                  (let () (declare (not safe)) (_g1153411574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1153411574_))))
                                      (if (gx#stx-pair? _tl1153711687_)
                                          (let ((_e1155611648_
                                                 (gx#syntax-e _tl1153711687_)))
                                            (let ((_tl1155411655_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1155611648_)))
                                                  (_hd1155511652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1155611648_))))
                                              (if (gx#stx-null? _tl1155411655_)
                                                  (___kont1273112732_
                                                   _hd1155511652_
                                                   _hd1153811684_)
                                                  (if (gx#stx-pair?
                                                       _tl1155411655_)
                                                      (let ((_e1156811601_
                                                             (gx#syntax-e
                                                              _tl1155411655_)))
                                                        (let ((_tl1156611608_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1156811601_)))
                      (_hd1156711605_
                       (let () (declare (not safe)) (##car _e1156811601_))))
                  (if (gx#stx-null? _tl1156611608_)
                      (___kont1273312734_
                       _hd1156711605_
                       _hd1155511652_
                       _hd1153811684_)
                      (let () (declare (not safe)) (_g1153411574_)))))
              (let () (declare (not safe)) (_g1153411574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1153411574_))))))
                              (let ()
                                (declare (not safe))
                                (_g1153411574_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1147111482_))))
                                            (_g1146911747_
                                             (_recur11369_ _rest11405_)))))
                                      _g1144311454_))))
                             (_g1144111751_
                              (let ()
                                (declare (not safe))
                                (cons _L11424_ '()))))))
                       _g1141011421_))))
              (_g1140811755_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1137811397_
                                                  (lambda ()
                                                    (let ((__tmp12911
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp12908
                                                           (let ((__tmp12909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12910
                                 (let ()
                                   (declare (not safe))
                                   (cons _L11347_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax; malformed ast clause"
                                  __tmp12910))))
                     (declare (not safe))
                     (cons '#f __tmp12909))))
              (declare (not safe))
              (cons __tmp12911 __tmp12908)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1137611401_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1137411383_))
                                                          (_K1137811397_)
                                                          (_E1137711389_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1137411383_))
                                                   (let ((_tl1138111766_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1137411383_)))
                                                         (_hd1138011763_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1137411383_))))
                                                     (let ((_hd11769_
                                                            _hd1138011763_)
                                                           (_rest11772_
                                                            _tl1138111766_))
                                                       (_K1137911759_
                                                        _rest11772_
                                                        _hd11769_)))
                                                   (_try-match1137611401_)))))))
                                     _clause1127111340_
                                     _hd1126111308_
                                     _hd1125811298_))))))
                    (_loop1126611320_ _target1126311314_ '()))
                  (_g1124911277_ _g1125011281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1124911277_
                                                 _g1125011281_))))
                                        (_g1124911277_ _g1125011281_))))
                                (_g1124911277_ _g1125011281_))))
                        (_g1124911277_ _g1125011281_)))))
            (_g1124811783_ _stx11243_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12913_|
       'expander-identifiers:
       (let ((__tmp12960
              (let ((__tmp12961 |[1]#_g12962_|))
                (declare (not safe))
                (cons __tmp12961 '())))
             (__tmp12914
              (let ((__tmp12959 |[1]#_g12913_|)
                    (__tmp12915
                     (let ((__tmp12957 |[1]#_g12958_|)
                           (__tmp12916
                            (let ((__tmp12955 |[1]#_g12956_|)
                                  (__tmp12917
                                   (let ((__tmp12937
                                          (let ((__tmp12953 |[1]#_g12954_|)
                                                (__tmp12938
                                                 (let ((__tmp12951
                                                        |[1]#_g12952_|)
                                                       (__tmp12939
                                                        (let ((__tmp12949
                                                               |[1]#_g12950_|)
                                                              (__tmp12940
                                                               (let ((__tmp12947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12948_|)
                             (__tmp12941
                              (let ((__tmp12945 |[1]#_g12946_|)
                                    (__tmp12942
                                     (let ((__tmp12943 |[1]#_g12944_|))
                                       (declare (not safe))
                                       (cons __tmp12943 '()))))
                                (declare (not safe))
                                (cons __tmp12945 __tmp12942))))
                         (declare (not safe))
                         (cons __tmp12947 __tmp12941))))
                  (declare (not safe))
                  (cons __tmp12949 __tmp12940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12951
                                                         __tmp12939))))
                                            (declare (not safe))
                                            (cons __tmp12953 __tmp12938)))
                                         (__tmp12918
                                          (let ((__tmp12919
                                                 (let ((__tmp12935
                                                        |[1]#_g12936_|)
                                                       (__tmp12920
                                                        (let ((__tmp12933
                                                               |[1]#_g12934_|)
                                                              (__tmp12921
                                                               (let ((__tmp12931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12932_|)
                             (__tmp12922
                              (let ((__tmp12929 |[1]#_g12930_|)
                                    (__tmp12923
                                     (let ((__tmp12927 |[1]#_g12928_|)
                                           (__tmp12924
                                            (let ((__tmp12925 |[1]#_g12926_|))
                                              (declare (not safe))
                                              (cons __tmp12925 '()))))
                                       (declare (not safe))
                                       (cons __tmp12927 __tmp12924))))
                                (declare (not safe))
                                (cons __tmp12929 __tmp12923))))
                         (declare (not safe))
                         (cons __tmp12931 __tmp12922))))
                  (declare (not safe))
                  (cons __tmp12933 __tmp12921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12935
                                                         __tmp12920))))
                                            (declare (not safe))
                                            (cons __tmp12919 '()))))
                                     (declare (not safe))
                                     (cons __tmp12937 __tmp12918))))
                              (declare (not safe))
                              (cons __tmp12955 __tmp12917))))
                       (declare (not safe))
                       (cons __tmp12957 __tmp12916))))
                (declare (not safe))
                (cons __tmp12959 __tmp12915))))
         (declare (not safe))
         (cons __tmp12960 __tmp12914))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12963_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g12964_|
       'expander-identifiers:
       (let ((__tmp12965
              (let ((__tmp12986 |[1]#_g12964_|)
                    (__tmp12966
                     (let ((__tmp12984 |[1]#_g12985_|)
                           (__tmp12967
                            (let ((__tmp12982 |[1]#_g12983_|)
                                  (__tmp12968
                                   (let ((__tmp12976
                                          (let ((__tmp12980 |[1]#_g12981_|)
                                                (__tmp12977
                                                 (let ((__tmp12978
                                                        |[1]#_g12979_|))
                                                   (declare (not safe))
                                                   (cons __tmp12978 '()))))
                                            (declare (not safe))
                                            (cons __tmp12980 __tmp12977)))
                                         (__tmp12969
                                          (let ((__tmp12970
                                                 (let ((__tmp12974
                                                        |[1]#_g12975_|)
                                                       (__tmp12971
                                                        (let ((__tmp12972
                                                               |[1]#_g12973_|))
                                                          (declare (not safe))
                                                          (cons __tmp12972
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12974
                                                         __tmp12971))))
                                            (declare (not safe))
                                            (cons __tmp12970 '()))))
                                     (declare (not safe))
                                     (cons __tmp12976 __tmp12969))))
                              (declare (not safe))
                              (cons __tmp12982 __tmp12968))))
                       (declare (not safe))
                       (cons __tmp12984 __tmp12967))))
                (declare (not safe))
                (cons __tmp12986 __tmp12966))))
         (declare (not safe))
         (cons '#f __tmp12965))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
