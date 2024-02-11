(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64409_)
    (let* ((_g6441364431_
            (lambda (_g6441464427_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6441464427_)))
           (_g6441264487_
            (lambda (_g6441464435_)
              (if (gx#stx-pair? _g6441464435_)
                  (let ((_e6441964438_ (gx#syntax-e _g6441464435_)))
                    (let ((_hd6441864442_
                           (let () (declare (not safe)) (##car _e6441964438_)))
                          (_tl6441764445_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6441964438_))))
                      (if (gx#stx-pair? _tl6441764445_)
                          (let ((_e6442264448_ (gx#syntax-e _tl6441764445_)))
                            (let ((_hd6442164452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6442264448_)))
                                  (_tl6442064455_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6442264448_))))
                              (if (gx#stx-pair? _tl6442064455_)
                                  (let ((_e6442564458_
                                         (gx#syntax-e _tl6442064455_)))
                                    (let ((_hd6442464462_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6442564458_)))
                                          (_tl6442364465_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6442564458_))))
                                      (if (gx#stx-null? _tl6442364465_)
                                          ((lambda (_L64468_ _L64470_)
                                             (let ((__tmp69069
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69056
                                                    (let ((__tmp69065
                                                           (let ((__tmp69068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69066
                          (let ((__tmp69067
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64468_ '()))))
                            (declare (not safe))
                            (cons _L64470_ __tmp69067))))
                     (declare (not safe))
                     (cons __tmp69068 __tmp69066)))
                  (__tmp69057
                   (let ((__tmp69061
                          (let ((__tmp69064 (gx#datum->syntax '#f 'set!))
                                (__tmp69062
                                 (let ((__tmp69063
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64470_ '()))))
                                   (declare (not safe))
                                   (cons _L64470_ __tmp69063))))
                            (declare (not safe))
                            (cons __tmp69064 __tmp69062)))
                         (__tmp69058
                          (let ((__tmp69059
                                 (let ((__tmp69060
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69060 '()))))
                            (declare (not safe))
                            (cons __tmp69059 '()))))
                     (declare (not safe))
                     (cons __tmp69061 __tmp69058))))
              (declare (not safe))
              (cons __tmp69065 __tmp69057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69069 __tmp69056)))
                                           _hd6442464462_
                                           _hd6442164452_)
                                          (_g6441364431_ _g6441464435_))))
                                  (_g6441364431_ _g6441464435_))))
                          (_g6441364431_ _g6441464435_))))
                  (_g6441364431_ _g6441464435_)))))
      (_g6441264487_ _$stx64409_))))
