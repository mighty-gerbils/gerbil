(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx8781_)
    (let* ((_g87858803_
            (lambda (_g87868799_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g87868799_)))
           (_g87848859_
            (lambda (_g87868807_)
              (if (gx#stx-pair? _g87868807_)
                  (let ((_e87918810_ (gx#syntax-e _g87868807_)))
                    (let ((_hd87908814_
                           (let () (declare (not safe)) (##car _e87918810_)))
                          (_tl87898817_
                           (let () (declare (not safe)) (##cdr _e87918810_))))
                      (if (gx#stx-pair? _tl87898817_)
                          (let ((_e87948820_ (gx#syntax-e _tl87898817_)))
                            (let ((_hd87938824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e87948820_)))
                                  (_tl87928827_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e87948820_))))
                              (if (gx#stx-pair? _tl87928827_)
                                  (let ((_e87978830_
                                         (gx#syntax-e _tl87928827_)))
                                    (let ((_hd87968834_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e87978830_)))
                                          (_tl87958837_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e87978830_))))
                                      (if (gx#stx-null? _tl87958837_)
                                          ((lambda (_L8840_ _L8842_)
                                             (let ((__tmp8973
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp8960
                                                    (let ((__tmp8969
                                                           (let ((__tmp8972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp8970
                          (let ((__tmp8971
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8840_ '()))))
                            (declare (not safe))
                            (cons _L8842_ __tmp8971))))
                     (declare (not safe))
                     (cons __tmp8972 __tmp8970)))
                  (__tmp8961
                   (let ((__tmp8965
                          (let ((__tmp8968 (gx#datum->syntax '#f 'set!))
                                (__tmp8966
                                 (let ((__tmp8967
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8842_ '()))))
                                   (declare (not safe))
                                   (cons _L8842_ __tmp8967))))
                            (declare (not safe))
                            (cons __tmp8968 __tmp8966)))
                         (__tmp8962
                          (let ((__tmp8963
                                 (let ((__tmp8964
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp8964 '()))))
                            (declare (not safe))
                            (cons __tmp8963 '()))))
                     (declare (not safe))
                     (cons __tmp8965 __tmp8962))))
              (declare (not safe))
              (cons __tmp8969 __tmp8961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp8973 __tmp8960)))
                                           _hd87968834_
                                           _hd87938824_)
                                          (_g87858803_ _g87868807_))))
                                  (_g87858803_ _g87868807_))))
                          (_g87858803_ _g87868807_))))
                  (_g87858803_ _g87868807_)))))
      (_g87848859_ _$stx8781_))))
