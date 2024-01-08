(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9359_)
    (let* ((_g93639389_
            (lambda (_g93649385_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g93649385_)))
           (_g93629473_
            (lambda (_g93649393_)
              (if (gx#stx-pair? _g93649393_)
                  (let ((_e93719396_ (gx#syntax-e _g93649393_)))
                    (let ((_hd93709400_
                           (let () (declare (not safe)) (##car _e93719396_)))
                          (_tl93699403_
                           (let () (declare (not safe)) (##cdr _e93719396_))))
                      (if (gx#stx-pair? _tl93699403_)
                          (let ((_e93749406_ (gx#syntax-e _tl93699403_)))
                            (let ((_hd93739410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e93749406_)))
                                  (_tl93729413_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e93749406_))))
                              (if (gx#stx-pair? _tl93729413_)
                                  (let ((_e93779416_
                                         (gx#syntax-e _tl93729413_)))
                                    (let ((_hd93769420_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e93779416_)))
                                          (_tl93759423_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e93779416_))))
                                      (if (gx#stx-pair? _tl93759423_)
                                          (let ((_e93809426_
                                                 (gx#syntax-e _tl93759423_)))
                                            (let ((_hd93799430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e93809426_)))
                                                  (_tl93789433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e93809426_))))
                                              (if (gx#stx-pair? _tl93789433_)
                                                  (let ((_e93839436_
                                                         (gx#syntax-e
                                                          _tl93789433_)))
                                                    (let ((_hd93829440_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e93839436_)))
                                                          (_tl93819443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e93839436_))))
                                                      (if (gx#stx-null?
                                                           _tl93819443_)
                                                          ((lambda (_L9446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9448_
                            _L9449_
                            _L9450_)
                     (let ((__tmp10816 (gx#datum->syntax '#f 'if))
                           (__tmp10770
                            (let ((__tmp10813
                                   (let ((__tmp10815
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10814
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9450_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10815 __tmp10814)))
                                  (__tmp10771
                                   (let ((__tmp10776
                                          (let ((__tmp10812
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10777
                                                 (let ((__tmp10806
                                                        (let ((__tmp10811
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10807
                                                               (let ((__tmp10808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10810
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10809
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9450_ '()))))
                                (declare (not safe))
                                (cons __tmp10810 __tmp10809))))
                         (declare (not safe))
                         (cons __tmp10808 '()))))
                  (declare (not safe))
                  (cons __tmp10811 __tmp10807)))
               (__tmp10778
                (let ((__tmp10779
                       (let ((__tmp10805 (gx#datum->syntax '#f 'cond))
                             (__tmp10780
                              (let ((__tmp10788
                                     (let ((__tmp10792
                                            (let ((__tmp10804
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10793
                                                   (let ((__tmp10800
                                                          (let ((__tmp10803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10801
                         (let ((__tmp10802 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10802 '()))))
                    (declare (not safe))
                    (cons __tmp10803 __tmp10801)))
                 (__tmp10794
                  (let ((__tmp10795
                         (let ((__tmp10799
                                (gx#datum->syntax '#f 'class-slot-offset*))
                               (__tmp10796
                                (let ((__tmp10798
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10797
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9449_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10798 __tmp10797))))
                           (declare (not safe))
                           (cons __tmp10799 __tmp10796))))
                    (declare (not safe))
                    (cons __tmp10795 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10800
                                                           __tmp10794))))
                                              (declare (not safe))
                                              (cons __tmp10804 __tmp10793)))
                                           (__tmp10789
                                            (let ((__tmp10791
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10790
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9448_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10791 __tmp10790))))
                                       (declare (not safe))
                                       (cons __tmp10792 __tmp10789)))
                                    (__tmp10781
                                     (let ((__tmp10782
                                            (let ((__tmp10787
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10783
                                                   (let ((__tmp10784
                                                          (let ((__tmp10785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10786
                                (let ()
                                  (declare (not safe))
                                  (cons _L9449_ '()))))
                           (declare (not safe))
                           (cons _L9450_ __tmp10786))))
                    (declare (not safe))
                    (cons _L9446_ __tmp10785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10784 '()))))
                                              (declare (not safe))
                                              (cons __tmp10787 __tmp10783))))
                                       (declare (not safe))
                                       (cons __tmp10782 '()))))
                                (declare (not safe))
                                (cons __tmp10788 __tmp10781))))
                         (declare (not safe))
                         (cons __tmp10805 __tmp10780))))
                  (declare (not safe))
                  (cons __tmp10779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10806
                                                         __tmp10778))))
                                            (declare (not safe))
                                            (cons __tmp10812 __tmp10777)))
                                         (__tmp10772
                                          (let ((__tmp10773
                                                 (let ((__tmp10774
                                                        (let ((__tmp10775
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9449_ '()))))
                  (declare (not safe))
                  (cons _L9450_ __tmp10775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9446_ __tmp10774))))
                                            (declare (not safe))
                                            (cons __tmp10773 '()))))
                                     (declare (not safe))
                                     (cons __tmp10776 __tmp10772))))
                              (declare (not safe))
                              (cons __tmp10813 __tmp10771))))
                       (declare (not safe))
                       (cons __tmp10816 __tmp10770)))
                   _hd93829440_
                   _hd93799430_
                   _hd93769420_
                   _hd93739410_)
                  (_g93639389_ _g93649393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g93639389_ _g93649393_))))
                                          (_g93639389_ _g93649393_))))
                                  (_g93639389_ _g93649393_))))
                          (_g93639389_ _g93649393_))))
                  (_g93639389_ _g93649393_)))))
      (_g93629473_ _$stx9359_))))
