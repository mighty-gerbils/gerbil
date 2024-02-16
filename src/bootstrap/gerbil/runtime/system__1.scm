(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64925_)
    (let* ((_g6492964947_
            (lambda (_g6493064943_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6493064943_)))
           (_g6492865003_
            (lambda (_g6493064951_)
              (if (gx#stx-pair? _g6493064951_)
                  (let ((_e6493564954_ (gx#syntax-e _g6493064951_)))
                    (let ((_hd6493464958_
                           (let () (declare (not safe)) (##car _e6493564954_)))
                          (_tl6493364961_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6493564954_))))
                      (if (gx#stx-pair? _tl6493364961_)
                          (let ((_e6493864964_ (gx#syntax-e _tl6493364961_)))
                            (let ((_hd6493764968_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6493864964_)))
                                  (_tl6493664971_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6493864964_))))
                              (if (gx#stx-pair? _tl6493664971_)
                                  (let ((_e6494164974_
                                         (gx#syntax-e _tl6493664971_)))
                                    (let ((_hd6494064978_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6494164974_)))
                                          (_tl6493964981_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6494164974_))))
                                      (if (gx#stx-null? _tl6493964981_)
                                          ((lambda (_L64984_ _L64986_)
                                             (let ((__tmp69685
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69672
                                                    (let ((__tmp69681
                                                           (let ((__tmp69684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69682
                          (let ((__tmp69683
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64984_ '()))))
                            (declare (not safe))
                            (cons _L64986_ __tmp69683))))
                     (declare (not safe))
                     (cons __tmp69684 __tmp69682)))
                  (__tmp69673
                   (let ((__tmp69677
                          (let ((__tmp69680 (gx#datum->syntax '#f 'set!))
                                (__tmp69678
                                 (let ((__tmp69679
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64986_ '()))))
                                   (declare (not safe))
                                   (cons _L64986_ __tmp69679))))
                            (declare (not safe))
                            (cons __tmp69680 __tmp69678)))
                         (__tmp69674
                          (let ((__tmp69675
                                 (let ((__tmp69676
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69676 '()))))
                            (declare (not safe))
                            (cons __tmp69675 '()))))
                     (declare (not safe))
                     (cons __tmp69677 __tmp69674))))
              (declare (not safe))
              (cons __tmp69681 __tmp69673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69685 __tmp69672)))
                                           _hd6494064978_
                                           _hd6493764968_)
                                          (_g6492964947_ _g6493064951_))))
                                  (_g6492964947_ _g6493064951_))))
                          (_g6492964947_ _g6493064951_))))
                  (_g6492964947_ _g6493064951_)))))
      (_g6492865003_ _$stx64925_))))
