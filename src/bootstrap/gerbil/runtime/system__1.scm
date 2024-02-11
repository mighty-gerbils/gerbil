(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64402_)
    (let* ((_g6440664424_
            (lambda (_g6440764420_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6440764420_)))
           (_g6440564480_
            (lambda (_g6440764428_)
              (if (gx#stx-pair? _g6440764428_)
                  (let ((_e6441264431_ (gx#syntax-e _g6440764428_)))
                    (let ((_hd6441164435_
                           (let () (declare (not safe)) (##car _e6441264431_)))
                          (_tl6441064438_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6441264431_))))
                      (if (gx#stx-pair? _tl6441064438_)
                          (let ((_e6441564441_ (gx#syntax-e _tl6441064438_)))
                            (let ((_hd6441464445_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6441564441_)))
                                  (_tl6441364448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6441564441_))))
                              (if (gx#stx-pair? _tl6441364448_)
                                  (let ((_e6441864451_
                                         (gx#syntax-e _tl6441364448_)))
                                    (let ((_hd6441764455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6441864451_)))
                                          (_tl6441664458_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6441864451_))))
                                      (if (gx#stx-null? _tl6441664458_)
                                          ((lambda (_L64461_ _L64463_)
                                             (let ((__tmp69062
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69049
                                                    (let ((__tmp69058
                                                           (let ((__tmp69061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69059
                          (let ((__tmp69060
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64461_ '()))))
                            (declare (not safe))
                            (cons _L64463_ __tmp69060))))
                     (declare (not safe))
                     (cons __tmp69061 __tmp69059)))
                  (__tmp69050
                   (let ((__tmp69054
                          (let ((__tmp69057 (gx#datum->syntax '#f 'set!))
                                (__tmp69055
                                 (let ((__tmp69056
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64463_ '()))))
                                   (declare (not safe))
                                   (cons _L64463_ __tmp69056))))
                            (declare (not safe))
                            (cons __tmp69057 __tmp69055)))
                         (__tmp69051
                          (let ((__tmp69052
                                 (let ((__tmp69053
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69053 '()))))
                            (declare (not safe))
                            (cons __tmp69052 '()))))
                     (declare (not safe))
                     (cons __tmp69054 __tmp69051))))
              (declare (not safe))
              (cons __tmp69058 __tmp69050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69062 __tmp69049)))
                                           _hd6441764455_
                                           _hd6441464445_)
                                          (_g6440664424_ _g6440764428_))))
                                  (_g6440664424_ _g6440764428_))))
                          (_g6440664424_ _g6440764428_))))
                  (_g6440664424_ _g6440764428_)))))
      (_g6440564480_ _$stx64402_))))
