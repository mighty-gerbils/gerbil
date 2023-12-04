(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g10699_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10706_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10708_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10710_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10718_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10721_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10723_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10725_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10727_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10737_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10739_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10741_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10746_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10748_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10750_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10752_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10754_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10760_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10761_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10762_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10770_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10773_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10775_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10777_|
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
       |[1]#_g10699_|
       'expander-identifiers:
       (let ((__tmp10700
              (let ((__tmp10709 |[1]#_g10699_|)
                    (__tmp10701
                     (let ((__tmp10707 |[1]#_g10708_|)
                           (__tmp10702
                            (let ((__tmp10705 |[1]#_g10706_|)
                                  (__tmp10703
                                   (let ((__tmp10704
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp10704))))
                              (declare (not safe))
                              (cons __tmp10705 __tmp10703))))
                       (declare (not safe))
                       (cons __tmp10707 __tmp10702))))
                (declare (not safe))
                (cons __tmp10709 __tmp10701))))
         (declare (not safe))
         (cons '() __tmp10700))
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
       |[1]#_g10710_|
       'expander-identifiers:
       (let ((__tmp10711
              (let ((__tmp10726 |[1]#_g10710_|)
                    (__tmp10712
                     (let ((__tmp10724 |[1]#_g10725_|)
                           (__tmp10713
                            (let ((__tmp10722 |[1]#_g10723_|)
                                  (__tmp10714
                                   (let ((__tmp10719
                                          (let ((__tmp10720 |[1]#_g10721_|))
                                            (declare (not safe))
                                            (cons __tmp10720 '())))
                                         (__tmp10715
                                          (let ((__tmp10716
                                                 (let ((__tmp10717
                                                        |[1]#_g10718_|))
                                                   (declare (not safe))
                                                   (cons __tmp10717 '()))))
                                            (declare (not safe))
                                            (cons __tmp10716 '()))))
                                     (declare (not safe))
                                     (cons __tmp10719 __tmp10715))))
                              (declare (not safe))
                              (cons __tmp10722 __tmp10714))))
                       (declare (not safe))
                       (cons __tmp10724 __tmp10713))))
                (declare (not safe))
                (cons __tmp10726 __tmp10712))))
         (declare (not safe))
         (cons '() __tmp10711))
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
       |[1]#_g10727_|
       'expander-identifiers:
       (let ((__tmp10756
              (let ((__tmp10759 |[1]#_g10710_|)
                    (__tmp10757
                     (let ((__tmp10758 |[1]#_g10699_|))
                       (declare (not safe))
                       (cons __tmp10758 '()))))
                (declare (not safe))
                (cons __tmp10759 __tmp10757)))
             (__tmp10728
              (let ((__tmp10755 |[1]#_g10727_|)
                    (__tmp10729
                     (let ((__tmp10753 |[1]#_g10754_|)
                           (__tmp10730
                            (let ((__tmp10751 |[1]#_g10752_|)
                                  (__tmp10731
                                   (let ((__tmp10742
                                          (let ((__tmp10749 |[1]#_g10750_|)
                                                (__tmp10743
                                                 (let ((__tmp10747
                                                        |[1]#_g10748_|)
                                                       (__tmp10744
                                                        (let ((__tmp10745
                                                               |[1]#_g10746_|))
                                                          (declare (not safe))
                                                          (cons __tmp10745
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp10747
                                                         __tmp10744))))
                                            (declare (not safe))
                                            (cons __tmp10749 __tmp10743)))
                                         (__tmp10732
                                          (let ((__tmp10733
                                                 (let ((__tmp10740
                                                        |[1]#_g10741_|)
                                                       (__tmp10734
                                                        (let ((__tmp10738
                                                               |[1]#_g10739_|)
                                                              (__tmp10735
                                                               (let ((__tmp10736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g10737_|))
                         (declare (not safe))
                         (cons __tmp10736 '()))))
                  (declare (not safe))
                  (cons __tmp10738 __tmp10735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10740
                                                         __tmp10734))))
                                            (declare (not safe))
                                            (cons __tmp10733 '()))))
                                     (declare (not safe))
                                     (cons __tmp10742 __tmp10732))))
                              (declare (not safe))
                              (cons __tmp10751 __tmp10731))))
                       (declare (not safe))
                       (cons __tmp10753 __tmp10730))))
                (declare (not safe))
                (cons __tmp10755 __tmp10729))))
         (declare (not safe))
         (cons __tmp10756 __tmp10728))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g10760_| |[1]#_g10761_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g10762_|
       'expander-identifiers:
       (let ((__tmp10779
              (let ((__tmp10782 |[1]#_g10710_|)
                    (__tmp10780
                     (let ((__tmp10781 |[1]#_g10699_|))
                       (declare (not safe))
                       (cons __tmp10781 '()))))
                (declare (not safe))
                (cons __tmp10782 __tmp10780)))
             (__tmp10763
              (let ((__tmp10778 |[1]#_g10762_|)
                    (__tmp10764
                     (let ((__tmp10776 |[1]#_g10777_|)
                           (__tmp10765
                            (let ((__tmp10774 |[1]#_g10775_|)
                                  (__tmp10766
                                   (let ((__tmp10771
                                          (let ((__tmp10772 |[1]#_g10773_|))
                                            (declare (not safe))
                                            (cons __tmp10772 '())))
                                         (__tmp10767
                                          (let ((__tmp10768
                                                 (let ((__tmp10769
                                                        |[1]#_g10770_|))
                                                   (declare (not safe))
                                                   (cons __tmp10769 '()))))
                                            (declare (not safe))
                                            (cons __tmp10768 '()))))
                                     (declare (not safe))
                                     (cons __tmp10771 __tmp10767))))
                              (declare (not safe))
                              (cons __tmp10774 __tmp10766))))
                       (declare (not safe))
                       (cons __tmp10776 __tmp10765))))
                (declare (not safe))
                (cons __tmp10778 __tmp10764))))
         (declare (not safe))
         (cons __tmp10779 __tmp10763))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g10760_| |[1]#_g10761_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx8835_)
        (let* ((_g88398857_
                (lambda (_g88408853_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g88408853_)))
               (_g88388913_
                (lambda (_g88408861_)
                  (if (gx#stx-pair? _g88408861_)
                      (let ((_e88458864_ (gx#syntax-e _g88408861_)))
                        (let ((_hd88448868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88458864_)))
                              (_tl88438871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88458864_))))
                          (if (gx#stx-pair? _tl88438871_)
                              (let ((_e88488874_ (gx#syntax-e _tl88438871_)))
                                (let ((_hd88478878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88488874_)))
                                      (_tl88468881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88488874_))))
                                  (if (gx#stx-pair? _tl88468881_)
                                      (let ((_e88518884_
                                             (gx#syntax-e _tl88468881_)))
                                        (let ((_hd88508888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88518884_)))
                                              (_tl88498891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88518884_))))
                                          (if (gx#stx-null? _tl88498891_)
                                              ((lambda (_L8894_ _L8896_)
                                                 (let ((__tmp10804
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp10783
                                                        (let ((__tmp10801
                                                               (let ((__tmp10803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp10802
                              (let ()
                                (declare (not safe))
                                (cons _L8896_ '()))))
                         (declare (not safe))
                         (cons __tmp10803 __tmp10802)))
                      (__tmp10784
                       (let ((__tmp10785
                              (let ((__tmp10800 (gx#datum->syntax '#f 'raise))
                                    (__tmp10786
                                     (let ((__tmp10787
                                            (let ((__tmp10799
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp10788
                                                   (let ((__tmp10789
                                                          (let ((__tmp10790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10796
                                (let ((__tmp10798
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp10797
                                       (let ()
                                         (declare (not safe))
                                         (cons _L8894_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10798 __tmp10797)))
                               (__tmp10791
                                (let ((__tmp10792
                                       (let ((__tmp10793
                                              (let ((__tmp10795
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp10794
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L8896_ '()))))
                                                (declare (not safe))
                                                (cons __tmp10795 __tmp10794))))
                                         (declare (not safe))
                                         (cons __tmp10793 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp10792))))
                           (declare (not safe))
                           (cons __tmp10796 __tmp10791))))
                    (declare (not safe))
                    (cons 'where: __tmp10790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp10789))))
                                              (declare (not safe))
                                              (cons __tmp10799 __tmp10788))))
                                       (declare (not safe))
                                       (cons __tmp10787 '()))))
                                (declare (not safe))
                                (cons __tmp10800 __tmp10786))))
                         (declare (not safe))
                         (cons __tmp10785 '()))))
                  (declare (not safe))
                  (cons __tmp10801 __tmp10784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10804
                                                         __tmp10783)))
                                               _hd88508888_
                                               _hd88478878_)
                                              (_g88398857_ _g88408861_))))
                                      (_g88398857_ _g88408861_))))
                              (_g88398857_ _g88408861_))))
                      (_g88398857_ _g88408861_)))))
          (_g88388913_ _$stx8835_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx8917_)
        (let* ((_g89208947_
                (lambda (_g89218943_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g89218943_)))
               (_g89199182_
                (lambda (_g89218951_)
                  (if (gx#stx-pair? _g89218951_)
                      (let ((_e89268954_ (gx#syntax-e _g89218951_)))
                        (let ((_hd89258958_
                               (let ()
                                 (declare (not safe))
                                 (##car _e89268954_)))
                              (_tl89248961_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e89268954_))))
                          (if (gx#stx-pair? _tl89248961_)
                              (let ((_e89298964_ (gx#syntax-e _tl89248961_)))
                                (let ((_hd89288968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e89298964_)))
                                      (_tl89278971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e89298964_))))
                                  (if (gx#stx-pair? _hd89288968_)
                                      (let ((_e89328974_
                                             (gx#syntax-e _hd89288968_)))
                                        (let ((_hd89318978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e89328974_)))
                                              (_tl89308981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e89328974_))))
                                          (if (gx#stx-pair/null? _tl89308981_)
                                              (let ((_g10805_
                                                     (gx#syntax-split-splice
                                                      _tl89308981_
                                                      '0)))
                                                (begin
                                                  (let ((_g10806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g10805_)
                                                               (##vector-length
                                                                _g10805_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g10806_ 2)))
                (error "Context expects 2 values" _g10806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target89338984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g10805_
                                                            0)))
                                                        (_tl89358987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g10805_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl89358987_)
                                                        (letrec ((_loop89368990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd89348994_ _getf89408997_)
                            (if (gx#stx-pair? _hd89348994_)
                                (let ((_e89379000_ (gx#syntax-e _hd89348994_)))
                                  (let ((_lp-hd89389004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e89379000_)))
                                        (_lp-tl89399007_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e89379000_))))
                                    (_loop89368990_
                                     _lp-tl89399007_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd89389004_
                                             _getf89408997_)))))
                                (let ((_getf89419010_
                                       (reverse _getf89408997_)))
                                  (if (gx#stx-null? _tl89278971_)
                                      ((lambda (_L9014_ _L9016_)
                                         (let* ((_g90369060_
                                                 (lambda (_g90379056_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g90379056_)))
                                                (_g90359167_
                                                 (lambda (_g90379064_)
                                                   (if (gx#stx-pair?
                                                        _g90379064_)
                                                       (let ((_e90429067_
                                                              (gx#syntax-e
                                                               _g90379064_)))
                                                         (let ((_hd90419071_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e90429067_)))
                       (_tl90409074_
                        (let () (declare (not safe)) (##cdr _e90429067_))))
                   (if (gx#stx-pair? _tl90409074_)
                       (let ((_e90459077_ (gx#syntax-e _tl90409074_)))
                         (let ((_hd90449081_
                                (let ()
                                  (declare (not safe))
                                  (##car _e90459077_)))
                               (_tl90439084_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e90459077_))))
                           (if (gx#stx-pair/null? _hd90449081_)
                               (let ((_g10807_
                                      (gx#syntax-split-splice
                                       _hd90449081_
                                       '0)))
                                 (begin
                                   (let ((_g10808_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g10807_)
                                                (##vector-length _g10807_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g10808_ 2)))
                                         (error "Context expects 2 values"
                                                _g10808_)))
                                   (let ((_target90469087_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g10807_ 0)))
                                         (_tl90489090_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g10807_ 1))))
                                     (if (gx#stx-null? _tl90489090_)
                                         (letrec ((_loop90499093_
                                                   (lambda (_hd90479097_
                                                            _macro-getf90539100_)
                                                     (if (gx#stx-pair?
                                                          _hd90479097_)
                                                         (let ((_e90509103_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd90479097_)))
                   (let ((_lp-hd90519107_
                          (let () (declare (not safe)) (##car _e90509103_)))
                         (_lp-tl90529110_
                          (let () (declare (not safe)) (##cdr _e90509103_))))
                     (_loop90499093_
                      _lp-tl90529110_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd90519107_ _macro-getf90539100_)))))
                 (let ((_macro-getf90549113_ (reverse _macro-getf90539100_)))
                   (if (gx#stx-null? _tl90439084_)
                       ((lambda (_L9117_ _L9119_)
                          (let ()
                            (let ((__tmp10932 (gx#datum->syntax '#f 'begin))
                                  (__tmp10809
                                   (let ((__tmp10927
                                          (let ((__tmp10931
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp10928
                                                 (let ((__tmp10929
                                                        (let ((__tmp10930
                                                               (lambda (_g91449147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g91459150_)
                         (let ()
                           (declare (not safe))
                           (cons _g91449147_ _g91459150_)))))
                  (declare (not safe))
                  (foldr1 __tmp10930 '() _L9117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9119_ __tmp10929))))
                                            (declare (not safe))
                                            (cons __tmp10931 __tmp10928)))
                                         (__tmp10810
                                          (let ((__tmp10894
                                                 (let ((__tmp10926
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp10895
                                                        (let ((__tmp10923
                                                               (let ((__tmp10924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10925 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp10925 '()))))
                         (declare (not safe))
                         (cons _L9016_ __tmp10924)))
                      (__tmp10896
                       (let ((__tmp10897
                              (let ((__tmp10922 (gx#datum->syntax '#f 'if))
                                    (__tmp10898
                                     (let ((__tmp10918
                                            (let ((__tmp10921
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp10919
                                                   (let ((__tmp10920
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp10920 '()))))
                                              (declare (not safe))
                                              (cons __tmp10921 __tmp10919)))
                                           (__tmp10899
                                            (let ((__tmp10904
                                                   (let ((__tmp10917
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp10905
                                                          (let ((__tmp10910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10916 (gx#datum->syntax '#f 'e))
                               (__tmp10911
                                (let ((__tmp10912
                                       (let ((__tmp10915
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp10913
                                              (let ((__tmp10914
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp10914 '()))))
                                         (declare (not safe))
                                         (cons __tmp10915 __tmp10913))))
                                  (declare (not safe))
                                  (cons __tmp10912 '()))))
                           (declare (not safe))
                           (cons __tmp10916 __tmp10911)))
                        (__tmp10906
                         (let ((__tmp10907
                                (let ((__tmp10908
                                       (let ((__tmp10909
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp10909 '()))))
                                  (declare (not safe))
                                  (cons _L9119_ __tmp10908))))
                           (declare (not safe))
                           (cons __tmp10907 '()))))
                    (declare (not safe))
                    (cons __tmp10910 __tmp10906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10917
                                                           __tmp10905)))
                                                  (__tmp10900
                                                   (let ((__tmp10901
                                                          (let ((__tmp10902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10903 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp10903 '()))))
                    (declare (not safe))
                    (cons _L9119_ __tmp10902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10901 '()))))
                                              (declare (not safe))
                                              (cons __tmp10904 __tmp10900))))
                                       (declare (not safe))
                                       (cons __tmp10918 __tmp10899))))
                                (declare (not safe))
                                (cons __tmp10922 __tmp10898))))
                         (declare (not safe))
                         (cons __tmp10897 '()))))
                  (declare (not safe))
                  (cons __tmp10923 __tmp10896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10926
                                                         __tmp10895)))
                                                (__tmp10811
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L9014_
                                                    _L9117_
                                                    _L9014_
                                                    _L9117_
                                                    _L9014_)
                                                   (let ((__tmp10812
                                                          (lambda (_g91389153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g91399156_
                           _g91409158_
                           _g91419160_
                           _g91429162_
                           _g91439164_)
                    (let ((__tmp10813
                           (let ((__tmp10893 (gx#datum->syntax '#f 'def))
                                 (__tmp10814
                                  (let ((__tmp10890
                                         (let ((__tmp10891
                                                (let ((__tmp10892
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp10892 '()))))
                                           (declare (not safe))
                                           (cons _g91389153_ __tmp10891)))
                                        (__tmp10815
                                         (let ((__tmp10816
                                                (let ((__tmp10889
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp10817
                                                       (let ((__tmp10885
                                                              (let ((__tmp10888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp10886
                             (let ((__tmp10887 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp10887 '()))))
                        (declare (not safe))
                        (cons __tmp10888 __tmp10886)))
                     (__tmp10818
                      (let ((__tmp10847
                             (let ((__tmp10884 (gx#datum->syntax '#f 'let))
                                   (__tmp10848
                                    (let ((__tmp10877
                                           (let ((__tmp10883
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp10878
                                                  (let ((__tmp10879
                                                         (let ((__tmp10882
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp10880
                        (let ((__tmp10881 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp10881 '()))))
                   (declare (not safe))
                   (cons __tmp10882 __tmp10880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp10879 '()))))
                                             (declare (not safe))
                                             (cons __tmp10883 __tmp10878)))
                                          (__tmp10849
                                           (let ((__tmp10850
                                                  (let ((__tmp10876
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp10851
                                                         (let ((__tmp10873
                                                                (let ((__tmp10874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp10875 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp10875 '()))))
                          (declare (not safe))
                          (cons _L9119_ __tmp10874)))
                       (__tmp10852
                        (let ((__tmp10870
                               (let ((__tmp10871
                                      (let ((__tmp10872
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp10872 '()))))
                                 (declare (not safe))
                                 (cons _g91399156_ __tmp10871)))
                              (__tmp10853
                               (let ((__tmp10854
                                      (let ((__tmp10869
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp10855
                                             (let ((__tmp10856
                                                    (let ((__tmp10866
                                                           (let ((__tmp10868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp10867
                          (let () (declare (not safe)) (cons _L9016_ '()))))
                     (declare (not safe))
                     (cons __tmp10868 __tmp10867)))
                  (__tmp10857
                   (let ((__tmp10858
                          (let ((__tmp10865 (gx#datum->syntax '#f '@list))
                                (__tmp10859
                                 (let ((__tmp10862
                                        (let ((__tmp10864
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp10863
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g91389153_ '()))))
                                          (declare (not safe))
                                          (cons __tmp10864 __tmp10863)))
                                       (__tmp10860
                                        (let ((__tmp10861
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp10861 '()))))
                                   (declare (not safe))
                                   (cons __tmp10862 __tmp10860))))
                            (declare (not safe))
                            (cons __tmp10865 __tmp10859))))
                     (declare (not safe))
                     (cons __tmp10858 '()))))
              (declare (not safe))
              (cons __tmp10866 __tmp10857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp10856))))
                                        (declare (not safe))
                                        (cons __tmp10869 __tmp10855))))
                                 (declare (not safe))
                                 (cons __tmp10854 '()))))
                          (declare (not safe))
                          (cons __tmp10870 __tmp10853))))
                   (declare (not safe))
                   (cons __tmp10873 __tmp10852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp10876
                                                          __tmp10851))))
                                             (declare (not safe))
                                             (cons __tmp10850 '()))))
                                      (declare (not safe))
                                      (cons __tmp10877 __tmp10849))))
                               (declare (not safe))
                               (cons __tmp10884 __tmp10848)))
                            (__tmp10819
                             (let ((__tmp10820
                                    (let ((__tmp10846
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp10821
                                           (let ((__tmp10843
                                                  (let ((__tmp10844
                                                         (let ((__tmp10845
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp10845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L9119_ __tmp10844)))
                                                 (__tmp10822
                                                  (let ((__tmp10840
                                                         (let ((__tmp10841
                                                                (let ((__tmp10842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp10842 '()))))
                   (declare (not safe))
                   (cons _g91399156_ __tmp10841)))
                (__tmp10823
                 (let ((__tmp10824
                        (let ((__tmp10839 (gx#datum->syntax '#f 'error))
                              (__tmp10825
                               (let ((__tmp10826
                                      (let ((__tmp10836
                                             (let ((__tmp10838
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp10837
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L9016_ '()))))
                                               (declare (not safe))
                                               (cons __tmp10838 __tmp10837)))
                                            (__tmp10827
                                             (let ((__tmp10828
                                                    (let ((__tmp10835
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp10829
                                                           (let ((__tmp10832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp10834 (gx#datum->syntax '#f 'quote))
                                (__tmp10833
                                 (let ()
                                   (declare (not safe))
                                   (cons _g91389153_ '()))))
                            (declare (not safe))
                            (cons __tmp10834 __tmp10833)))
                         (__tmp10830
                          (let ((__tmp10831 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp10831 '()))))
                     (declare (not safe))
                     (cons __tmp10832 __tmp10830))))
              (declare (not safe))
              (cons __tmp10835 __tmp10829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp10828 '()))))
                                        (declare (not safe))
                                        (cons __tmp10836 __tmp10827))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp10826))))
                          (declare (not safe))
                          (cons __tmp10839 __tmp10825))))
                   (declare (not safe))
                   (cons __tmp10824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp10840
                                                          __tmp10823))))
                                             (declare (not safe))
                                             (cons __tmp10843 __tmp10822))))
                                      (declare (not safe))
                                      (cons __tmp10846 __tmp10821))))
                               (declare (not safe))
                               (cons __tmp10820 '()))))
                        (declare (not safe))
                        (cons __tmp10847 __tmp10819))))
                 (declare (not safe))
                 (cons __tmp10885 __tmp10818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp10889
                                                        __tmp10817))))
                                           (declare (not safe))
                                           (cons __tmp10816 '()))))
                                    (declare (not safe))
                                    (cons __tmp10890 __tmp10815))))
                             (declare (not safe))
                             (cons __tmp10893 __tmp10814))))
                      (declare (not safe))
                      (cons __tmp10813 _g91439164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp10812
                                                             '()
                                                             _L9014_
                                                             _L9117_
                                                             _L9014_
                                                             _L9117_
                                                             _L9014_)))))
                                            (declare (not safe))
                                            (cons __tmp10894 __tmp10811))))
                                     (declare (not safe))
                                     (cons __tmp10927 __tmp10810))))
                              (declare (not safe))
                              (cons __tmp10932 __tmp10809))))
                        _macro-getf90549113_
                        _hd90419071_)
                       (_g90369060_ _g90379064_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop90499093_
                                            _target90469087_
                                            '()))
                                         (_g90369060_ _g90379064_)))))
                               (_g90369060_ _g90379064_))))
                       (_g90369060_ _g90379064_))))
               (_g90369060_ _g90379064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g90359167_
                                            (list (gx#stx-identifier
                                                   _L9016_
                                                   '"macro-"
                                                   _L9016_)
                                                  (map (lambda (_f9171_)
                                                         (gx#stx-identifier
                                                          _f9171_
                                                          '"macro-"
                                                          _f9171_))
                                                       (let ((__tmp10933
                                                              (lambda (_g91739176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g91749179_)
                        (let ()
                          (declare (not safe))
                          (cons _g91739176_ _g91749179_)))))
                 (declare (not safe))
                 (foldr1 __tmp10933 '() _L9014_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf89419010_
                                       _hd89318978_)
                                      (_g89208947_ _g89218951_)))))))
                  (_loop89368990_ _target89338984_ '()))
                (_g89208947_ _g89218951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g89208947_ _g89218951_))))
                                      (_g89208947_ _g89218951_))))
                              (_g89208947_ _g89218951_))))
                      (_g89208947_ _g89218951_)))))
          (_g89199182_ _stx8917_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx9188_)
        (let* ((_g91929212_
                (lambda (_g91939208_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g91939208_)))
               (_g91919283_
                (lambda (_g91939216_)
                  (if (gx#stx-pair? _g91939216_)
                      (let ((_e91979219_ (gx#syntax-e _g91939216_)))
                        (let ((_hd91969223_
                               (let ()
                                 (declare (not safe))
                                 (##car _e91979219_)))
                              (_tl91959226_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e91979219_))))
                          (if (gx#stx-pair/null? _tl91959226_)
                              (let ((_g10934_
                                     (gx#syntax-split-splice _tl91959226_ '0)))
                                (begin
                                  (let ((_g10935_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g10934_)
                                               (##vector-length _g10934_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g10935_ 2)))
                                        (error "Context expects 2 values"
                                               _g10935_)))
                                  (let ((_target91989229_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g10934_ 0)))
                                        (_tl92009232_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g10934_ 1))))
                                    (if (gx#stx-null? _tl92009232_)
                                        (letrec ((_loop92019235_
                                                  (lambda (_hd91999239_
                                                           _defexn92059242_)
                                                    (if (gx#stx-pair?
                                                         _hd91999239_)
                                                        (let ((_e92029245_
                                                               (gx#syntax-e
                                                                _hd91999239_)))
                                                          (let ((_lp-hd92039249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e92029245_)))
                        (_lp-tl92049252_
                         (let () (declare (not safe)) (##cdr _e92029245_))))
                    (_loop92019235_
                     _lp-tl92049252_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd92039249_ _defexn92059242_)))))
                (let ((_defexn92069255_ (reverse _defexn92059242_)))
                  ((lambda (_L9259_)
                     (let ((__tmp10941 (gx#datum->syntax '#f 'begin))
                           (__tmp10936
                            (let ((__tmp10937
                                   (lambda (_g92749277_ _g92759280_)
                                     (let ((__tmp10938
                                            (let ((__tmp10940
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp10939
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g92749277_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10940 __tmp10939))))
                                       (declare (not safe))
                                       (cons __tmp10938 _g92759280_)))))
                              (declare (not safe))
                              (foldr1 __tmp10937 '() _L9259_))))
                       (declare (not safe))
                       (cons __tmp10941 __tmp10936)))
                   _defexn92069255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop92019235_
                                           _target91989229_
                                           '()))
                                        (_g91929212_ _g91939216_)))))
                              (_g91929212_ _g91939216_))))
                      (_g91929212_ _g91939216_)))))
          (_g91919283_ _$stx9188_))))))
