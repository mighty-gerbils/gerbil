(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12716_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12723_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12725_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12727_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12735_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12738_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12740_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12742_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12744_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12754_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12756_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12758_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12763_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12765_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12767_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12769_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12771_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12777_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12778_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12779_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12787_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12790_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12792_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12794_|
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
       |[1]#_g12716_|
       'expander-identifiers:
       (let ((__tmp12717
              (let ((__tmp12726 |[1]#_g12716_|)
                    (__tmp12718
                     (let ((__tmp12724 |[1]#_g12725_|)
                           (__tmp12719
                            (let ((__tmp12722 |[1]#_g12723_|)
                                  (__tmp12720
                                   (let ((__tmp12721
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12721))))
                              (declare (not safe))
                              (cons __tmp12722 __tmp12720))))
                       (declare (not safe))
                       (cons __tmp12724 __tmp12719))))
                (declare (not safe))
                (cons __tmp12726 __tmp12718))))
         (declare (not safe))
         (cons '() __tmp12717))
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
       |[1]#_g12727_|
       'expander-identifiers:
       (let ((__tmp12728
              (let ((__tmp12743 |[1]#_g12727_|)
                    (__tmp12729
                     (let ((__tmp12741 |[1]#_g12742_|)
                           (__tmp12730
                            (let ((__tmp12739 |[1]#_g12740_|)
                                  (__tmp12731
                                   (let ((__tmp12736
                                          (let ((__tmp12737 |[1]#_g12738_|))
                                            (declare (not safe))
                                            (cons __tmp12737 '())))
                                         (__tmp12732
                                          (let ((__tmp12733
                                                 (let ((__tmp12734
                                                        |[1]#_g12735_|))
                                                   (declare (not safe))
                                                   (cons __tmp12734 '()))))
                                            (declare (not safe))
                                            (cons __tmp12733 '()))))
                                     (declare (not safe))
                                     (cons __tmp12736 __tmp12732))))
                              (declare (not safe))
                              (cons __tmp12739 __tmp12731))))
                       (declare (not safe))
                       (cons __tmp12741 __tmp12730))))
                (declare (not safe))
                (cons __tmp12743 __tmp12729))))
         (declare (not safe))
         (cons '() __tmp12728))
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
       |[1]#_g12744_|
       'expander-identifiers:
       (let ((__tmp12773
              (let ((__tmp12776 |[1]#_g12727_|)
                    (__tmp12774
                     (let ((__tmp12775 |[1]#_g12716_|))
                       (declare (not safe))
                       (cons __tmp12775 '()))))
                (declare (not safe))
                (cons __tmp12776 __tmp12774)))
             (__tmp12745
              (let ((__tmp12772 |[1]#_g12744_|)
                    (__tmp12746
                     (let ((__tmp12770 |[1]#_g12771_|)
                           (__tmp12747
                            (let ((__tmp12768 |[1]#_g12769_|)
                                  (__tmp12748
                                   (let ((__tmp12759
                                          (let ((__tmp12766 |[1]#_g12767_|)
                                                (__tmp12760
                                                 (let ((__tmp12764
                                                        |[1]#_g12765_|)
                                                       (__tmp12761
                                                        (let ((__tmp12762
                                                               |[1]#_g12763_|))
                                                          (declare (not safe))
                                                          (cons __tmp12762
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12764
                                                         __tmp12761))))
                                            (declare (not safe))
                                            (cons __tmp12766 __tmp12760)))
                                         (__tmp12749
                                          (let ((__tmp12750
                                                 (let ((__tmp12757
                                                        |[1]#_g12758_|)
                                                       (__tmp12751
                                                        (let ((__tmp12755
                                                               |[1]#_g12756_|)
                                                              (__tmp12752
                                                               (let ((__tmp12753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12754_|))
                         (declare (not safe))
                         (cons __tmp12753 '()))))
                  (declare (not safe))
                  (cons __tmp12755 __tmp12752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12757
                                                         __tmp12751))))
                                            (declare (not safe))
                                            (cons __tmp12750 '()))))
                                     (declare (not safe))
                                     (cons __tmp12759 __tmp12749))))
                              (declare (not safe))
                              (cons __tmp12768 __tmp12748))))
                       (declare (not safe))
                       (cons __tmp12770 __tmp12747))))
                (declare (not safe))
                (cons __tmp12772 __tmp12746))))
         (declare (not safe))
         (cons __tmp12773 __tmp12745))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12777_| |[1]#_g12778_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12779_|
       'expander-identifiers:
       (let ((__tmp12796
              (let ((__tmp12799 |[1]#_g12727_|)
                    (__tmp12797
                     (let ((__tmp12798 |[1]#_g12716_|))
                       (declare (not safe))
                       (cons __tmp12798 '()))))
                (declare (not safe))
                (cons __tmp12799 __tmp12797)))
             (__tmp12780
              (let ((__tmp12795 |[1]#_g12779_|)
                    (__tmp12781
                     (let ((__tmp12793 |[1]#_g12794_|)
                           (__tmp12782
                            (let ((__tmp12791 |[1]#_g12792_|)
                                  (__tmp12783
                                   (let ((__tmp12788
                                          (let ((__tmp12789 |[1]#_g12790_|))
                                            (declare (not safe))
                                            (cons __tmp12789 '())))
                                         (__tmp12784
                                          (let ((__tmp12785
                                                 (let ((__tmp12786
                                                        |[1]#_g12787_|))
                                                   (declare (not safe))
                                                   (cons __tmp12786 '()))))
                                            (declare (not safe))
                                            (cons __tmp12785 '()))))
                                     (declare (not safe))
                                     (cons __tmp12788 __tmp12784))))
                              (declare (not safe))
                              (cons __tmp12791 __tmp12783))))
                       (declare (not safe))
                       (cons __tmp12793 __tmp12782))))
                (declare (not safe))
                (cons __tmp12795 __tmp12781))))
         (declare (not safe))
         (cons __tmp12796 __tmp12780))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12777_| |[1]#_g12778_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10858_)
        (let* ((_g1086210880_
                (lambda (_g1086310876_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1086310876_)))
               (_g1086110936_
                (lambda (_g1086310884_)
                  (if (gx#stx-pair? _g1086310884_)
                      (let ((_e1086810887_ (gx#syntax-e _g1086310884_)))
                        (let ((_hd1086710891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1086810887_)))
                              (_tl1086610894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1086810887_))))
                          (if (gx#stx-pair? _tl1086610894_)
                              (let ((_e1087110897_
                                     (gx#syntax-e _tl1086610894_)))
                                (let ((_hd1087010901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1087110897_)))
                                      (_tl1086910904_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1087110897_))))
                                  (if (gx#stx-pair? _tl1086910904_)
                                      (let ((_e1087410907_
                                             (gx#syntax-e _tl1086910904_)))
                                        (let ((_hd1087310911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1087410907_)))
                                              (_tl1087210914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1087410907_))))
                                          (if (gx#stx-null? _tl1087210914_)
                                              ((lambda (_L10917_ _L10919_)
                                                 (let ((__tmp12821
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12800
                                                        (let ((__tmp12818
                                                               (let ((__tmp12820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12819
                              (let ()
                                (declare (not safe))
                                (cons _L10919_ '()))))
                         (declare (not safe))
                         (cons __tmp12820 __tmp12819)))
                      (__tmp12801
                       (let ((__tmp12802
                              (let ((__tmp12817 (gx#datum->syntax '#f 'raise))
                                    (__tmp12803
                                     (let ((__tmp12804
                                            (let ((__tmp12816
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12805
                                                   (let ((__tmp12806
                                                          (let ((__tmp12807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12813
                                (let ((__tmp12815
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12814
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10917_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12815 __tmp12814)))
                               (__tmp12808
                                (let ((__tmp12809
                                       (let ((__tmp12810
                                              (let ((__tmp12812
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12811
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10919_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12812 __tmp12811))))
                                         (declare (not safe))
                                         (cons __tmp12810 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12809))))
                           (declare (not safe))
                           (cons __tmp12813 __tmp12808))))
                    (declare (not safe))
                    (cons 'where: __tmp12807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12806))))
                                              (declare (not safe))
                                              (cons __tmp12816 __tmp12805))))
                                       (declare (not safe))
                                       (cons __tmp12804 '()))))
                                (declare (not safe))
                                (cons __tmp12817 __tmp12803))))
                         (declare (not safe))
                         (cons __tmp12802 '()))))
                  (declare (not safe))
                  (cons __tmp12818 __tmp12801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12821
                                                         __tmp12800)))
                                               _hd1087310911_
                                               _hd1087010901_)
                                              (_g1086210880_ _g1086310884_))))
                                      (_g1086210880_ _g1086310884_))))
                              (_g1086210880_ _g1086310884_))))
                      (_g1086210880_ _g1086310884_)))))
          (_g1086110936_ _$stx10858_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10940_)
        (let* ((_g1094310970_
                (lambda (_g1094410966_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1094410966_)))
               (_g1094211205_
                (lambda (_g1094410974_)
                  (if (gx#stx-pair? _g1094410974_)
                      (let ((_e1094910977_ (gx#syntax-e _g1094410974_)))
                        (let ((_hd1094810981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1094910977_)))
                              (_tl1094710984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1094910977_))))
                          (if (gx#stx-pair? _tl1094710984_)
                              (let ((_e1095210987_
                                     (gx#syntax-e _tl1094710984_)))
                                (let ((_hd1095110991_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1095210987_)))
                                      (_tl1095010994_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1095210987_))))
                                  (if (gx#stx-pair? _hd1095110991_)
                                      (let ((_e1095510997_
                                             (gx#syntax-e _hd1095110991_)))
                                        (let ((_hd1095411001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1095510997_)))
                                              (_tl1095311004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1095510997_))))
                                          (if (gx#stx-pair/null?
                                               _tl1095311004_)
                                              (let ((_g12822_
                                                     (gx#syntax-split-splice
                                                      _tl1095311004_
                                                      '0)))
                                                (begin
                                                  (let ((_g12823_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12822_)
                                                               (##vector-length
                                                                _g12822_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12823_ 2)))
                (error "Context expects 2 values" _g12823_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1095611007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12822_
                                                            0)))
                                                        (_tl1095811010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12822_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1095811010_)
                                                        (letrec ((_loop1095911013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1095711017_ _getf1096311020_)
                            (if (gx#stx-pair? _hd1095711017_)
                                (let ((_e1096011023_
                                       (gx#syntax-e _hd1095711017_)))
                                  (let ((_lp-hd1096111027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1096011023_)))
                                        (_lp-tl1096211030_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1096011023_))))
                                    (_loop1095911013_
                                     _lp-tl1096211030_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1096111027_
                                             _getf1096311020_)))))
                                (let ((_getf1096411033_
                                       (reverse _getf1096311020_)))
                                  (if (gx#stx-null? _tl1095010994_)
                                      ((lambda (_L11037_ _L11039_)
                                         (let* ((_g1105911083_
                                                 (lambda (_g1106011079_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1106011079_)))
                                                (_g1105811190_
                                                 (lambda (_g1106011087_)
                                                   (if (gx#stx-pair?
                                                        _g1106011087_)
                                                       (let ((_e1106511090_
                                                              (gx#syntax-e
                                                               _g1106011087_)))
                                                         (let ((_hd1106411094_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1106511090_)))
                       (_tl1106311097_
                        (let () (declare (not safe)) (##cdr _e1106511090_))))
                   (if (gx#stx-pair? _tl1106311097_)
                       (let ((_e1106811100_ (gx#syntax-e _tl1106311097_)))
                         (let ((_hd1106711104_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1106811100_)))
                               (_tl1106611107_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1106811100_))))
                           (if (gx#stx-pair/null? _hd1106711104_)
                               (let ((_g12824_
                                      (gx#syntax-split-splice
                                       _hd1106711104_
                                       '0)))
                                 (begin
                                   (let ((_g12825_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12824_)
                                                (##vector-length _g12824_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12825_ 2)))
                                         (error "Context expects 2 values"
                                                _g12825_)))
                                   (let ((_target1106911110_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12824_ 0)))
                                         (_tl1107111113_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12824_ 1))))
                                     (if (gx#stx-null? _tl1107111113_)
                                         (letrec ((_loop1107211116_
                                                   (lambda (_hd1107011120_
                                                            _macro-getf1107611123_)
                                                     (if (gx#stx-pair?
                                                          _hd1107011120_)
                                                         (let ((_e1107311126_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1107011120_)))
                   (let ((_lp-hd1107411130_
                          (let () (declare (not safe)) (##car _e1107311126_)))
                         (_lp-tl1107511133_
                          (let () (declare (not safe)) (##cdr _e1107311126_))))
                     (_loop1107211116_
                      _lp-tl1107511133_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1107411130_ _macro-getf1107611123_)))))
                 (let ((_macro-getf1107711136_
                        (reverse _macro-getf1107611123_)))
                   (if (gx#stx-null? _tl1106611107_)
                       ((lambda (_L11140_ _L11142_)
                          (let ()
                            (let ((__tmp12949 (gx#datum->syntax '#f 'begin))
                                  (__tmp12826
                                   (let ((__tmp12944
                                          (let ((__tmp12948
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12945
                                                 (let ((__tmp12946
                                                        (let ((__tmp12947
                                                               (lambda (_g1116711170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1116811173_)
                         (let ()
                           (declare (not safe))
                           (cons _g1116711170_ _g1116811173_)))))
                  (declare (not safe))
                  (foldr1 __tmp12947 '() _L11140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11142_
                                                         __tmp12946))))
                                            (declare (not safe))
                                            (cons __tmp12948 __tmp12945)))
                                         (__tmp12827
                                          (let ((__tmp12911
                                                 (let ((__tmp12943
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12912
                                                        (let ((__tmp12940
                                                               (let ((__tmp12941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12942 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12942 '()))))
                         (declare (not safe))
                         (cons _L11039_ __tmp12941)))
                      (__tmp12913
                       (let ((__tmp12914
                              (let ((__tmp12939 (gx#datum->syntax '#f 'if))
                                    (__tmp12915
                                     (let ((__tmp12935
                                            (let ((__tmp12938
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12936
                                                   (let ((__tmp12937
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12937 '()))))
                                              (declare (not safe))
                                              (cons __tmp12938 __tmp12936)))
                                           (__tmp12916
                                            (let ((__tmp12921
                                                   (let ((__tmp12934
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12922
                                                          (let ((__tmp12927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12933 (gx#datum->syntax '#f 'e))
                               (__tmp12928
                                (let ((__tmp12929
                                       (let ((__tmp12932
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12930
                                              (let ((__tmp12931
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12931 '()))))
                                         (declare (not safe))
                                         (cons __tmp12932 __tmp12930))))
                                  (declare (not safe))
                                  (cons __tmp12929 '()))))
                           (declare (not safe))
                           (cons __tmp12933 __tmp12928)))
                        (__tmp12923
                         (let ((__tmp12924
                                (let ((__tmp12925
                                       (let ((__tmp12926
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12926 '()))))
                                  (declare (not safe))
                                  (cons _L11142_ __tmp12925))))
                           (declare (not safe))
                           (cons __tmp12924 '()))))
                    (declare (not safe))
                    (cons __tmp12927 __tmp12923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12934
                                                           __tmp12922)))
                                                  (__tmp12917
                                                   (let ((__tmp12918
                                                          (let ((__tmp12919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12920 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12920 '()))))
                    (declare (not safe))
                    (cons _L11142_ __tmp12919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12918 '()))))
                                              (declare (not safe))
                                              (cons __tmp12921 __tmp12917))))
                                       (declare (not safe))
                                       (cons __tmp12935 __tmp12916))))
                                (declare (not safe))
                                (cons __tmp12939 __tmp12915))))
                         (declare (not safe))
                         (cons __tmp12914 '()))))
                  (declare (not safe))
                  (cons __tmp12940 __tmp12913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12943
                                                         __tmp12912)))
                                                (__tmp12828
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L11037_
                                                    _L11140_
                                                    _L11037_
                                                    _L11140_
                                                    _L11037_)
                                                   (let ((__tmp12829
                                                          (lambda (_g1116111176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1116211179_
                           _g1116311181_
                           _g1116411183_
                           _g1116511185_
                           _g1116611187_)
                    (let ((__tmp12830
                           (let ((__tmp12910 (gx#datum->syntax '#f 'def))
                                 (__tmp12831
                                  (let ((__tmp12907
                                         (let ((__tmp12908
                                                (let ((__tmp12909
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12909 '()))))
                                           (declare (not safe))
                                           (cons _g1116111176_ __tmp12908)))
                                        (__tmp12832
                                         (let ((__tmp12833
                                                (let ((__tmp12906
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12834
                                                       (let ((__tmp12902
                                                              (let ((__tmp12905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12903
                             (let ((__tmp12904 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12904 '()))))
                        (declare (not safe))
                        (cons __tmp12905 __tmp12903)))
                     (__tmp12835
                      (let ((__tmp12864
                             (let ((__tmp12901 (gx#datum->syntax '#f 'let))
                                   (__tmp12865
                                    (let ((__tmp12894
                                           (let ((__tmp12900
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12895
                                                  (let ((__tmp12896
                                                         (let ((__tmp12899
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12897
                        (let ((__tmp12898 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12898 '()))))
                   (declare (not safe))
                   (cons __tmp12899 __tmp12897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12896 '()))))
                                             (declare (not safe))
                                             (cons __tmp12900 __tmp12895)))
                                          (__tmp12866
                                           (let ((__tmp12867
                                                  (let ((__tmp12893
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12868
                                                         (let ((__tmp12890
                                                                (let ((__tmp12891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12892 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12892 '()))))
                          (declare (not safe))
                          (cons _L11142_ __tmp12891)))
                       (__tmp12869
                        (let ((__tmp12887
                               (let ((__tmp12888
                                      (let ((__tmp12889
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12889 '()))))
                                 (declare (not safe))
                                 (cons _g1116211179_ __tmp12888)))
                              (__tmp12870
                               (let ((__tmp12871
                                      (let ((__tmp12886
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12872
                                             (let ((__tmp12873
                                                    (let ((__tmp12883
                                                           (let ((__tmp12885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12884
                          (let () (declare (not safe)) (cons _L11039_ '()))))
                     (declare (not safe))
                     (cons __tmp12885 __tmp12884)))
                  (__tmp12874
                   (let ((__tmp12875
                          (let ((__tmp12882 (gx#datum->syntax '#f '@list))
                                (__tmp12876
                                 (let ((__tmp12879
                                        (let ((__tmp12881
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12880
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1116111176_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12881 __tmp12880)))
                                       (__tmp12877
                                        (let ((__tmp12878
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12878 '()))))
                                   (declare (not safe))
                                   (cons __tmp12879 __tmp12877))))
                            (declare (not safe))
                            (cons __tmp12882 __tmp12876))))
                     (declare (not safe))
                     (cons __tmp12875 '()))))
              (declare (not safe))
              (cons __tmp12883 __tmp12874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12873))))
                                        (declare (not safe))
                                        (cons __tmp12886 __tmp12872))))
                                 (declare (not safe))
                                 (cons __tmp12871 '()))))
                          (declare (not safe))
                          (cons __tmp12887 __tmp12870))))
                   (declare (not safe))
                   (cons __tmp12890 __tmp12869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12893
                                                          __tmp12868))))
                                             (declare (not safe))
                                             (cons __tmp12867 '()))))
                                      (declare (not safe))
                                      (cons __tmp12894 __tmp12866))))
                               (declare (not safe))
                               (cons __tmp12901 __tmp12865)))
                            (__tmp12836
                             (let ((__tmp12837
                                    (let ((__tmp12863
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12838
                                           (let ((__tmp12860
                                                  (let ((__tmp12861
                                                         (let ((__tmp12862
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12862 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11142_
                                                          __tmp12861)))
                                                 (__tmp12839
                                                  (let ((__tmp12857
                                                         (let ((__tmp12858
                                                                (let ((__tmp12859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12859 '()))))
                   (declare (not safe))
                   (cons _g1116211179_ __tmp12858)))
                (__tmp12840
                 (let ((__tmp12841
                        (let ((__tmp12856 (gx#datum->syntax '#f 'error))
                              (__tmp12842
                               (let ((__tmp12843
                                      (let ((__tmp12853
                                             (let ((__tmp12855
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12854
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11039_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12855 __tmp12854)))
                                            (__tmp12844
                                             (let ((__tmp12845
                                                    (let ((__tmp12852
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12846
                                                           (let ((__tmp12849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12851 (gx#datum->syntax '#f 'quote))
                                (__tmp12850
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1116111176_ '()))))
                            (declare (not safe))
                            (cons __tmp12851 __tmp12850)))
                         (__tmp12847
                          (let ((__tmp12848 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12848 '()))))
                     (declare (not safe))
                     (cons __tmp12849 __tmp12847))))
              (declare (not safe))
              (cons __tmp12852 __tmp12846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12845 '()))))
                                        (declare (not safe))
                                        (cons __tmp12853 __tmp12844))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12843))))
                          (declare (not safe))
                          (cons __tmp12856 __tmp12842))))
                   (declare (not safe))
                   (cons __tmp12841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12857
                                                          __tmp12840))))
                                             (declare (not safe))
                                             (cons __tmp12860 __tmp12839))))
                                      (declare (not safe))
                                      (cons __tmp12863 __tmp12838))))
                               (declare (not safe))
                               (cons __tmp12837 '()))))
                        (declare (not safe))
                        (cons __tmp12864 __tmp12836))))
                 (declare (not safe))
                 (cons __tmp12902 __tmp12835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12906
                                                        __tmp12834))))
                                           (declare (not safe))
                                           (cons __tmp12833 '()))))
                                    (declare (not safe))
                                    (cons __tmp12907 __tmp12832))))
                             (declare (not safe))
                             (cons __tmp12910 __tmp12831))))
                      (declare (not safe))
                      (cons __tmp12830 _g1116611187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12829
                                                             '()
                                                             _L11037_
                                                             _L11140_
                                                             _L11037_
                                                             _L11140_
                                                             _L11037_)))))
                                            (declare (not safe))
                                            (cons __tmp12911 __tmp12828))))
                                     (declare (not safe))
                                     (cons __tmp12944 __tmp12827))))
                              (declare (not safe))
                              (cons __tmp12949 __tmp12826))))
                        _macro-getf1107711136_
                        _hd1106411094_)
                       (_g1105911083_ _g1106011087_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1107211116_
                                            _target1106911110_
                                            '()))
                                         (_g1105911083_ _g1106011087_)))))
                               (_g1105911083_ _g1106011087_))))
                       (_g1105911083_ _g1106011087_))))
               (_g1105911083_ _g1106011087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1105811190_
                                            (list (gx#stx-identifier
                                                   _L11039_
                                                   '"macro-"
                                                   _L11039_)
                                                  (map (lambda (_f11194_)
                                                         (gx#stx-identifier
                                                          _f11194_
                                                          '"macro-"
                                                          _f11194_))
                                                       (let ((__tmp12950
                                                              (lambda (_g1119611199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1119711202_)
                        (let ()
                          (declare (not safe))
                          (cons _g1119611199_ _g1119711202_)))))
                 (declare (not safe))
                 (foldr1 __tmp12950 '() _L11037_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1096411033_
                                       _hd1095411001_)
                                      (_g1094310970_ _g1094410974_)))))))
                  (_loop1095911013_ _target1095611007_ '()))
                (_g1094310970_ _g1094410974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1094310970_ _g1094410974_))))
                                      (_g1094310970_ _g1094410974_))))
                              (_g1094310970_ _g1094410974_))))
                      (_g1094310970_ _g1094410974_)))))
          (_g1094211205_ _stx10940_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11211_)
        (let* ((_g1121511235_
                (lambda (_g1121611231_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1121611231_)))
               (_g1121411306_
                (lambda (_g1121611239_)
                  (if (gx#stx-pair? _g1121611239_)
                      (let ((_e1122011242_ (gx#syntax-e _g1121611239_)))
                        (let ((_hd1121911246_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1122011242_)))
                              (_tl1121811249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1122011242_))))
                          (if (gx#stx-pair/null? _tl1121811249_)
                              (let ((_g12951_
                                     (gx#syntax-split-splice
                                      _tl1121811249_
                                      '0)))
                                (begin
                                  (let ((_g12952_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12951_)
                                               (##vector-length _g12951_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12952_ 2)))
                                        (error "Context expects 2 values"
                                               _g12952_)))
                                  (let ((_target1122111252_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12951_ 0)))
                                        (_tl1122311255_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12951_ 1))))
                                    (if (gx#stx-null? _tl1122311255_)
                                        (letrec ((_loop1122411258_
                                                  (lambda (_hd1122211262_
                                                           _defexn1122811265_)
                                                    (if (gx#stx-pair?
                                                         _hd1122211262_)
                                                        (let ((_e1122511268_
                                                               (gx#syntax-e
                                                                _hd1122211262_)))
                                                          (let ((_lp-hd1122611272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1122511268_)))
                        (_lp-tl1122711275_
                         (let () (declare (not safe)) (##cdr _e1122511268_))))
                    (_loop1122411258_
                     _lp-tl1122711275_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1122611272_ _defexn1122811265_)))))
                (let ((_defexn1122911278_ (reverse _defexn1122811265_)))
                  ((lambda (_L11282_)
                     (let ((__tmp12958 (gx#datum->syntax '#f 'begin))
                           (__tmp12953
                            (let ((__tmp12954
                                   (lambda (_g1129711300_ _g1129811303_)
                                     (let ((__tmp12955
                                            (let ((__tmp12957
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12956
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1129711300_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12957 __tmp12956))))
                                       (declare (not safe))
                                       (cons __tmp12955 _g1129811303_)))))
                              (declare (not safe))
                              (foldr1 __tmp12954 '() _L11282_))))
                       (declare (not safe))
                       (cons __tmp12958 __tmp12953)))
                   _defexn1122911278_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1122411258_
                                           _target1122111252_
                                           '()))
                                        (_g1121511235_ _g1121611239_)))))
                              (_g1121511235_ _g1121611239_))))
                      (_g1121511235_ _g1121611239_)))))
          (_g1121411306_ _$stx11211_))))))
