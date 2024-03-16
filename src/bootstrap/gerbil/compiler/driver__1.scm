(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx155865_)
      (let* ((_g155869155883_
              (lambda (_g155870155879_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155870155879_))))
             (_g155868155925_
              (lambda (_g155870155887_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155870155887_))
                    (let ((_e155872155890_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155870155887_))))
                      (let ((_hd155873155894_
                             (let ()
                               (declare (not safe))
                               (##car _e155872155890_)))
                            (_tl155874155897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155872155890_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155874155897_))
                            (let ((_e155875155900_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155874155897_))))
                              (let ((_hd155876155904_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155875155900_)))
                                    (_tl155877155907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155875155900_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155877155907_))
                                    ((lambda (_L155910_)
                                       (let ((__tmp157662
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp157655
                                              (let ((__tmp157661
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp157656
                                                     (let ((__tmp157657
                                                            (let ((__tmp157660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp157658
                           (let ((__tmp157659
                                  (let ()
                                    (declare (not safe))
                                    (cons _L155910_ '()))))
                             (declare (not safe))
                             (cons '() __tmp157659))))
                      (declare (not safe))
                      (cons __tmp157660 __tmp157658))))
               (declare (not safe))
               (cons __tmp157657 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157661
                                                      __tmp157656))))
                                         (declare (not safe))
                                         (cons __tmp157662 __tmp157655)))
                                     _hd155876155904_)
                                    (_g155869155883_ _g155870155887_))))
                            (_g155869155883_ _g155870155887_))))
                    (_g155869155883_ _g155870155887_)))))
        (_g155868155925_ _$stx155865_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx155929_)
      (let* ((_g155933155947_
              (lambda (_g155934155943_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155934155943_))))
             (_g155932155988_
              (lambda (_g155934155951_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155934155951_))
                    (let ((_e155936155954_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155934155951_))))
                      (let ((_hd155937155958_
                             (let ()
                               (declare (not safe))
                               (##car _e155936155954_)))
                            (_tl155938155961_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155936155954_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155938155961_))
                            (let ((_e155939155964_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155938155961_))))
                              (let ((_hd155940155968_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155939155964_)))
                                    (_tl155941155971_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155939155964_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155941155971_))
                                    ((lambda (_L155974_)
                                       (let ((__tmp157668
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp157663
                                              (let ((__tmp157664
                                                     (let ((__tmp157667
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp157665
                                                            (let ((__tmp157666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L155974_ '()))))
                      (declare (not safe))
                      (cons '() __tmp157666))))
               (declare (not safe))
               (cons __tmp157667 __tmp157665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157664 '()))))
                                         (declare (not safe))
                                         (cons __tmp157668 __tmp157663)))
                                     _hd155940155968_)
                                    (_g155933155947_ _g155934155951_))))
                            (_g155933155947_ _g155934155951_))))
                    (_g155933155947_ _g155934155951_)))))
        (_g155932155988_ _$stx155929_)))))
