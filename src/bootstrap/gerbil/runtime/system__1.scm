(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64739_)
    (let* ((_g6474364761_
            (lambda (_g6474464757_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6474464757_)))
           (_g6474264817_
            (lambda (_g6474464765_)
              (if (gx#stx-pair? _g6474464765_)
                  (let ((_e6474964768_ (gx#syntax-e _g6474464765_)))
                    (let ((_hd6474864772_
                           (let () (declare (not safe)) (##car _e6474964768_)))
                          (_tl6474764775_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6474964768_))))
                      (if (gx#stx-pair? _tl6474764775_)
                          (let ((_e6475264778_ (gx#syntax-e _tl6474764775_)))
                            (let ((_hd6475164782_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6475264778_)))
                                  (_tl6475064785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6475264778_))))
                              (if (gx#stx-pair? _tl6475064785_)
                                  (let ((_e6475564788_
                                         (gx#syntax-e _tl6475064785_)))
                                    (let ((_hd6475464792_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6475564788_)))
                                          (_tl6475364795_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6475564788_))))
                                      (if (gx#stx-null? _tl6475364795_)
                                          ((lambda (_L64798_ _L64800_)
                                             (let ((__tmp69399
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69386
                                                    (let ((__tmp69395
                                                           (let ((__tmp69398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69396
                          (let ((__tmp69397
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64798_ '()))))
                            (declare (not safe))
                            (cons _L64800_ __tmp69397))))
                     (declare (not safe))
                     (cons __tmp69398 __tmp69396)))
                  (__tmp69387
                   (let ((__tmp69391
                          (let ((__tmp69394 (gx#datum->syntax '#f 'set!))
                                (__tmp69392
                                 (let ((__tmp69393
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64800_ '()))))
                                   (declare (not safe))
                                   (cons _L64800_ __tmp69393))))
                            (declare (not safe))
                            (cons __tmp69394 __tmp69392)))
                         (__tmp69388
                          (let ((__tmp69389
                                 (let ((__tmp69390
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69390 '()))))
                            (declare (not safe))
                            (cons __tmp69389 '()))))
                     (declare (not safe))
                     (cons __tmp69391 __tmp69388))))
              (declare (not safe))
              (cons __tmp69395 __tmp69387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69399 __tmp69386)))
                                           _hd6475464792_
                                           _hd6475164782_)
                                          (_g6474364761_ _g6474464765_))))
                                  (_g6474364761_ _g6474464765_))))
                          (_g6474364761_ _g6474464765_))))
                  (_g6474364761_ _g6474464765_)))))
      (_g6474264817_ _$stx64739_))))
