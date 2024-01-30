(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12679_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12686_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12688_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12690_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12698_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12701_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12703_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12705_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12707_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12717_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12719_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12721_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12726_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12728_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12730_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12732_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12734_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12740_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12741_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12742_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12750_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12753_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12755_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12757_|
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
       |[1]#_g12679_|
       'expander-identifiers:
       (let ((__tmp12680
              (let ((__tmp12689 |[1]#_g12679_|)
                    (__tmp12681
                     (let ((__tmp12687 |[1]#_g12688_|)
                           (__tmp12682
                            (let ((__tmp12685 |[1]#_g12686_|)
                                  (__tmp12683
                                   (let ((__tmp12684
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12684))))
                              (declare (not safe))
                              (cons __tmp12685 __tmp12683))))
                       (declare (not safe))
                       (cons __tmp12687 __tmp12682))))
                (declare (not safe))
                (cons __tmp12689 __tmp12681))))
         (declare (not safe))
         (cons '() __tmp12680))
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
       |[1]#_g12690_|
       'expander-identifiers:
       (let ((__tmp12691
              (let ((__tmp12706 |[1]#_g12690_|)
                    (__tmp12692
                     (let ((__tmp12704 |[1]#_g12705_|)
                           (__tmp12693
                            (let ((__tmp12702 |[1]#_g12703_|)
                                  (__tmp12694
                                   (let ((__tmp12699
                                          (let ((__tmp12700 |[1]#_g12701_|))
                                            (declare (not safe))
                                            (cons __tmp12700 '())))
                                         (__tmp12695
                                          (let ((__tmp12696
                                                 (let ((__tmp12697
                                                        |[1]#_g12698_|))
                                                   (declare (not safe))
                                                   (cons __tmp12697 '()))))
                                            (declare (not safe))
                                            (cons __tmp12696 '()))))
                                     (declare (not safe))
                                     (cons __tmp12699 __tmp12695))))
                              (declare (not safe))
                              (cons __tmp12702 __tmp12694))))
                       (declare (not safe))
                       (cons __tmp12704 __tmp12693))))
                (declare (not safe))
                (cons __tmp12706 __tmp12692))))
         (declare (not safe))
         (cons '() __tmp12691))
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
       |[1]#_g12707_|
       'expander-identifiers:
       (let ((__tmp12736
              (let ((__tmp12739 |[1]#_g12690_|)
                    (__tmp12737
                     (let ((__tmp12738 |[1]#_g12679_|))
                       (declare (not safe))
                       (cons __tmp12738 '()))))
                (declare (not safe))
                (cons __tmp12739 __tmp12737)))
             (__tmp12708
              (let ((__tmp12735 |[1]#_g12707_|)
                    (__tmp12709
                     (let ((__tmp12733 |[1]#_g12734_|)
                           (__tmp12710
                            (let ((__tmp12731 |[1]#_g12732_|)
                                  (__tmp12711
                                   (let ((__tmp12722
                                          (let ((__tmp12729 |[1]#_g12730_|)
                                                (__tmp12723
                                                 (let ((__tmp12727
                                                        |[1]#_g12728_|)
                                                       (__tmp12724
                                                        (let ((__tmp12725
                                                               |[1]#_g12726_|))
                                                          (declare (not safe))
                                                          (cons __tmp12725
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12727
                                                         __tmp12724))))
                                            (declare (not safe))
                                            (cons __tmp12729 __tmp12723)))
                                         (__tmp12712
                                          (let ((__tmp12713
                                                 (let ((__tmp12720
                                                        |[1]#_g12721_|)
                                                       (__tmp12714
                                                        (let ((__tmp12718
                                                               |[1]#_g12719_|)
                                                              (__tmp12715
                                                               (let ((__tmp12716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12717_|))
                         (declare (not safe))
                         (cons __tmp12716 '()))))
                  (declare (not safe))
                  (cons __tmp12718 __tmp12715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12720
                                                         __tmp12714))))
                                            (declare (not safe))
                                            (cons __tmp12713 '()))))
                                     (declare (not safe))
                                     (cons __tmp12722 __tmp12712))))
                              (declare (not safe))
                              (cons __tmp12731 __tmp12711))))
                       (declare (not safe))
                       (cons __tmp12733 __tmp12710))))
                (declare (not safe))
                (cons __tmp12735 __tmp12709))))
         (declare (not safe))
         (cons __tmp12736 __tmp12708))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12740_| |[1]#_g12741_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12742_|
       'expander-identifiers:
       (let ((__tmp12759
              (let ((__tmp12762 |[1]#_g12690_|)
                    (__tmp12760
                     (let ((__tmp12761 |[1]#_g12679_|))
                       (declare (not safe))
                       (cons __tmp12761 '()))))
                (declare (not safe))
                (cons __tmp12762 __tmp12760)))
             (__tmp12743
              (let ((__tmp12758 |[1]#_g12742_|)
                    (__tmp12744
                     (let ((__tmp12756 |[1]#_g12757_|)
                           (__tmp12745
                            (let ((__tmp12754 |[1]#_g12755_|)
                                  (__tmp12746
                                   (let ((__tmp12751
                                          (let ((__tmp12752 |[1]#_g12753_|))
                                            (declare (not safe))
                                            (cons __tmp12752 '())))
                                         (__tmp12747
                                          (let ((__tmp12748
                                                 (let ((__tmp12749
                                                        |[1]#_g12750_|))
                                                   (declare (not safe))
                                                   (cons __tmp12749 '()))))
                                            (declare (not safe))
                                            (cons __tmp12748 '()))))
                                     (declare (not safe))
                                     (cons __tmp12751 __tmp12747))))
                              (declare (not safe))
                              (cons __tmp12754 __tmp12746))))
                       (declare (not safe))
                       (cons __tmp12756 __tmp12745))))
                (declare (not safe))
                (cons __tmp12758 __tmp12744))))
         (declare (not safe))
         (cons __tmp12759 __tmp12743))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12740_| |[1]#_g12741_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10815_)
        (let* ((_g1081910837_
                (lambda (_g1082010833_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1082010833_)))
               (_g1081810893_
                (lambda (_g1082010841_)
                  (if (gx#stx-pair? _g1082010841_)
                      (let ((_e1082510844_ (gx#syntax-e _g1082010841_)))
                        (let ((_hd1082410848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1082510844_)))
                              (_tl1082310851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1082510844_))))
                          (if (gx#stx-pair? _tl1082310851_)
                              (let ((_e1082810854_
                                     (gx#syntax-e _tl1082310851_)))
                                (let ((_hd1082710858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1082810854_)))
                                      (_tl1082610861_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1082810854_))))
                                  (if (gx#stx-pair? _tl1082610861_)
                                      (let ((_e1083110864_
                                             (gx#syntax-e _tl1082610861_)))
                                        (let ((_hd1083010868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1083110864_)))
                                              (_tl1082910871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1083110864_))))
                                          (if (gx#stx-null? _tl1082910871_)
                                              ((lambda (_L10874_ _L10876_)
                                                 (let ((__tmp12784
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12763
                                                        (let ((__tmp12781
                                                               (let ((__tmp12783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12782
                              (let ()
                                (declare (not safe))
                                (cons _L10876_ '()))))
                         (declare (not safe))
                         (cons __tmp12783 __tmp12782)))
                      (__tmp12764
                       (let ((__tmp12765
                              (let ((__tmp12780 (gx#datum->syntax '#f 'raise))
                                    (__tmp12766
                                     (let ((__tmp12767
                                            (let ((__tmp12779
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12768
                                                   (let ((__tmp12769
                                                          (let ((__tmp12770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12776
                                (let ((__tmp12778
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12777
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10874_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12778 __tmp12777)))
                               (__tmp12771
                                (let ((__tmp12772
                                       (let ((__tmp12773
                                              (let ((__tmp12775
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12774
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10876_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12775 __tmp12774))))
                                         (declare (not safe))
                                         (cons __tmp12773 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12772))))
                           (declare (not safe))
                           (cons __tmp12776 __tmp12771))))
                    (declare (not safe))
                    (cons 'where: __tmp12770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12769))))
                                              (declare (not safe))
                                              (cons __tmp12779 __tmp12768))))
                                       (declare (not safe))
                                       (cons __tmp12767 '()))))
                                (declare (not safe))
                                (cons __tmp12780 __tmp12766))))
                         (declare (not safe))
                         (cons __tmp12765 '()))))
                  (declare (not safe))
                  (cons __tmp12781 __tmp12764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12784
                                                         __tmp12763)))
                                               _hd1083010868_
                                               _hd1082710858_)
                                              (_g1081910837_ _g1082010841_))))
                                      (_g1081910837_ _g1082010841_))))
                              (_g1081910837_ _g1082010841_))))
                      (_g1081910837_ _g1082010841_)))))
          (_g1081810893_ _$stx10815_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10897_)
        (let* ((_g1090010927_
                (lambda (_g1090110923_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1090110923_)))
               (_g1089911162_
                (lambda (_g1090110931_)
                  (if (gx#stx-pair? _g1090110931_)
                      (let ((_e1090610934_ (gx#syntax-e _g1090110931_)))
                        (let ((_hd1090510938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1090610934_)))
                              (_tl1090410941_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1090610934_))))
                          (if (gx#stx-pair? _tl1090410941_)
                              (let ((_e1090910944_
                                     (gx#syntax-e _tl1090410941_)))
                                (let ((_hd1090810948_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1090910944_)))
                                      (_tl1090710951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1090910944_))))
                                  (if (gx#stx-pair? _hd1090810948_)
                                      (let ((_e1091210954_
                                             (gx#syntax-e _hd1090810948_)))
                                        (let ((_hd1091110958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1091210954_)))
                                              (_tl1091010961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1091210954_))))
                                          (if (gx#stx-pair/null?
                                               _tl1091010961_)
                                              (let ((_g12785_
                                                     (gx#syntax-split-splice
                                                      _tl1091010961_
                                                      '0)))
                                                (begin
                                                  (let ((_g12786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12785_)
                                                               (##vector-length
                                                                _g12785_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12786_ 2)))
                (error "Context expects 2 values" _g12786_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1091310964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12785_
                                                            0)))
                                                        (_tl1091510967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12785_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1091510967_)
                                                        (letrec ((_loop1091610970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1091410974_ _getf1092010977_)
                            (if (gx#stx-pair? _hd1091410974_)
                                (let ((_e1091710980_
                                       (gx#syntax-e _hd1091410974_)))
                                  (let ((_lp-hd1091810984_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1091710980_)))
                                        (_lp-tl1091910987_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1091710980_))))
                                    (_loop1091610970_
                                     _lp-tl1091910987_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1091810984_
                                             _getf1092010977_)))))
                                (let ((_getf1092110990_
                                       (reverse _getf1092010977_)))
                                  (if (gx#stx-null? _tl1090710951_)
                                      ((lambda (_L10994_ _L10996_)
                                         (let* ((_g1101611040_
                                                 (lambda (_g1101711036_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1101711036_)))
                                                (_g1101511147_
                                                 (lambda (_g1101711044_)
                                                   (if (gx#stx-pair?
                                                        _g1101711044_)
                                                       (let ((_e1102211047_
                                                              (gx#syntax-e
                                                               _g1101711044_)))
                                                         (let ((_hd1102111051_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1102211047_)))
                       (_tl1102011054_
                        (let () (declare (not safe)) (##cdr _e1102211047_))))
                   (if (gx#stx-pair? _tl1102011054_)
                       (let ((_e1102511057_ (gx#syntax-e _tl1102011054_)))
                         (let ((_hd1102411061_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1102511057_)))
                               (_tl1102311064_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1102511057_))))
                           (if (gx#stx-pair/null? _hd1102411061_)
                               (let ((_g12787_
                                      (gx#syntax-split-splice
                                       _hd1102411061_
                                       '0)))
                                 (begin
                                   (let ((_g12788_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12787_)
                                                (##vector-length _g12787_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12788_ 2)))
                                         (error "Context expects 2 values"
                                                _g12788_)))
                                   (let ((_target1102611067_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12787_ 0)))
                                         (_tl1102811070_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12787_ 1))))
                                     (if (gx#stx-null? _tl1102811070_)
                                         (letrec ((_loop1102911073_
                                                   (lambda (_hd1102711077_
                                                            _macro-getf1103311080_)
                                                     (if (gx#stx-pair?
                                                          _hd1102711077_)
                                                         (let ((_e1103011083_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1102711077_)))
                   (let ((_lp-hd1103111087_
                          (let () (declare (not safe)) (##car _e1103011083_)))
                         (_lp-tl1103211090_
                          (let () (declare (not safe)) (##cdr _e1103011083_))))
                     (_loop1102911073_
                      _lp-tl1103211090_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1103111087_ _macro-getf1103311080_)))))
                 (let ((_macro-getf1103411093_
                        (reverse _macro-getf1103311080_)))
                   (if (gx#stx-null? _tl1102311064_)
                       ((lambda (_L11097_ _L11099_)
                          (let ()
                            (let ((__tmp12912 (gx#datum->syntax '#f 'begin))
                                  (__tmp12789
                                   (let ((__tmp12907
                                          (let ((__tmp12911
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12908
                                                 (let ((__tmp12909
                                                        (let ((__tmp12910
                                                               (lambda (_g1112411127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1112511130_)
                         (let ()
                           (declare (not safe))
                           (cons _g1112411127_ _g1112511130_)))))
                  (declare (not safe))
                  (foldr1 __tmp12910 '() _L11097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11099_
                                                         __tmp12909))))
                                            (declare (not safe))
                                            (cons __tmp12911 __tmp12908)))
                                         (__tmp12790
                                          (let ((__tmp12874
                                                 (let ((__tmp12906
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12875
                                                        (let ((__tmp12903
                                                               (let ((__tmp12904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12905 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12905 '()))))
                         (declare (not safe))
                         (cons _L10996_ __tmp12904)))
                      (__tmp12876
                       (let ((__tmp12877
                              (let ((__tmp12902 (gx#datum->syntax '#f 'if))
                                    (__tmp12878
                                     (let ((__tmp12898
                                            (let ((__tmp12901
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12899
                                                   (let ((__tmp12900
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12900 '()))))
                                              (declare (not safe))
                                              (cons __tmp12901 __tmp12899)))
                                           (__tmp12879
                                            (let ((__tmp12884
                                                   (let ((__tmp12897
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12885
                                                          (let ((__tmp12890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12896 (gx#datum->syntax '#f 'e))
                               (__tmp12891
                                (let ((__tmp12892
                                       (let ((__tmp12895
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12893
                                              (let ((__tmp12894
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12894 '()))))
                                         (declare (not safe))
                                         (cons __tmp12895 __tmp12893))))
                                  (declare (not safe))
                                  (cons __tmp12892 '()))))
                           (declare (not safe))
                           (cons __tmp12896 __tmp12891)))
                        (__tmp12886
                         (let ((__tmp12887
                                (let ((__tmp12888
                                       (let ((__tmp12889
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12889 '()))))
                                  (declare (not safe))
                                  (cons _L11099_ __tmp12888))))
                           (declare (not safe))
                           (cons __tmp12887 '()))))
                    (declare (not safe))
                    (cons __tmp12890 __tmp12886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12897
                                                           __tmp12885)))
                                                  (__tmp12880
                                                   (let ((__tmp12881
                                                          (let ((__tmp12882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12883 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12883 '()))))
                    (declare (not safe))
                    (cons _L11099_ __tmp12882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12881 '()))))
                                              (declare (not safe))
                                              (cons __tmp12884 __tmp12880))))
                                       (declare (not safe))
                                       (cons __tmp12898 __tmp12879))))
                                (declare (not safe))
                                (cons __tmp12902 __tmp12878))))
                         (declare (not safe))
                         (cons __tmp12877 '()))))
                  (declare (not safe))
                  (cons __tmp12903 __tmp12876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12906
                                                         __tmp12875)))
                                                (__tmp12791
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L10994_
                                                    _L11097_
                                                    _L10994_
                                                    _L11097_
                                                    _L10994_)
                                                   (let ((__tmp12792
                                                          (lambda (_g1111811133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1111911136_
                           _g1112011138_
                           _g1112111140_
                           _g1112211142_
                           _g1112311144_)
                    (let ((__tmp12793
                           (let ((__tmp12873 (gx#datum->syntax '#f 'def))
                                 (__tmp12794
                                  (let ((__tmp12870
                                         (let ((__tmp12871
                                                (let ((__tmp12872
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12872 '()))))
                                           (declare (not safe))
                                           (cons _g1111811133_ __tmp12871)))
                                        (__tmp12795
                                         (let ((__tmp12796
                                                (let ((__tmp12869
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12797
                                                       (let ((__tmp12865
                                                              (let ((__tmp12868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12866
                             (let ((__tmp12867 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12867 '()))))
                        (declare (not safe))
                        (cons __tmp12868 __tmp12866)))
                     (__tmp12798
                      (let ((__tmp12827
                             (let ((__tmp12864 (gx#datum->syntax '#f 'let))
                                   (__tmp12828
                                    (let ((__tmp12857
                                           (let ((__tmp12863
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12858
                                                  (let ((__tmp12859
                                                         (let ((__tmp12862
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12860
                        (let ((__tmp12861 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12861 '()))))
                   (declare (not safe))
                   (cons __tmp12862 __tmp12860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12859 '()))))
                                             (declare (not safe))
                                             (cons __tmp12863 __tmp12858)))
                                          (__tmp12829
                                           (let ((__tmp12830
                                                  (let ((__tmp12856
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12831
                                                         (let ((__tmp12853
                                                                (let ((__tmp12854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12855 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12855 '()))))
                          (declare (not safe))
                          (cons _L11099_ __tmp12854)))
                       (__tmp12832
                        (let ((__tmp12850
                               (let ((__tmp12851
                                      (let ((__tmp12852
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12852 '()))))
                                 (declare (not safe))
                                 (cons _g1111911136_ __tmp12851)))
                              (__tmp12833
                               (let ((__tmp12834
                                      (let ((__tmp12849
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12835
                                             (let ((__tmp12836
                                                    (let ((__tmp12846
                                                           (let ((__tmp12848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12847
                          (let () (declare (not safe)) (cons _L10996_ '()))))
                     (declare (not safe))
                     (cons __tmp12848 __tmp12847)))
                  (__tmp12837
                   (let ((__tmp12838
                          (let ((__tmp12845 (gx#datum->syntax '#f '@list))
                                (__tmp12839
                                 (let ((__tmp12842
                                        (let ((__tmp12844
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12843
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1111811133_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12844 __tmp12843)))
                                       (__tmp12840
                                        (let ((__tmp12841
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12841 '()))))
                                   (declare (not safe))
                                   (cons __tmp12842 __tmp12840))))
                            (declare (not safe))
                            (cons __tmp12845 __tmp12839))))
                     (declare (not safe))
                     (cons __tmp12838 '()))))
              (declare (not safe))
              (cons __tmp12846 __tmp12837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12836))))
                                        (declare (not safe))
                                        (cons __tmp12849 __tmp12835))))
                                 (declare (not safe))
                                 (cons __tmp12834 '()))))
                          (declare (not safe))
                          (cons __tmp12850 __tmp12833))))
                   (declare (not safe))
                   (cons __tmp12853 __tmp12832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12856
                                                          __tmp12831))))
                                             (declare (not safe))
                                             (cons __tmp12830 '()))))
                                      (declare (not safe))
                                      (cons __tmp12857 __tmp12829))))
                               (declare (not safe))
                               (cons __tmp12864 __tmp12828)))
                            (__tmp12799
                             (let ((__tmp12800
                                    (let ((__tmp12826
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12801
                                           (let ((__tmp12823
                                                  (let ((__tmp12824
                                                         (let ((__tmp12825
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12825 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11099_
                                                          __tmp12824)))
                                                 (__tmp12802
                                                  (let ((__tmp12820
                                                         (let ((__tmp12821
                                                                (let ((__tmp12822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12822 '()))))
                   (declare (not safe))
                   (cons _g1111911136_ __tmp12821)))
                (__tmp12803
                 (let ((__tmp12804
                        (let ((__tmp12819 (gx#datum->syntax '#f 'error))
                              (__tmp12805
                               (let ((__tmp12806
                                      (let ((__tmp12816
                                             (let ((__tmp12818
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12817
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L10996_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12818 __tmp12817)))
                                            (__tmp12807
                                             (let ((__tmp12808
                                                    (let ((__tmp12815
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12809
                                                           (let ((__tmp12812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12814 (gx#datum->syntax '#f 'quote))
                                (__tmp12813
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1111811133_ '()))))
                            (declare (not safe))
                            (cons __tmp12814 __tmp12813)))
                         (__tmp12810
                          (let ((__tmp12811 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12811 '()))))
                     (declare (not safe))
                     (cons __tmp12812 __tmp12810))))
              (declare (not safe))
              (cons __tmp12815 __tmp12809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12808 '()))))
                                        (declare (not safe))
                                        (cons __tmp12816 __tmp12807))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12806))))
                          (declare (not safe))
                          (cons __tmp12819 __tmp12805))))
                   (declare (not safe))
                   (cons __tmp12804 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12820
                                                          __tmp12803))))
                                             (declare (not safe))
                                             (cons __tmp12823 __tmp12802))))
                                      (declare (not safe))
                                      (cons __tmp12826 __tmp12801))))
                               (declare (not safe))
                               (cons __tmp12800 '()))))
                        (declare (not safe))
                        (cons __tmp12827 __tmp12799))))
                 (declare (not safe))
                 (cons __tmp12865 __tmp12798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12869
                                                        __tmp12797))))
                                           (declare (not safe))
                                           (cons __tmp12796 '()))))
                                    (declare (not safe))
                                    (cons __tmp12870 __tmp12795))))
                             (declare (not safe))
                             (cons __tmp12873 __tmp12794))))
                      (declare (not safe))
                      (cons __tmp12793 _g1112311144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12792
                                                             '()
                                                             _L10994_
                                                             _L11097_
                                                             _L10994_
                                                             _L11097_
                                                             _L10994_)))))
                                            (declare (not safe))
                                            (cons __tmp12874 __tmp12791))))
                                     (declare (not safe))
                                     (cons __tmp12907 __tmp12790))))
                              (declare (not safe))
                              (cons __tmp12912 __tmp12789))))
                        _macro-getf1103411093_
                        _hd1102111051_)
                       (_g1101611040_ _g1101711044_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1102911073_
                                            _target1102611067_
                                            '()))
                                         (_g1101611040_ _g1101711044_)))))
                               (_g1101611040_ _g1101711044_))))
                       (_g1101611040_ _g1101711044_))))
               (_g1101611040_ _g1101711044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1101511147_
                                            (list (gx#stx-identifier
                                                   _L10996_
                                                   '"macro-"
                                                   _L10996_)
                                                  (map (lambda (_f11151_)
                                                         (gx#stx-identifier
                                                          _f11151_
                                                          '"macro-"
                                                          _f11151_))
                                                       (let ((__tmp12913
                                                              (lambda (_g1115311156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1115411159_)
                        (let ()
                          (declare (not safe))
                          (cons _g1115311156_ _g1115411159_)))))
                 (declare (not safe))
                 (foldr1 __tmp12913 '() _L10994_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1092110990_
                                       _hd1091110958_)
                                      (_g1090010927_ _g1090110931_)))))))
                  (_loop1091610970_ _target1091310964_ '()))
                (_g1090010927_ _g1090110931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1090010927_ _g1090110931_))))
                                      (_g1090010927_ _g1090110931_))))
                              (_g1090010927_ _g1090110931_))))
                      (_g1090010927_ _g1090110931_)))))
          (_g1089911162_ _stx10897_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11168_)
        (let* ((_g1117211192_
                (lambda (_g1117311188_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1117311188_)))
               (_g1117111263_
                (lambda (_g1117311196_)
                  (if (gx#stx-pair? _g1117311196_)
                      (let ((_e1117711199_ (gx#syntax-e _g1117311196_)))
                        (let ((_hd1117611203_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1117711199_)))
                              (_tl1117511206_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1117711199_))))
                          (if (gx#stx-pair/null? _tl1117511206_)
                              (let ((_g12914_
                                     (gx#syntax-split-splice
                                      _tl1117511206_
                                      '0)))
                                (begin
                                  (let ((_g12915_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12914_)
                                               (##vector-length _g12914_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12915_ 2)))
                                        (error "Context expects 2 values"
                                               _g12915_)))
                                  (let ((_target1117811209_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12914_ 0)))
                                        (_tl1118011212_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12914_ 1))))
                                    (if (gx#stx-null? _tl1118011212_)
                                        (letrec ((_loop1118111215_
                                                  (lambda (_hd1117911219_
                                                           _defexn1118511222_)
                                                    (if (gx#stx-pair?
                                                         _hd1117911219_)
                                                        (let ((_e1118211225_
                                                               (gx#syntax-e
                                                                _hd1117911219_)))
                                                          (let ((_lp-hd1118311229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1118211225_)))
                        (_lp-tl1118411232_
                         (let () (declare (not safe)) (##cdr _e1118211225_))))
                    (_loop1118111215_
                     _lp-tl1118411232_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1118311229_ _defexn1118511222_)))))
                (let ((_defexn1118611235_ (reverse _defexn1118511222_)))
                  ((lambda (_L11239_)
                     (let ((__tmp12921 (gx#datum->syntax '#f 'begin))
                           (__tmp12916
                            (let ((__tmp12917
                                   (lambda (_g1125411257_ _g1125511260_)
                                     (let ((__tmp12918
                                            (let ((__tmp12920
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12919
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1125411257_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12920 __tmp12919))))
                                       (declare (not safe))
                                       (cons __tmp12918 _g1125511260_)))))
                              (declare (not safe))
                              (foldr1 __tmp12917 '() _L11239_))))
                       (declare (not safe))
                       (cons __tmp12921 __tmp12916)))
                   _defexn1118611235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1118111215_
                                           _target1117811209_
                                           '()))
                                        (_g1117211192_ _g1117311196_)))))
                              (_g1117211192_ _g1117311196_))))
                      (_g1117211192_ _g1117311196_)))))
          (_g1117111263_ _$stx11168_))))))
