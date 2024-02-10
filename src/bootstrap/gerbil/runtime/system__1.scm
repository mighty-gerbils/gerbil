(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64736_)
    (let* ((_g6474064758_
            (lambda (_g6474164754_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6474164754_)))
           (_g6473964814_
            (lambda (_g6474164762_)
              (if (gx#stx-pair? _g6474164762_)
                  (let ((_e6474664765_ (gx#syntax-e _g6474164762_)))
                    (let ((_hd6474564769_
                           (let () (declare (not safe)) (##car _e6474664765_)))
                          (_tl6474464772_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6474664765_))))
                      (if (gx#stx-pair? _tl6474464772_)
                          (let ((_e6474964775_ (gx#syntax-e _tl6474464772_)))
                            (let ((_hd6474864779_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6474964775_)))
                                  (_tl6474764782_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6474964775_))))
                              (if (gx#stx-pair? _tl6474764782_)
                                  (let ((_e6475264785_
                                         (gx#syntax-e _tl6474764782_)))
                                    (let ((_hd6475164789_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6475264785_)))
                                          (_tl6475064792_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6475264785_))))
                                      (if (gx#stx-null? _tl6475064792_)
                                          ((lambda (_L64795_ _L64797_)
                                             (let ((__tmp69396
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69383
                                                    (let ((__tmp69392
                                                           (let ((__tmp69395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69393
                          (let ((__tmp69394
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64795_ '()))))
                            (declare (not safe))
                            (cons _L64797_ __tmp69394))))
                     (declare (not safe))
                     (cons __tmp69395 __tmp69393)))
                  (__tmp69384
                   (let ((__tmp69388
                          (let ((__tmp69391 (gx#datum->syntax '#f 'set!))
                                (__tmp69389
                                 (let ((__tmp69390
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64797_ '()))))
                                   (declare (not safe))
                                   (cons _L64797_ __tmp69390))))
                            (declare (not safe))
                            (cons __tmp69391 __tmp69389)))
                         (__tmp69385
                          (let ((__tmp69386
                                 (let ((__tmp69387
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69387 '()))))
                            (declare (not safe))
                            (cons __tmp69386 '()))))
                     (declare (not safe))
                     (cons __tmp69388 __tmp69385))))
              (declare (not safe))
              (cons __tmp69392 __tmp69384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69396 __tmp69383)))
                                           _hd6475164789_
                                           _hd6474864779_)
                                          (_g6474064758_ _g6474164762_))))
                                  (_g6474064758_ _g6474164762_))))
                          (_g6474064758_ _g6474164762_))))
                  (_g6474064758_ _g6474164762_)))))
      (_g6473964814_ _$stx64736_))))
