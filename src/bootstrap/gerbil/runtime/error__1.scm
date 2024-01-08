(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12683_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12690_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12692_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12694_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12702_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12705_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12707_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12709_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12711_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12721_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12723_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12725_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12730_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12732_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12734_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12736_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12738_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12744_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12745_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12746_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12754_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12757_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12759_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12761_|
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
       |[1]#_g12683_|
       'expander-identifiers:
       (let ((__tmp12684
              (let ((__tmp12693 |[1]#_g12683_|)
                    (__tmp12685
                     (let ((__tmp12691 |[1]#_g12692_|)
                           (__tmp12686
                            (let ((__tmp12689 |[1]#_g12690_|)
                                  (__tmp12687
                                   (let ((__tmp12688
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12688))))
                              (declare (not safe))
                              (cons __tmp12689 __tmp12687))))
                       (declare (not safe))
                       (cons __tmp12691 __tmp12686))))
                (declare (not safe))
                (cons __tmp12693 __tmp12685))))
         (declare (not safe))
         (cons '() __tmp12684))
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
       |[1]#_g12694_|
       'expander-identifiers:
       (let ((__tmp12695
              (let ((__tmp12710 |[1]#_g12694_|)
                    (__tmp12696
                     (let ((__tmp12708 |[1]#_g12709_|)
                           (__tmp12697
                            (let ((__tmp12706 |[1]#_g12707_|)
                                  (__tmp12698
                                   (let ((__tmp12703
                                          (let ((__tmp12704 |[1]#_g12705_|))
                                            (declare (not safe))
                                            (cons __tmp12704 '())))
                                         (__tmp12699
                                          (let ((__tmp12700
                                                 (let ((__tmp12701
                                                        |[1]#_g12702_|))
                                                   (declare (not safe))
                                                   (cons __tmp12701 '()))))
                                            (declare (not safe))
                                            (cons __tmp12700 '()))))
                                     (declare (not safe))
                                     (cons __tmp12703 __tmp12699))))
                              (declare (not safe))
                              (cons __tmp12706 __tmp12698))))
                       (declare (not safe))
                       (cons __tmp12708 __tmp12697))))
                (declare (not safe))
                (cons __tmp12710 __tmp12696))))
         (declare (not safe))
         (cons '() __tmp12695))
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
       |[1]#_g12711_|
       'expander-identifiers:
       (let ((__tmp12740
              (let ((__tmp12743 |[1]#_g12694_|)
                    (__tmp12741
                     (let ((__tmp12742 |[1]#_g12683_|))
                       (declare (not safe))
                       (cons __tmp12742 '()))))
                (declare (not safe))
                (cons __tmp12743 __tmp12741)))
             (__tmp12712
              (let ((__tmp12739 |[1]#_g12711_|)
                    (__tmp12713
                     (let ((__tmp12737 |[1]#_g12738_|)
                           (__tmp12714
                            (let ((__tmp12735 |[1]#_g12736_|)
                                  (__tmp12715
                                   (let ((__tmp12726
                                          (let ((__tmp12733 |[1]#_g12734_|)
                                                (__tmp12727
                                                 (let ((__tmp12731
                                                        |[1]#_g12732_|)
                                                       (__tmp12728
                                                        (let ((__tmp12729
                                                               |[1]#_g12730_|))
                                                          (declare (not safe))
                                                          (cons __tmp12729
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12731
                                                         __tmp12728))))
                                            (declare (not safe))
                                            (cons __tmp12733 __tmp12727)))
                                         (__tmp12716
                                          (let ((__tmp12717
                                                 (let ((__tmp12724
                                                        |[1]#_g12725_|)
                                                       (__tmp12718
                                                        (let ((__tmp12722
                                                               |[1]#_g12723_|)
                                                              (__tmp12719
                                                               (let ((__tmp12720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12721_|))
                         (declare (not safe))
                         (cons __tmp12720 '()))))
                  (declare (not safe))
                  (cons __tmp12722 __tmp12719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12724
                                                         __tmp12718))))
                                            (declare (not safe))
                                            (cons __tmp12717 '()))))
                                     (declare (not safe))
                                     (cons __tmp12726 __tmp12716))))
                              (declare (not safe))
                              (cons __tmp12735 __tmp12715))))
                       (declare (not safe))
                       (cons __tmp12737 __tmp12714))))
                (declare (not safe))
                (cons __tmp12739 __tmp12713))))
         (declare (not safe))
         (cons __tmp12740 __tmp12712))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12744_| |[1]#_g12745_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12746_|
       'expander-identifiers:
       (let ((__tmp12763
              (let ((__tmp12766 |[1]#_g12694_|)
                    (__tmp12764
                     (let ((__tmp12765 |[1]#_g12683_|))
                       (declare (not safe))
                       (cons __tmp12765 '()))))
                (declare (not safe))
                (cons __tmp12766 __tmp12764)))
             (__tmp12747
              (let ((__tmp12762 |[1]#_g12746_|)
                    (__tmp12748
                     (let ((__tmp12760 |[1]#_g12761_|)
                           (__tmp12749
                            (let ((__tmp12758 |[1]#_g12759_|)
                                  (__tmp12750
                                   (let ((__tmp12755
                                          (let ((__tmp12756 |[1]#_g12757_|))
                                            (declare (not safe))
                                            (cons __tmp12756 '())))
                                         (__tmp12751
                                          (let ((__tmp12752
                                                 (let ((__tmp12753
                                                        |[1]#_g12754_|))
                                                   (declare (not safe))
                                                   (cons __tmp12753 '()))))
                                            (declare (not safe))
                                            (cons __tmp12752 '()))))
                                     (declare (not safe))
                                     (cons __tmp12755 __tmp12751))))
                              (declare (not safe))
                              (cons __tmp12758 __tmp12750))))
                       (declare (not safe))
                       (cons __tmp12760 __tmp12749))))
                (declare (not safe))
                (cons __tmp12762 __tmp12748))))
         (declare (not safe))
         (cons __tmp12763 __tmp12747))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12744_| |[1]#_g12745_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10819_)
        (let* ((_g1082310841_
                (lambda (_g1082410837_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1082410837_)))
               (_g1082210897_
                (lambda (_g1082410845_)
                  (if (gx#stx-pair? _g1082410845_)
                      (let ((_e1082910848_ (gx#syntax-e _g1082410845_)))
                        (let ((_hd1082810852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1082910848_)))
                              (_tl1082710855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1082910848_))))
                          (if (gx#stx-pair? _tl1082710855_)
                              (let ((_e1083210858_
                                     (gx#syntax-e _tl1082710855_)))
                                (let ((_hd1083110862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1083210858_)))
                                      (_tl1083010865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1083210858_))))
                                  (if (gx#stx-pair? _tl1083010865_)
                                      (let ((_e1083510868_
                                             (gx#syntax-e _tl1083010865_)))
                                        (let ((_hd1083410872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1083510868_)))
                                              (_tl1083310875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1083510868_))))
                                          (if (gx#stx-null? _tl1083310875_)
                                              ((lambda (_L10878_ _L10880_)
                                                 (let ((__tmp12788
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12767
                                                        (let ((__tmp12785
                                                               (let ((__tmp12787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12786
                              (let ()
                                (declare (not safe))
                                (cons _L10880_ '()))))
                         (declare (not safe))
                         (cons __tmp12787 __tmp12786)))
                      (__tmp12768
                       (let ((__tmp12769
                              (let ((__tmp12784 (gx#datum->syntax '#f 'raise))
                                    (__tmp12770
                                     (let ((__tmp12771
                                            (let ((__tmp12783
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12772
                                                   (let ((__tmp12773
                                                          (let ((__tmp12774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12780
                                (let ((__tmp12782
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12781
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10878_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12782 __tmp12781)))
                               (__tmp12775
                                (let ((__tmp12776
                                       (let ((__tmp12777
                                              (let ((__tmp12779
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12778
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12779 __tmp12778))))
                                         (declare (not safe))
                                         (cons __tmp12777 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12776))))
                           (declare (not safe))
                           (cons __tmp12780 __tmp12775))))
                    (declare (not safe))
                    (cons 'where: __tmp12774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12773))))
                                              (declare (not safe))
                                              (cons __tmp12783 __tmp12772))))
                                       (declare (not safe))
                                       (cons __tmp12771 '()))))
                                (declare (not safe))
                                (cons __tmp12784 __tmp12770))))
                         (declare (not safe))
                         (cons __tmp12769 '()))))
                  (declare (not safe))
                  (cons __tmp12785 __tmp12768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12788
                                                         __tmp12767)))
                                               _hd1083410872_
                                               _hd1083110862_)
                                              (_g1082310841_ _g1082410845_))))
                                      (_g1082310841_ _g1082410845_))))
                              (_g1082310841_ _g1082410845_))))
                      (_g1082310841_ _g1082410845_)))))
          (_g1082210897_ _$stx10819_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10901_)
        (let* ((_g1090410931_
                (lambda (_g1090510927_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1090510927_)))
               (_g1090311166_
                (lambda (_g1090510935_)
                  (if (gx#stx-pair? _g1090510935_)
                      (let ((_e1091010938_ (gx#syntax-e _g1090510935_)))
                        (let ((_hd1090910942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1091010938_)))
                              (_tl1090810945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1091010938_))))
                          (if (gx#stx-pair? _tl1090810945_)
                              (let ((_e1091310948_
                                     (gx#syntax-e _tl1090810945_)))
                                (let ((_hd1091210952_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1091310948_)))
                                      (_tl1091110955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1091310948_))))
                                  (if (gx#stx-pair? _hd1091210952_)
                                      (let ((_e1091610958_
                                             (gx#syntax-e _hd1091210952_)))
                                        (let ((_hd1091510962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1091610958_)))
                                              (_tl1091410965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1091610958_))))
                                          (if (gx#stx-pair/null?
                                               _tl1091410965_)
                                              (let ((_g12789_
                                                     (gx#syntax-split-splice
                                                      _tl1091410965_
                                                      '0)))
                                                (begin
                                                  (let ((_g12790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12789_)
                                                               (##vector-length
                                                                _g12789_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12790_ 2)))
                (error "Context expects 2 values" _g12790_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1091710968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12789_
                                                            0)))
                                                        (_tl1091910971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12789_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1091910971_)
                                                        (letrec ((_loop1092010974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1091810978_ _getf1092410981_)
                            (if (gx#stx-pair? _hd1091810978_)
                                (let ((_e1092110984_
                                       (gx#syntax-e _hd1091810978_)))
                                  (let ((_lp-hd1092210988_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1092110984_)))
                                        (_lp-tl1092310991_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1092110984_))))
                                    (_loop1092010974_
                                     _lp-tl1092310991_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1092210988_
                                             _getf1092410981_)))))
                                (let ((_getf1092510994_
                                       (reverse _getf1092410981_)))
                                  (if (gx#stx-null? _tl1091110955_)
                                      ((lambda (_L10998_ _L11000_)
                                         (let* ((_g1102011044_
                                                 (lambda (_g1102111040_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1102111040_)))
                                                (_g1101911151_
                                                 (lambda (_g1102111048_)
                                                   (if (gx#stx-pair?
                                                        _g1102111048_)
                                                       (let ((_e1102611051_
                                                              (gx#syntax-e
                                                               _g1102111048_)))
                                                         (let ((_hd1102511055_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1102611051_)))
                       (_tl1102411058_
                        (let () (declare (not safe)) (##cdr _e1102611051_))))
                   (if (gx#stx-pair? _tl1102411058_)
                       (let ((_e1102911061_ (gx#syntax-e _tl1102411058_)))
                         (let ((_hd1102811065_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1102911061_)))
                               (_tl1102711068_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1102911061_))))
                           (if (gx#stx-pair/null? _hd1102811065_)
                               (let ((_g12791_
                                      (gx#syntax-split-splice
                                       _hd1102811065_
                                       '0)))
                                 (begin
                                   (let ((_g12792_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12791_)
                                                (##vector-length _g12791_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12792_ 2)))
                                         (error "Context expects 2 values"
                                                _g12792_)))
                                   (let ((_target1103011071_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12791_ 0)))
                                         (_tl1103211074_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12791_ 1))))
                                     (if (gx#stx-null? _tl1103211074_)
                                         (letrec ((_loop1103311077_
                                                   (lambda (_hd1103111081_
                                                            _macro-getf1103711084_)
                                                     (if (gx#stx-pair?
                                                          _hd1103111081_)
                                                         (let ((_e1103411087_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1103111081_)))
                   (let ((_lp-hd1103511091_
                          (let () (declare (not safe)) (##car _e1103411087_)))
                         (_lp-tl1103611094_
                          (let () (declare (not safe)) (##cdr _e1103411087_))))
                     (_loop1103311077_
                      _lp-tl1103611094_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1103511091_ _macro-getf1103711084_)))))
                 (let ((_macro-getf1103811097_
                        (reverse _macro-getf1103711084_)))
                   (if (gx#stx-null? _tl1102711068_)
                       ((lambda (_L11101_ _L11103_)
                          (let ()
                            (let ((__tmp12916 (gx#datum->syntax '#f 'begin))
                                  (__tmp12793
                                   (let ((__tmp12911
                                          (let ((__tmp12915
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12912
                                                 (let ((__tmp12913
                                                        (let ((__tmp12914
                                                               (lambda (_g1112811131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1112911134_)
                         (let ()
                           (declare (not safe))
                           (cons _g1112811131_ _g1112911134_)))))
                  (declare (not safe))
                  (foldr1 __tmp12914 '() _L11101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11103_
                                                         __tmp12913))))
                                            (declare (not safe))
                                            (cons __tmp12915 __tmp12912)))
                                         (__tmp12794
                                          (let ((__tmp12878
                                                 (let ((__tmp12910
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12879
                                                        (let ((__tmp12907
                                                               (let ((__tmp12908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12909 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12909 '()))))
                         (declare (not safe))
                         (cons _L11000_ __tmp12908)))
                      (__tmp12880
                       (let ((__tmp12881
                              (let ((__tmp12906 (gx#datum->syntax '#f 'if))
                                    (__tmp12882
                                     (let ((__tmp12902
                                            (let ((__tmp12905
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12903
                                                   (let ((__tmp12904
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12904 '()))))
                                              (declare (not safe))
                                              (cons __tmp12905 __tmp12903)))
                                           (__tmp12883
                                            (let ((__tmp12888
                                                   (let ((__tmp12901
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12889
                                                          (let ((__tmp12894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12900 (gx#datum->syntax '#f 'e))
                               (__tmp12895
                                (let ((__tmp12896
                                       (let ((__tmp12899
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12897
                                              (let ((__tmp12898
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12898 '()))))
                                         (declare (not safe))
                                         (cons __tmp12899 __tmp12897))))
                                  (declare (not safe))
                                  (cons __tmp12896 '()))))
                           (declare (not safe))
                           (cons __tmp12900 __tmp12895)))
                        (__tmp12890
                         (let ((__tmp12891
                                (let ((__tmp12892
                                       (let ((__tmp12893
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12893 '()))))
                                  (declare (not safe))
                                  (cons _L11103_ __tmp12892))))
                           (declare (not safe))
                           (cons __tmp12891 '()))))
                    (declare (not safe))
                    (cons __tmp12894 __tmp12890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12901
                                                           __tmp12889)))
                                                  (__tmp12884
                                                   (let ((__tmp12885
                                                          (let ((__tmp12886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12887 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12887 '()))))
                    (declare (not safe))
                    (cons _L11103_ __tmp12886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12885 '()))))
                                              (declare (not safe))
                                              (cons __tmp12888 __tmp12884))))
                                       (declare (not safe))
                                       (cons __tmp12902 __tmp12883))))
                                (declare (not safe))
                                (cons __tmp12906 __tmp12882))))
                         (declare (not safe))
                         (cons __tmp12881 '()))))
                  (declare (not safe))
                  (cons __tmp12907 __tmp12880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12910
                                                         __tmp12879)))
                                                (__tmp12795
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L10998_
                                                    _L11101_
                                                    _L10998_
                                                    _L11101_
                                                    _L10998_)
                                                   (let ((__tmp12796
                                                          (lambda (_g1112211137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1112311140_
                           _g1112411142_
                           _g1112511144_
                           _g1112611146_
                           _g1112711148_)
                    (let ((__tmp12797
                           (let ((__tmp12877 (gx#datum->syntax '#f 'def))
                                 (__tmp12798
                                  (let ((__tmp12874
                                         (let ((__tmp12875
                                                (let ((__tmp12876
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12876 '()))))
                                           (declare (not safe))
                                           (cons _g1112211137_ __tmp12875)))
                                        (__tmp12799
                                         (let ((__tmp12800
                                                (let ((__tmp12873
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12801
                                                       (let ((__tmp12869
                                                              (let ((__tmp12872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12870
                             (let ((__tmp12871 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12871 '()))))
                        (declare (not safe))
                        (cons __tmp12872 __tmp12870)))
                     (__tmp12802
                      (let ((__tmp12831
                             (let ((__tmp12868 (gx#datum->syntax '#f 'let))
                                   (__tmp12832
                                    (let ((__tmp12861
                                           (let ((__tmp12867
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12862
                                                  (let ((__tmp12863
                                                         (let ((__tmp12866
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12864
                        (let ((__tmp12865 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12865 '()))))
                   (declare (not safe))
                   (cons __tmp12866 __tmp12864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12863 '()))))
                                             (declare (not safe))
                                             (cons __tmp12867 __tmp12862)))
                                          (__tmp12833
                                           (let ((__tmp12834
                                                  (let ((__tmp12860
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12835
                                                         (let ((__tmp12857
                                                                (let ((__tmp12858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12859 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12859 '()))))
                          (declare (not safe))
                          (cons _L11103_ __tmp12858)))
                       (__tmp12836
                        (let ((__tmp12854
                               (let ((__tmp12855
                                      (let ((__tmp12856
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12856 '()))))
                                 (declare (not safe))
                                 (cons _g1112311140_ __tmp12855)))
                              (__tmp12837
                               (let ((__tmp12838
                                      (let ((__tmp12853
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12839
                                             (let ((__tmp12840
                                                    (let ((__tmp12850
                                                           (let ((__tmp12852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12851
                          (let () (declare (not safe)) (cons _L11000_ '()))))
                     (declare (not safe))
                     (cons __tmp12852 __tmp12851)))
                  (__tmp12841
                   (let ((__tmp12842
                          (let ((__tmp12849 (gx#datum->syntax '#f '@list))
                                (__tmp12843
                                 (let ((__tmp12846
                                        (let ((__tmp12848
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12847
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1112211137_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12848 __tmp12847)))
                                       (__tmp12844
                                        (let ((__tmp12845
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12845 '()))))
                                   (declare (not safe))
                                   (cons __tmp12846 __tmp12844))))
                            (declare (not safe))
                            (cons __tmp12849 __tmp12843))))
                     (declare (not safe))
                     (cons __tmp12842 '()))))
              (declare (not safe))
              (cons __tmp12850 __tmp12841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12840))))
                                        (declare (not safe))
                                        (cons __tmp12853 __tmp12839))))
                                 (declare (not safe))
                                 (cons __tmp12838 '()))))
                          (declare (not safe))
                          (cons __tmp12854 __tmp12837))))
                   (declare (not safe))
                   (cons __tmp12857 __tmp12836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12860
                                                          __tmp12835))))
                                             (declare (not safe))
                                             (cons __tmp12834 '()))))
                                      (declare (not safe))
                                      (cons __tmp12861 __tmp12833))))
                               (declare (not safe))
                               (cons __tmp12868 __tmp12832)))
                            (__tmp12803
                             (let ((__tmp12804
                                    (let ((__tmp12830
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12805
                                           (let ((__tmp12827
                                                  (let ((__tmp12828
                                                         (let ((__tmp12829
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12829 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11103_
                                                          __tmp12828)))
                                                 (__tmp12806
                                                  (let ((__tmp12824
                                                         (let ((__tmp12825
                                                                (let ((__tmp12826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12826 '()))))
                   (declare (not safe))
                   (cons _g1112311140_ __tmp12825)))
                (__tmp12807
                 (let ((__tmp12808
                        (let ((__tmp12823 (gx#datum->syntax '#f 'error))
                              (__tmp12809
                               (let ((__tmp12810
                                      (let ((__tmp12820
                                             (let ((__tmp12822
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12821
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11000_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12822 __tmp12821)))
                                            (__tmp12811
                                             (let ((__tmp12812
                                                    (let ((__tmp12819
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12813
                                                           (let ((__tmp12816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12818 (gx#datum->syntax '#f 'quote))
                                (__tmp12817
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1112211137_ '()))))
                            (declare (not safe))
                            (cons __tmp12818 __tmp12817)))
                         (__tmp12814
                          (let ((__tmp12815 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12815 '()))))
                     (declare (not safe))
                     (cons __tmp12816 __tmp12814))))
              (declare (not safe))
              (cons __tmp12819 __tmp12813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12812 '()))))
                                        (declare (not safe))
                                        (cons __tmp12820 __tmp12811))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12810))))
                          (declare (not safe))
                          (cons __tmp12823 __tmp12809))))
                   (declare (not safe))
                   (cons __tmp12808 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12824
                                                          __tmp12807))))
                                             (declare (not safe))
                                             (cons __tmp12827 __tmp12806))))
                                      (declare (not safe))
                                      (cons __tmp12830 __tmp12805))))
                               (declare (not safe))
                               (cons __tmp12804 '()))))
                        (declare (not safe))
                        (cons __tmp12831 __tmp12803))))
                 (declare (not safe))
                 (cons __tmp12869 __tmp12802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12873
                                                        __tmp12801))))
                                           (declare (not safe))
                                           (cons __tmp12800 '()))))
                                    (declare (not safe))
                                    (cons __tmp12874 __tmp12799))))
                             (declare (not safe))
                             (cons __tmp12877 __tmp12798))))
                      (declare (not safe))
                      (cons __tmp12797 _g1112711148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12796
                                                             '()
                                                             _L10998_
                                                             _L11101_
                                                             _L10998_
                                                             _L11101_
                                                             _L10998_)))))
                                            (declare (not safe))
                                            (cons __tmp12878 __tmp12795))))
                                     (declare (not safe))
                                     (cons __tmp12911 __tmp12794))))
                              (declare (not safe))
                              (cons __tmp12916 __tmp12793))))
                        _macro-getf1103811097_
                        _hd1102511055_)
                       (_g1102011044_ _g1102111048_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1103311077_
                                            _target1103011071_
                                            '()))
                                         (_g1102011044_ _g1102111048_)))))
                               (_g1102011044_ _g1102111048_))))
                       (_g1102011044_ _g1102111048_))))
               (_g1102011044_ _g1102111048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1101911151_
                                            (list (gx#stx-identifier
                                                   _L11000_
                                                   '"macro-"
                                                   _L11000_)
                                                  (map (lambda (_f11155_)
                                                         (gx#stx-identifier
                                                          _f11155_
                                                          '"macro-"
                                                          _f11155_))
                                                       (let ((__tmp12917
                                                              (lambda (_g1115711160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1115811163_)
                        (let ()
                          (declare (not safe))
                          (cons _g1115711160_ _g1115811163_)))))
                 (declare (not safe))
                 (foldr1 __tmp12917 '() _L10998_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1092510994_
                                       _hd1091510962_)
                                      (_g1090410931_ _g1090510935_)))))))
                  (_loop1092010974_ _target1091710968_ '()))
                (_g1090410931_ _g1090510935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1090410931_ _g1090510935_))))
                                      (_g1090410931_ _g1090510935_))))
                              (_g1090410931_ _g1090510935_))))
                      (_g1090410931_ _g1090510935_)))))
          (_g1090311166_ _stx10901_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11172_)
        (let* ((_g1117611196_
                (lambda (_g1117711192_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1117711192_)))
               (_g1117511267_
                (lambda (_g1117711200_)
                  (if (gx#stx-pair? _g1117711200_)
                      (let ((_e1118111203_ (gx#syntax-e _g1117711200_)))
                        (let ((_hd1118011207_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1118111203_)))
                              (_tl1117911210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1118111203_))))
                          (if (gx#stx-pair/null? _tl1117911210_)
                              (let ((_g12918_
                                     (gx#syntax-split-splice
                                      _tl1117911210_
                                      '0)))
                                (begin
                                  (let ((_g12919_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12918_)
                                               (##vector-length _g12918_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12919_ 2)))
                                        (error "Context expects 2 values"
                                               _g12919_)))
                                  (let ((_target1118211213_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12918_ 0)))
                                        (_tl1118411216_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12918_ 1))))
                                    (if (gx#stx-null? _tl1118411216_)
                                        (letrec ((_loop1118511219_
                                                  (lambda (_hd1118311223_
                                                           _defexn1118911226_)
                                                    (if (gx#stx-pair?
                                                         _hd1118311223_)
                                                        (let ((_e1118611229_
                                                               (gx#syntax-e
                                                                _hd1118311223_)))
                                                          (let ((_lp-hd1118711233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1118611229_)))
                        (_lp-tl1118811236_
                         (let () (declare (not safe)) (##cdr _e1118611229_))))
                    (_loop1118511219_
                     _lp-tl1118811236_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1118711233_ _defexn1118911226_)))))
                (let ((_defexn1119011239_ (reverse _defexn1118911226_)))
                  ((lambda (_L11243_)
                     (let ((__tmp12925 (gx#datum->syntax '#f 'begin))
                           (__tmp12920
                            (let ((__tmp12921
                                   (lambda (_g1125811261_ _g1125911264_)
                                     (let ((__tmp12922
                                            (let ((__tmp12924
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12923
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1125811261_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12924 __tmp12923))))
                                       (declare (not safe))
                                       (cons __tmp12922 _g1125911264_)))))
                              (declare (not safe))
                              (foldr1 __tmp12921 '() _L11243_))))
                       (declare (not safe))
                       (cons __tmp12925 __tmp12920)))
                   _defexn1119011239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1118511219_
                                           _target1118211213_
                                           '()))
                                        (_g1117611196_ _g1117711200_)))))
                              (_g1117611196_ _g1117711200_))))
                      (_g1117611196_ _g1117711200_)))))
          (_g1117511267_ _$stx11172_))))))
