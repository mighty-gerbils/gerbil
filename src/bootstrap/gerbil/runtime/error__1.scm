(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12778_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12785_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12787_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12789_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12797_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12800_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12802_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12804_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12806_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12816_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12818_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12820_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12825_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12827_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12829_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12831_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12833_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12839_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12840_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12841_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12849_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12852_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12854_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12856_|
    (##structure
     gx#syntax-quote::t
     'make-RuntimeException
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#Exception|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12778_|
       'expander-identifiers:
       (let ((__tmp12779
              (let ((__tmp12788 |[1]#_g12778_|)
                    (__tmp12780
                     (let ((__tmp12786 |[1]#_g12787_|)
                           (__tmp12781
                            (let ((__tmp12784 |[1]#_g12785_|)
                                  (__tmp12782
                                   (let ((__tmp12783
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12783))))
                              (declare (not safe))
                              (cons __tmp12784 __tmp12782))))
                       (declare (not safe))
                       (cons __tmp12786 __tmp12781))))
                (declare (not safe))
                (cons __tmp12788 __tmp12780))))
         (declare (not safe))
         (cons '() __tmp12779))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'Exception
        '#f
        '()
        '())))
    (define |[:0:]#StackTrace|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12789_|
       'expander-identifiers:
       (let ((__tmp12790
              (let ((__tmp12805 |[1]#_g12789_|)
                    (__tmp12791
                     (let ((__tmp12803 |[1]#_g12804_|)
                           (__tmp12792
                            (let ((__tmp12801 |[1]#_g12802_|)
                                  (__tmp12793
                                   (let ((__tmp12798
                                          (let ((__tmp12799 |[1]#_g12800_|))
                                            (declare (not safe))
                                            (cons __tmp12799 '())))
                                         (__tmp12794
                                          (let ((__tmp12795
                                                 (let ((__tmp12796
                                                        |[1]#_g12797_|))
                                                   (declare (not safe))
                                                   (cons __tmp12796 '()))))
                                            (declare (not safe))
                                            (cons __tmp12795 '()))))
                                     (declare (not safe))
                                     (cons __tmp12798 __tmp12794))))
                              (declare (not safe))
                              (cons __tmp12801 __tmp12793))))
                       (declare (not safe))
                       (cons __tmp12803 __tmp12792))))
                (declare (not safe))
                (cons __tmp12805 __tmp12791))))
         (declare (not safe))
         (cons '() __tmp12790))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'StackTrace
        '#f
        '()
        '(continuation))))
    (define |[:0:]#Error|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12806_|
       'expander-identifiers:
       (let ((__tmp12835
              (let ((__tmp12838 |[1]#_g12789_|)
                    (__tmp12836
                     (let ((__tmp12837 |[1]#_g12778_|))
                       (declare (not safe))
                       (cons __tmp12837 '()))))
                (declare (not safe))
                (cons __tmp12838 __tmp12836)))
             (__tmp12807
              (let ((__tmp12834 |[1]#_g12806_|)
                    (__tmp12808
                     (let ((__tmp12832 |[1]#_g12833_|)
                           (__tmp12809
                            (let ((__tmp12830 |[1]#_g12831_|)
                                  (__tmp12810
                                   (let ((__tmp12821
                                          (let ((__tmp12828 |[1]#_g12829_|)
                                                (__tmp12822
                                                 (let ((__tmp12826
                                                        |[1]#_g12827_|)
                                                       (__tmp12823
                                                        (let ((__tmp12824
                                                               |[1]#_g12825_|))
                                                          (declare (not safe))
                                                          (cons __tmp12824
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12826
                                                         __tmp12823))))
                                            (declare (not safe))
                                            (cons __tmp12828 __tmp12822)))
                                         (__tmp12811
                                          (let ((__tmp12812
                                                 (let ((__tmp12819
                                                        |[1]#_g12820_|)
                                                       (__tmp12813
                                                        (let ((__tmp12817
                                                               |[1]#_g12818_|)
                                                              (__tmp12814
                                                               (let ((__tmp12815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12816_|))
                         (declare (not safe))
                         (cons __tmp12815 '()))))
                  (declare (not safe))
                  (cons __tmp12817 __tmp12814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12819
                                                         __tmp12813))))
                                            (declare (not safe))
                                            (cons __tmp12812 '()))))
                                     (declare (not safe))
                                     (cons __tmp12821 __tmp12811))))
                              (declare (not safe))
                              (cons __tmp12830 __tmp12810))))
                       (declare (not safe))
                       (cons __tmp12832 __tmp12809))))
                (declare (not safe))
                (cons __tmp12834 __tmp12808))))
         (declare (not safe))
         (cons __tmp12835 __tmp12807))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12839_| |[1]#_g12840_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12841_|
       'expander-identifiers:
       (let ((__tmp12858
              (let ((__tmp12861 |[1]#_g12789_|)
                    (__tmp12859
                     (let ((__tmp12860 |[1]#_g12778_|))
                       (declare (not safe))
                       (cons __tmp12860 '()))))
                (declare (not safe))
                (cons __tmp12861 __tmp12859)))
             (__tmp12842
              (let ((__tmp12857 |[1]#_g12841_|)
                    (__tmp12843
                     (let ((__tmp12855 |[1]#_g12856_|)
                           (__tmp12844
                            (let ((__tmp12853 |[1]#_g12854_|)
                                  (__tmp12845
                                   (let ((__tmp12850
                                          (let ((__tmp12851 |[1]#_g12852_|))
                                            (declare (not safe))
                                            (cons __tmp12851 '())))
                                         (__tmp12846
                                          (let ((__tmp12847
                                                 (let ((__tmp12848
                                                        |[1]#_g12849_|))
                                                   (declare (not safe))
                                                   (cons __tmp12848 '()))))
                                            (declare (not safe))
                                            (cons __tmp12847 '()))))
                                     (declare (not safe))
                                     (cons __tmp12850 __tmp12846))))
                              (declare (not safe))
                              (cons __tmp12853 __tmp12845))))
                       (declare (not safe))
                       (cons __tmp12855 __tmp12844))))
                (declare (not safe))
                (cons __tmp12857 __tmp12843))))
         (declare (not safe))
         (cons __tmp12858 __tmp12842))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12839_| |[1]#_g12840_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10914_)
        (let* ((_g1091810936_
                (lambda (_g1091910932_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1091910932_)))
               (_g1091710992_
                (lambda (_g1091910940_)
                  (if (gx#stx-pair? _g1091910940_)
                      (let ((_e1092410943_ (gx#syntax-e _g1091910940_)))
                        (let ((_hd1092310947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1092410943_)))
                              (_tl1092210950_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1092410943_))))
                          (if (gx#stx-pair? _tl1092210950_)
                              (let ((_e1092710953_
                                     (gx#syntax-e _tl1092210950_)))
                                (let ((_hd1092610957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1092710953_)))
                                      (_tl1092510960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1092710953_))))
                                  (if (gx#stx-pair? _tl1092510960_)
                                      (let ((_e1093010963_
                                             (gx#syntax-e _tl1092510960_)))
                                        (let ((_hd1092910967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1093010963_)))
                                              (_tl1092810970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1093010963_))))
                                          (if (gx#stx-null? _tl1092810970_)
                                              ((lambda (_L10973_ _L10975_)
                                                 (let ((__tmp12883
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12862
                                                        (let ((__tmp12880
                                                               (let ((__tmp12882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12881
                              (let ()
                                (declare (not safe))
                                (cons _L10975_ '()))))
                         (declare (not safe))
                         (cons __tmp12882 __tmp12881)))
                      (__tmp12863
                       (let ((__tmp12864
                              (let ((__tmp12879 (gx#datum->syntax '#f 'raise))
                                    (__tmp12865
                                     (let ((__tmp12866
                                            (let ((__tmp12878
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12867
                                                   (let ((__tmp12868
                                                          (let ((__tmp12869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12875
                                (let ((__tmp12877
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12876
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10973_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12877 __tmp12876)))
                               (__tmp12870
                                (let ((__tmp12871
                                       (let ((__tmp12872
                                              (let ((__tmp12874
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12873
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10975_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12874 __tmp12873))))
                                         (declare (not safe))
                                         (cons __tmp12872 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12871))))
                           (declare (not safe))
                           (cons __tmp12875 __tmp12870))))
                    (declare (not safe))
                    (cons 'where: __tmp12869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12868))))
                                              (declare (not safe))
                                              (cons __tmp12878 __tmp12867))))
                                       (declare (not safe))
                                       (cons __tmp12866 '()))))
                                (declare (not safe))
                                (cons __tmp12879 __tmp12865))))
                         (declare (not safe))
                         (cons __tmp12864 '()))))
                  (declare (not safe))
                  (cons __tmp12880 __tmp12863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12883
                                                         __tmp12862)))
                                               _hd1092910967_
                                               _hd1092610957_)
                                              (_g1091810936_ _g1091910940_))))
                                      (_g1091810936_ _g1091910940_))))
                              (_g1091810936_ _g1091910940_))))
                      (_g1091810936_ _g1091910940_)))))
          (_g1091710992_ _$stx10914_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10996_)
        (let* ((_g1099911026_
                (lambda (_g1100011022_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1100011022_)))
               (_g1099811261_
                (lambda (_g1100011030_)
                  (if (gx#stx-pair? _g1100011030_)
                      (let ((_e1100511033_ (gx#syntax-e _g1100011030_)))
                        (let ((_hd1100411037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1100511033_)))
                              (_tl1100311040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1100511033_))))
                          (if (gx#stx-pair? _tl1100311040_)
                              (let ((_e1100811043_
                                     (gx#syntax-e _tl1100311040_)))
                                (let ((_hd1100711047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1100811043_)))
                                      (_tl1100611050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1100811043_))))
                                  (if (gx#stx-pair? _hd1100711047_)
                                      (let ((_e1101111053_
                                             (gx#syntax-e _hd1100711047_)))
                                        (let ((_hd1101011057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1101111053_)))
                                              (_tl1100911060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1101111053_))))
                                          (if (gx#stx-pair/null?
                                               _tl1100911060_)
                                              (let ((_g12884_
                                                     (gx#syntax-split-splice
                                                      _tl1100911060_
                                                      '0)))
                                                (begin
                                                  (let ((_g12885_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12884_)
                                                               (##vector-length
                                                                _g12884_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12885_ 2)))
                (error "Context expects 2 values" _g12885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1101211063_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12884_
                                                            0)))
                                                        (_tl1101411066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12884_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1101411066_)
                                                        (letrec ((_loop1101511069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1101311073_ _getf1101911076_)
                            (if (gx#stx-pair? _hd1101311073_)
                                (let ((_e1101611079_
                                       (gx#syntax-e _hd1101311073_)))
                                  (let ((_lp-hd1101711083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1101611079_)))
                                        (_lp-tl1101811086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1101611079_))))
                                    (_loop1101511069_
                                     _lp-tl1101811086_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1101711083_
                                             _getf1101911076_)))))
                                (let ((_getf1102011089_
                                       (reverse _getf1101911076_)))
                                  (if (gx#stx-null? _tl1100611050_)
                                      ((lambda (_L11093_ _L11095_)
                                         (let* ((_g1111511139_
                                                 (lambda (_g1111611135_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1111611135_)))
                                                (_g1111411246_
                                                 (lambda (_g1111611143_)
                                                   (if (gx#stx-pair?
                                                        _g1111611143_)
                                                       (let ((_e1112111146_
                                                              (gx#syntax-e
                                                               _g1111611143_)))
                                                         (let ((_hd1112011150_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1112111146_)))
                       (_tl1111911153_
                        (let () (declare (not safe)) (##cdr _e1112111146_))))
                   (if (gx#stx-pair? _tl1111911153_)
                       (let ((_e1112411156_ (gx#syntax-e _tl1111911153_)))
                         (let ((_hd1112311160_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1112411156_)))
                               (_tl1112211163_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1112411156_))))
                           (if (gx#stx-pair/null? _hd1112311160_)
                               (let ((_g12886_
                                      (gx#syntax-split-splice
                                       _hd1112311160_
                                       '0)))
                                 (begin
                                   (let ((_g12887_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12886_)
                                                (##vector-length _g12886_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12887_ 2)))
                                         (error "Context expects 2 values"
                                                _g12887_)))
                                   (let ((_target1112511166_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12886_ 0)))
                                         (_tl1112711169_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12886_ 1))))
                                     (if (gx#stx-null? _tl1112711169_)
                                         (letrec ((_loop1112811172_
                                                   (lambda (_hd1112611176_
                                                            _macro-getf1113211179_)
                                                     (if (gx#stx-pair?
                                                          _hd1112611176_)
                                                         (let ((_e1112911182_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1112611176_)))
                   (let ((_lp-hd1113011186_
                          (let () (declare (not safe)) (##car _e1112911182_)))
                         (_lp-tl1113111189_
                          (let () (declare (not safe)) (##cdr _e1112911182_))))
                     (_loop1112811172_
                      _lp-tl1113111189_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1113011186_ _macro-getf1113211179_)))))
                 (let ((_macro-getf1113311192_
                        (reverse _macro-getf1113211179_)))
                   (if (gx#stx-null? _tl1112211163_)
                       ((lambda (_L11196_ _L11198_)
                          (let ()
                            (let ((__tmp13011 (gx#datum->syntax '#f 'begin))
                                  (__tmp12888
                                   (let ((__tmp13006
                                          (let ((__tmp13010
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp13007
                                                 (let ((__tmp13008
                                                        (let ((__tmp13009
                                                               (lambda (_g1122311226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1122411229_)
                         (let ()
                           (declare (not safe))
                           (cons _g1122311226_ _g1122411229_)))))
                  (declare (not safe))
                  (foldr1 __tmp13009 '() _L11196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11198_
                                                         __tmp13008))))
                                            (declare (not safe))
                                            (cons __tmp13010 __tmp13007)))
                                         (__tmp12889
                                          (let ((__tmp12973
                                                 (let ((__tmp13005
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12974
                                                        (let ((__tmp13002
                                                               (let ((__tmp13003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp13004 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp13004 '()))))
                         (declare (not safe))
                         (cons _L11095_ __tmp13003)))
                      (__tmp12975
                       (let ((__tmp12976
                              (let ((__tmp13001 (gx#datum->syntax '#f 'if))
                                    (__tmp12977
                                     (let ((__tmp12997
                                            (let ((__tmp13000
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12998
                                                   (let ((__tmp12999
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12999 '()))))
                                              (declare (not safe))
                                              (cons __tmp13000 __tmp12998)))
                                           (__tmp12978
                                            (let ((__tmp12983
                                                   (let ((__tmp12996
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12984
                                                          (let ((__tmp12989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12995 (gx#datum->syntax '#f 'e))
                               (__tmp12990
                                (let ((__tmp12991
                                       (let ((__tmp12994
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12992
                                              (let ((__tmp12993
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12993 '()))))
                                         (declare (not safe))
                                         (cons __tmp12994 __tmp12992))))
                                  (declare (not safe))
                                  (cons __tmp12991 '()))))
                           (declare (not safe))
                           (cons __tmp12995 __tmp12990)))
                        (__tmp12985
                         (let ((__tmp12986
                                (let ((__tmp12987
                                       (let ((__tmp12988
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12988 '()))))
                                  (declare (not safe))
                                  (cons _L11198_ __tmp12987))))
                           (declare (not safe))
                           (cons __tmp12986 '()))))
                    (declare (not safe))
                    (cons __tmp12989 __tmp12985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12996
                                                           __tmp12984)))
                                                  (__tmp12979
                                                   (let ((__tmp12980
                                                          (let ((__tmp12981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12982 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12982 '()))))
                    (declare (not safe))
                    (cons _L11198_ __tmp12981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12980 '()))))
                                              (declare (not safe))
                                              (cons __tmp12983 __tmp12979))))
                                       (declare (not safe))
                                       (cons __tmp12997 __tmp12978))))
                                (declare (not safe))
                                (cons __tmp13001 __tmp12977))))
                         (declare (not safe))
                         (cons __tmp12976 '()))))
                  (declare (not safe))
                  (cons __tmp13002 __tmp12975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp13005
                                                         __tmp12974)))
                                                (__tmp12890
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L11093_
                                                    _L11196_
                                                    _L11093_
                                                    _L11196_
                                                    _L11093_)
                                                   (let ((__tmp12891
                                                          (lambda (_g1121711232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1121811235_
                           _g1121911237_
                           _g1122011239_
                           _g1122111241_
                           _g1122211243_)
                    (let ((__tmp12892
                           (let ((__tmp12972 (gx#datum->syntax '#f 'def))
                                 (__tmp12893
                                  (let ((__tmp12969
                                         (let ((__tmp12970
                                                (let ((__tmp12971
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12971 '()))))
                                           (declare (not safe))
                                           (cons _g1121711232_ __tmp12970)))
                                        (__tmp12894
                                         (let ((__tmp12895
                                                (let ((__tmp12968
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12896
                                                       (let ((__tmp12964
                                                              (let ((__tmp12967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12965
                             (let ((__tmp12966 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12966 '()))))
                        (declare (not safe))
                        (cons __tmp12967 __tmp12965)))
                     (__tmp12897
                      (let ((__tmp12926
                             (let ((__tmp12963 (gx#datum->syntax '#f 'let))
                                   (__tmp12927
                                    (let ((__tmp12956
                                           (let ((__tmp12962
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12957
                                                  (let ((__tmp12958
                                                         (let ((__tmp12961
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12959
                        (let ((__tmp12960 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12960 '()))))
                   (declare (not safe))
                   (cons __tmp12961 __tmp12959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12958 '()))))
                                             (declare (not safe))
                                             (cons __tmp12962 __tmp12957)))
                                          (__tmp12928
                                           (let ((__tmp12929
                                                  (let ((__tmp12955
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12930
                                                         (let ((__tmp12952
                                                                (let ((__tmp12953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12954 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12954 '()))))
                          (declare (not safe))
                          (cons _L11198_ __tmp12953)))
                       (__tmp12931
                        (let ((__tmp12949
                               (let ((__tmp12950
                                      (let ((__tmp12951
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12951 '()))))
                                 (declare (not safe))
                                 (cons _g1121811235_ __tmp12950)))
                              (__tmp12932
                               (let ((__tmp12933
                                      (let ((__tmp12948
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12934
                                             (let ((__tmp12935
                                                    (let ((__tmp12945
                                                           (let ((__tmp12947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12946
                          (let () (declare (not safe)) (cons _L11095_ '()))))
                     (declare (not safe))
                     (cons __tmp12947 __tmp12946)))
                  (__tmp12936
                   (let ((__tmp12937
                          (let ((__tmp12944 (gx#datum->syntax '#f '@list))
                                (__tmp12938
                                 (let ((__tmp12941
                                        (let ((__tmp12943
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12942
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1121711232_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12943 __tmp12942)))
                                       (__tmp12939
                                        (let ((__tmp12940
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12940 '()))))
                                   (declare (not safe))
                                   (cons __tmp12941 __tmp12939))))
                            (declare (not safe))
                            (cons __tmp12944 __tmp12938))))
                     (declare (not safe))
                     (cons __tmp12937 '()))))
              (declare (not safe))
              (cons __tmp12945 __tmp12936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12935))))
                                        (declare (not safe))
                                        (cons __tmp12948 __tmp12934))))
                                 (declare (not safe))
                                 (cons __tmp12933 '()))))
                          (declare (not safe))
                          (cons __tmp12949 __tmp12932))))
                   (declare (not safe))
                   (cons __tmp12952 __tmp12931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12955
                                                          __tmp12930))))
                                             (declare (not safe))
                                             (cons __tmp12929 '()))))
                                      (declare (not safe))
                                      (cons __tmp12956 __tmp12928))))
                               (declare (not safe))
                               (cons __tmp12963 __tmp12927)))
                            (__tmp12898
                             (let ((__tmp12899
                                    (let ((__tmp12925
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12900
                                           (let ((__tmp12922
                                                  (let ((__tmp12923
                                                         (let ((__tmp12924
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12924 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11198_
                                                          __tmp12923)))
                                                 (__tmp12901
                                                  (let ((__tmp12919
                                                         (let ((__tmp12920
                                                                (let ((__tmp12921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12921 '()))))
                   (declare (not safe))
                   (cons _g1121811235_ __tmp12920)))
                (__tmp12902
                 (let ((__tmp12903
                        (let ((__tmp12918 (gx#datum->syntax '#f 'error))
                              (__tmp12904
                               (let ((__tmp12905
                                      (let ((__tmp12915
                                             (let ((__tmp12917
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12916
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11095_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12917 __tmp12916)))
                                            (__tmp12906
                                             (let ((__tmp12907
                                                    (let ((__tmp12914
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12908
                                                           (let ((__tmp12911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12913 (gx#datum->syntax '#f 'quote))
                                (__tmp12912
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1121711232_ '()))))
                            (declare (not safe))
                            (cons __tmp12913 __tmp12912)))
                         (__tmp12909
                          (let ((__tmp12910 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12910 '()))))
                     (declare (not safe))
                     (cons __tmp12911 __tmp12909))))
              (declare (not safe))
              (cons __tmp12914 __tmp12908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12907 '()))))
                                        (declare (not safe))
                                        (cons __tmp12915 __tmp12906))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12905))))
                          (declare (not safe))
                          (cons __tmp12918 __tmp12904))))
                   (declare (not safe))
                   (cons __tmp12903 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12919
                                                          __tmp12902))))
                                             (declare (not safe))
                                             (cons __tmp12922 __tmp12901))))
                                      (declare (not safe))
                                      (cons __tmp12925 __tmp12900))))
                               (declare (not safe))
                               (cons __tmp12899 '()))))
                        (declare (not safe))
                        (cons __tmp12926 __tmp12898))))
                 (declare (not safe))
                 (cons __tmp12964 __tmp12897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12968
                                                        __tmp12896))))
                                           (declare (not safe))
                                           (cons __tmp12895 '()))))
                                    (declare (not safe))
                                    (cons __tmp12969 __tmp12894))))
                             (declare (not safe))
                             (cons __tmp12972 __tmp12893))))
                      (declare (not safe))
                      (cons __tmp12892 _g1122211243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12891
                                                             '()
                                                             _L11093_
                                                             _L11196_
                                                             _L11093_
                                                             _L11196_
                                                             _L11093_)))))
                                            (declare (not safe))
                                            (cons __tmp12973 __tmp12890))))
                                     (declare (not safe))
                                     (cons __tmp13006 __tmp12889))))
                              (declare (not safe))
                              (cons __tmp13011 __tmp12888))))
                        _macro-getf1113311192_
                        _hd1112011150_)
                       (_g1111511139_ _g1111611143_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1112811172_
                                            _target1112511166_
                                            '()))
                                         (_g1111511139_ _g1111611143_)))))
                               (_g1111511139_ _g1111611143_))))
                       (_g1111511139_ _g1111611143_))))
               (_g1111511139_ _g1111611143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1111411246_
                                            (list (gx#stx-identifier
                                                   _L11095_
                                                   '"macro-"
                                                   _L11095_)
                                                  (map (lambda (_f11250_)
                                                         (gx#stx-identifier
                                                          _f11250_
                                                          '"macro-"
                                                          _f11250_))
                                                       (let ((__tmp13012
                                                              (lambda (_g1125211255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1125311258_)
                        (let ()
                          (declare (not safe))
                          (cons _g1125211255_ _g1125311258_)))))
                 (declare (not safe))
                 (foldr1 __tmp13012 '() _L11093_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1102011089_
                                       _hd1101011057_)
                                      (_g1099911026_ _g1100011030_)))))))
                  (_loop1101511069_ _target1101211063_ '()))
                (_g1099911026_ _g1100011030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1099911026_ _g1100011030_))))
                                      (_g1099911026_ _g1100011030_))))
                              (_g1099911026_ _g1100011030_))))
                      (_g1099911026_ _g1100011030_)))))
          (_g1099811261_ _stx10996_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11267_)
        (let* ((_g1127111291_
                (lambda (_g1127211287_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1127211287_)))
               (_g1127011362_
                (lambda (_g1127211295_)
                  (if (gx#stx-pair? _g1127211295_)
                      (let ((_e1127611298_ (gx#syntax-e _g1127211295_)))
                        (let ((_hd1127511302_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1127611298_)))
                              (_tl1127411305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1127611298_))))
                          (if (gx#stx-pair/null? _tl1127411305_)
                              (let ((_g13013_
                                     (gx#syntax-split-splice
                                      _tl1127411305_
                                      '0)))
                                (begin
                                  (let ((_g13014_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g13013_)
                                               (##vector-length _g13013_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g13014_ 2)))
                                        (error "Context expects 2 values"
                                               _g13014_)))
                                  (let ((_target1127711308_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g13013_ 0)))
                                        (_tl1127911311_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g13013_ 1))))
                                    (if (gx#stx-null? _tl1127911311_)
                                        (letrec ((_loop1128011314_
                                                  (lambda (_hd1127811318_
                                                           _defexn1128411321_)
                                                    (if (gx#stx-pair?
                                                         _hd1127811318_)
                                                        (let ((_e1128111324_
                                                               (gx#syntax-e
                                                                _hd1127811318_)))
                                                          (let ((_lp-hd1128211328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1128111324_)))
                        (_lp-tl1128311331_
                         (let () (declare (not safe)) (##cdr _e1128111324_))))
                    (_loop1128011314_
                     _lp-tl1128311331_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1128211328_ _defexn1128411321_)))))
                (let ((_defexn1128511334_ (reverse _defexn1128411321_)))
                  ((lambda (_L11338_)
                     (let ((__tmp13020 (gx#datum->syntax '#f 'begin))
                           (__tmp13015
                            (let ((__tmp13016
                                   (lambda (_g1135311356_ _g1135411359_)
                                     (let ((__tmp13017
                                            (let ((__tmp13019
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp13018
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1135311356_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp13019 __tmp13018))))
                                       (declare (not safe))
                                       (cons __tmp13017 _g1135411359_)))))
                              (declare (not safe))
                              (foldr1 __tmp13016 '() _L11338_))))
                       (declare (not safe))
                       (cons __tmp13020 __tmp13015)))
                   _defexn1128511334_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1128011314_
                                           _target1127711308_
                                           '()))
                                        (_g1127111291_ _g1127211295_)))))
                              (_g1127111291_ _g1127211295_))))
                      (_g1127111291_ _g1127211295_)))))
          (_g1127011362_ _$stx11267_))))))
