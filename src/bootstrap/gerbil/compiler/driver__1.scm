(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx155817_)
      (let* ((_g155821155835_
              (lambda (_g155822155831_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155822155831_))))
             (_g155820155877_
              (lambda (_g155822155839_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155822155839_))
                    (let ((_e155824155842_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155822155839_))))
                      (let ((_hd155825155846_
                             (let ()
                               (declare (not safe))
                               (##car _e155824155842_)))
                            (_tl155826155849_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155824155842_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155826155849_))
                            (let ((_e155827155852_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155826155849_))))
                              (let ((_hd155828155856_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155827155852_)))
                                    (_tl155829155859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155827155852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155829155859_))
                                    ((lambda (_L155862_)
                                       (let ((__tmp157614
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157607
                                              (let ((__tmp157613
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157608
                                                     (let ((__tmp157609
                                                            (let ((__tmp157612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157610
                           (let ((__tmp157611
                                  (let ()
                                    (declare (not safe))
                                    (cons _L155862_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157611))))
                      (declare (not safe))
                      (cons __tmp157612 __tmp157610))))
               (declare (not safe))
               (cons __tmp157609 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157613
                                                      __tmp157608))))
                                         (declare (not safe))
                                         (cons __tmp157614 __tmp157607)))
                                     _hd155828155856_)
                                    (_g155821155835_ _g155822155839_))))
                            (_g155821155835_ _g155822155839_))))
                    (_g155821155835_ _g155822155839_)))))
        (_g155820155877_ _$stx155817_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx155881_)
      (let* ((_g155885155899_
              (lambda (_g155886155895_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155886155895_))))
             (_g155884155940_
              (lambda (_g155886155903_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155886155903_))
                    (let ((_e155888155906_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155886155903_))))
                      (let ((_hd155889155910_
                             (let ()
                               (declare (not safe))
                               (##car _e155888155906_)))
                            (_tl155890155913_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155888155906_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155890155913_))
                            (let ((_e155891155916_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155890155913_))))
                              (let ((_hd155892155920_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155891155916_)))
                                    (_tl155893155923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155891155916_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155893155923_))
                                    ((lambda (_L155926_)
                                       (let ((__tmp157620
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157615
                                              (let ((__tmp157616
                                                     (let ((__tmp157619
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157617
                                                            (let ((__tmp157618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L155926_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157618))))
               (declare (not safe))
               (cons __tmp157619 __tmp157617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157616 '()))))
                                         (declare (not safe))
                                         (cons __tmp157620 __tmp157615)))
                                     _hd155892155920_)
                                    (_g155885155899_ _g155886155903_))))
                            (_g155885155899_ _g155886155903_))))
                    (_g155885155899_ _g155886155903_)))))
        (_g155884155940_ _$stx155881_)))))
