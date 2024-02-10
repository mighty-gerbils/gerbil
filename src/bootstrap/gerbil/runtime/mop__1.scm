(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx81208_)
    (let* ((_g8121281238_
            (lambda (_g8121381234_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8121381234_)))
           (_g8121181322_
            (lambda (_g8121381242_)
              (if (gx#stx-pair? _g8121381242_)
                  (let ((_e8122081245_ (gx#syntax-e _g8121381242_)))
                    (let ((_hd8121981249_
                           (let () (declare (not safe)) (##car _e8122081245_)))
                          (_tl8121881252_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8122081245_))))
                      (if (gx#stx-pair? _tl8121881252_)
                          (let ((_e8122381255_ (gx#syntax-e _tl8121881252_)))
                            (let ((_hd8122281259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8122381255_)))
                                  (_tl8122181262_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8122381255_))))
                              (if (gx#stx-pair? _tl8122181262_)
                                  (let ((_e8122681265_
                                         (gx#syntax-e _tl8122181262_)))
                                    (let ((_hd8122581269_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8122681265_)))
                                          (_tl8122481272_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8122681265_))))
                                      (if (gx#stx-pair? _tl8122481272_)
                                          (let ((_e8122981275_
                                                 (gx#syntax-e _tl8122481272_)))
                                            (let ((_hd8122881279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8122981275_)))
                                                  (_tl8122781282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8122981275_))))
                                              (if (gx#stx-pair? _tl8122781282_)
                                                  (let ((_e8123281285_
                                                         (gx#syntax-e
                                                          _tl8122781282_)))
                                                    (let ((_hd8123181289_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8123281285_)))
                                                          (_tl8123081292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8123281285_))))
                                                      (if (gx#stx-null?
                                                           _tl8123081292_)
                                                          ((lambda (_L81295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L81297_
                            _L81298_
                            _L81299_)
                     (let ((__tmp86831 (gx#datum->syntax '#f 'if))
                           (__tmp86785
                            (let ((__tmp86828
                                   (let ((__tmp86830
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp86829
                                          (let ()
                                            (declare (not safe))
                                            (cons _L81299_ '()))))
                                     (declare (not safe))
                                     (cons __tmp86830 __tmp86829)))
                                  (__tmp86786
                                   (let ((__tmp86791
                                          (let ((__tmp86827
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp86792
                                                 (let ((__tmp86821
                                                        (let ((__tmp86826
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp86822
                                                               (let ((__tmp86823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp86825
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp86824
                                     (let ()
                                       (declare (not safe))
                                       (cons _L81299_ '()))))
                                (declare (not safe))
                                (cons __tmp86825 __tmp86824))))
                         (declare (not safe))
                         (cons __tmp86823 '()))))
                  (declare (not safe))
                  (cons __tmp86826 __tmp86822)))
               (__tmp86793
                (let ((__tmp86794
                       (let ((__tmp86820 (gx#datum->syntax '#f 'cond))
                             (__tmp86795
                              (let ((__tmp86803
                                     (let ((__tmp86807
                                            (let ((__tmp86819
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp86808
                                                   (let ((__tmp86815
                                                          (let ((__tmp86818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp86816
                         (let ((__tmp86817 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp86817 '()))))
                    (declare (not safe))
                    (cons __tmp86818 __tmp86816)))
                 (__tmp86809
                  (let ((__tmp86810
                         (let ((__tmp86814
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp86811
                                (let ((__tmp86813
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp86812
                                       (let ()
                                         (declare (not safe))
                                         (cons _L81298_ '()))))
                                  (declare (not safe))
                                  (cons __tmp86813 __tmp86812))))
                           (declare (not safe))
                           (cons __tmp86814 __tmp86811))))
                    (declare (not safe))
                    (cons __tmp86810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp86815
                                                           __tmp86809))))
                                              (declare (not safe))
                                              (cons __tmp86819 __tmp86808)))
                                           (__tmp86804
                                            (let ((__tmp86806
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp86805
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L81297_ '()))))
                                              (declare (not safe))
                                              (cons __tmp86806 __tmp86805))))
                                       (declare (not safe))
                                       (cons __tmp86807 __tmp86804)))
                                    (__tmp86796
                                     (let ((__tmp86797
                                            (let ((__tmp86802
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp86798
                                                   (let ((__tmp86799
                                                          (let ((__tmp86800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp86801
                                (let ()
                                  (declare (not safe))
                                  (cons _L81298_ '()))))
                           (declare (not safe))
                           (cons _L81299_ __tmp86801))))
                    (declare (not safe))
                    (cons _L81295_ __tmp86800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp86799 '()))))
                                              (declare (not safe))
                                              (cons __tmp86802 __tmp86798))))
                                       (declare (not safe))
                                       (cons __tmp86797 '()))))
                                (declare (not safe))
                                (cons __tmp86803 __tmp86796))))
                         (declare (not safe))
                         (cons __tmp86820 __tmp86795))))
                  (declare (not safe))
                  (cons __tmp86794 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp86821
                                                         __tmp86793))))
                                            (declare (not safe))
                                            (cons __tmp86827 __tmp86792)))
                                         (__tmp86787
                                          (let ((__tmp86788
                                                 (let ((__tmp86789
                                                        (let ((__tmp86790
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L81298_ '()))))
                  (declare (not safe))
                  (cons _L81299_ __tmp86790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L81295_
                                                         __tmp86789))))
                                            (declare (not safe))
                                            (cons __tmp86788 '()))))
                                     (declare (not safe))
                                     (cons __tmp86791 __tmp86787))))
                              (declare (not safe))
                              (cons __tmp86828 __tmp86786))))
                       (declare (not safe))
                       (cons __tmp86831 __tmp86785)))
                   _hd8123181289_
                   _hd8122881279_
                   _hd8122581269_
                   _hd8122281259_)
                  (_g8121281238_ _g8121381242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8121281238_
                                                   _g8121381242_))))
                                          (_g8121281238_ _g8121381242_))))
                                  (_g8121281238_ _g8121381242_))))
                          (_g8121281238_ _g8121381242_))))
                  (_g8121281238_ _g8121381242_)))))
      (_g8121181322_ _$stx81208_))))
