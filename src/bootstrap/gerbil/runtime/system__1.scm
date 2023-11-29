(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx8638_)
    (let* ((_g86428660_
            (lambda (_g86438656_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g86438656_)))
           (_g86418716_
            (lambda (_g86438664_)
              (if (gx#stx-pair? _g86438664_)
                  (let ((_e86488667_ (gx#syntax-e _g86438664_)))
                    (let ((_hd86478671_
                           (let () (declare (not safe)) (##car _e86488667_)))
                          (_tl86468674_
                           (let () (declare (not safe)) (##cdr _e86488667_))))
                      (if (gx#stx-pair? _tl86468674_)
                          (let ((_e86518677_ (gx#syntax-e _tl86468674_)))
                            (let ((_hd86508681_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e86518677_)))
                                  (_tl86498684_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e86518677_))))
                              (if (gx#stx-pair? _tl86498684_)
                                  (let ((_e86548687_
                                         (gx#syntax-e _tl86498684_)))
                                    (let ((_hd86538691_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e86548687_)))
                                          (_tl86528694_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e86548687_))))
                                      (if (gx#stx-null? _tl86528694_)
                                          ((lambda (_L8697_ _L8699_)
                                             (let ((__tmp8830
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp8817
                                                    (let ((__tmp8826
                                                           (let ((__tmp8829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp8827
                          (let ((__tmp8828
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8697_ '()))))
                            (declare (not safe))
                            (cons _L8699_ __tmp8828))))
                     (declare (not safe))
                     (cons __tmp8829 __tmp8827)))
                  (__tmp8818
                   (let ((__tmp8822
                          (let ((__tmp8825 (gx#datum->syntax '#f 'set!))
                                (__tmp8823
                                 (let ((__tmp8824
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8699_ '()))))
                                   (declare (not safe))
                                   (cons _L8699_ __tmp8824))))
                            (declare (not safe))
                            (cons __tmp8825 __tmp8823)))
                         (__tmp8819
                          (let ((__tmp8820
                                 (let ((__tmp8821
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp8821 '()))))
                            (declare (not safe))
                            (cons __tmp8820 '()))))
                     (declare (not safe))
                     (cons __tmp8822 __tmp8819))))
              (declare (not safe))
              (cons __tmp8826 __tmp8818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp8830 __tmp8817)))
                                           _hd86538691_
                                           _hd86508681_)
                                          (_g86428660_ _g86438664_))))
                                  (_g86428660_ _g86438664_))))
                          (_g86428660_ _g86438664_))))
                  (_g86428660_ _g86438664_)))))
      (_g86418716_ _$stx8638_))))
