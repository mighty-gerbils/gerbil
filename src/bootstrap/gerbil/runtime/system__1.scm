(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx63854_)
    (let* ((_g6385863876_
            (lambda (_g6385963872_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6385963872_)))
           (_g6385763932_
            (lambda (_g6385963880_)
              (if (gx#stx-pair? _g6385963880_)
                  (let ((_e6386463883_ (gx#syntax-e _g6385963880_)))
                    (let ((_hd6386363887_
                           (let () (declare (not safe)) (##car _e6386463883_)))
                          (_tl6386263890_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6386463883_))))
                      (if (gx#stx-pair? _tl6386263890_)
                          (let ((_e6386763893_ (gx#syntax-e _tl6386263890_)))
                            (let ((_hd6386663897_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6386763893_)))
                                  (_tl6386563900_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6386763893_))))
                              (if (gx#stx-pair? _tl6386563900_)
                                  (let ((_e6387063903_
                                         (gx#syntax-e _tl6386563900_)))
                                    (let ((_hd6386963907_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6387063903_)))
                                          (_tl6386863910_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6387063903_))))
                                      (if (gx#stx-null? _tl6386863910_)
                                          ((lambda (_L63913_ _L63915_)
                                             (let ((__tmp68240
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp68227
                                                    (let ((__tmp68236
                                                           (let ((__tmp68239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp68237
                          (let ((__tmp68238
                                 (let ()
                                   (declare (not safe))
                                   (cons _L63913_ '()))))
                            (declare (not safe))
                            (cons _L63915_ __tmp68238))))
                     (declare (not safe))
                     (cons __tmp68239 __tmp68237)))
                  (__tmp68228
                   (let ((__tmp68232
                          (let ((__tmp68235 (gx#datum->syntax '#f 'set!))
                                (__tmp68233
                                 (let ((__tmp68234
                                        (let ()
                                          (declare (not safe))
                                          (cons _L63915_ '()))))
                                   (declare (not safe))
                                   (cons _L63915_ __tmp68234))))
                            (declare (not safe))
                            (cons __tmp68235 __tmp68233)))
                         (__tmp68229
                          (let ((__tmp68230
                                 (let ((__tmp68231
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp68231 '()))))
                            (declare (not safe))
                            (cons __tmp68230 '()))))
                     (declare (not safe))
                     (cons __tmp68232 __tmp68229))))
              (declare (not safe))
              (cons __tmp68236 __tmp68228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68240 __tmp68227)))
                                           _hd6386963907_
                                           _hd6386663897_)
                                          (_g6385863876_ _g6385963880_))))
                                  (_g6385863876_ _g6385963880_))))
                          (_g6385863876_ _g6385963880_))))
                  (_g6385863876_ _g6385963880_)))))
      (_g6385763932_ _$stx63854_))))
