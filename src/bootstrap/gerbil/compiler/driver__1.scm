(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157628_)
      (let* ((_g157632157646_
              (lambda (_g157633157642_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157633157642_))))
             (_g157631157688_
              (lambda (_g157633157650_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157633157650_))
                    (let ((_e157637157653_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157633157650_))))
                      (let ((_hd157636157657_
                             (let ()
                               (declare (not safe))
                               (##car _e157637157653_)))
                            (_tl157635157660_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157637157653_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157635157660_))
                            (let ((_e157640157663_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157635157660_))))
                              (let ((_hd157639157667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157640157663_)))
                                    (_tl157638157670_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157640157663_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157638157670_))
                                    ((lambda (_L157673_)
                                       (let ((__tmp159426
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp159419
                                              (let ((__tmp159425
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp159420
                                                     (let ((__tmp159421
                                                            (let ((__tmp159424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp159422
                           (let ((__tmp159423
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157673_ '()))))
                             (declare (not safe))
                             (cons '() __tmp159423))))
                      (declare (not safe))
                      (cons __tmp159424 __tmp159422))))
               (declare (not safe))
               (cons __tmp159421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159425
                                                      __tmp159420))))
                                         (declare (not safe))
                                         (cons __tmp159426 __tmp159419)))
                                     _hd157639157667_)
                                    (_g157632157646_ _g157633157650_))))
                            (_g157632157646_ _g157633157650_))))
                    (_g157632157646_ _g157633157650_)))))
        (_g157631157688_ _$stx157628_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157692_)
      (let* ((_g157696157710_
              (lambda (_g157697157706_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157697157706_))))
             (_g157695157751_
              (lambda (_g157697157714_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157697157714_))
                    (let ((_e157701157717_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157697157714_))))
                      (let ((_hd157700157721_
                             (let ()
                               (declare (not safe))
                               (##car _e157701157717_)))
                            (_tl157699157724_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157701157717_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157699157724_))
                            (let ((_e157704157727_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157699157724_))))
                              (let ((_hd157703157731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157704157727_)))
                                    (_tl157702157734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157704157727_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157702157734_))
                                    ((lambda (_L157737_)
                                       (let ((__tmp159432
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp159427
                                              (let ((__tmp159428
                                                     (let ((__tmp159431
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp159429
                                                            (let ((__tmp159430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157737_ '()))))
                      (declare (not safe))
                      (cons '() __tmp159430))))
               (declare (not safe))
               (cons __tmp159431 __tmp159429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159428 '()))))
                                         (declare (not safe))
                                         (cons __tmp159432 __tmp159427)))
                                     _hd157703157731_)
                                    (_g157696157710_ _g157697157714_))))
                            (_g157696157710_ _g157697157714_))))
                    (_g157696157710_ _g157697157714_)))))
        (_g157695157751_ _$stx157692_)))))
