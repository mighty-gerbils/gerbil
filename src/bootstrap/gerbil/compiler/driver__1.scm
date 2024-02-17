(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx297995_)
      (let* ((_g297999298013_
              (lambda (_g298000298009_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298000298009_))))
             (_g297998298055_
              (lambda (_g298000298017_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298000298017_))
                    (let ((_e298004298020_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298000298017_))))
                      (let ((_hd298003298024_
                             (let ()
                               (declare (not safe))
                               (##car _e298004298020_)))
                            (_tl298002298027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298004298020_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298002298027_))
                            (let ((_e298007298030_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298002298027_))))
                              (let ((_hd298006298034_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298007298030_)))
                                    (_tl298005298037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298007298030_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298005298037_))
                                    ((lambda (_L298040_)
                                       (let ((__tmp304364
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp304357
                                              (let ((__tmp304363
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp304358
                                                     (let ((__tmp304359
                                                            (let ((__tmp304362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp304360
                           (let ((__tmp304361
                                  (let ()
                                    (declare (not safe))
                                    (cons _L298040_ '()))))
                             (declare (not safe))
                             (cons '() __tmp304361))))
                      (declare (not safe))
                      (cons __tmp304362 __tmp304360))))
               (declare (not safe))
               (cons __tmp304359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304363
                                                      __tmp304358))))
                                         (declare (not safe))
                                         (cons __tmp304364 __tmp304357)))
                                     _hd298006298034_)
                                    (_g297999298013_ _g298000298017_))))
                            (_g297999298013_ _g298000298017_))))
                    (_g297999298013_ _g298000298017_)))))
        (_g297998298055_ _$stx297995_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx298059_)
      (let* ((_g298063298077_
              (lambda (_g298064298073_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298064298073_))))
             (_g298062298118_
              (lambda (_g298064298081_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298064298081_))
                    (let ((_e298068298084_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298064298081_))))
                      (let ((_hd298067298088_
                             (let ()
                               (declare (not safe))
                               (##car _e298068298084_)))
                            (_tl298066298091_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298068298084_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298066298091_))
                            (let ((_e298071298094_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298066298091_))))
                              (let ((_hd298070298098_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298071298094_)))
                                    (_tl298069298101_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298071298094_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298069298101_))
                                    ((lambda (_L298104_)
                                       (let ((__tmp304370
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp304365
                                              (let ((__tmp304366
                                                     (let ((__tmp304369
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp304367
                                                            (let ((__tmp304368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L298104_ '()))))
                      (declare (not safe))
                      (cons '() __tmp304368))))
               (declare (not safe))
               (cons __tmp304369 __tmp304367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304366 '()))))
                                         (declare (not safe))
                                         (cons __tmp304370 __tmp304365)))
                                     _hd298070298098_)
                                    (_g298063298077_ _g298064298081_))))
                            (_g298063298077_ _g298064298081_))))
                    (_g298063298077_ _g298064298081_)))))
        (_g298062298118_ _$stx298059_)))))
