(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12726_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12733_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12735_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12737_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12745_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12748_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12750_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12752_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12754_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12764_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12766_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12768_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12773_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12775_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12777_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12779_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12781_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12787_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12788_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12789_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12797_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12800_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12802_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12804_|
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
       |[1]#_g12726_|
       'expander-identifiers:
       (let ((__tmp12727
              (let ((__tmp12736 |[1]#_g12726_|)
                    (__tmp12728
                     (let ((__tmp12734 |[1]#_g12735_|)
                           (__tmp12729
                            (let ((__tmp12732 |[1]#_g12733_|)
                                  (__tmp12730
                                   (let ((__tmp12731
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12731))))
                              (declare (not safe))
                              (cons __tmp12732 __tmp12730))))
                       (declare (not safe))
                       (cons __tmp12734 __tmp12729))))
                (declare (not safe))
                (cons __tmp12736 __tmp12728))))
         (declare (not safe))
         (cons '() __tmp12727))
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
       |[1]#_g12737_|
       'expander-identifiers:
       (let ((__tmp12738
              (let ((__tmp12753 |[1]#_g12737_|)
                    (__tmp12739
                     (let ((__tmp12751 |[1]#_g12752_|)
                           (__tmp12740
                            (let ((__tmp12749 |[1]#_g12750_|)
                                  (__tmp12741
                                   (let ((__tmp12746
                                          (let ((__tmp12747 |[1]#_g12748_|))
                                            (declare (not safe))
                                            (cons __tmp12747 '())))
                                         (__tmp12742
                                          (let ((__tmp12743
                                                 (let ((__tmp12744
                                                        |[1]#_g12745_|))
                                                   (declare (not safe))
                                                   (cons __tmp12744 '()))))
                                            (declare (not safe))
                                            (cons __tmp12743 '()))))
                                     (declare (not safe))
                                     (cons __tmp12746 __tmp12742))))
                              (declare (not safe))
                              (cons __tmp12749 __tmp12741))))
                       (declare (not safe))
                       (cons __tmp12751 __tmp12740))))
                (declare (not safe))
                (cons __tmp12753 __tmp12739))))
         (declare (not safe))
         (cons '() __tmp12738))
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
       |[1]#_g12754_|
       'expander-identifiers:
       (let ((__tmp12783
              (let ((__tmp12786 |[1]#_g12737_|)
                    (__tmp12784
                     (let ((__tmp12785 |[1]#_g12726_|))
                       (declare (not safe))
                       (cons __tmp12785 '()))))
                (declare (not safe))
                (cons __tmp12786 __tmp12784)))
             (__tmp12755
              (let ((__tmp12782 |[1]#_g12754_|)
                    (__tmp12756
                     (let ((__tmp12780 |[1]#_g12781_|)
                           (__tmp12757
                            (let ((__tmp12778 |[1]#_g12779_|)
                                  (__tmp12758
                                   (let ((__tmp12769
                                          (let ((__tmp12776 |[1]#_g12777_|)
                                                (__tmp12770
                                                 (let ((__tmp12774
                                                        |[1]#_g12775_|)
                                                       (__tmp12771
                                                        (let ((__tmp12772
                                                               |[1]#_g12773_|))
                                                          (declare (not safe))
                                                          (cons __tmp12772
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12774
                                                         __tmp12771))))
                                            (declare (not safe))
                                            (cons __tmp12776 __tmp12770)))
                                         (__tmp12759
                                          (let ((__tmp12760
                                                 (let ((__tmp12767
                                                        |[1]#_g12768_|)
                                                       (__tmp12761
                                                        (let ((__tmp12765
                                                               |[1]#_g12766_|)
                                                              (__tmp12762
                                                               (let ((__tmp12763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12764_|))
                         (declare (not safe))
                         (cons __tmp12763 '()))))
                  (declare (not safe))
                  (cons __tmp12765 __tmp12762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12767
                                                         __tmp12761))))
                                            (declare (not safe))
                                            (cons __tmp12760 '()))))
                                     (declare (not safe))
                                     (cons __tmp12769 __tmp12759))))
                              (declare (not safe))
                              (cons __tmp12778 __tmp12758))))
                       (declare (not safe))
                       (cons __tmp12780 __tmp12757))))
                (declare (not safe))
                (cons __tmp12782 __tmp12756))))
         (declare (not safe))
         (cons __tmp12783 __tmp12755))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12787_| |[1]#_g12788_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12789_|
       'expander-identifiers:
       (let ((__tmp12806
              (let ((__tmp12809 |[1]#_g12737_|)
                    (__tmp12807
                     (let ((__tmp12808 |[1]#_g12726_|))
                       (declare (not safe))
                       (cons __tmp12808 '()))))
                (declare (not safe))
                (cons __tmp12809 __tmp12807)))
             (__tmp12790
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
         (cons __tmp12806 __tmp12790))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12787_| |[1]#_g12788_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10862_)
        (let* ((_g1086610884_
                (lambda (_g1086710880_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1086710880_)))
               (_g1086510940_
                (lambda (_g1086710888_)
                  (if (gx#stx-pair? _g1086710888_)
                      (let ((_e1087210891_ (gx#syntax-e _g1086710888_)))
                        (let ((_hd1087110895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1087210891_)))
                              (_tl1087010898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1087210891_))))
                          (if (gx#stx-pair? _tl1087010898_)
                              (let ((_e1087510901_
                                     (gx#syntax-e _tl1087010898_)))
                                (let ((_hd1087410905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1087510901_)))
                                      (_tl1087310908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1087510901_))))
                                  (if (gx#stx-pair? _tl1087310908_)
                                      (let ((_e1087810911_
                                             (gx#syntax-e _tl1087310908_)))
                                        (let ((_hd1087710915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1087810911_)))
                                              (_tl1087610918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1087810911_))))
                                          (if (gx#stx-null? _tl1087610918_)
                                              ((lambda (_L10921_ _L10923_)
                                                 (let ((__tmp12831
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12810
                                                        (let ((__tmp12828
                                                               (let ((__tmp12830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12829
                              (let ()
                                (declare (not safe))
                                (cons _L10923_ '()))))
                         (declare (not safe))
                         (cons __tmp12830 __tmp12829)))
                      (__tmp12811
                       (let ((__tmp12812
                              (let ((__tmp12827 (gx#datum->syntax '#f 'raise))
                                    (__tmp12813
                                     (let ((__tmp12814
                                            (let ((__tmp12826
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12815
                                                   (let ((__tmp12816
                                                          (let ((__tmp12817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12823
                                (let ((__tmp12825
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12824
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10921_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12825 __tmp12824)))
                               (__tmp12818
                                (let ((__tmp12819
                                       (let ((__tmp12820
                                              (let ((__tmp12822
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12821
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10923_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12822 __tmp12821))))
                                         (declare (not safe))
                                         (cons __tmp12820 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12819))))
                           (declare (not safe))
                           (cons __tmp12823 __tmp12818))))
                    (declare (not safe))
                    (cons 'where: __tmp12817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12816))))
                                              (declare (not safe))
                                              (cons __tmp12826 __tmp12815))))
                                       (declare (not safe))
                                       (cons __tmp12814 '()))))
                                (declare (not safe))
                                (cons __tmp12827 __tmp12813))))
                         (declare (not safe))
                         (cons __tmp12812 '()))))
                  (declare (not safe))
                  (cons __tmp12828 __tmp12811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12831
                                                         __tmp12810)))
                                               _hd1087710915_
                                               _hd1087410905_)
                                              (_g1086610884_ _g1086710888_))))
                                      (_g1086610884_ _g1086710888_))))
                              (_g1086610884_ _g1086710888_))))
                      (_g1086610884_ _g1086710888_)))))
          (_g1086510940_ _$stx10862_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10944_)
        (let* ((_g1094710974_
                (lambda (_g1094810970_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1094810970_)))
               (_g1094611209_
                (lambda (_g1094810978_)
                  (if (gx#stx-pair? _g1094810978_)
                      (let ((_e1095310981_ (gx#syntax-e _g1094810978_)))
                        (let ((_hd1095210985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1095310981_)))
                              (_tl1095110988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1095310981_))))
                          (if (gx#stx-pair? _tl1095110988_)
                              (let ((_e1095610991_
                                     (gx#syntax-e _tl1095110988_)))
                                (let ((_hd1095510995_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1095610991_)))
                                      (_tl1095410998_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1095610991_))))
                                  (if (gx#stx-pair? _hd1095510995_)
                                      (let ((_e1095911001_
                                             (gx#syntax-e _hd1095510995_)))
                                        (let ((_hd1095811005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1095911001_)))
                                              (_tl1095711008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1095911001_))))
                                          (if (gx#stx-pair/null?
                                               _tl1095711008_)
                                              (let ((_g12832_
                                                     (gx#syntax-split-splice
                                                      _tl1095711008_
                                                      '0)))
                                                (begin
                                                  (let ((_g12833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12832_)
                                                               (##vector-length
                                                                _g12832_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12833_ 2)))
                (error "Context expects 2 values" _g12833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1096011011_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12832_
                                                            0)))
                                                        (_tl1096211014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12832_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1096211014_)
                                                        (letrec ((_loop1096311017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1096111021_ _getf1096711024_)
                            (if (gx#stx-pair? _hd1096111021_)
                                (let ((_e1096411027_
                                       (gx#syntax-e _hd1096111021_)))
                                  (let ((_lp-hd1096511031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1096411027_)))
                                        (_lp-tl1096611034_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1096411027_))))
                                    (_loop1096311017_
                                     _lp-tl1096611034_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1096511031_
                                             _getf1096711024_)))))
                                (let ((_getf1096811037_
                                       (reverse _getf1096711024_)))
                                  (if (gx#stx-null? _tl1095410998_)
                                      ((lambda (_L11041_ _L11043_)
                                         (let* ((_g1106311087_
                                                 (lambda (_g1106411083_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1106411083_)))
                                                (_g1106211194_
                                                 (lambda (_g1106411091_)
                                                   (if (gx#stx-pair?
                                                        _g1106411091_)
                                                       (let ((_e1106911094_
                                                              (gx#syntax-e
                                                               _g1106411091_)))
                                                         (let ((_hd1106811098_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1106911094_)))
                       (_tl1106711101_
                        (let () (declare (not safe)) (##cdr _e1106911094_))))
                   (if (gx#stx-pair? _tl1106711101_)
                       (let ((_e1107211104_ (gx#syntax-e _tl1106711101_)))
                         (let ((_hd1107111108_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1107211104_)))
                               (_tl1107011111_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1107211104_))))
                           (if (gx#stx-pair/null? _hd1107111108_)
                               (let ((_g12834_
                                      (gx#syntax-split-splice
                                       _hd1107111108_
                                       '0)))
                                 (begin
                                   (let ((_g12835_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12834_)
                                                (##vector-length _g12834_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12835_ 2)))
                                         (error "Context expects 2 values"
                                                _g12835_)))
                                   (let ((_target1107311114_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12834_ 0)))
                                         (_tl1107511117_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12834_ 1))))
                                     (if (gx#stx-null? _tl1107511117_)
                                         (letrec ((_loop1107611120_
                                                   (lambda (_hd1107411124_
                                                            _macro-getf1108011127_)
                                                     (if (gx#stx-pair?
                                                          _hd1107411124_)
                                                         (let ((_e1107711130_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1107411124_)))
                   (let ((_lp-hd1107811134_
                          (let () (declare (not safe)) (##car _e1107711130_)))
                         (_lp-tl1107911137_
                          (let () (declare (not safe)) (##cdr _e1107711130_))))
                     (_loop1107611120_
                      _lp-tl1107911137_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1107811134_ _macro-getf1108011127_)))))
                 (let ((_macro-getf1108111140_
                        (reverse _macro-getf1108011127_)))
                   (if (gx#stx-null? _tl1107011111_)
                       ((lambda (_L11144_ _L11146_)
                          (let ()
                            (let ((__tmp12959 (gx#datum->syntax '#f 'begin))
                                  (__tmp12836
                                   (let ((__tmp12954
                                          (let ((__tmp12958
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12955
                                                 (let ((__tmp12956
                                                        (let ((__tmp12957
                                                               (lambda (_g1117111174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1117211177_)
                         (let ()
                           (declare (not safe))
                           (cons _g1117111174_ _g1117211177_)))))
                  (declare (not safe))
                  (foldr1 __tmp12957 '() _L11144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11146_
                                                         __tmp12956))))
                                            (declare (not safe))
                                            (cons __tmp12958 __tmp12955)))
                                         (__tmp12837
                                          (let ((__tmp12921
                                                 (let ((__tmp12953
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12922
                                                        (let ((__tmp12950
                                                               (let ((__tmp12951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12952 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12952 '()))))
                         (declare (not safe))
                         (cons _L11043_ __tmp12951)))
                      (__tmp12923
                       (let ((__tmp12924
                              (let ((__tmp12949 (gx#datum->syntax '#f 'if))
                                    (__tmp12925
                                     (let ((__tmp12945
                                            (let ((__tmp12948
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12946
                                                   (let ((__tmp12947
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12947 '()))))
                                              (declare (not safe))
                                              (cons __tmp12948 __tmp12946)))
                                           (__tmp12926
                                            (let ((__tmp12931
                                                   (let ((__tmp12944
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12932
                                                          (let ((__tmp12937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12943 (gx#datum->syntax '#f 'e))
                               (__tmp12938
                                (let ((__tmp12939
                                       (let ((__tmp12942
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12940
                                              (let ((__tmp12941
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12941 '()))))
                                         (declare (not safe))
                                         (cons __tmp12942 __tmp12940))))
                                  (declare (not safe))
                                  (cons __tmp12939 '()))))
                           (declare (not safe))
                           (cons __tmp12943 __tmp12938)))
                        (__tmp12933
                         (let ((__tmp12934
                                (let ((__tmp12935
                                       (let ((__tmp12936
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12936 '()))))
                                  (declare (not safe))
                                  (cons _L11146_ __tmp12935))))
                           (declare (not safe))
                           (cons __tmp12934 '()))))
                    (declare (not safe))
                    (cons __tmp12937 __tmp12933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12944
                                                           __tmp12932)))
                                                  (__tmp12927
                                                   (let ((__tmp12928
                                                          (let ((__tmp12929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12930 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12930 '()))))
                    (declare (not safe))
                    (cons _L11146_ __tmp12929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12928 '()))))
                                              (declare (not safe))
                                              (cons __tmp12931 __tmp12927))))
                                       (declare (not safe))
                                       (cons __tmp12945 __tmp12926))))
                                (declare (not safe))
                                (cons __tmp12949 __tmp12925))))
                         (declare (not safe))
                         (cons __tmp12924 '()))))
                  (declare (not safe))
                  (cons __tmp12950 __tmp12923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12953
                                                         __tmp12922)))
                                                (__tmp12838
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L11041_
                                                    _L11144_
                                                    _L11041_
                                                    _L11144_
                                                    _L11041_)
                                                   (let ((__tmp12839
                                                          (lambda (_g1116511180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1116611183_
                           _g1116711185_
                           _g1116811187_
                           _g1116911189_
                           _g1117011191_)
                    (let ((__tmp12840
                           (let ((__tmp12920 (gx#datum->syntax '#f 'def))
                                 (__tmp12841
                                  (let ((__tmp12917
                                         (let ((__tmp12918
                                                (let ((__tmp12919
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12919 '()))))
                                           (declare (not safe))
                                           (cons _g1116511180_ __tmp12918)))
                                        (__tmp12842
                                         (let ((__tmp12843
                                                (let ((__tmp12916
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12844
                                                       (let ((__tmp12912
                                                              (let ((__tmp12915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12913
                             (let ((__tmp12914 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12914 '()))))
                        (declare (not safe))
                        (cons __tmp12915 __tmp12913)))
                     (__tmp12845
                      (let ((__tmp12874
                             (let ((__tmp12911 (gx#datum->syntax '#f 'let))
                                   (__tmp12875
                                    (let ((__tmp12904
                                           (let ((__tmp12910
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12905
                                                  (let ((__tmp12906
                                                         (let ((__tmp12909
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12907
                        (let ((__tmp12908 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12908 '()))))
                   (declare (not safe))
                   (cons __tmp12909 __tmp12907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12906 '()))))
                                             (declare (not safe))
                                             (cons __tmp12910 __tmp12905)))
                                          (__tmp12876
                                           (let ((__tmp12877
                                                  (let ((__tmp12903
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12878
                                                         (let ((__tmp12900
                                                                (let ((__tmp12901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12902 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12902 '()))))
                          (declare (not safe))
                          (cons _L11146_ __tmp12901)))
                       (__tmp12879
                        (let ((__tmp12897
                               (let ((__tmp12898
                                      (let ((__tmp12899
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12899 '()))))
                                 (declare (not safe))
                                 (cons _g1116611183_ __tmp12898)))
                              (__tmp12880
                               (let ((__tmp12881
                                      (let ((__tmp12896
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12882
                                             (let ((__tmp12883
                                                    (let ((__tmp12893
                                                           (let ((__tmp12895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12894
                          (let () (declare (not safe)) (cons _L11043_ '()))))
                     (declare (not safe))
                     (cons __tmp12895 __tmp12894)))
                  (__tmp12884
                   (let ((__tmp12885
                          (let ((__tmp12892 (gx#datum->syntax '#f '@list))
                                (__tmp12886
                                 (let ((__tmp12889
                                        (let ((__tmp12891
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12890
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1116511180_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12891 __tmp12890)))
                                       (__tmp12887
                                        (let ((__tmp12888
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12888 '()))))
                                   (declare (not safe))
                                   (cons __tmp12889 __tmp12887))))
                            (declare (not safe))
                            (cons __tmp12892 __tmp12886))))
                     (declare (not safe))
                     (cons __tmp12885 '()))))
              (declare (not safe))
              (cons __tmp12893 __tmp12884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12883))))
                                        (declare (not safe))
                                        (cons __tmp12896 __tmp12882))))
                                 (declare (not safe))
                                 (cons __tmp12881 '()))))
                          (declare (not safe))
                          (cons __tmp12897 __tmp12880))))
                   (declare (not safe))
                   (cons __tmp12900 __tmp12879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12903
                                                          __tmp12878))))
                                             (declare (not safe))
                                             (cons __tmp12877 '()))))
                                      (declare (not safe))
                                      (cons __tmp12904 __tmp12876))))
                               (declare (not safe))
                               (cons __tmp12911 __tmp12875)))
                            (__tmp12846
                             (let ((__tmp12847
                                    (let ((__tmp12873
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12848
                                           (let ((__tmp12870
                                                  (let ((__tmp12871
                                                         (let ((__tmp12872
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11146_
                                                          __tmp12871)))
                                                 (__tmp12849
                                                  (let ((__tmp12867
                                                         (let ((__tmp12868
                                                                (let ((__tmp12869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12869 '()))))
                   (declare (not safe))
                   (cons _g1116611183_ __tmp12868)))
                (__tmp12850
                 (let ((__tmp12851
                        (let ((__tmp12866 (gx#datum->syntax '#f 'error))
                              (__tmp12852
                               (let ((__tmp12853
                                      (let ((__tmp12863
                                             (let ((__tmp12865
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11043_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12865 __tmp12864)))
                                            (__tmp12854
                                             (let ((__tmp12855
                                                    (let ((__tmp12862
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12856
                                                           (let ((__tmp12859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12861 (gx#datum->syntax '#f 'quote))
                                (__tmp12860
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1116511180_ '()))))
                            (declare (not safe))
                            (cons __tmp12861 __tmp12860)))
                         (__tmp12857
                          (let ((__tmp12858 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12858 '()))))
                     (declare (not safe))
                     (cons __tmp12859 __tmp12857))))
              (declare (not safe))
              (cons __tmp12862 __tmp12856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12855 '()))))
                                        (declare (not safe))
                                        (cons __tmp12863 __tmp12854))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12853))))
                          (declare (not safe))
                          (cons __tmp12866 __tmp12852))))
                   (declare (not safe))
                   (cons __tmp12851 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12867
                                                          __tmp12850))))
                                             (declare (not safe))
                                             (cons __tmp12870 __tmp12849))))
                                      (declare (not safe))
                                      (cons __tmp12873 __tmp12848))))
                               (declare (not safe))
                               (cons __tmp12847 '()))))
                        (declare (not safe))
                        (cons __tmp12874 __tmp12846))))
                 (declare (not safe))
                 (cons __tmp12912 __tmp12845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12916
                                                        __tmp12844))))
                                           (declare (not safe))
                                           (cons __tmp12843 '()))))
                                    (declare (not safe))
                                    (cons __tmp12917 __tmp12842))))
                             (declare (not safe))
                             (cons __tmp12920 __tmp12841))))
                      (declare (not safe))
                      (cons __tmp12840 _g1117011191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12839
                                                             '()
                                                             _L11041_
                                                             _L11144_
                                                             _L11041_
                                                             _L11144_
                                                             _L11041_)))))
                                            (declare (not safe))
                                            (cons __tmp12921 __tmp12838))))
                                     (declare (not safe))
                                     (cons __tmp12954 __tmp12837))))
                              (declare (not safe))
                              (cons __tmp12959 __tmp12836))))
                        _macro-getf1108111140_
                        _hd1106811098_)
                       (_g1106311087_ _g1106411091_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1107611120_
                                            _target1107311114_
                                            '()))
                                         (_g1106311087_ _g1106411091_)))))
                               (_g1106311087_ _g1106411091_))))
                       (_g1106311087_ _g1106411091_))))
               (_g1106311087_ _g1106411091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1106211194_
                                            (list (gx#stx-identifier
                                                   _L11043_
                                                   '"macro-"
                                                   _L11043_)
                                                  (map (lambda (_f11198_)
                                                         (gx#stx-identifier
                                                          _f11198_
                                                          '"macro-"
                                                          _f11198_))
                                                       (let ((__tmp12960
                                                              (lambda (_g1120011203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1120111206_)
                        (let ()
                          (declare (not safe))
                          (cons _g1120011203_ _g1120111206_)))))
                 (declare (not safe))
                 (foldr1 __tmp12960 '() _L11041_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1096811037_
                                       _hd1095811005_)
                                      (_g1094710974_ _g1094810978_)))))))
                  (_loop1096311017_ _target1096011011_ '()))
                (_g1094710974_ _g1094810978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1094710974_ _g1094810978_))))
                                      (_g1094710974_ _g1094810978_))))
                              (_g1094710974_ _g1094810978_))))
                      (_g1094710974_ _g1094810978_)))))
          (_g1094611209_ _stx10944_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11215_)
        (let* ((_g1121911239_
                (lambda (_g1122011235_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1122011235_)))
               (_g1121811310_
                (lambda (_g1122011243_)
                  (if (gx#stx-pair? _g1122011243_)
                      (let ((_e1122411246_ (gx#syntax-e _g1122011243_)))
                        (let ((_hd1122311250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1122411246_)))
                              (_tl1122211253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1122411246_))))
                          (if (gx#stx-pair/null? _tl1122211253_)
                              (let ((_g12961_
                                     (gx#syntax-split-splice
                                      _tl1122211253_
                                      '0)))
                                (begin
                                  (let ((_g12962_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12961_)
                                               (##vector-length _g12961_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12962_ 2)))
                                        (error "Context expects 2 values"
                                               _g12962_)))
                                  (let ((_target1122511256_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12961_ 0)))
                                        (_tl1122711259_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12961_ 1))))
                                    (if (gx#stx-null? _tl1122711259_)
                                        (letrec ((_loop1122811262_
                                                  (lambda (_hd1122611266_
                                                           _defexn1123211269_)
                                                    (if (gx#stx-pair?
                                                         _hd1122611266_)
                                                        (let ((_e1122911272_
                                                               (gx#syntax-e
                                                                _hd1122611266_)))
                                                          (let ((_lp-hd1123011276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1122911272_)))
                        (_lp-tl1123111279_
                         (let () (declare (not safe)) (##cdr _e1122911272_))))
                    (_loop1122811262_
                     _lp-tl1123111279_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1123011276_ _defexn1123211269_)))))
                (let ((_defexn1123311282_ (reverse _defexn1123211269_)))
                  ((lambda (_L11286_)
                     (let ((__tmp12968 (gx#datum->syntax '#f 'begin))
                           (__tmp12963
                            (let ((__tmp12964
                                   (lambda (_g1130111304_ _g1130211307_)
                                     (let ((__tmp12965
                                            (let ((__tmp12967
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12966
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1130111304_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12967 __tmp12966))))
                                       (declare (not safe))
                                       (cons __tmp12965 _g1130211307_)))))
                              (declare (not safe))
                              (foldr1 __tmp12964 '() _L11286_))))
                       (declare (not safe))
                       (cons __tmp12968 __tmp12963)))
                   _defexn1123311282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1122811262_
                                           _target1122511256_
                                           '()))
                                        (_g1121911239_ _g1122011243_)))))
                              (_g1121911239_ _g1122011243_))))
                      (_g1121911239_ _g1122011243_)))))
          (_g1121811310_ _$stx11215_))))))
