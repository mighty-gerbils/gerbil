(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158598_)
      (let* ((_g158602158616_
              (lambda (_g158603158612_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158603158612_))))
             (_g158601158658_
              (lambda (_g158603158620_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158603158620_))
                    (let ((_e158607158623_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158603158620_))))
                      (let ((_hd158606158627_
                             (let ()
                               (declare (not safe))
                               (##car _e158607158623_)))
                            (_tl158605158630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158607158623_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158605158630_))
                            (let ((_e158610158633_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158605158630_))))
                              (let ((_hd158609158637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158610158633_)))
                                    (_tl158608158640_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158610158633_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158608158640_))
                                    ((lambda (_L158643_)
                                       (let ((__tmp160396
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160389
                                              (let ((__tmp160395
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160390
                                                     (let ((__tmp160391
                                                            (let ((__tmp160394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160392
                           (let ((__tmp160393
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158643_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160393))))
                      (declare (not safe))
                      (cons __tmp160394 __tmp160392))))
               (declare (not safe))
               (cons __tmp160391 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160395
                                                      __tmp160390))))
                                         (declare (not safe))
                                         (cons __tmp160396 __tmp160389)))
                                     _hd158609158637_)
                                    (_g158602158616_ _g158603158620_))))
                            (_g158602158616_ _g158603158620_))))
                    (_g158602158616_ _g158603158620_)))))
        (_g158601158658_ _$stx158598_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158662_)
      (let* ((_g158666158680_
              (lambda (_g158667158676_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158667158676_))))
             (_g158665158721_
              (lambda (_g158667158684_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158667158684_))
                    (let ((_e158671158687_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158667158684_))))
                      (let ((_hd158670158691_
                             (let ()
                               (declare (not safe))
                               (##car _e158671158687_)))
                            (_tl158669158694_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158671158687_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158669158694_))
                            (let ((_e158674158697_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158669158694_))))
                              (let ((_hd158673158701_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158674158697_)))
                                    (_tl158672158704_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158674158697_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158672158704_))
                                    ((lambda (_L158707_)
                                       (let ((__tmp160402
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160397
                                              (let ((__tmp160398
                                                     (let ((__tmp160401
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160399
                                                            (let ((__tmp160400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158707_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160400))))
               (declare (not safe))
               (cons __tmp160401 __tmp160399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160398 '()))))
                                         (declare (not safe))
                                         (cons __tmp160402 __tmp160397)))
                                     _hd158673158701_)
                                    (_g158666158680_ _g158667158684_))))
                            (_g158666158680_ _g158667158684_))))
                    (_g158666158680_ _g158667158684_)))))
        (_g158665158721_ _$stx158662_)))))
