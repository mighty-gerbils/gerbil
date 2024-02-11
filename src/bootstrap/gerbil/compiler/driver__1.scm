(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx290210_)
      (let* ((_g290214290228_
              (lambda (_g290215290224_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290215290224_))))
             (_g290213290270_
              (lambda (_g290215290232_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290215290232_))
                    (let ((_e290219290235_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290215290232_))))
                      (let ((_hd290218290239_
                             (let ()
                               (declare (not safe))
                               (##car _e290219290235_)))
                            (_tl290217290242_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290219290235_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290217290242_))
                            (let ((_e290222290245_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290217290242_))))
                              (let ((_hd290221290249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290222290245_)))
                                    (_tl290220290252_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290222290245_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290220290252_))
                                    ((lambda (_L290255_)
                                       (let ((__tmp296575
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp296568
                                              (let ((__tmp296574
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp296569
                                                     (let ((__tmp296570
                                                            (let ((__tmp296573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp296571
                           (let ((__tmp296572
                                  (let ()
                                    (declare (not safe))
                                    (cons _L290255_ '()))))
                             (declare (not safe))
                             (cons '() __tmp296572))))
                      (declare (not safe))
                      (cons __tmp296573 __tmp296571))))
               (declare (not safe))
               (cons __tmp296570 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296574
                                                      __tmp296569))))
                                         (declare (not safe))
                                         (cons __tmp296575 __tmp296568)))
                                     _hd290221290249_)
                                    (_g290214290228_ _g290215290232_))))
                            (_g290214290228_ _g290215290232_))))
                    (_g290214290228_ _g290215290232_)))))
        (_g290213290270_ _$stx290210_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx290274_)
      (let* ((_g290278290292_
              (lambda (_g290279290288_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290279290288_))))
             (_g290277290333_
              (lambda (_g290279290296_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290279290296_))
                    (let ((_e290283290299_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290279290296_))))
                      (let ((_hd290282290303_
                             (let ()
                               (declare (not safe))
                               (##car _e290283290299_)))
                            (_tl290281290306_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290283290299_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290281290306_))
                            (let ((_e290286290309_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl290281290306_))))
                              (let ((_hd290285290313_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290286290309_)))
                                    (_tl290284290316_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290286290309_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl290284290316_))
                                    ((lambda (_L290319_)
                                       (let ((__tmp296581
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp296576
                                              (let ((__tmp296577
                                                     (let ((__tmp296580
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp296578
                                                            (let ((__tmp296579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L290319_ '()))))
                      (declare (not safe))
                      (cons '() __tmp296579))))
               (declare (not safe))
               (cons __tmp296580 __tmp296578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296577 '()))))
                                         (declare (not safe))
                                         (cons __tmp296581 __tmp296576)))
                                     _hd290285290313_)
                                    (_g290278290292_ _g290279290296_))))
                            (_g290278290292_ _g290279290296_))))
                    (_g290278290292_ _g290279290296_)))))
        (_g290277290333_ _$stx290274_)))))
