(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64709_)
    (let* ((_g6471364731_
            (lambda (_g6471464727_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6471464727_)))
           (_g6471264787_
            (lambda (_g6471464735_)
              (if (gx#stx-pair? _g6471464735_)
                  (let ((_e6471964738_ (gx#syntax-e _g6471464735_)))
                    (let ((_hd6471864742_
                           (let () (declare (not safe)) (##car _e6471964738_)))
                          (_tl6471764745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6471964738_))))
                      (if (gx#stx-pair? _tl6471764745_)
                          (let ((_e6472264748_ (gx#syntax-e _tl6471764745_)))
                            (let ((_hd6472164752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6472264748_)))
                                  (_tl6472064755_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6472264748_))))
                              (if (gx#stx-pair? _tl6472064755_)
                                  (let ((_e6472564758_
                                         (gx#syntax-e _tl6472064755_)))
                                    (let ((_hd6472464762_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6472564758_)))
                                          (_tl6472364765_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6472564758_))))
                                      (if (gx#stx-null? _tl6472364765_)
                                          ((lambda (_L64768_ _L64770_)
                                             (let ((__tmp69469
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69456
                                                    (let ((__tmp69465
                                                           (let ((__tmp69468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69466
                          (let ((__tmp69467
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64768_ '()))))
                            (declare (not safe))
                            (cons _L64770_ __tmp69467))))
                     (declare (not safe))
                     (cons __tmp69468 __tmp69466)))
                  (__tmp69457
                   (let ((__tmp69461
                          (let ((__tmp69464 (gx#datum->syntax '#f 'set!))
                                (__tmp69462
                                 (let ((__tmp69463
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64770_ '()))))
                                   (declare (not safe))
                                   (cons _L64770_ __tmp69463))))
                            (declare (not safe))
                            (cons __tmp69464 __tmp69462)))
                         (__tmp69458
                          (let ((__tmp69459
                                 (let ((__tmp69460
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69460 '()))))
                            (declare (not safe))
                            (cons __tmp69459 '()))))
                     (declare (not safe))
                     (cons __tmp69461 __tmp69458))))
              (declare (not safe))
              (cons __tmp69465 __tmp69457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69469 __tmp69456)))
                                           _hd6472464762_
                                           _hd6472164752_)
                                          (_g6471364731_ _g6471464735_))))
                                  (_g6471364731_ _g6471464735_))))
                          (_g6471364731_ _g6471464735_))))
                  (_g6471364731_ _g6471464735_)))))
      (_g6471264787_ _$stx64709_))))
