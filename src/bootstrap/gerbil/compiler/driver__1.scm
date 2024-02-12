(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx290220_)
      (let* ((_g290224290238_
              (lambda (_g290225290234_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290225290234_))))
             (_g290223290280_
              (lambda (_g290225290242_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290225290242_))
                    (let ((_e290229290245_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290225290242_))))
                      (let ((_hd290228290249_
                             (let ()
                               (declare (not safe))
                               (##car _e290229290245_)))
                            (_tl290227290252_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290229290245_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290227290252_))
                            (let ((_e290232290255_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290227290252_))))
                              (let ((_hd290231290259_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290232290255_)))
                                    (_tl290230290262_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290232290255_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290230290262_))
                                    ((lambda (_L290265_)
                                       (let ((__tmp296585
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp296578
                                              (let ((__tmp296584
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp296579
                                                     (let ((__tmp296580
                                                            (let ((__tmp296583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp296581
                           (let ((__tmp296582
                                  (let ()
                                    (declare (not safe))
                                    (cons _L290265_ '()))))
                             (declare (not safe))
                             (cons '() __tmp296582))))
                      (declare (not safe))
                      (cons __tmp296583 __tmp296581))))
               (declare (not safe))
               (cons __tmp296580 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296584
                                                      __tmp296579))))
                                         (declare (not safe))
                                         (cons __tmp296585 __tmp296578)))
                                     _hd290231290259_)
                                    (_g290224290238_ _g290225290242_))))
                            (_g290224290238_ _g290225290242_))))
                    (_g290224290238_ _g290225290242_)))))
        (_g290223290280_ _$stx290220_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx290284_)
      (let* ((_g290288290302_
              (lambda (_g290289290298_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290289290298_))))
             (_g290287290343_
              (lambda (_g290289290306_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290289290306_))
                    (let ((_e290293290309_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290289290306_))))
                      (let ((_hd290292290313_
                             (let ()
                               (declare (not safe))
                               (##car _e290293290309_)))
                            (_tl290291290316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290293290309_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290291290316_))
                            (let ((_e290296290319_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290291290316_))))
                              (let ((_hd290295290323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290296290319_)))
                                    (_tl290294290326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290296290319_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290294290326_))
                                    ((lambda (_L290329_)
                                       (let ((__tmp296591
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp296586
                                              (let ((__tmp296587
                                                     (let ((__tmp296590
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp296588
                                                            (let ((__tmp296589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L290329_ '()))))
                      (declare (not safe))
                      (cons '() __tmp296589))))
               (declare (not safe))
               (cons __tmp296590 __tmp296588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296587 '()))))
                                         (declare (not safe))
                                         (cons __tmp296591 __tmp296586)))
                                     _hd290295290323_)
                                    (_g290288290302_ _g290289290306_))))
                            (_g290288290302_ _g290289290306_))))
                    (_g290288290302_ _g290289290306_)))))
        (_g290287290343_ _$stx290284_)))))
