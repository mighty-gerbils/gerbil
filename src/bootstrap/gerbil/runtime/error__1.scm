(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12704_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12711_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12713_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12715_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12723_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12726_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12728_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12730_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12732_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12742_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12744_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12746_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12751_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12753_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12755_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12757_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12759_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12765_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12766_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12767_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12775_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12778_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12780_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12782_|
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
       |[1]#_g12704_|
       'expander-identifiers:
       (let ((__tmp12705
              (let ((__tmp12714 |[1]#_g12704_|)
                    (__tmp12706
                     (let ((__tmp12712 |[1]#_g12713_|)
                           (__tmp12707
                            (let ((__tmp12710 |[1]#_g12711_|)
                                  (__tmp12708
                                   (let ((__tmp12709
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12709))))
                              (declare (not safe))
                              (cons __tmp12710 __tmp12708))))
                       (declare (not safe))
                       (cons __tmp12712 __tmp12707))))
                (declare (not safe))
                (cons __tmp12714 __tmp12706))))
         (declare (not safe))
         (cons '() __tmp12705))
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
       |[1]#_g12715_|
       'expander-identifiers:
       (let ((__tmp12716
              (let ((__tmp12731 |[1]#_g12715_|)
                    (__tmp12717
                     (let ((__tmp12729 |[1]#_g12730_|)
                           (__tmp12718
                            (let ((__tmp12727 |[1]#_g12728_|)
                                  (__tmp12719
                                   (let ((__tmp12724
                                          (let ((__tmp12725 |[1]#_g12726_|))
                                            (declare (not safe))
                                            (cons __tmp12725 '())))
                                         (__tmp12720
                                          (let ((__tmp12721
                                                 (let ((__tmp12722
                                                        |[1]#_g12723_|))
                                                   (declare (not safe))
                                                   (cons __tmp12722 '()))))
                                            (declare (not safe))
                                            (cons __tmp12721 '()))))
                                     (declare (not safe))
                                     (cons __tmp12724 __tmp12720))))
                              (declare (not safe))
                              (cons __tmp12727 __tmp12719))))
                       (declare (not safe))
                       (cons __tmp12729 __tmp12718))))
                (declare (not safe))
                (cons __tmp12731 __tmp12717))))
         (declare (not safe))
         (cons '() __tmp12716))
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
       |[1]#_g12732_|
       'expander-identifiers:
       (let ((__tmp12761
              (let ((__tmp12764 |[1]#_g12715_|)
                    (__tmp12762
                     (let ((__tmp12763 |[1]#_g12704_|))
                       (declare (not safe))
                       (cons __tmp12763 '()))))
                (declare (not safe))
                (cons __tmp12764 __tmp12762)))
             (__tmp12733
              (let ((__tmp12760 |[1]#_g12732_|)
                    (__tmp12734
                     (let ((__tmp12758 |[1]#_g12759_|)
                           (__tmp12735
                            (let ((__tmp12756 |[1]#_g12757_|)
                                  (__tmp12736
                                   (let ((__tmp12747
                                          (let ((__tmp12754 |[1]#_g12755_|)
                                                (__tmp12748
                                                 (let ((__tmp12752
                                                        |[1]#_g12753_|)
                                                       (__tmp12749
                                                        (let ((__tmp12750
                                                               |[1]#_g12751_|))
                                                          (declare (not safe))
                                                          (cons __tmp12750
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12752
                                                         __tmp12749))))
                                            (declare (not safe))
                                            (cons __tmp12754 __tmp12748)))
                                         (__tmp12737
                                          (let ((__tmp12738
                                                 (let ((__tmp12745
                                                        |[1]#_g12746_|)
                                                       (__tmp12739
                                                        (let ((__tmp12743
                                                               |[1]#_g12744_|)
                                                              (__tmp12740
                                                               (let ((__tmp12741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12742_|))
                         (declare (not safe))
                         (cons __tmp12741 '()))))
                  (declare (not safe))
                  (cons __tmp12743 __tmp12740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12745
                                                         __tmp12739))))
                                            (declare (not safe))
                                            (cons __tmp12738 '()))))
                                     (declare (not safe))
                                     (cons __tmp12747 __tmp12737))))
                              (declare (not safe))
                              (cons __tmp12756 __tmp12736))))
                       (declare (not safe))
                       (cons __tmp12758 __tmp12735))))
                (declare (not safe))
                (cons __tmp12760 __tmp12734))))
         (declare (not safe))
         (cons __tmp12761 __tmp12733))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12765_| |[1]#_g12766_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12767_|
       'expander-identifiers:
       (let ((__tmp12784
              (let ((__tmp12787 |[1]#_g12715_|)
                    (__tmp12785
                     (let ((__tmp12786 |[1]#_g12704_|))
                       (declare (not safe))
                       (cons __tmp12786 '()))))
                (declare (not safe))
                (cons __tmp12787 __tmp12785)))
             (__tmp12768
              (let ((__tmp12783 |[1]#_g12767_|)
                    (__tmp12769
                     (let ((__tmp12781 |[1]#_g12782_|)
                           (__tmp12770
                            (let ((__tmp12779 |[1]#_g12780_|)
                                  (__tmp12771
                                   (let ((__tmp12776
                                          (let ((__tmp12777 |[1]#_g12778_|))
                                            (declare (not safe))
                                            (cons __tmp12777 '())))
                                         (__tmp12772
                                          (let ((__tmp12773
                                                 (let ((__tmp12774
                                                        |[1]#_g12775_|))
                                                   (declare (not safe))
                                                   (cons __tmp12774 '()))))
                                            (declare (not safe))
                                            (cons __tmp12773 '()))))
                                     (declare (not safe))
                                     (cons __tmp12776 __tmp12772))))
                              (declare (not safe))
                              (cons __tmp12779 __tmp12771))))
                       (declare (not safe))
                       (cons __tmp12781 __tmp12770))))
                (declare (not safe))
                (cons __tmp12783 __tmp12769))))
         (declare (not safe))
         (cons __tmp12784 __tmp12768))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12765_| |[1]#_g12766_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10846_)
        (let* ((_g1085010868_
                (lambda (_g1085110864_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1085110864_)))
               (_g1084910924_
                (lambda (_g1085110872_)
                  (if (gx#stx-pair? _g1085110872_)
                      (let ((_e1085610875_ (gx#syntax-e _g1085110872_)))
                        (let ((_hd1085510879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1085610875_)))
                              (_tl1085410882_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1085610875_))))
                          (if (gx#stx-pair? _tl1085410882_)
                              (let ((_e1085910885_
                                     (gx#syntax-e _tl1085410882_)))
                                (let ((_hd1085810889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1085910885_)))
                                      (_tl1085710892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1085910885_))))
                                  (if (gx#stx-pair? _tl1085710892_)
                                      (let ((_e1086210895_
                                             (gx#syntax-e _tl1085710892_)))
                                        (let ((_hd1086110899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1086210895_)))
                                              (_tl1086010902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1086210895_))))
                                          (if (gx#stx-null? _tl1086010902_)
                                              ((lambda (_L10905_ _L10907_)
                                                 (let ((__tmp12809
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12788
                                                        (let ((__tmp12806
                                                               (let ((__tmp12808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12807
                              (let ()
                                (declare (not safe))
                                (cons _L10907_ '()))))
                         (declare (not safe))
                         (cons __tmp12808 __tmp12807)))
                      (__tmp12789
                       (let ((__tmp12790
                              (let ((__tmp12805 (gx#datum->syntax '#f 'raise))
                                    (__tmp12791
                                     (let ((__tmp12792
                                            (let ((__tmp12804
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12793
                                                   (let ((__tmp12794
                                                          (let ((__tmp12795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12801
                                (let ((__tmp12803
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12802
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10905_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12803 __tmp12802)))
                               (__tmp12796
                                (let ((__tmp12797
                                       (let ((__tmp12798
                                              (let ((__tmp12800
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12799
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10907_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12800 __tmp12799))))
                                         (declare (not safe))
                                         (cons __tmp12798 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12797))))
                           (declare (not safe))
                           (cons __tmp12801 __tmp12796))))
                    (declare (not safe))
                    (cons 'where: __tmp12795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12794))))
                                              (declare (not safe))
                                              (cons __tmp12804 __tmp12793))))
                                       (declare (not safe))
                                       (cons __tmp12792 '()))))
                                (declare (not safe))
                                (cons __tmp12805 __tmp12791))))
                         (declare (not safe))
                         (cons __tmp12790 '()))))
                  (declare (not safe))
                  (cons __tmp12806 __tmp12789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12809
                                                         __tmp12788)))
                                               _hd1086110899_
                                               _hd1085810889_)
                                              (_g1085010868_ _g1085110872_))))
                                      (_g1085010868_ _g1085110872_))))
                              (_g1085010868_ _g1085110872_))))
                      (_g1085010868_ _g1085110872_)))))
          (_g1084910924_ _$stx10846_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10928_)
        (let* ((_g1093110958_
                (lambda (_g1093210954_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1093210954_)))
               (_g1093011193_
                (lambda (_g1093210962_)
                  (if (gx#stx-pair? _g1093210962_)
                      (let ((_e1093710965_ (gx#syntax-e _g1093210962_)))
                        (let ((_hd1093610969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1093710965_)))
                              (_tl1093510972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1093710965_))))
                          (if (gx#stx-pair? _tl1093510972_)
                              (let ((_e1094010975_
                                     (gx#syntax-e _tl1093510972_)))
                                (let ((_hd1093910979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1094010975_)))
                                      (_tl1093810982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1094010975_))))
                                  (if (gx#stx-pair? _hd1093910979_)
                                      (let ((_e1094310985_
                                             (gx#syntax-e _hd1093910979_)))
                                        (let ((_hd1094210989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1094310985_)))
                                              (_tl1094110992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1094310985_))))
                                          (if (gx#stx-pair/null?
                                               _tl1094110992_)
                                              (let ((_g12810_
                                                     (gx#syntax-split-splice
                                                      _tl1094110992_
                                                      '0)))
                                                (begin
                                                  (let ((_g12811_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12810_)
                                                               (##vector-length
                                                                _g12810_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12811_ 2)))
                (error "Context expects 2 values" _g12811_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1094410995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12810_
                                                            0)))
                                                        (_tl1094610998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12810_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1094610998_)
                                                        (letrec ((_loop1094711001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1094511005_ _getf1095111008_)
                            (if (gx#stx-pair? _hd1094511005_)
                                (let ((_e1094811011_
                                       (gx#syntax-e _hd1094511005_)))
                                  (let ((_lp-hd1094911015_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1094811011_)))
                                        (_lp-tl1095011018_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1094811011_))))
                                    (_loop1094711001_
                                     _lp-tl1095011018_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1094911015_
                                             _getf1095111008_)))))
                                (let ((_getf1095211021_
                                       (reverse _getf1095111008_)))
                                  (if (gx#stx-null? _tl1093810982_)
                                      ((lambda (_L11025_ _L11027_)
                                         (let* ((_g1104711071_
                                                 (lambda (_g1104811067_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1104811067_)))
                                                (_g1104611178_
                                                 (lambda (_g1104811075_)
                                                   (if (gx#stx-pair?
                                                        _g1104811075_)
                                                       (let ((_e1105311078_
                                                              (gx#syntax-e
                                                               _g1104811075_)))
                                                         (let ((_hd1105211082_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1105311078_)))
                       (_tl1105111085_
                        (let () (declare (not safe)) (##cdr _e1105311078_))))
                   (if (gx#stx-pair? _tl1105111085_)
                       (let ((_e1105611088_ (gx#syntax-e _tl1105111085_)))
                         (let ((_hd1105511092_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1105611088_)))
                               (_tl1105411095_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1105611088_))))
                           (if (gx#stx-pair/null? _hd1105511092_)
                               (let ((_g12812_
                                      (gx#syntax-split-splice
                                       _hd1105511092_
                                       '0)))
                                 (begin
                                   (let ((_g12813_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12812_)
                                                (##vector-length _g12812_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12813_ 2)))
                                         (error "Context expects 2 values"
                                                _g12813_)))
                                   (let ((_target1105711098_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12812_ 0)))
                                         (_tl1105911101_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12812_ 1))))
                                     (if (gx#stx-null? _tl1105911101_)
                                         (letrec ((_loop1106011104_
                                                   (lambda (_hd1105811108_
                                                            _macro-getf1106411111_)
                                                     (if (gx#stx-pair?
                                                          _hd1105811108_)
                                                         (let ((_e1106111114_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1105811108_)))
                   (let ((_lp-hd1106211118_
                          (let () (declare (not safe)) (##car _e1106111114_)))
                         (_lp-tl1106311121_
                          (let () (declare (not safe)) (##cdr _e1106111114_))))
                     (_loop1106011104_
                      _lp-tl1106311121_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1106211118_ _macro-getf1106411111_)))))
                 (let ((_macro-getf1106511124_
                        (reverse _macro-getf1106411111_)))
                   (if (gx#stx-null? _tl1105411095_)
                       ((lambda (_L11128_ _L11130_)
                          (let ()
                            (let ((__tmp12937 (gx#datum->syntax '#f 'begin))
                                  (__tmp12814
                                   (let ((__tmp12932
                                          (let ((__tmp12936
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12933
                                                 (let ((__tmp12934
                                                        (let ((__tmp12935
                                                               (lambda (_g1115511158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1115611161_)
                         (let ()
                           (declare (not safe))
                           (cons _g1115511158_ _g1115611161_)))))
                  (declare (not safe))
                  (foldr1 __tmp12935 '() _L11128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11130_
                                                         __tmp12934))))
                                            (declare (not safe))
                                            (cons __tmp12936 __tmp12933)))
                                         (__tmp12815
                                          (let ((__tmp12899
                                                 (let ((__tmp12931
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12900
                                                        (let ((__tmp12928
                                                               (let ((__tmp12929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12930 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12930 '()))))
                         (declare (not safe))
                         (cons _L11027_ __tmp12929)))
                      (__tmp12901
                       (let ((__tmp12902
                              (let ((__tmp12927 (gx#datum->syntax '#f 'if))
                                    (__tmp12903
                                     (let ((__tmp12923
                                            (let ((__tmp12926
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12924
                                                   (let ((__tmp12925
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12925 '()))))
                                              (declare (not safe))
                                              (cons __tmp12926 __tmp12924)))
                                           (__tmp12904
                                            (let ((__tmp12909
                                                   (let ((__tmp12922
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12910
                                                          (let ((__tmp12915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12921 (gx#datum->syntax '#f 'e))
                               (__tmp12916
                                (let ((__tmp12917
                                       (let ((__tmp12920
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12918
                                              (let ((__tmp12919
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12919 '()))))
                                         (declare (not safe))
                                         (cons __tmp12920 __tmp12918))))
                                  (declare (not safe))
                                  (cons __tmp12917 '()))))
                           (declare (not safe))
                           (cons __tmp12921 __tmp12916)))
                        (__tmp12911
                         (let ((__tmp12912
                                (let ((__tmp12913
                                       (let ((__tmp12914
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12914 '()))))
                                  (declare (not safe))
                                  (cons _L11130_ __tmp12913))))
                           (declare (not safe))
                           (cons __tmp12912 '()))))
                    (declare (not safe))
                    (cons __tmp12915 __tmp12911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12922
                                                           __tmp12910)))
                                                  (__tmp12905
                                                   (let ((__tmp12906
                                                          (let ((__tmp12907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12908 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12908 '()))))
                    (declare (not safe))
                    (cons _L11130_ __tmp12907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12906 '()))))
                                              (declare (not safe))
                                              (cons __tmp12909 __tmp12905))))
                                       (declare (not safe))
                                       (cons __tmp12923 __tmp12904))))
                                (declare (not safe))
                                (cons __tmp12927 __tmp12903))))
                         (declare (not safe))
                         (cons __tmp12902 '()))))
                  (declare (not safe))
                  (cons __tmp12928 __tmp12901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12931
                                                         __tmp12900)))
                                                (__tmp12816
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L11025_
                                                    _L11128_
                                                    _L11025_
                                                    _L11128_
                                                    _L11025_)
                                                   (let ((__tmp12817
                                                          (lambda (_g1114911164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1115011167_
                           _g1115111169_
                           _g1115211171_
                           _g1115311173_
                           _g1115411175_)
                    (let ((__tmp12818
                           (let ((__tmp12898 (gx#datum->syntax '#f 'def))
                                 (__tmp12819
                                  (let ((__tmp12895
                                         (let ((__tmp12896
                                                (let ((__tmp12897
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12897 '()))))
                                           (declare (not safe))
                                           (cons _g1114911164_ __tmp12896)))
                                        (__tmp12820
                                         (let ((__tmp12821
                                                (let ((__tmp12894
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12822
                                                       (let ((__tmp12890
                                                              (let ((__tmp12893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12891
                             (let ((__tmp12892 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12892 '()))))
                        (declare (not safe))
                        (cons __tmp12893 __tmp12891)))
                     (__tmp12823
                      (let ((__tmp12852
                             (let ((__tmp12889 (gx#datum->syntax '#f 'let))
                                   (__tmp12853
                                    (let ((__tmp12882
                                           (let ((__tmp12888
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12883
                                                  (let ((__tmp12884
                                                         (let ((__tmp12887
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12885
                        (let ((__tmp12886 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12886 '()))))
                   (declare (not safe))
                   (cons __tmp12887 __tmp12885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12884 '()))))
                                             (declare (not safe))
                                             (cons __tmp12888 __tmp12883)))
                                          (__tmp12854
                                           (let ((__tmp12855
                                                  (let ((__tmp12881
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12856
                                                         (let ((__tmp12878
                                                                (let ((__tmp12879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12880 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12880 '()))))
                          (declare (not safe))
                          (cons _L11130_ __tmp12879)))
                       (__tmp12857
                        (let ((__tmp12875
                               (let ((__tmp12876
                                      (let ((__tmp12877
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12877 '()))))
                                 (declare (not safe))
                                 (cons _g1115011167_ __tmp12876)))
                              (__tmp12858
                               (let ((__tmp12859
                                      (let ((__tmp12874
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12860
                                             (let ((__tmp12861
                                                    (let ((__tmp12871
                                                           (let ((__tmp12873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12872
                          (let () (declare (not safe)) (cons _L11027_ '()))))
                     (declare (not safe))
                     (cons __tmp12873 __tmp12872)))
                  (__tmp12862
                   (let ((__tmp12863
                          (let ((__tmp12870 (gx#datum->syntax '#f '@list))
                                (__tmp12864
                                 (let ((__tmp12867
                                        (let ((__tmp12869
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12868
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1114911164_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12869 __tmp12868)))
                                       (__tmp12865
                                        (let ((__tmp12866
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12866 '()))))
                                   (declare (not safe))
                                   (cons __tmp12867 __tmp12865))))
                            (declare (not safe))
                            (cons __tmp12870 __tmp12864))))
                     (declare (not safe))
                     (cons __tmp12863 '()))))
              (declare (not safe))
              (cons __tmp12871 __tmp12862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12861))))
                                        (declare (not safe))
                                        (cons __tmp12874 __tmp12860))))
                                 (declare (not safe))
                                 (cons __tmp12859 '()))))
                          (declare (not safe))
                          (cons __tmp12875 __tmp12858))))
                   (declare (not safe))
                   (cons __tmp12878 __tmp12857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12881
                                                          __tmp12856))))
                                             (declare (not safe))
                                             (cons __tmp12855 '()))))
                                      (declare (not safe))
                                      (cons __tmp12882 __tmp12854))))
                               (declare (not safe))
                               (cons __tmp12889 __tmp12853)))
                            (__tmp12824
                             (let ((__tmp12825
                                    (let ((__tmp12851
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12826
                                           (let ((__tmp12848
                                                  (let ((__tmp12849
                                                         (let ((__tmp12850
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12850 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11130_
                                                          __tmp12849)))
                                                 (__tmp12827
                                                  (let ((__tmp12845
                                                         (let ((__tmp12846
                                                                (let ((__tmp12847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12847 '()))))
                   (declare (not safe))
                   (cons _g1115011167_ __tmp12846)))
                (__tmp12828
                 (let ((__tmp12829
                        (let ((__tmp12844 (gx#datum->syntax '#f 'error))
                              (__tmp12830
                               (let ((__tmp12831
                                      (let ((__tmp12841
                                             (let ((__tmp12843
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12842
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11027_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12843 __tmp12842)))
                                            (__tmp12832
                                             (let ((__tmp12833
                                                    (let ((__tmp12840
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12834
                                                           (let ((__tmp12837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12839 (gx#datum->syntax '#f 'quote))
                                (__tmp12838
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1114911164_ '()))))
                            (declare (not safe))
                            (cons __tmp12839 __tmp12838)))
                         (__tmp12835
                          (let ((__tmp12836 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12836 '()))))
                     (declare (not safe))
                     (cons __tmp12837 __tmp12835))))
              (declare (not safe))
              (cons __tmp12840 __tmp12834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12833 '()))))
                                        (declare (not safe))
                                        (cons __tmp12841 __tmp12832))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12831))))
                          (declare (not safe))
                          (cons __tmp12844 __tmp12830))))
                   (declare (not safe))
                   (cons __tmp12829 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12845
                                                          __tmp12828))))
                                             (declare (not safe))
                                             (cons __tmp12848 __tmp12827))))
                                      (declare (not safe))
                                      (cons __tmp12851 __tmp12826))))
                               (declare (not safe))
                               (cons __tmp12825 '()))))
                        (declare (not safe))
                        (cons __tmp12852 __tmp12824))))
                 (declare (not safe))
                 (cons __tmp12890 __tmp12823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12894
                                                        __tmp12822))))
                                           (declare (not safe))
                                           (cons __tmp12821 '()))))
                                    (declare (not safe))
                                    (cons __tmp12895 __tmp12820))))
                             (declare (not safe))
                             (cons __tmp12898 __tmp12819))))
                      (declare (not safe))
                      (cons __tmp12818 _g1115411175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12817
                                                             '()
                                                             _L11025_
                                                             _L11128_
                                                             _L11025_
                                                             _L11128_
                                                             _L11025_)))))
                                            (declare (not safe))
                                            (cons __tmp12899 __tmp12816))))
                                     (declare (not safe))
                                     (cons __tmp12932 __tmp12815))))
                              (declare (not safe))
                              (cons __tmp12937 __tmp12814))))
                        _macro-getf1106511124_
                        _hd1105211082_)
                       (_g1104711071_ _g1104811075_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1106011104_
                                            _target1105711098_
                                            '()))
                                         (_g1104711071_ _g1104811075_)))))
                               (_g1104711071_ _g1104811075_))))
                       (_g1104711071_ _g1104811075_))))
               (_g1104711071_ _g1104811075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1104611178_
                                            (list (gx#stx-identifier
                                                   _L11027_
                                                   '"macro-"
                                                   _L11027_)
                                                  (map (lambda (_f11182_)
                                                         (gx#stx-identifier
                                                          _f11182_
                                                          '"macro-"
                                                          _f11182_))
                                                       (let ((__tmp12938
                                                              (lambda (_g1118411187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1118511190_)
                        (let ()
                          (declare (not safe))
                          (cons _g1118411187_ _g1118511190_)))))
                 (declare (not safe))
                 (foldr1 __tmp12938 '() _L11025_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1095211021_
                                       _hd1094210989_)
                                      (_g1093110958_ _g1093210962_)))))))
                  (_loop1094711001_ _target1094410995_ '()))
                (_g1093110958_ _g1093210962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1093110958_ _g1093210962_))))
                                      (_g1093110958_ _g1093210962_))))
                              (_g1093110958_ _g1093210962_))))
                      (_g1093110958_ _g1093210962_)))))
          (_g1093011193_ _stx10928_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11199_)
        (let* ((_g1120311223_
                (lambda (_g1120411219_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1120411219_)))
               (_g1120211294_
                (lambda (_g1120411227_)
                  (if (gx#stx-pair? _g1120411227_)
                      (let ((_e1120811230_ (gx#syntax-e _g1120411227_)))
                        (let ((_hd1120711234_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1120811230_)))
                              (_tl1120611237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1120811230_))))
                          (if (gx#stx-pair/null? _tl1120611237_)
                              (let ((_g12939_
                                     (gx#syntax-split-splice
                                      _tl1120611237_
                                      '0)))
                                (begin
                                  (let ((_g12940_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12939_)
                                               (##vector-length _g12939_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12940_ 2)))
                                        (error "Context expects 2 values"
                                               _g12940_)))
                                  (let ((_target1120911240_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12939_ 0)))
                                        (_tl1121111243_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12939_ 1))))
                                    (if (gx#stx-null? _tl1121111243_)
                                        (letrec ((_loop1121211246_
                                                  (lambda (_hd1121011250_
                                                           _defexn1121611253_)
                                                    (if (gx#stx-pair?
                                                         _hd1121011250_)
                                                        (let ((_e1121311256_
                                                               (gx#syntax-e
                                                                _hd1121011250_)))
                                                          (let ((_lp-hd1121411260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1121311256_)))
                        (_lp-tl1121511263_
                         (let () (declare (not safe)) (##cdr _e1121311256_))))
                    (_loop1121211246_
                     _lp-tl1121511263_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1121411260_ _defexn1121611253_)))))
                (let ((_defexn1121711266_ (reverse _defexn1121611253_)))
                  ((lambda (_L11270_)
                     (let ((__tmp12946 (gx#datum->syntax '#f 'begin))
                           (__tmp12941
                            (let ((__tmp12942
                                   (lambda (_g1128511288_ _g1128611291_)
                                     (let ((__tmp12943
                                            (let ((__tmp12945
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12944
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1128511288_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12945 __tmp12944))))
                                       (declare (not safe))
                                       (cons __tmp12943 _g1128611291_)))))
                              (declare (not safe))
                              (foldr1 __tmp12942 '() _L11270_))))
                       (declare (not safe))
                       (cons __tmp12946 __tmp12941)))
                   _defexn1121711266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1121211246_
                                           _target1120911240_
                                           '()))
                                        (_g1120311223_ _g1120411227_)))))
                              (_g1120311223_ _g1120411227_))))
                      (_g1120311223_ _g1120411227_)))))
          (_g1120211294_ _$stx11199_))))))
