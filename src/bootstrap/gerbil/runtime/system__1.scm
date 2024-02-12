(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64714_)
    (let* ((_g6471864736_
            (lambda (_g6471964732_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6471964732_)))
           (_g6471764792_
            (lambda (_g6471964740_)
              (if (gx#stx-pair? _g6471964740_)
                  (let ((_e6472464743_ (gx#syntax-e _g6471964740_)))
                    (let ((_hd6472364747_
                           (let () (declare (not safe)) (##car _e6472464743_)))
                          (_tl6472264750_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6472464743_))))
                      (if (gx#stx-pair? _tl6472264750_)
                          (let ((_e6472764753_ (gx#syntax-e _tl6472264750_)))
                            (let ((_hd6472664757_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6472764753_)))
                                  (_tl6472564760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6472764753_))))
                              (if (gx#stx-pair? _tl6472564760_)
                                  (let ((_e6473064763_
                                         (gx#syntax-e _tl6472564760_)))
                                    (let ((_hd6472964767_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6473064763_)))
                                          (_tl6472864770_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6473064763_))))
                                      (if (gx#stx-null? _tl6472864770_)
                                          ((lambda (_L64773_ _L64775_)
                                             (let ((__tmp69474
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69461
                                                    (let ((__tmp69470
                                                           (let ((__tmp69473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69471
                          (let ((__tmp69472
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64773_ '()))))
                            (declare (not safe))
                            (cons _L64775_ __tmp69472))))
                     (declare (not safe))
                     (cons __tmp69473 __tmp69471)))
                  (__tmp69462
                   (let ((__tmp69466
                          (let ((__tmp69469 (gx#datum->syntax '#f 'set!))
                                (__tmp69467
                                 (let ((__tmp69468
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64775_ '()))))
                                   (declare (not safe))
                                   (cons _L64775_ __tmp69468))))
                            (declare (not safe))
                            (cons __tmp69469 __tmp69467)))
                         (__tmp69463
                          (let ((__tmp69464
                                 (let ((__tmp69465
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69465 '()))))
                            (declare (not safe))
                            (cons __tmp69464 '()))))
                     (declare (not safe))
                     (cons __tmp69466 __tmp69463))))
              (declare (not safe))
              (cons __tmp69470 __tmp69462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69474 __tmp69461)))
                                           _hd6472964767_
                                           _hd6472664757_)
                                          (_g6471864736_ _g6471964740_))))
                                  (_g6471864736_ _g6471964740_))))
                          (_g6471864736_ _g6471964740_))))
                  (_g6471864736_ _g6471964740_)))))
      (_g6471764792_ _$stx64714_))))
