(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156629_)
      (let* ((_g156633156647_
              (lambda (_g156634156643_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156634156643_))))
             (_g156632156689_
              (lambda (_g156634156651_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156634156651_))
                    (let ((_e156638156654_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156634156651_))))
                      (let ((_hd156637156658_
                             (let ()
                               (declare (not safe))
                               (##car _e156638156654_)))
                            (_tl156636156661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156638156654_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156636156661_))
                            (let ((_e156641156664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156636156661_))))
                              (let ((_hd156640156668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156641156664_)))
                                    (_tl156639156671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156641156664_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156639156671_))
                                    ((lambda (_L156674_)
                                       (let ((__tmp158430
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158423
                                              (let ((__tmp158429
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158424
                                                     (let ((__tmp158425
                                                            (let ((__tmp158428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158426
                           (let ((__tmp158427
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156674_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158427))))
                      (declare (not safe))
                      (cons __tmp158428 __tmp158426))))
               (declare (not safe))
               (cons __tmp158425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158429
                                                      __tmp158424))))
                                         (declare (not safe))
                                         (cons __tmp158430 __tmp158423)))
                                     _hd156640156668_)
                                    (_g156633156647_ _g156634156651_))))
                            (_g156633156647_ _g156634156651_))))
                    (_g156633156647_ _g156634156651_)))))
        (_g156632156689_ _$stx156629_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156693_)
      (let* ((_g156697156711_
              (lambda (_g156698156707_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156698156707_))))
             (_g156696156752_
              (lambda (_g156698156715_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156698156715_))
                    (let ((_e156702156718_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156698156715_))))
                      (let ((_hd156701156722_
                             (let ()
                               (declare (not safe))
                               (##car _e156702156718_)))
                            (_tl156700156725_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156702156718_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156700156725_))
                            (let ((_e156705156728_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156700156725_))))
                              (let ((_hd156704156732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156705156728_)))
                                    (_tl156703156735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156705156728_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156703156735_))
                                    ((lambda (_L156738_)
                                       (let ((__tmp158436
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158431
                                              (let ((__tmp158432
                                                     (let ((__tmp158435
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158433
                                                            (let ((__tmp158434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156738_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158434))))
               (declare (not safe))
               (cons __tmp158435 __tmp158433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158432 '()))))
                                         (declare (not safe))
                                         (cons __tmp158436 __tmp158431)))
                                     _hd156704156732_)
                                    (_g156697156711_ _g156698156715_))))
                            (_g156697156711_ _g156698156715_))))
                    (_g156697156711_ _g156698156715_)))))
        (_g156696156752_ _$stx156693_)))))
