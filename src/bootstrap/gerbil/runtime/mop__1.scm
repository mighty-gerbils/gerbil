(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx81213_)
    (let* ((_g8121781243_
            (lambda (_g8121881239_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8121881239_)))
           (_g8121681327_
            (lambda (_g8121881247_)
              (if (gx#stx-pair? _g8121881247_)
                  (let ((_e8122581250_ (gx#syntax-e _g8121881247_)))
                    (let ((_hd8122481254_
                           (let () (declare (not safe)) (##car _e8122581250_)))
                          (_tl8122381257_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8122581250_))))
                      (if (gx#stx-pair? _tl8122381257_)
                          (let ((_e8122881260_ (gx#syntax-e _tl8122381257_)))
                            (let ((_hd8122781264_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8122881260_)))
                                  (_tl8122681267_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8122881260_))))
                              (if (gx#stx-pair? _tl8122681267_)
                                  (let ((_e8123181270_
                                         (gx#syntax-e _tl8122681267_)))
                                    (let ((_hd8123081274_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8123181270_)))
                                          (_tl8122981277_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8123181270_))))
                                      (if (gx#stx-pair? _tl8122981277_)
                                          (let ((_e8123481280_
                                                 (gx#syntax-e _tl8122981277_)))
                                            (let ((_hd8123381284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8123481280_)))
                                                  (_tl8123281287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8123481280_))))
                                              (if (gx#stx-pair? _tl8123281287_)
                                                  (let ((_e8123781290_
                                                         (gx#syntax-e
                                                          _tl8123281287_)))
                                                    (let ((_hd8123681294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8123781290_)))
                                                          (_tl8123581297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8123781290_))))
                                                      (if (gx#stx-null?
                                                           _tl8123581297_)
                                                          ((lambda (_L81300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L81302_
                            _L81303_
                            _L81304_)
                     (let ((__tmp86830 (gx#datum->syntax '#f 'if))
                           (__tmp86784
                            (let ((__tmp86827
                                   (let ((__tmp86829
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp86828
                                          (let ()
                                            (declare (not safe))
                                            (cons _L81304_ '()))))
                                     (declare (not safe))
                                     (cons __tmp86829 __tmp86828)))
                                  (__tmp86785
                                   (let ((__tmp86790
                                          (let ((__tmp86826
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp86791
                                                 (let ((__tmp86820
                                                        (let ((__tmp86825
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp86821
                                                               (let ((__tmp86822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp86824
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp86823
                                     (let ()
                                       (declare (not safe))
                                       (cons _L81304_ '()))))
                                (declare (not safe))
                                (cons __tmp86824 __tmp86823))))
                         (declare (not safe))
                         (cons __tmp86822 '()))))
                  (declare (not safe))
                  (cons __tmp86825 __tmp86821)))
               (__tmp86792
                (let ((__tmp86793
                       (let ((__tmp86819 (gx#datum->syntax '#f 'cond))
                             (__tmp86794
                              (let ((__tmp86802
                                     (let ((__tmp86806
                                            (let ((__tmp86818
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp86807
                                                   (let ((__tmp86814
                                                          (let ((__tmp86817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp86815
                         (let ((__tmp86816 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp86816 '()))))
                    (declare (not safe))
                    (cons __tmp86817 __tmp86815)))
                 (__tmp86808
                  (let ((__tmp86809
                         (let ((__tmp86813
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp86810
                                (let ((__tmp86812
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp86811
                                       (let ()
                                         (declare (not safe))
                                         (cons _L81303_ '()))))
                                  (declare (not safe))
                                  (cons __tmp86812 __tmp86811))))
                           (declare (not safe))
                           (cons __tmp86813 __tmp86810))))
                    (declare (not safe))
                    (cons __tmp86809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp86814
                                                           __tmp86808))))
                                              (declare (not safe))
                                              (cons __tmp86818 __tmp86807)))
                                           (__tmp86803
                                            (let ((__tmp86805
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp86804
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L81302_ '()))))
                                              (declare (not safe))
                                              (cons __tmp86805 __tmp86804))))
                                       (declare (not safe))
                                       (cons __tmp86806 __tmp86803)))
                                    (__tmp86795
                                     (let ((__tmp86796
                                            (let ((__tmp86801
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp86797
                                                   (let ((__tmp86798
                                                          (let ((__tmp86799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp86800
                                (let ()
                                  (declare (not safe))
                                  (cons _L81303_ '()))))
                           (declare (not safe))
                           (cons _L81304_ __tmp86800))))
                    (declare (not safe))
                    (cons _L81300_ __tmp86799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp86798 '()))))
                                              (declare (not safe))
                                              (cons __tmp86801 __tmp86797))))
                                       (declare (not safe))
                                       (cons __tmp86796 '()))))
                                (declare (not safe))
                                (cons __tmp86802 __tmp86795))))
                         (declare (not safe))
                         (cons __tmp86819 __tmp86794))))
                  (declare (not safe))
                  (cons __tmp86793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp86820
                                                         __tmp86792))))
                                            (declare (not safe))
                                            (cons __tmp86826 __tmp86791)))
                                         (__tmp86786
                                          (let ((__tmp86787
                                                 (let ((__tmp86788
                                                        (let ((__tmp86789
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L81303_ '()))))
                  (declare (not safe))
                  (cons _L81304_ __tmp86789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L81300_
                                                         __tmp86788))))
                                            (declare (not safe))
                                            (cons __tmp86787 '()))))
                                     (declare (not safe))
                                     (cons __tmp86790 __tmp86786))))
                              (declare (not safe))
                              (cons __tmp86827 __tmp86785))))
                       (declare (not safe))
                       (cons __tmp86830 __tmp86784)))
                   _hd8123681294_
                   _hd8123381284_
                   _hd8123081274_
                   _hd8122781264_)
                  (_g8121781243_ _g8121881247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8121781243_
                                                   _g8121881247_))))
                                          (_g8121781243_ _g8121881247_))))
                                  (_g8121781243_ _g8121881247_))))
                          (_g8121781243_ _g8121881247_))))
                  (_g8121781243_ _g8121881247_)))))
      (_g8121681327_ _$stx81213_))))
