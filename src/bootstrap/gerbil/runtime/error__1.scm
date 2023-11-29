(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12727_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12734_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12736_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12738_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12746_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12749_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12751_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12753_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12755_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12765_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12767_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12769_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12774_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12776_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12778_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12780_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12782_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12788_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12789_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12790_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12798_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12801_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12803_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12805_|
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
       |[1]#_g12727_|
       'expander-identifiers:
       (let ((__tmp12728
              (let ((__tmp12737 |[1]#_g12727_|)
                    (__tmp12729
                     (let ((__tmp12735 |[1]#_g12736_|)
                           (__tmp12730
                            (let ((__tmp12733 |[1]#_g12734_|)
                                  (__tmp12731
                                   (let ((__tmp12732
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12732))))
                              (declare (not safe))
                              (cons __tmp12733 __tmp12731))))
                       (declare (not safe))
                       (cons __tmp12735 __tmp12730))))
                (declare (not safe))
                (cons __tmp12737 __tmp12729))))
         (declare (not safe))
         (cons '() __tmp12728))
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
       |[1]#_g12738_|
       'expander-identifiers:
       (let ((__tmp12739
              (let ((__tmp12754 |[1]#_g12738_|)
                    (__tmp12740
                     (let ((__tmp12752 |[1]#_g12753_|)
                           (__tmp12741
                            (let ((__tmp12750 |[1]#_g12751_|)
                                  (__tmp12742
                                   (let ((__tmp12747
                                          (let ((__tmp12748 |[1]#_g12749_|))
                                            (declare (not safe))
                                            (cons __tmp12748 '())))
                                         (__tmp12743
                                          (let ((__tmp12744
                                                 (let ((__tmp12745
                                                        |[1]#_g12746_|))
                                                   (declare (not safe))
                                                   (cons __tmp12745 '()))))
                                            (declare (not safe))
                                            (cons __tmp12744 '()))))
                                     (declare (not safe))
                                     (cons __tmp12747 __tmp12743))))
                              (declare (not safe))
                              (cons __tmp12750 __tmp12742))))
                       (declare (not safe))
                       (cons __tmp12752 __tmp12741))))
                (declare (not safe))
                (cons __tmp12754 __tmp12740))))
         (declare (not safe))
         (cons '() __tmp12739))
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
       |[1]#_g12755_|
       'expander-identifiers:
       (let ((__tmp12784
              (let ((__tmp12787 |[1]#_g12738_|)
                    (__tmp12785
                     (let ((__tmp12786 |[1]#_g12727_|))
                       (declare (not safe))
                       (cons __tmp12786 '()))))
                (declare (not safe))
                (cons __tmp12787 __tmp12785)))
             (__tmp12756
              (let ((__tmp12783 |[1]#_g12755_|)
                    (__tmp12757
                     (let ((__tmp12781 |[1]#_g12782_|)
                           (__tmp12758
                            (let ((__tmp12779 |[1]#_g12780_|)
                                  (__tmp12759
                                   (let ((__tmp12770
                                          (let ((__tmp12777 |[1]#_g12778_|)
                                                (__tmp12771
                                                 (let ((__tmp12775
                                                        |[1]#_g12776_|)
                                                       (__tmp12772
                                                        (let ((__tmp12773
                                                               |[1]#_g12774_|))
                                                          (declare (not safe))
                                                          (cons __tmp12773
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12775
                                                         __tmp12772))))
                                            (declare (not safe))
                                            (cons __tmp12777 __tmp12771)))
                                         (__tmp12760
                                          (let ((__tmp12761
                                                 (let ((__tmp12768
                                                        |[1]#_g12769_|)
                                                       (__tmp12762
                                                        (let ((__tmp12766
                                                               |[1]#_g12767_|)
                                                              (__tmp12763
                                                               (let ((__tmp12764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12765_|))
                         (declare (not safe))
                         (cons __tmp12764 '()))))
                  (declare (not safe))
                  (cons __tmp12766 __tmp12763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12768
                                                         __tmp12762))))
                                            (declare (not safe))
                                            (cons __tmp12761 '()))))
                                     (declare (not safe))
                                     (cons __tmp12770 __tmp12760))))
                              (declare (not safe))
                              (cons __tmp12779 __tmp12759))))
                       (declare (not safe))
                       (cons __tmp12781 __tmp12758))))
                (declare (not safe))
                (cons __tmp12783 __tmp12757))))
         (declare (not safe))
         (cons __tmp12784 __tmp12756))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12788_| |[1]#_g12789_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12790_|
       'expander-identifiers:
       (let ((__tmp12807
              (let ((__tmp12810 |[1]#_g12738_|)
                    (__tmp12808
                     (let ((__tmp12809 |[1]#_g12727_|))
                       (declare (not safe))
                       (cons __tmp12809 '()))))
                (declare (not safe))
                (cons __tmp12810 __tmp12808)))
             (__tmp12791
              (let ((__tmp12806 |[1]#_g12790_|)
                    (__tmp12792
                     (let ((__tmp12804 |[1]#_g12805_|)
                           (__tmp12793
                            (let ((__tmp12802 |[1]#_g12803_|)
                                  (__tmp12794
                                   (let ((__tmp12799
                                          (let ((__tmp12800 |[1]#_g12801_|))
                                            (declare (not safe))
                                            (cons __tmp12800 '())))
                                         (__tmp12795
                                          (let ((__tmp12796
                                                 (let ((__tmp12797
                                                        |[1]#_g12798_|))
                                                   (declare (not safe))
                                                   (cons __tmp12797 '()))))
                                            (declare (not safe))
                                            (cons __tmp12796 '()))))
                                     (declare (not safe))
                                     (cons __tmp12799 __tmp12795))))
                              (declare (not safe))
                              (cons __tmp12802 __tmp12794))))
                       (declare (not safe))
                       (cons __tmp12804 __tmp12793))))
                (declare (not safe))
                (cons __tmp12806 __tmp12792))))
         (declare (not safe))
         (cons __tmp12807 __tmp12791))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12788_| |[1]#_g12789_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10863_)
        (let* ((_g1086710885_
                (lambda (_g1086810881_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1086810881_)))
               (_g1086610941_
                (lambda (_g1086810889_)
                  (if (gx#stx-pair? _g1086810889_)
                      (let ((_e1087310892_ (gx#syntax-e _g1086810889_)))
                        (let ((_hd1087210896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1087310892_)))
                              (_tl1087110899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1087310892_))))
                          (if (gx#stx-pair? _tl1087110899_)
                              (let ((_e1087610902_
                                     (gx#syntax-e _tl1087110899_)))
                                (let ((_hd1087510906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1087610902_)))
                                      (_tl1087410909_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1087610902_))))
                                  (if (gx#stx-pair? _tl1087410909_)
                                      (let ((_e1087910912_
                                             (gx#syntax-e _tl1087410909_)))
                                        (let ((_hd1087810916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1087910912_)))
                                              (_tl1087710919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1087910912_))))
                                          (if (gx#stx-null? _tl1087710919_)
                                              ((lambda (_L10922_ _L10924_)
                                                 (let ((__tmp12832
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12811
                                                        (let ((__tmp12829
                                                               (let ((__tmp12831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12830
                              (let ()
                                (declare (not safe))
                                (cons _L10924_ '()))))
                         (declare (not safe))
                         (cons __tmp12831 __tmp12830)))
                      (__tmp12812
                       (let ((__tmp12813
                              (let ((__tmp12828 (gx#datum->syntax '#f 'raise))
                                    (__tmp12814
                                     (let ((__tmp12815
                                            (let ((__tmp12827
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12816
                                                   (let ((__tmp12817
                                                          (let ((__tmp12818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12824
                                (let ((__tmp12826
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12825
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10922_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12826 __tmp12825)))
                               (__tmp12819
                                (let ((__tmp12820
                                       (let ((__tmp12821
                                              (let ((__tmp12823
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12822
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10924_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12823 __tmp12822))))
                                         (declare (not safe))
                                         (cons __tmp12821 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12820))))
                           (declare (not safe))
                           (cons __tmp12824 __tmp12819))))
                    (declare (not safe))
                    (cons 'where: __tmp12818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12817))))
                                              (declare (not safe))
                                              (cons __tmp12827 __tmp12816))))
                                       (declare (not safe))
                                       (cons __tmp12815 '()))))
                                (declare (not safe))
                                (cons __tmp12828 __tmp12814))))
                         (declare (not safe))
                         (cons __tmp12813 '()))))
                  (declare (not safe))
                  (cons __tmp12829 __tmp12812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12832
                                                         __tmp12811)))
                                               _hd1087810916_
                                               _hd1087510906_)
                                              (_g1086710885_ _g1086810889_))))
                                      (_g1086710885_ _g1086810889_))))
                              (_g1086710885_ _g1086810889_))))
                      (_g1086710885_ _g1086810889_)))))
          (_g1086610941_ _$stx10863_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10945_)
        (let* ((_g1094810975_
                (lambda (_g1094910971_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1094910971_)))
               (_g1094711210_
                (lambda (_g1094910979_)
                  (if (gx#stx-pair? _g1094910979_)
                      (let ((_e1095410982_ (gx#syntax-e _g1094910979_)))
                        (let ((_hd1095310986_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1095410982_)))
                              (_tl1095210989_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1095410982_))))
                          (if (gx#stx-pair? _tl1095210989_)
                              (let ((_e1095710992_
                                     (gx#syntax-e _tl1095210989_)))
                                (let ((_hd1095610996_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1095710992_)))
                                      (_tl1095510999_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1095710992_))))
                                  (if (gx#stx-pair? _hd1095610996_)
                                      (let ((_e1096011002_
                                             (gx#syntax-e _hd1095610996_)))
                                        (let ((_hd1095911006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1096011002_)))
                                              (_tl1095811009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1096011002_))))
                                          (if (gx#stx-pair/null?
                                               _tl1095811009_)
                                              (let ((_g12833_
                                                     (gx#syntax-split-splice
                                                      _tl1095811009_
                                                      '0)))
                                                (begin
                                                  (let ((_g12834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12833_)
                                                               (##vector-length
                                                                _g12833_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12834_ 2)))
                (error "Context expects 2 values" _g12834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1096111012_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12833_
                                                            0)))
                                                        (_tl1096311015_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12833_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1096311015_)
                                                        (letrec ((_loop1096411018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1096211022_ _getf1096811025_)
                            (if (gx#stx-pair? _hd1096211022_)
                                (let ((_e1096511028_
                                       (gx#syntax-e _hd1096211022_)))
                                  (let ((_lp-hd1096611032_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1096511028_)))
                                        (_lp-tl1096711035_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1096511028_))))
                                    (_loop1096411018_
                                     _lp-tl1096711035_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1096611032_
                                             _getf1096811025_)))))
                                (let ((_getf1096911038_
                                       (reverse _getf1096811025_)))
                                  (if (gx#stx-null? _tl1095510999_)
                                      ((lambda (_L11042_ _L11044_)
                                         (let* ((_g1106411088_
                                                 (lambda (_g1106511084_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1106511084_)))
                                                (_g1106311195_
                                                 (lambda (_g1106511092_)
                                                   (if (gx#stx-pair?
                                                        _g1106511092_)
                                                       (let ((_e1107011095_
                                                              (gx#syntax-e
                                                               _g1106511092_)))
                                                         (let ((_hd1106911099_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1107011095_)))
                       (_tl1106811102_
                        (let () (declare (not safe)) (##cdr _e1107011095_))))
                   (if (gx#stx-pair? _tl1106811102_)
                       (let ((_e1107311105_ (gx#syntax-e _tl1106811102_)))
                         (let ((_hd1107211109_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1107311105_)))
                               (_tl1107111112_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1107311105_))))
                           (if (gx#stx-pair/null? _hd1107211109_)
                               (let ((_g12835_
                                      (gx#syntax-split-splice
                                       _hd1107211109_
                                       '0)))
                                 (begin
                                   (let ((_g12836_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12835_)
                                                (##vector-length _g12835_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12836_ 2)))
                                         (error "Context expects 2 values"
                                                _g12836_)))
                                   (let ((_target1107411115_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12835_ 0)))
                                         (_tl1107611118_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12835_ 1))))
                                     (if (gx#stx-null? _tl1107611118_)
                                         (letrec ((_loop1107711121_
                                                   (lambda (_hd1107511125_
                                                            _macro-getf1108111128_)
                                                     (if (gx#stx-pair?
                                                          _hd1107511125_)
                                                         (let ((_e1107811131_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1107511125_)))
                   (let ((_lp-hd1107911135_
                          (let () (declare (not safe)) (##car _e1107811131_)))
                         (_lp-tl1108011138_
                          (let () (declare (not safe)) (##cdr _e1107811131_))))
                     (_loop1107711121_
                      _lp-tl1108011138_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1107911135_ _macro-getf1108111128_)))))
                 (let ((_macro-getf1108211141_
                        (reverse _macro-getf1108111128_)))
                   (if (gx#stx-null? _tl1107111112_)
                       ((lambda (_L11145_ _L11147_)
                          (let ()
                            (let ((__tmp12960 (gx#datum->syntax '#f 'begin))
                                  (__tmp12837
                                   (let ((__tmp12955
                                          (let ((__tmp12959
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12956
                                                 (let ((__tmp12957
                                                        (let ((__tmp12958
                                                               (lambda (_g1117211175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1117311178_)
                         (let ()
                           (declare (not safe))
                           (cons _g1117211175_ _g1117311178_)))))
                  (declare (not safe))
                  (foldr1 __tmp12958 '() _L11145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11147_
                                                         __tmp12957))))
                                            (declare (not safe))
                                            (cons __tmp12959 __tmp12956)))
                                         (__tmp12838
                                          (let ((__tmp12922
                                                 (let ((__tmp12954
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12923
                                                        (let ((__tmp12951
                                                               (let ((__tmp12952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12953 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12953 '()))))
                         (declare (not safe))
                         (cons _L11044_ __tmp12952)))
                      (__tmp12924
                       (let ((__tmp12925
                              (let ((__tmp12950 (gx#datum->syntax '#f 'if))
                                    (__tmp12926
                                     (let ((__tmp12946
                                            (let ((__tmp12949
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12947
                                                   (let ((__tmp12948
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12948 '()))))
                                              (declare (not safe))
                                              (cons __tmp12949 __tmp12947)))
                                           (__tmp12927
                                            (let ((__tmp12932
                                                   (let ((__tmp12945
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12933
                                                          (let ((__tmp12938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12944 (gx#datum->syntax '#f 'e))
                               (__tmp12939
                                (let ((__tmp12940
                                       (let ((__tmp12943
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12941
                                              (let ((__tmp12942
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12942 '()))))
                                         (declare (not safe))
                                         (cons __tmp12943 __tmp12941))))
                                  (declare (not safe))
                                  (cons __tmp12940 '()))))
                           (declare (not safe))
                           (cons __tmp12944 __tmp12939)))
                        (__tmp12934
                         (let ((__tmp12935
                                (let ((__tmp12936
                                       (let ((__tmp12937
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12937 '()))))
                                  (declare (not safe))
                                  (cons _L11147_ __tmp12936))))
                           (declare (not safe))
                           (cons __tmp12935 '()))))
                    (declare (not safe))
                    (cons __tmp12938 __tmp12934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12945
                                                           __tmp12933)))
                                                  (__tmp12928
                                                   (let ((__tmp12929
                                                          (let ((__tmp12930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12931 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12931 '()))))
                    (declare (not safe))
                    (cons _L11147_ __tmp12930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12929 '()))))
                                              (declare (not safe))
                                              (cons __tmp12932 __tmp12928))))
                                       (declare (not safe))
                                       (cons __tmp12946 __tmp12927))))
                                (declare (not safe))
                                (cons __tmp12950 __tmp12926))))
                         (declare (not safe))
                         (cons __tmp12925 '()))))
                  (declare (not safe))
                  (cons __tmp12951 __tmp12924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12954
                                                         __tmp12923)))
                                                (__tmp12839
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L11042_
                                                    _L11145_
                                                    _L11042_
                                                    _L11145_
                                                    _L11042_)
                                                   (let ((__tmp12840
                                                          (lambda (_g1116611181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1116711184_
                           _g1116811186_
                           _g1116911188_
                           _g1117011190_
                           _g1117111192_)
                    (let ((__tmp12841
                           (let ((__tmp12921 (gx#datum->syntax '#f 'def))
                                 (__tmp12842
                                  (let ((__tmp12918
                                         (let ((__tmp12919
                                                (let ((__tmp12920
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12920 '()))))
                                           (declare (not safe))
                                           (cons _g1116611181_ __tmp12919)))
                                        (__tmp12843
                                         (let ((__tmp12844
                                                (let ((__tmp12917
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12845
                                                       (let ((__tmp12913
                                                              (let ((__tmp12916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12914
                             (let ((__tmp12915 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12915 '()))))
                        (declare (not safe))
                        (cons __tmp12916 __tmp12914)))
                     (__tmp12846
                      (let ((__tmp12875
                             (let ((__tmp12912 (gx#datum->syntax '#f 'let))
                                   (__tmp12876
                                    (let ((__tmp12905
                                           (let ((__tmp12911
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12906
                                                  (let ((__tmp12907
                                                         (let ((__tmp12910
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12908
                        (let ((__tmp12909 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12909 '()))))
                   (declare (not safe))
                   (cons __tmp12910 __tmp12908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12907 '()))))
                                             (declare (not safe))
                                             (cons __tmp12911 __tmp12906)))
                                          (__tmp12877
                                           (let ((__tmp12878
                                                  (let ((__tmp12904
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12879
                                                         (let ((__tmp12901
                                                                (let ((__tmp12902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12903 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12903 '()))))
                          (declare (not safe))
                          (cons _L11147_ __tmp12902)))
                       (__tmp12880
                        (let ((__tmp12898
                               (let ((__tmp12899
                                      (let ((__tmp12900
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12900 '()))))
                                 (declare (not safe))
                                 (cons _g1116711184_ __tmp12899)))
                              (__tmp12881
                               (let ((__tmp12882
                                      (let ((__tmp12897
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12883
                                             (let ((__tmp12884
                                                    (let ((__tmp12894
                                                           (let ((__tmp12896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12895
                          (let () (declare (not safe)) (cons _L11044_ '()))))
                     (declare (not safe))
                     (cons __tmp12896 __tmp12895)))
                  (__tmp12885
                   (let ((__tmp12886
                          (let ((__tmp12893 (gx#datum->syntax '#f '@list))
                                (__tmp12887
                                 (let ((__tmp12890
                                        (let ((__tmp12892
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12891
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1116611181_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12892 __tmp12891)))
                                       (__tmp12888
                                        (let ((__tmp12889
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12889 '()))))
                                   (declare (not safe))
                                   (cons __tmp12890 __tmp12888))))
                            (declare (not safe))
                            (cons __tmp12893 __tmp12887))))
                     (declare (not safe))
                     (cons __tmp12886 '()))))
              (declare (not safe))
              (cons __tmp12894 __tmp12885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12884))))
                                        (declare (not safe))
                                        (cons __tmp12897 __tmp12883))))
                                 (declare (not safe))
                                 (cons __tmp12882 '()))))
                          (declare (not safe))
                          (cons __tmp12898 __tmp12881))))
                   (declare (not safe))
                   (cons __tmp12901 __tmp12880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12904
                                                          __tmp12879))))
                                             (declare (not safe))
                                             (cons __tmp12878 '()))))
                                      (declare (not safe))
                                      (cons __tmp12905 __tmp12877))))
                               (declare (not safe))
                               (cons __tmp12912 __tmp12876)))
                            (__tmp12847
                             (let ((__tmp12848
                                    (let ((__tmp12874
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12849
                                           (let ((__tmp12871
                                                  (let ((__tmp12872
                                                         (let ((__tmp12873
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11147_
                                                          __tmp12872)))
                                                 (__tmp12850
                                                  (let ((__tmp12868
                                                         (let ((__tmp12869
                                                                (let ((__tmp12870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12870 '()))))
                   (declare (not safe))
                   (cons _g1116711184_ __tmp12869)))
                (__tmp12851
                 (let ((__tmp12852
                        (let ((__tmp12867 (gx#datum->syntax '#f 'error))
                              (__tmp12853
                               (let ((__tmp12854
                                      (let ((__tmp12864
                                             (let ((__tmp12866
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12865
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11044_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12866 __tmp12865)))
                                            (__tmp12855
                                             (let ((__tmp12856
                                                    (let ((__tmp12863
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12857
                                                           (let ((__tmp12860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12862 (gx#datum->syntax '#f 'quote))
                                (__tmp12861
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1116611181_ '()))))
                            (declare (not safe))
                            (cons __tmp12862 __tmp12861)))
                         (__tmp12858
                          (let ((__tmp12859 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12859 '()))))
                     (declare (not safe))
                     (cons __tmp12860 __tmp12858))))
              (declare (not safe))
              (cons __tmp12863 __tmp12857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12856 '()))))
                                        (declare (not safe))
                                        (cons __tmp12864 __tmp12855))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12854))))
                          (declare (not safe))
                          (cons __tmp12867 __tmp12853))))
                   (declare (not safe))
                   (cons __tmp12852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12868
                                                          __tmp12851))))
                                             (declare (not safe))
                                             (cons __tmp12871 __tmp12850))))
                                      (declare (not safe))
                                      (cons __tmp12874 __tmp12849))))
                               (declare (not safe))
                               (cons __tmp12848 '()))))
                        (declare (not safe))
                        (cons __tmp12875 __tmp12847))))
                 (declare (not safe))
                 (cons __tmp12913 __tmp12846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12917
                                                        __tmp12845))))
                                           (declare (not safe))
                                           (cons __tmp12844 '()))))
                                    (declare (not safe))
                                    (cons __tmp12918 __tmp12843))))
                             (declare (not safe))
                             (cons __tmp12921 __tmp12842))))
                      (declare (not safe))
                      (cons __tmp12841 _g1117111192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12840
                                                             '()
                                                             _L11042_
                                                             _L11145_
                                                             _L11042_
                                                             _L11145_
                                                             _L11042_)))))
                                            (declare (not safe))
                                            (cons __tmp12922 __tmp12839))))
                                     (declare (not safe))
                                     (cons __tmp12955 __tmp12838))))
                              (declare (not safe))
                              (cons __tmp12960 __tmp12837))))
                        _macro-getf1108211141_
                        _hd1106911099_)
                       (_g1106411088_ _g1106511092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1107711121_
                                            _target1107411115_
                                            '()))
                                         (_g1106411088_ _g1106511092_)))))
                               (_g1106411088_ _g1106511092_))))
                       (_g1106411088_ _g1106511092_))))
               (_g1106411088_ _g1106511092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1106311195_
                                            (list (gx#stx-identifier
                                                   _L11044_
                                                   '"macro-"
                                                   _L11044_)
                                                  (map (lambda (_f11199_)
                                                         (gx#stx-identifier
                                                          _f11199_
                                                          '"macro-"
                                                          _f11199_))
                                                       (let ((__tmp12961
                                                              (lambda (_g1120111204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1120211207_)
                        (let ()
                          (declare (not safe))
                          (cons _g1120111204_ _g1120211207_)))))
                 (declare (not safe))
                 (foldr1 __tmp12961 '() _L11042_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1096911038_
                                       _hd1095911006_)
                                      (_g1094810975_ _g1094910979_)))))))
                  (_loop1096411018_ _target1096111012_ '()))
                (_g1094810975_ _g1094910979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1094810975_ _g1094910979_))))
                                      (_g1094810975_ _g1094910979_))))
                              (_g1094810975_ _g1094910979_))))
                      (_g1094810975_ _g1094910979_)))))
          (_g1094711210_ _stx10945_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11216_)
        (let* ((_g1122011240_
                (lambda (_g1122111236_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1122111236_)))
               (_g1121911311_
                (lambda (_g1122111244_)
                  (if (gx#stx-pair? _g1122111244_)
                      (let ((_e1122511247_ (gx#syntax-e _g1122111244_)))
                        (let ((_hd1122411251_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1122511247_)))
                              (_tl1122311254_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1122511247_))))
                          (if (gx#stx-pair/null? _tl1122311254_)
                              (let ((_g12962_
                                     (gx#syntax-split-splice
                                      _tl1122311254_
                                      '0)))
                                (begin
                                  (let ((_g12963_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12962_)
                                               (##vector-length _g12962_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12963_ 2)))
                                        (error "Context expects 2 values"
                                               _g12963_)))
                                  (let ((_target1122611257_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12962_ 0)))
                                        (_tl1122811260_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12962_ 1))))
                                    (if (gx#stx-null? _tl1122811260_)
                                        (letrec ((_loop1122911263_
                                                  (lambda (_hd1122711267_
                                                           _defexn1123311270_)
                                                    (if (gx#stx-pair?
                                                         _hd1122711267_)
                                                        (let ((_e1123011273_
                                                               (gx#syntax-e
                                                                _hd1122711267_)))
                                                          (let ((_lp-hd1123111277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1123011273_)))
                        (_lp-tl1123211280_
                         (let () (declare (not safe)) (##cdr _e1123011273_))))
                    (_loop1122911263_
                     _lp-tl1123211280_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1123111277_ _defexn1123311270_)))))
                (let ((_defexn1123411283_ (reverse _defexn1123311270_)))
                  ((lambda (_L11287_)
                     (let ((__tmp12969 (gx#datum->syntax '#f 'begin))
                           (__tmp12964
                            (let ((__tmp12965
                                   (lambda (_g1130211305_ _g1130311308_)
                                     (let ((__tmp12966
                                            (let ((__tmp12968
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12967
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1130211305_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12968 __tmp12967))))
                                       (declare (not safe))
                                       (cons __tmp12966 _g1130311308_)))))
                              (declare (not safe))
                              (foldr1 __tmp12965 '() _L11287_))))
                       (declare (not safe))
                       (cons __tmp12969 __tmp12964)))
                   _defexn1123411283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1122911263_
                                           _target1122611257_
                                           '()))
                                        (_g1122011240_ _g1122111244_)))))
                              (_g1122011240_ _g1122111244_))))
                      (_g1122011240_ _g1122111244_)))))
          (_g1121911311_ _$stx11216_))))))
