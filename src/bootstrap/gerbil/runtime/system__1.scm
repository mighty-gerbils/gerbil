(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx63859_)
    (let* ((_g6386363881_
            (lambda (_g6386463877_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6386463877_)))
           (_g6386263937_
            (lambda (_g6386463885_)
              (if (gx#stx-pair? _g6386463885_)
                  (let ((_e6386963888_ (gx#syntax-e _g6386463885_)))
                    (let ((_hd6386863892_
                           (let () (declare (not safe)) (##car _e6386963888_)))
                          (_tl6386763895_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6386963888_))))
                      (if (gx#stx-pair? _tl6386763895_)
                          (let ((_e6387263898_ (gx#syntax-e _tl6386763895_)))
                            (let ((_hd6387163902_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6387263898_)))
                                  (_tl6387063905_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6387263898_))))
                              (if (gx#stx-pair? _tl6387063905_)
                                  (let ((_e6387563908_
                                         (gx#syntax-e _tl6387063905_)))
                                    (let ((_hd6387463912_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6387563908_)))
                                          (_tl6387363915_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6387563908_))))
                                      (if (gx#stx-null? _tl6387363915_)
                                          ((lambda (_L63918_ _L63920_)
                                             (let ((__tmp68245
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp68232
                                                    (let ((__tmp68241
                                                           (let ((__tmp68244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp68242
                          (let ((__tmp68243
                                 (let ()
                                   (declare (not safe))
                                   (cons _L63918_ '()))))
                            (declare (not safe))
                            (cons _L63920_ __tmp68243))))
                     (declare (not safe))
                     (cons __tmp68244 __tmp68242)))
                  (__tmp68233
                   (let ((__tmp68237
                          (let ((__tmp68240 (gx#datum->syntax '#f 'set!))
                                (__tmp68238
                                 (let ((__tmp68239
                                        (let ()
                                          (declare (not safe))
                                          (cons _L63920_ '()))))
                                   (declare (not safe))
                                   (cons _L63920_ __tmp68239))))
                            (declare (not safe))
                            (cons __tmp68240 __tmp68238)))
                         (__tmp68234
                          (let ((__tmp68235
                                 (let ((__tmp68236
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp68236 '()))))
                            (declare (not safe))
                            (cons __tmp68235 '()))))
                     (declare (not safe))
                     (cons __tmp68237 __tmp68234))))
              (declare (not safe))
              (cons __tmp68241 __tmp68233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68245 __tmp68232)))
                                           _hd6387463912_
                                           _hd6387163902_)
                                          (_g6386363881_ _g6386463885_))))
                                  (_g6386363881_ _g6386463885_))))
                          (_g6386363881_ _g6386463885_))))
                  (_g6386363881_ _g6386463885_)))))
      (_g6386263937_ _$stx63859_))))
