(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx295770_)
      (let* ((_g295774295788_
              (lambda (_g295775295784_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295775295784_))))
             (_g295773295830_
              (lambda (_g295775295792_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295775295792_))
                    (let ((_e295779295795_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295775295792_))))
                      (let ((_hd295778295799_
                             (let ()
                               (declare (not safe))
                               (##car _e295779295795_)))
                            (_tl295777295802_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295779295795_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295777295802_))
                            (let ((_e295782295805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295777295802_))))
                              (let ((_hd295781295809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295782295805_)))
                                    (_tl295780295812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295782295805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295780295812_))
                                    ((lambda (_L295815_)
                                       (let ((__tmp301638
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp301631
                                              (let ((__tmp301637
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp301632
                                                     (let ((__tmp301633
                                                            (let ((__tmp301636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp301634
                           (let ((__tmp301635
                                  (let ()
                                    (declare (not safe))
                                    (cons _L295815_ '()))))
                             (declare (not safe))
                             (cons '() __tmp301635))))
                      (declare (not safe))
                      (cons __tmp301636 __tmp301634))))
               (declare (not safe))
               (cons __tmp301633 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301637
                                                      __tmp301632))))
                                         (declare (not safe))
                                         (cons __tmp301638 __tmp301631)))
                                     _hd295781295809_)
                                    (_g295774295788_ _g295775295792_))))
                            (_g295774295788_ _g295775295792_))))
                    (_g295774295788_ _g295775295792_)))))
        (_g295773295830_ _$stx295770_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx295834_)
      (let* ((_g295838295852_
              (lambda (_g295839295848_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295839295848_))))
             (_g295837295893_
              (lambda (_g295839295856_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295839295856_))
                    (let ((_e295843295859_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295839295856_))))
                      (let ((_hd295842295863_
                             (let ()
                               (declare (not safe))
                               (##car _e295843295859_)))
                            (_tl295841295866_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295843295859_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295841295866_))
                            (let ((_e295846295869_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295841295866_))))
                              (let ((_hd295845295873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295846295869_)))
                                    (_tl295844295876_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295846295869_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295844295876_))
                                    ((lambda (_L295879_)
                                       (let ((__tmp301644
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp301639
                                              (let ((__tmp301640
                                                     (let ((__tmp301643
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp301641
                                                            (let ((__tmp301642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L295879_ '()))))
                      (declare (not safe))
                      (cons '() __tmp301642))))
               (declare (not safe))
               (cons __tmp301643 __tmp301641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301640 '()))))
                                         (declare (not safe))
                                         (cons __tmp301644 __tmp301639)))
                                     _hd295845295873_)
                                    (_g295838295852_ _g295839295856_))))
                            (_g295838295852_ _g295839295856_))))
                    (_g295838295852_ _g295839295856_)))))
        (_g295837295893_ _$stx295834_)))))
