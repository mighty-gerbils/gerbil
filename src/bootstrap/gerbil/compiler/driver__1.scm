(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx292954_)
      (let* ((_g292958292972_
              (lambda (_g292959292968_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g292959292968_))))
             (_g292957293014_
              (lambda (_g292959292976_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g292959292976_))
                    (let ((_e292963292979_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g292959292976_))))
                      (let ((_hd292962292983_
                             (let ()
                               (declare (not safe))
                               (##car _e292963292979_)))
                            (_tl292961292986_
                             (let ()
                               (declare (not safe))
                               (##cdr _e292963292979_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl292961292986_))
                            (let ((_e292966292989_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl292961292986_))))
                              (let ((_hd292965292993_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e292966292989_)))
                                    (_tl292964292996_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e292966292989_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl292964292996_))
                                    ((lambda (_L292999_)
                                       (let ((__tmp298741
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp298734
                                              (let ((__tmp298740
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp298735
                                                     (let ((__tmp298736
                                                            (let ((__tmp298739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp298737
                           (let ((__tmp298738
                                  (let ()
                                    (declare (not safe))
                                    (cons _L292999_ '()))))
                             (declare (not safe))
                             (cons '() __tmp298738))))
                      (declare (not safe))
                      (cons __tmp298739 __tmp298737))))
               (declare (not safe))
               (cons __tmp298736 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298740
                                                      __tmp298735))))
                                         (declare (not safe))
                                         (cons __tmp298741 __tmp298734)))
                                     _hd292965292993_)
                                    (_g292958292972_ _g292959292976_))))
                            (_g292958292972_ _g292959292976_))))
                    (_g292958292972_ _g292959292976_)))))
        (_g292957293014_ _$stx292954_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx293018_)
      (let* ((_g293022293036_
              (lambda (_g293023293032_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293023293032_))))
             (_g293021293077_
              (lambda (_g293023293040_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293023293040_))
                    (let ((_e293027293043_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293023293040_))))
                      (let ((_hd293026293047_
                             (let ()
                               (declare (not safe))
                               (##car _e293027293043_)))
                            (_tl293025293050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293027293043_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293025293050_))
                            (let ((_e293030293053_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293025293050_))))
                              (let ((_hd293029293057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293030293053_)))
                                    (_tl293028293060_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293030293053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl293028293060_))
                                    ((lambda (_L293063_)
                                       (let ((__tmp298747
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp298742
                                              (let ((__tmp298743
                                                     (let ((__tmp298746
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp298744
                                                            (let ((__tmp298745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L293063_ '()))))
                      (declare (not safe))
                      (cons '() __tmp298745))))
               (declare (not safe))
               (cons __tmp298746 __tmp298744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298743 '()))))
                                         (declare (not safe))
                                         (cons __tmp298747 __tmp298742)))
                                     _hd293029293057_)
                                    (_g293022293036_ _g293023293040_))))
                            (_g293022293036_ _g293023293040_))))
                    (_g293022293036_ _g293023293040_)))))
        (_g293021293077_ _$stx293018_)))))
