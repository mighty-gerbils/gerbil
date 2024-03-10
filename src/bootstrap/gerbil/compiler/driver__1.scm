(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157706_)
      (let* ((_g157710157724_
              (lambda (_g157711157720_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157711157720_))))
             (_g157709157766_
              (lambda (_g157711157728_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157711157728_))
                    (let ((_e157715157731_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157711157728_))))
                      (let ((_hd157714157735_
                             (let ()
                               (declare (not safe))
                               (##car _e157715157731_)))
                            (_tl157713157738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157715157731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157713157738_))
                            (let ((_e157718157741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157713157738_))))
                              (let ((_hd157717157745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157718157741_)))
                                    (_tl157716157748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157718157741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157716157748_))
                                    ((lambda (_L157751_)
                                       (let ((__tmp159504
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp159497
                                              (let ((__tmp159503
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp159498
                                                     (let ((__tmp159499
                                                            (let ((__tmp159502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp159500
                           (let ((__tmp159501
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157751_ '()))))
                             (declare (not safe))
                             (cons '() __tmp159501))))
                      (declare (not safe))
                      (cons __tmp159502 __tmp159500))))
               (declare (not safe))
               (cons __tmp159499 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159503
                                                      __tmp159498))))
                                         (declare (not safe))
                                         (cons __tmp159504 __tmp159497)))
                                     _hd157717157745_)
                                    (_g157710157724_ _g157711157728_))))
                            (_g157710157724_ _g157711157728_))))
                    (_g157710157724_ _g157711157728_)))))
        (_g157709157766_ _$stx157706_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157770_)
      (let* ((_g157774157788_
              (lambda (_g157775157784_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157775157784_))))
             (_g157773157829_
              (lambda (_g157775157792_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157775157792_))
                    (let ((_e157779157795_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157775157792_))))
                      (let ((_hd157778157799_
                             (let ()
                               (declare (not safe))
                               (##car _e157779157795_)))
                            (_tl157777157802_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157779157795_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157777157802_))
                            (let ((_e157782157805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157777157802_))))
                              (let ((_hd157781157809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157782157805_)))
                                    (_tl157780157812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157782157805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157780157812_))
                                    ((lambda (_L157815_)
                                       (let ((__tmp159510
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp159505
                                              (let ((__tmp159506
                                                     (let ((__tmp159509
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp159507
                                                            (let ((__tmp159508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157815_ '()))))
                      (declare (not safe))
                      (cons '() __tmp159508))))
               (declare (not safe))
               (cons __tmp159509 __tmp159507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159506 '()))))
                                         (declare (not safe))
                                         (cons __tmp159510 __tmp159505)))
                                     _hd157781157809_)
                                    (_g157774157788_ _g157775157792_))))
                            (_g157774157788_ _g157775157792_))))
                    (_g157774157788_ _g157775157792_)))))
        (_g157773157829_ _$stx157770_)))))
