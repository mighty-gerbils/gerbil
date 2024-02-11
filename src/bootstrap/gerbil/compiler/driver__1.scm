(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287042_)
      (let* ((_g287046287060_
              (lambda (_g287047287056_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287047287056_))))
             (_g287045287102_
              (lambda (_g287047287064_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287047287064_))
                    (let ((_e287051287067_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287047287064_))))
                      (let ((_hd287050287071_
                             (let ()
                               (declare (not safe))
                               (##car _e287051287067_)))
                            (_tl287049287074_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287051287067_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287049287074_))
                            (let ((_e287054287077_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287049287074_))))
                              (let ((_hd287053287081_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287054287077_)))
                                    (_tl287052287084_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287054287077_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287052287084_))
                                    ((lambda (_L287087_)
                                       (let ((__tmp293307
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293300
                                              (let ((__tmp293306
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293301
                                                     (let ((__tmp293302
                                                            (let ((__tmp293305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293303
                           (let ((__tmp293304
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287087_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293304))))
                      (declare (not safe))
                      (cons __tmp293305 __tmp293303))))
               (declare (not safe))
               (cons __tmp293302 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293306
                                                      __tmp293301))))
                                         (declare (not safe))
                                         (cons __tmp293307 __tmp293300)))
                                     _hd287053287081_)
                                    (_g287046287060_ _g287047287064_))))
                            (_g287046287060_ _g287047287064_))))
                    (_g287046287060_ _g287047287064_)))))
        (_g287045287102_ _$stx287042_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287106_)
      (let* ((_g287110287124_
              (lambda (_g287111287120_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287111287120_))))
             (_g287109287165_
              (lambda (_g287111287128_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287111287128_))
                    (let ((_e287115287131_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287111287128_))))
                      (let ((_hd287114287135_
                             (let ()
                               (declare (not safe))
                               (##car _e287115287131_)))
                            (_tl287113287138_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287115287131_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287113287138_))
                            (let ((_e287118287141_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287113287138_))))
                              (let ((_hd287117287145_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287118287141_)))
                                    (_tl287116287148_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287118287141_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287116287148_))
                                    ((lambda (_L287151_)
                                       (let ((__tmp293313
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293308
                                              (let ((__tmp293309
                                                     (let ((__tmp293312
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293310
                                                            (let ((__tmp293311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287151_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293311))))
               (declare (not safe))
               (cons __tmp293312 __tmp293310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293309 '()))))
                                         (declare (not safe))
                                         (cons __tmp293313 __tmp293308)))
                                     _hd287117287145_)
                                    (_g287110287124_ _g287111287128_))))
                            (_g287110287124_ _g287111287128_))))
                    (_g287110287124_ _g287111287128_)))))
        (_g287109287165_ _$stx287106_)))))
