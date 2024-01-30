(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12681_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12688_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12690_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12692_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12700_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12703_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12705_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12707_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12709_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12719_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12721_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12723_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12728_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12730_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12732_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12734_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12736_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12742_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12743_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12744_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12752_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12755_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12757_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12759_|
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
       |[1]#_g12681_|
       'expander-identifiers:
       (let ((__tmp12682
              (let ((__tmp12691 |[1]#_g12681_|)
                    (__tmp12683
                     (let ((__tmp12689 |[1]#_g12690_|)
                           (__tmp12684
                            (let ((__tmp12687 |[1]#_g12688_|)
                                  (__tmp12685
                                   (let ((__tmp12686
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12686))))
                              (declare (not safe))
                              (cons __tmp12687 __tmp12685))))
                       (declare (not safe))
                       (cons __tmp12689 __tmp12684))))
                (declare (not safe))
                (cons __tmp12691 __tmp12683))))
         (declare (not safe))
         (cons '() __tmp12682))
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
       |[1]#_g12692_|
       'expander-identifiers:
       (let ((__tmp12693
              (let ((__tmp12708 |[1]#_g12692_|)
                    (__tmp12694
                     (let ((__tmp12706 |[1]#_g12707_|)
                           (__tmp12695
                            (let ((__tmp12704 |[1]#_g12705_|)
                                  (__tmp12696
                                   (let ((__tmp12701
                                          (let ((__tmp12702 |[1]#_g12703_|))
                                            (declare (not safe))
                                            (cons __tmp12702 '())))
                                         (__tmp12697
                                          (let ((__tmp12698
                                                 (let ((__tmp12699
                                                        |[1]#_g12700_|))
                                                   (declare (not safe))
                                                   (cons __tmp12699 '()))))
                                            (declare (not safe))
                                            (cons __tmp12698 '()))))
                                     (declare (not safe))
                                     (cons __tmp12701 __tmp12697))))
                              (declare (not safe))
                              (cons __tmp12704 __tmp12696))))
                       (declare (not safe))
                       (cons __tmp12706 __tmp12695))))
                (declare (not safe))
                (cons __tmp12708 __tmp12694))))
         (declare (not safe))
         (cons '() __tmp12693))
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
       |[1]#_g12709_|
       'expander-identifiers:
       (let ((__tmp12738
              (let ((__tmp12741 |[1]#_g12692_|)
                    (__tmp12739
                     (let ((__tmp12740 |[1]#_g12681_|))
                       (declare (not safe))
                       (cons __tmp12740 '()))))
                (declare (not safe))
                (cons __tmp12741 __tmp12739)))
             (__tmp12710
              (let ((__tmp12737 |[1]#_g12709_|)
                    (__tmp12711
                     (let ((__tmp12735 |[1]#_g12736_|)
                           (__tmp12712
                            (let ((__tmp12733 |[1]#_g12734_|)
                                  (__tmp12713
                                   (let ((__tmp12724
                                          (let ((__tmp12731 |[1]#_g12732_|)
                                                (__tmp12725
                                                 (let ((__tmp12729
                                                        |[1]#_g12730_|)
                                                       (__tmp12726
                                                        (let ((__tmp12727
                                                               |[1]#_g12728_|))
                                                          (declare (not safe))
                                                          (cons __tmp12727
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12729
                                                         __tmp12726))))
                                            (declare (not safe))
                                            (cons __tmp12731 __tmp12725)))
                                         (__tmp12714
                                          (let ((__tmp12715
                                                 (let ((__tmp12722
                                                        |[1]#_g12723_|)
                                                       (__tmp12716
                                                        (let ((__tmp12720
                                                               |[1]#_g12721_|)
                                                              (__tmp12717
                                                               (let ((__tmp12718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12719_|))
                         (declare (not safe))
                         (cons __tmp12718 '()))))
                  (declare (not safe))
                  (cons __tmp12720 __tmp12717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12722
                                                         __tmp12716))))
                                            (declare (not safe))
                                            (cons __tmp12715 '()))))
                                     (declare (not safe))
                                     (cons __tmp12724 __tmp12714))))
                              (declare (not safe))
                              (cons __tmp12733 __tmp12713))))
                       (declare (not safe))
                       (cons __tmp12735 __tmp12712))))
                (declare (not safe))
                (cons __tmp12737 __tmp12711))))
         (declare (not safe))
         (cons __tmp12738 __tmp12710))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12742_| |[1]#_g12743_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12744_|
       'expander-identifiers:
       (let ((__tmp12761
              (let ((__tmp12764 |[1]#_g12692_|)
                    (__tmp12762
                     (let ((__tmp12763 |[1]#_g12681_|))
                       (declare (not safe))
                       (cons __tmp12763 '()))))
                (declare (not safe))
                (cons __tmp12764 __tmp12762)))
             (__tmp12745
              (let ((__tmp12760 |[1]#_g12744_|)
                    (__tmp12746
                     (let ((__tmp12758 |[1]#_g12759_|)
                           (__tmp12747
                            (let ((__tmp12756 |[1]#_g12757_|)
                                  (__tmp12748
                                   (let ((__tmp12753
                                          (let ((__tmp12754 |[1]#_g12755_|))
                                            (declare (not safe))
                                            (cons __tmp12754 '())))
                                         (__tmp12749
                                          (let ((__tmp12750
                                                 (let ((__tmp12751
                                                        |[1]#_g12752_|))
                                                   (declare (not safe))
                                                   (cons __tmp12751 '()))))
                                            (declare (not safe))
                                            (cons __tmp12750 '()))))
                                     (declare (not safe))
                                     (cons __tmp12753 __tmp12749))))
                              (declare (not safe))
                              (cons __tmp12756 __tmp12748))))
                       (declare (not safe))
                       (cons __tmp12758 __tmp12747))))
                (declare (not safe))
                (cons __tmp12760 __tmp12746))))
         (declare (not safe))
         (cons __tmp12761 __tmp12745))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12742_| |[1]#_g12743_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10817_)
        (let* ((_g1082110839_
                (lambda (_g1082210835_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1082210835_)))
               (_g1082010895_
                (lambda (_g1082210843_)
                  (if (gx#stx-pair? _g1082210843_)
                      (let ((_e1082710846_ (gx#syntax-e _g1082210843_)))
                        (let ((_hd1082610850_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1082710846_)))
                              (_tl1082510853_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1082710846_))))
                          (if (gx#stx-pair? _tl1082510853_)
                              (let ((_e1083010856_
                                     (gx#syntax-e _tl1082510853_)))
                                (let ((_hd1082910860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1083010856_)))
                                      (_tl1082810863_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1083010856_))))
                                  (if (gx#stx-pair? _tl1082810863_)
                                      (let ((_e1083310866_
                                             (gx#syntax-e _tl1082810863_)))
                                        (let ((_hd1083210870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1083310866_)))
                                              (_tl1083110873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1083310866_))))
                                          (if (gx#stx-null? _tl1083110873_)
                                              ((lambda (_L10876_ _L10878_)
                                                 (let ((__tmp12786
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12765
                                                        (let ((__tmp12783
                                                               (let ((__tmp12785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12784
                              (let ()
                                (declare (not safe))
                                (cons _L10878_ '()))))
                         (declare (not safe))
                         (cons __tmp12785 __tmp12784)))
                      (__tmp12766
                       (let ((__tmp12767
                              (let ((__tmp12782 (gx#datum->syntax '#f 'raise))
                                    (__tmp12768
                                     (let ((__tmp12769
                                            (let ((__tmp12781
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12770
                                                   (let ((__tmp12771
                                                          (let ((__tmp12772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12778
                                (let ((__tmp12780
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12779
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10876_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12780 __tmp12779)))
                               (__tmp12773
                                (let ((__tmp12774
                                       (let ((__tmp12775
                                              (let ((__tmp12777
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12776
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10878_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12777 __tmp12776))))
                                         (declare (not safe))
                                         (cons __tmp12775 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12774))))
                           (declare (not safe))
                           (cons __tmp12778 __tmp12773))))
                    (declare (not safe))
                    (cons 'where: __tmp12772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12771))))
                                              (declare (not safe))
                                              (cons __tmp12781 __tmp12770))))
                                       (declare (not safe))
                                       (cons __tmp12769 '()))))
                                (declare (not safe))
                                (cons __tmp12782 __tmp12768))))
                         (declare (not safe))
                         (cons __tmp12767 '()))))
                  (declare (not safe))
                  (cons __tmp12783 __tmp12766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12786
                                                         __tmp12765)))
                                               _hd1083210870_
                                               _hd1082910860_)
                                              (_g1082110839_ _g1082210843_))))
                                      (_g1082110839_ _g1082210843_))))
                              (_g1082110839_ _g1082210843_))))
                      (_g1082110839_ _g1082210843_)))))
          (_g1082010895_ _$stx10817_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10899_)
        (let* ((_g1090210929_
                (lambda (_g1090310925_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1090310925_)))
               (_g1090111164_
                (lambda (_g1090310933_)
                  (if (gx#stx-pair? _g1090310933_)
                      (let ((_e1090810936_ (gx#syntax-e _g1090310933_)))
                        (let ((_hd1090710940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1090810936_)))
                              (_tl1090610943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1090810936_))))
                          (if (gx#stx-pair? _tl1090610943_)
                              (let ((_e1091110946_
                                     (gx#syntax-e _tl1090610943_)))
                                (let ((_hd1091010950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1091110946_)))
                                      (_tl1090910953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1091110946_))))
                                  (if (gx#stx-pair? _hd1091010950_)
                                      (let ((_e1091410956_
                                             (gx#syntax-e _hd1091010950_)))
                                        (let ((_hd1091310960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1091410956_)))
                                              (_tl1091210963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1091410956_))))
                                          (if (gx#stx-pair/null?
                                               _tl1091210963_)
                                              (let ((_g12787_
                                                     (gx#syntax-split-splice
                                                      _tl1091210963_
                                                      '0)))
                                                (begin
                                                  (let ((_g12788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12787_)
                                                               (##vector-length
                                                                _g12787_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12788_ 2)))
                (error "Context expects 2 values" _g12788_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1091510966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12787_
                                                            0)))
                                                        (_tl1091710969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12787_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1091710969_)
                                                        (letrec ((_loop1091810972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1091610976_ _getf1092210979_)
                            (if (gx#stx-pair? _hd1091610976_)
                                (let ((_e1091910982_
                                       (gx#syntax-e _hd1091610976_)))
                                  (let ((_lp-hd1092010986_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1091910982_)))
                                        (_lp-tl1092110989_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1091910982_))))
                                    (_loop1091810972_
                                     _lp-tl1092110989_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1092010986_
                                             _getf1092210979_)))))
                                (let ((_getf1092310992_
                                       (reverse _getf1092210979_)))
                                  (if (gx#stx-null? _tl1090910953_)
                                      ((lambda (_L10996_ _L10998_)
                                         (let* ((_g1101811042_
                                                 (lambda (_g1101911038_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1101911038_)))
                                                (_g1101711149_
                                                 (lambda (_g1101911046_)
                                                   (if (gx#stx-pair?
                                                        _g1101911046_)
                                                       (let ((_e1102411049_
                                                              (gx#syntax-e
                                                               _g1101911046_)))
                                                         (let ((_hd1102311053_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1102411049_)))
                       (_tl1102211056_
                        (let () (declare (not safe)) (##cdr _e1102411049_))))
                   (if (gx#stx-pair? _tl1102211056_)
                       (let ((_e1102711059_ (gx#syntax-e _tl1102211056_)))
                         (let ((_hd1102611063_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1102711059_)))
                               (_tl1102511066_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1102711059_))))
                           (if (gx#stx-pair/null? _hd1102611063_)
                               (let ((_g12789_
                                      (gx#syntax-split-splice
                                       _hd1102611063_
                                       '0)))
                                 (begin
                                   (let ((_g12790_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12789_)
                                                (##vector-length _g12789_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12790_ 2)))
                                         (error "Context expects 2 values"
                                                _g12790_)))
                                   (let ((_target1102811069_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12789_ 0)))
                                         (_tl1103011072_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12789_ 1))))
                                     (if (gx#stx-null? _tl1103011072_)
                                         (letrec ((_loop1103111075_
                                                   (lambda (_hd1102911079_
                                                            _macro-getf1103511082_)
                                                     (if (gx#stx-pair?
                                                          _hd1102911079_)
                                                         (let ((_e1103211085_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1102911079_)))
                   (let ((_lp-hd1103311089_
                          (let () (declare (not safe)) (##car _e1103211085_)))
                         (_lp-tl1103411092_
                          (let () (declare (not safe)) (##cdr _e1103211085_))))
                     (_loop1103111075_
                      _lp-tl1103411092_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1103311089_ _macro-getf1103511082_)))))
                 (let ((_macro-getf1103611095_
                        (reverse _macro-getf1103511082_)))
                   (if (gx#stx-null? _tl1102511066_)
                       ((lambda (_L11099_ _L11101_)
                          (let ()
                            (let ((__tmp12914 (gx#datum->syntax '#f 'begin))
                                  (__tmp12791
                                   (let ((__tmp12909
                                          (let ((__tmp12913
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12910
                                                 (let ((__tmp12911
                                                        (let ((__tmp12912
                                                               (lambda (_g1112611129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1112711132_)
                         (let ()
                           (declare (not safe))
                           (cons _g1112611129_ _g1112711132_)))))
                  (declare (not safe))
                  (foldr1 __tmp12912 '() _L11099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11101_
                                                         __tmp12911))))
                                            (declare (not safe))
                                            (cons __tmp12913 __tmp12910)))
                                         (__tmp12792
                                          (let ((__tmp12876
                                                 (let ((__tmp12908
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12877
                                                        (let ((__tmp12905
                                                               (let ((__tmp12906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12907 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12907 '()))))
                         (declare (not safe))
                         (cons _L10998_ __tmp12906)))
                      (__tmp12878
                       (let ((__tmp12879
                              (let ((__tmp12904 (gx#datum->syntax '#f 'if))
                                    (__tmp12880
                                     (let ((__tmp12900
                                            (let ((__tmp12903
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12901
                                                   (let ((__tmp12902
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12902 '()))))
                                              (declare (not safe))
                                              (cons __tmp12903 __tmp12901)))
                                           (__tmp12881
                                            (let ((__tmp12886
                                                   (let ((__tmp12899
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12887
                                                          (let ((__tmp12892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12898 (gx#datum->syntax '#f 'e))
                               (__tmp12893
                                (let ((__tmp12894
                                       (let ((__tmp12897
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12895
                                              (let ((__tmp12896
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12896 '()))))
                                         (declare (not safe))
                                         (cons __tmp12897 __tmp12895))))
                                  (declare (not safe))
                                  (cons __tmp12894 '()))))
                           (declare (not safe))
                           (cons __tmp12898 __tmp12893)))
                        (__tmp12888
                         (let ((__tmp12889
                                (let ((__tmp12890
                                       (let ((__tmp12891
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12891 '()))))
                                  (declare (not safe))
                                  (cons _L11101_ __tmp12890))))
                           (declare (not safe))
                           (cons __tmp12889 '()))))
                    (declare (not safe))
                    (cons __tmp12892 __tmp12888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12899
                                                           __tmp12887)))
                                                  (__tmp12882
                                                   (let ((__tmp12883
                                                          (let ((__tmp12884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12885 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12885 '()))))
                    (declare (not safe))
                    (cons _L11101_ __tmp12884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12883 '()))))
                                              (declare (not safe))
                                              (cons __tmp12886 __tmp12882))))
                                       (declare (not safe))
                                       (cons __tmp12900 __tmp12881))))
                                (declare (not safe))
                                (cons __tmp12904 __tmp12880))))
                         (declare (not safe))
                         (cons __tmp12879 '()))))
                  (declare (not safe))
                  (cons __tmp12905 __tmp12878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12908
                                                         __tmp12877)))
                                                (__tmp12793
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L10996_
                                                    _L11099_
                                                    _L10996_
                                                    _L11099_
                                                    _L10996_)
                                                   (let ((__tmp12794
                                                          (lambda (_g1112011135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1112111138_
                           _g1112211140_
                           _g1112311142_
                           _g1112411144_
                           _g1112511146_)
                    (let ((__tmp12795
                           (let ((__tmp12875 (gx#datum->syntax '#f 'def))
                                 (__tmp12796
                                  (let ((__tmp12872
                                         (let ((__tmp12873
                                                (let ((__tmp12874
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12874 '()))))
                                           (declare (not safe))
                                           (cons _g1112011135_ __tmp12873)))
                                        (__tmp12797
                                         (let ((__tmp12798
                                                (let ((__tmp12871
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12799
                                                       (let ((__tmp12867
                                                              (let ((__tmp12870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12868
                             (let ((__tmp12869 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12869 '()))))
                        (declare (not safe))
                        (cons __tmp12870 __tmp12868)))
                     (__tmp12800
                      (let ((__tmp12829
                             (let ((__tmp12866 (gx#datum->syntax '#f 'let))
                                   (__tmp12830
                                    (let ((__tmp12859
                                           (let ((__tmp12865
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12860
                                                  (let ((__tmp12861
                                                         (let ((__tmp12864
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12862
                        (let ((__tmp12863 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12863 '()))))
                   (declare (not safe))
                   (cons __tmp12864 __tmp12862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12861 '()))))
                                             (declare (not safe))
                                             (cons __tmp12865 __tmp12860)))
                                          (__tmp12831
                                           (let ((__tmp12832
                                                  (let ((__tmp12858
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12833
                                                         (let ((__tmp12855
                                                                (let ((__tmp12856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12857 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12857 '()))))
                          (declare (not safe))
                          (cons _L11101_ __tmp12856)))
                       (__tmp12834
                        (let ((__tmp12852
                               (let ((__tmp12853
                                      (let ((__tmp12854
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12854 '()))))
                                 (declare (not safe))
                                 (cons _g1112111138_ __tmp12853)))
                              (__tmp12835
                               (let ((__tmp12836
                                      (let ((__tmp12851
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12837
                                             (let ((__tmp12838
                                                    (let ((__tmp12848
                                                           (let ((__tmp12850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12849
                          (let () (declare (not safe)) (cons _L10998_ '()))))
                     (declare (not safe))
                     (cons __tmp12850 __tmp12849)))
                  (__tmp12839
                   (let ((__tmp12840
                          (let ((__tmp12847 (gx#datum->syntax '#f '@list))
                                (__tmp12841
                                 (let ((__tmp12844
                                        (let ((__tmp12846
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12845
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1112011135_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12846 __tmp12845)))
                                       (__tmp12842
                                        (let ((__tmp12843
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12843 '()))))
                                   (declare (not safe))
                                   (cons __tmp12844 __tmp12842))))
                            (declare (not safe))
                            (cons __tmp12847 __tmp12841))))
                     (declare (not safe))
                     (cons __tmp12840 '()))))
              (declare (not safe))
              (cons __tmp12848 __tmp12839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12838))))
                                        (declare (not safe))
                                        (cons __tmp12851 __tmp12837))))
                                 (declare (not safe))
                                 (cons __tmp12836 '()))))
                          (declare (not safe))
                          (cons __tmp12852 __tmp12835))))
                   (declare (not safe))
                   (cons __tmp12855 __tmp12834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12858
                                                          __tmp12833))))
                                             (declare (not safe))
                                             (cons __tmp12832 '()))))
                                      (declare (not safe))
                                      (cons __tmp12859 __tmp12831))))
                               (declare (not safe))
                               (cons __tmp12866 __tmp12830)))
                            (__tmp12801
                             (let ((__tmp12802
                                    (let ((__tmp12828
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12803
                                           (let ((__tmp12825
                                                  (let ((__tmp12826
                                                         (let ((__tmp12827
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12827 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11101_
                                                          __tmp12826)))
                                                 (__tmp12804
                                                  (let ((__tmp12822
                                                         (let ((__tmp12823
                                                                (let ((__tmp12824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12824 '()))))
                   (declare (not safe))
                   (cons _g1112111138_ __tmp12823)))
                (__tmp12805
                 (let ((__tmp12806
                        (let ((__tmp12821 (gx#datum->syntax '#f 'error))
                              (__tmp12807
                               (let ((__tmp12808
                                      (let ((__tmp12818
                                             (let ((__tmp12820
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12819
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L10998_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12820 __tmp12819)))
                                            (__tmp12809
                                             (let ((__tmp12810
                                                    (let ((__tmp12817
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12811
                                                           (let ((__tmp12814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12816 (gx#datum->syntax '#f 'quote))
                                (__tmp12815
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1112011135_ '()))))
                            (declare (not safe))
                            (cons __tmp12816 __tmp12815)))
                         (__tmp12812
                          (let ((__tmp12813 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12813 '()))))
                     (declare (not safe))
                     (cons __tmp12814 __tmp12812))))
              (declare (not safe))
              (cons __tmp12817 __tmp12811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12810 '()))))
                                        (declare (not safe))
                                        (cons __tmp12818 __tmp12809))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12808))))
                          (declare (not safe))
                          (cons __tmp12821 __tmp12807))))
                   (declare (not safe))
                   (cons __tmp12806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12822
                                                          __tmp12805))))
                                             (declare (not safe))
                                             (cons __tmp12825 __tmp12804))))
                                      (declare (not safe))
                                      (cons __tmp12828 __tmp12803))))
                               (declare (not safe))
                               (cons __tmp12802 '()))))
                        (declare (not safe))
                        (cons __tmp12829 __tmp12801))))
                 (declare (not safe))
                 (cons __tmp12867 __tmp12800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12871
                                                        __tmp12799))))
                                           (declare (not safe))
                                           (cons __tmp12798 '()))))
                                    (declare (not safe))
                                    (cons __tmp12872 __tmp12797))))
                             (declare (not safe))
                             (cons __tmp12875 __tmp12796))))
                      (declare (not safe))
                      (cons __tmp12795 _g1112511146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12794
                                                             '()
                                                             _L10996_
                                                             _L11099_
                                                             _L10996_
                                                             _L11099_
                                                             _L10996_)))))
                                            (declare (not safe))
                                            (cons __tmp12876 __tmp12793))))
                                     (declare (not safe))
                                     (cons __tmp12909 __tmp12792))))
                              (declare (not safe))
                              (cons __tmp12914 __tmp12791))))
                        _macro-getf1103611095_
                        _hd1102311053_)
                       (_g1101811042_ _g1101911046_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1103111075_
                                            _target1102811069_
                                            '()))
                                         (_g1101811042_ _g1101911046_)))))
                               (_g1101811042_ _g1101911046_))))
                       (_g1101811042_ _g1101911046_))))
               (_g1101811042_ _g1101911046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1101711149_
                                            (list (gx#stx-identifier
                                                   _L10998_
                                                   '"macro-"
                                                   _L10998_)
                                                  (map (lambda (_f11153_)
                                                         (gx#stx-identifier
                                                          _f11153_
                                                          '"macro-"
                                                          _f11153_))
                                                       (let ((__tmp12915
                                                              (lambda (_g1115511158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1115611161_)
                        (let ()
                          (declare (not safe))
                          (cons _g1115511158_ _g1115611161_)))))
                 (declare (not safe))
                 (foldr1 __tmp12915 '() _L10996_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1092310992_
                                       _hd1091310960_)
                                      (_g1090210929_ _g1090310933_)))))))
                  (_loop1091810972_ _target1091510966_ '()))
                (_g1090210929_ _g1090310933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1090210929_ _g1090310933_))))
                                      (_g1090210929_ _g1090310933_))))
                              (_g1090210929_ _g1090310933_))))
                      (_g1090210929_ _g1090310933_)))))
          (_g1090111164_ _stx10899_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11170_)
        (let* ((_g1117411194_
                (lambda (_g1117511190_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1117511190_)))
               (_g1117311265_
                (lambda (_g1117511198_)
                  (if (gx#stx-pair? _g1117511198_)
                      (let ((_e1117911201_ (gx#syntax-e _g1117511198_)))
                        (let ((_hd1117811205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1117911201_)))
                              (_tl1117711208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1117911201_))))
                          (if (gx#stx-pair/null? _tl1117711208_)
                              (let ((_g12916_
                                     (gx#syntax-split-splice
                                      _tl1117711208_
                                      '0)))
                                (begin
                                  (let ((_g12917_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12916_)
                                               (##vector-length _g12916_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12917_ 2)))
                                        (error "Context expects 2 values"
                                               _g12917_)))
                                  (let ((_target1118011211_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12916_ 0)))
                                        (_tl1118211214_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12916_ 1))))
                                    (if (gx#stx-null? _tl1118211214_)
                                        (letrec ((_loop1118311217_
                                                  (lambda (_hd1118111221_
                                                           _defexn1118711224_)
                                                    (if (gx#stx-pair?
                                                         _hd1118111221_)
                                                        (let ((_e1118411227_
                                                               (gx#syntax-e
                                                                _hd1118111221_)))
                                                          (let ((_lp-hd1118511231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1118411227_)))
                        (_lp-tl1118611234_
                         (let () (declare (not safe)) (##cdr _e1118411227_))))
                    (_loop1118311217_
                     _lp-tl1118611234_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1118511231_ _defexn1118711224_)))))
                (let ((_defexn1118811237_ (reverse _defexn1118711224_)))
                  ((lambda (_L11241_)
                     (let ((__tmp12923 (gx#datum->syntax '#f 'begin))
                           (__tmp12918
                            (let ((__tmp12919
                                   (lambda (_g1125611259_ _g1125711262_)
                                     (let ((__tmp12920
                                            (let ((__tmp12922
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12921
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1125611259_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12922 __tmp12921))))
                                       (declare (not safe))
                                       (cons __tmp12920 _g1125711262_)))))
                              (declare (not safe))
                              (foldr1 __tmp12919 '() _L11241_))))
                       (declare (not safe))
                       (cons __tmp12923 __tmp12918)))
                   _defexn1118811237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1118311217_
                                           _target1118011211_
                                           '()))
                                        (_g1117411194_ _g1117511198_)))))
                              (_g1117411194_ _g1117511198_))))
                      (_g1117411194_ _g1117511198_)))))
          (_g1117311265_ _$stx11170_))))))
