(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx278282_)
      (let* ((_g278286278300_
              (lambda (_g278287278296_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g278287278296_))))
             (_g278285278342_
              (lambda (_g278287278304_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g278287278304_))
                    (let ((_e278291278307_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g278287278304_))))
                      (let ((_hd278290278311_
                             (let ()
                               (declare (not safe))
                               (##car _e278291278307_)))
                            (_tl278289278314_
                             (let ()
                               (declare (not safe))
                               (##cdr _e278291278307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278289278314_))
                            (let ((_e278294278317_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl278289278314_))))
                              (let ((_hd278293278321_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278294278317_)))
                                    (_tl278292278324_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278294278317_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278292278324_))
                                    ((lambda (_L278327_)
                                       (let ((__tmp284273
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp284266
                                              (let ((__tmp284272
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp284267
                                                     (let ((__tmp284268
                                                            (let ((__tmp284271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp284269
                           (let ((__tmp284270
                                  (let ()
                                    (declare (not safe))
                                    (cons _L278327_ '()))))
                             (declare (not safe))
                             (cons '() __tmp284270))))
                      (declare (not safe))
                      (cons __tmp284271 __tmp284269))))
               (declare (not safe))
               (cons __tmp284268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284272
                                                      __tmp284267))))
                                         (declare (not safe))
                                         (cons __tmp284273 __tmp284266)))
                                     _hd278293278321_)
                                    (_g278286278300_ _g278287278304_))))
                            (_g278286278300_ _g278287278304_))))
                    (_g278286278300_ _g278287278304_)))))
        (_g278285278342_ _$stx278282_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx278346_)
      (let* ((_g278350278364_
              (lambda (_g278351278360_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g278351278360_))))
             (_g278349278405_
              (lambda (_g278351278368_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g278351278368_))
                    (let ((_e278355278371_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g278351278368_))))
                      (let ((_hd278354278375_
                             (let ()
                               (declare (not safe))
                               (##car _e278355278371_)))
                            (_tl278353278378_
                             (let ()
                               (declare (not safe))
                               (##cdr _e278355278371_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278353278378_))
                            (let ((_e278358278381_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl278353278378_))))
                              (let ((_hd278357278385_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278358278381_)))
                                    (_tl278356278388_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278358278381_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278356278388_))
                                    ((lambda (_L278391_)
                                       (let ((__tmp284279
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp284274
                                              (let ((__tmp284275
                                                     (let ((__tmp284278
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp284276
                                                            (let ((__tmp284277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L278391_ '()))))
                      (declare (not safe))
                      (cons '() __tmp284277))))
               (declare (not safe))
               (cons __tmp284278 __tmp284276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284275 '()))))
                                         (declare (not safe))
                                         (cons __tmp284279 __tmp284274)))
                                     _hd278357278385_)
                                    (_g278350278364_ _g278351278368_))))
                            (_g278350278364_ _g278351278368_))))
                    (_g278350278364_ _g278351278368_)))))
        (_g278349278405_ _$stx278346_)))))
