(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157631_)
      (let* ((_g157635157649_
              (lambda (_g157636157645_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157636157645_))))
             (_g157634157691_
              (lambda (_g157636157653_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157636157653_))
                    (let ((_e157640157656_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157636157653_))))
                      (let ((_hd157639157660_
                             (let ()
                               (declare (not safe))
                               (##car _e157640157656_)))
                            (_tl157638157663_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157640157656_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157638157663_))
                            (let ((_e157643157666_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157638157663_))))
                              (let ((_hd157642157670_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157643157666_)))
                                    (_tl157641157673_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157643157666_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157641157673_))
                                    ((lambda (_L157676_)
                                       (let ((__tmp159429
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp159422
                                              (let ((__tmp159428
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp159423
                                                     (let ((__tmp159424
                                                            (let ((__tmp159427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp159425
                           (let ((__tmp159426
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157676_ '()))))
                             (declare (not safe))
                             (cons '() __tmp159426))))
                      (declare (not safe))
                      (cons __tmp159427 __tmp159425))))
               (declare (not safe))
               (cons __tmp159424 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159428
                                                      __tmp159423))))
                                         (declare (not safe))
                                         (cons __tmp159429 __tmp159422)))
                                     _hd157642157670_)
                                    (_g157635157649_ _g157636157653_))))
                            (_g157635157649_ _g157636157653_))))
                    (_g157635157649_ _g157636157653_)))))
        (_g157634157691_ _$stx157631_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157695_)
      (let* ((_g157699157713_
              (lambda (_g157700157709_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157700157709_))))
             (_g157698157754_
              (lambda (_g157700157717_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157700157717_))
                    (let ((_e157704157720_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157700157717_))))
                      (let ((_hd157703157724_
                             (let ()
                               (declare (not safe))
                               (##car _e157704157720_)))
                            (_tl157702157727_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157704157720_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157702157727_))
                            (let ((_e157707157730_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157702157727_))))
                              (let ((_hd157706157734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157707157730_)))
                                    (_tl157705157737_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157707157730_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157705157737_))
                                    ((lambda (_L157740_)
                                       (let ((__tmp159435
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp159430
                                              (let ((__tmp159431
                                                     (let ((__tmp159434
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp159432
                                                            (let ((__tmp159433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157740_ '()))))
                      (declare (not safe))
                      (cons '() __tmp159433))))
               (declare (not safe))
               (cons __tmp159434 __tmp159432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159431 '()))))
                                         (declare (not safe))
                                         (cons __tmp159435 __tmp159430)))
                                     _hd157706157734_)
                                    (_g157699157713_ _g157700157717_))))
                            (_g157699157713_ _g157700157717_))))
                    (_g157699157713_ _g157700157717_)))))
        (_g157698157754_ _$stx157695_)))))
