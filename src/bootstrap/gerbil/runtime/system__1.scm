(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64498_)
    (let* ((_g6450264520_
            (lambda (_g6450364516_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6450364516_)))
           (_g6450164576_
            (lambda (_g6450364524_)
              (if (gx#stx-pair? _g6450364524_)
                  (let ((_e6450864527_ (gx#syntax-e _g6450364524_)))
                    (let ((_hd6450764531_
                           (let () (declare (not safe)) (##car _e6450864527_)))
                          (_tl6450664534_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6450864527_))))
                      (if (gx#stx-pair? _tl6450664534_)
                          (let ((_e6451164537_ (gx#syntax-e _tl6450664534_)))
                            (let ((_hd6451064541_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6451164537_)))
                                  (_tl6450964544_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6451164537_))))
                              (if (gx#stx-pair? _tl6450964544_)
                                  (let ((_e6451464547_
                                         (gx#syntax-e _tl6450964544_)))
                                    (let ((_hd6451364551_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6451464547_)))
                                          (_tl6451264554_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6451464547_))))
                                      (if (gx#stx-null? _tl6451264554_)
                                          ((lambda (_L64557_ _L64559_)
                                             (let ((__tmp69158
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69145
                                                    (let ((__tmp69154
                                                           (let ((__tmp69157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69155
                          (let ((__tmp69156
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64557_ '()))))
                            (declare (not safe))
                            (cons _L64559_ __tmp69156))))
                     (declare (not safe))
                     (cons __tmp69157 __tmp69155)))
                  (__tmp69146
                   (let ((__tmp69150
                          (let ((__tmp69153 (gx#datum->syntax '#f 'set!))
                                (__tmp69151
                                 (let ((__tmp69152
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64559_ '()))))
                                   (declare (not safe))
                                   (cons _L64559_ __tmp69152))))
                            (declare (not safe))
                            (cons __tmp69153 __tmp69151)))
                         (__tmp69147
                          (let ((__tmp69148
                                 (let ((__tmp69149
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69149 '()))))
                            (declare (not safe))
                            (cons __tmp69148 '()))))
                     (declare (not safe))
                     (cons __tmp69150 __tmp69147))))
              (declare (not safe))
              (cons __tmp69154 __tmp69146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69158 __tmp69145)))
                                           _hd6451364551_
                                           _hd6451064541_)
                                          (_g6450264520_ _g6450364524_))))
                                  (_g6450264520_ _g6450364524_))))
                          (_g6450264520_ _g6450364524_))))
                  (_g6450264520_ _g6450364524_)))))
      (_g6450164576_ _$stx64498_))))
