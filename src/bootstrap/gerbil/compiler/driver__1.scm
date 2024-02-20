(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx153212_)
      (let* ((_g153216153230_
              (lambda (_g153217153226_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g153217153226_))))
             (_g153215153272_
              (lambda (_g153217153234_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g153217153234_))
                    (let ((_e153219153237_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g153217153234_))))
                      (let ((_hd153220153241_
                             (let ()
                               (declare (not safe))
                               (##car _e153219153237_)))
                            (_tl153221153244_
                             (let ()
                               (declare (not safe))
                               (##cdr _e153219153237_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153221153244_))
                            (let ((_e153222153247_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl153221153244_))))
                              (let ((_hd153223153251_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153222153247_)))
                                    (_tl153224153254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153222153247_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153224153254_))
                                    ((lambda (_L153257_)
                                       (let ((__tmp155013
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp155006
                                              (let ((__tmp155012
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp155007
                                                     (let ((__tmp155008
                                                            (let ((__tmp155011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp155009
                           (let ((__tmp155010
                                  (let ()
                                    (declare (not safe))
                                    (cons _L153257_ '()))))
                             (declare (not safe))
                             (cons '() __tmp155010))))
                      (declare (not safe))
                      (cons __tmp155011 __tmp155009))))
               (declare (not safe))
               (cons __tmp155008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155012
                                                      __tmp155007))))
                                         (declare (not safe))
                                         (cons __tmp155013 __tmp155006)))
                                     _hd153223153251_)
                                    (_g153216153230_ _g153217153234_))))
                            (_g153216153230_ _g153217153234_))))
                    (_g153216153230_ _g153217153234_)))))
        (_g153215153272_ _$stx153212_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx153276_)
      (let* ((_g153280153294_
              (lambda (_g153281153290_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g153281153290_))))
             (_g153279153335_
              (lambda (_g153281153298_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g153281153298_))
                    (let ((_e153283153301_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g153281153298_))))
                      (let ((_hd153284153305_
                             (let ()
                               (declare (not safe))
                               (##car _e153283153301_)))
                            (_tl153285153308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e153283153301_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153285153308_))
                            (let ((_e153286153311_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl153285153308_))))
                              (let ((_hd153287153315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153286153311_)))
                                    (_tl153288153318_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153286153311_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153288153318_))
                                    ((lambda (_L153321_)
                                       (let ((__tmp155019
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp155014
                                              (let ((__tmp155015
                                                     (let ((__tmp155018
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp155016
                                                            (let ((__tmp155017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L153321_ '()))))
                      (declare (not safe))
                      (cons '() __tmp155017))))
               (declare (not safe))
               (cons __tmp155018 __tmp155016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155015 '()))))
                                         (declare (not safe))
                                         (cons __tmp155019 __tmp155014)))
                                     _hd153287153315_)
                                    (_g153280153294_ _g153281153298_))))
                            (_g153280153294_ _g153281153298_))))
                    (_g153280153294_ _g153281153298_)))))
        (_g153279153335_ _$stx153276_)))))
