(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64738_)
    (let* ((_g6474264760_
            (lambda (_g6474364756_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6474364756_)))
           (_g6474164816_
            (lambda (_g6474364764_)
              (if (gx#stx-pair? _g6474364764_)
                  (let ((_e6474864767_ (gx#syntax-e _g6474364764_)))
                    (let ((_hd6474764771_
                           (let () (declare (not safe)) (##car _e6474864767_)))
                          (_tl6474664774_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6474864767_))))
                      (if (gx#stx-pair? _tl6474664774_)
                          (let ((_e6475164777_ (gx#syntax-e _tl6474664774_)))
                            (let ((_hd6475064781_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6475164777_)))
                                  (_tl6474964784_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6475164777_))))
                              (if (gx#stx-pair? _tl6474964784_)
                                  (let ((_e6475464787_
                                         (gx#syntax-e _tl6474964784_)))
                                    (let ((_hd6475364791_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6475464787_)))
                                          (_tl6475264794_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6475464787_))))
                                      (if (gx#stx-null? _tl6475264794_)
                                          ((lambda (_L64797_ _L64799_)
                                             (let ((__tmp69398
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69385
                                                    (let ((__tmp69394
                                                           (let ((__tmp69397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69395
                          (let ((__tmp69396
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64797_ '()))))
                            (declare (not safe))
                            (cons _L64799_ __tmp69396))))
                     (declare (not safe))
                     (cons __tmp69397 __tmp69395)))
                  (__tmp69386
                   (let ((__tmp69390
                          (let ((__tmp69393 (gx#datum->syntax '#f 'set!))
                                (__tmp69391
                                 (let ((__tmp69392
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64799_ '()))))
                                   (declare (not safe))
                                   (cons _L64799_ __tmp69392))))
                            (declare (not safe))
                            (cons __tmp69393 __tmp69391)))
                         (__tmp69387
                          (let ((__tmp69388
                                 (let ((__tmp69389
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69389 '()))))
                            (declare (not safe))
                            (cons __tmp69388 '()))))
                     (declare (not safe))
                     (cons __tmp69390 __tmp69387))))
              (declare (not safe))
              (cons __tmp69394 __tmp69386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69398 __tmp69385)))
                                           _hd6475364791_
                                           _hd6475064781_)
                                          (_g6474264760_ _g6474364764_))))
                                  (_g6474264760_ _g6474364764_))))
                          (_g6474264760_ _g6474364764_))))
                  (_g6474264760_ _g6474364764_)))))
      (_g6474164816_ _$stx64738_))))
