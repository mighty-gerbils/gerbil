(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64404_)
    (let* ((_g6440864426_
            (lambda (_g6440964422_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6440964422_)))
           (_g6440764482_
            (lambda (_g6440964430_)
              (if (gx#stx-pair? _g6440964430_)
                  (let ((_e6441464433_ (gx#syntax-e _g6440964430_)))
                    (let ((_hd6441364437_
                           (let () (declare (not safe)) (##car _e6441464433_)))
                          (_tl6441264440_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6441464433_))))
                      (if (gx#stx-pair? _tl6441264440_)
                          (let ((_e6441764443_ (gx#syntax-e _tl6441264440_)))
                            (let ((_hd6441664447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6441764443_)))
                                  (_tl6441564450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6441764443_))))
                              (if (gx#stx-pair? _tl6441564450_)
                                  (let ((_e6442064453_
                                         (gx#syntax-e _tl6441564450_)))
                                    (let ((_hd6441964457_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6442064453_)))
                                          (_tl6441864460_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6442064453_))))
                                      (if (gx#stx-null? _tl6441864460_)
                                          ((lambda (_L64463_ _L64465_)
                                             (let ((__tmp69064
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69051
                                                    (let ((__tmp69060
                                                           (let ((__tmp69063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69061
                          (let ((__tmp69062
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64463_ '()))))
                            (declare (not safe))
                            (cons _L64465_ __tmp69062))))
                     (declare (not safe))
                     (cons __tmp69063 __tmp69061)))
                  (__tmp69052
                   (let ((__tmp69056
                          (let ((__tmp69059 (gx#datum->syntax '#f 'set!))
                                (__tmp69057
                                 (let ((__tmp69058
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64465_ '()))))
                                   (declare (not safe))
                                   (cons _L64465_ __tmp69058))))
                            (declare (not safe))
                            (cons __tmp69059 __tmp69057)))
                         (__tmp69053
                          (let ((__tmp69054
                                 (let ((__tmp69055
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69055 '()))))
                            (declare (not safe))
                            (cons __tmp69054 '()))))
                     (declare (not safe))
                     (cons __tmp69056 __tmp69053))))
              (declare (not safe))
              (cons __tmp69060 __tmp69052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69064 __tmp69051)))
                                           _hd6441964457_
                                           _hd6441664447_)
                                          (_g6440864426_ _g6440964430_))))
                                  (_g6440864426_ _g6440964430_))))
                          (_g6440864426_ _g6440964430_))))
                  (_g6440864426_ _g6440964430_)))))
      (_g6440764482_ _$stx64404_))))
