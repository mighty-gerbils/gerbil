(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156636_)
      (let* ((_g156640156654_
              (lambda (_g156641156650_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156641156650_))))
             (_g156639156696_
              (lambda (_g156641156658_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156641156658_))
                    (let ((_e156645156661_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156641156658_))))
                      (let ((_hd156644156665_
                             (let ()
                               (declare (not safe))
                               (##car _e156645156661_)))
                            (_tl156643156668_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156645156661_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156643156668_))
                            (let ((_e156648156671_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156643156668_))))
                              (let ((_hd156647156675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156648156671_)))
                                    (_tl156646156678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156648156671_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156646156678_))
                                    ((lambda (_L156681_)
                                       (let ((__tmp158437
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158430
                                              (let ((__tmp158436
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158431
                                                     (let ((__tmp158432
                                                            (let ((__tmp158435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158433
                           (let ((__tmp158434
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156681_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158434))))
                      (declare (not safe))
                      (cons __tmp158435 __tmp158433))))
               (declare (not safe))
               (cons __tmp158432 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158436
                                                      __tmp158431))))
                                         (declare (not safe))
                                         (cons __tmp158437 __tmp158430)))
                                     _hd156647156675_)
                                    (_g156640156654_ _g156641156658_))))
                            (_g156640156654_ _g156641156658_))))
                    (_g156640156654_ _g156641156658_)))))
        (_g156639156696_ _$stx156636_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156700_)
      (let* ((_g156704156718_
              (lambda (_g156705156714_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156705156714_))))
             (_g156703156759_
              (lambda (_g156705156722_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156705156722_))
                    (let ((_e156709156725_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156705156722_))))
                      (let ((_hd156708156729_
                             (let ()
                               (declare (not safe))
                               (##car _e156709156725_)))
                            (_tl156707156732_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156709156725_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156707156732_))
                            (let ((_e156712156735_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156707156732_))))
                              (let ((_hd156711156739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156712156735_)))
                                    (_tl156710156742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156712156735_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156710156742_))
                                    ((lambda (_L156745_)
                                       (let ((__tmp158443
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158438
                                              (let ((__tmp158439
                                                     (let ((__tmp158442
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158440
                                                            (let ((__tmp158441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156745_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158441))))
               (declare (not safe))
               (cons __tmp158442 __tmp158440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158439 '()))))
                                         (declare (not safe))
                                         (cons __tmp158443 __tmp158438)))
                                     _hd156711156739_)
                                    (_g156704156718_ _g156705156722_))))
                            (_g156704156718_ _g156705156722_))))
                    (_g156704156718_ _g156705156722_)))))
        (_g156703156759_ _$stx156700_)))))
