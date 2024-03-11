(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx157634_)
      (let* ((_g157638157652_
              (lambda (_g157639157648_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157639157648_))))
             (_g157637157694_
              (lambda (_g157639157656_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157639157656_))
                    (let ((_e157643157659_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157639157656_))))
                      (let ((_hd157642157663_
                             (let ()
                               (declare (not safe))
                               (##car _e157643157659_)))
                            (_tl157641157666_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157643157659_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157641157666_))
                            (let ((_e157646157669_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157641157666_))))
                              (let ((_hd157645157673_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157646157669_)))
                                    (_tl157644157676_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157646157669_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157644157676_))
                                    ((lambda (_L157679_)
                                       (let ((__tmp159432
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp159425
                                              (let ((__tmp159431
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp159426
                                                     (let ((__tmp159427
                                                            (let ((__tmp159430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp159428
                           (let ((__tmp159429
                                  (let ()
                                    (declare (not safe))
                                    (cons _L157679_ '()))))
                             (declare (not safe))
                             (cons '() __tmp159429))))
                      (declare (not safe))
                      (cons __tmp159430 __tmp159428))))
               (declare (not safe))
               (cons __tmp159427 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159431
                                                      __tmp159426))))
                                         (declare (not safe))
                                         (cons __tmp159432 __tmp159425)))
                                     _hd157645157673_)
                                    (_g157638157652_ _g157639157656_))))
                            (_g157638157652_ _g157639157656_))))
                    (_g157638157652_ _g157639157656_)))))
        (_g157637157694_ _$stx157634_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx157698_)
      (let* ((_g157702157716_
              (lambda (_g157703157712_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157703157712_))))
             (_g157701157757_
              (lambda (_g157703157720_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157703157720_))
                    (let ((_e157707157723_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157703157720_))))
                      (let ((_hd157706157727_
                             (let ()
                               (declare (not safe))
                               (##car _e157707157723_)))
                            (_tl157705157730_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157707157723_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157705157730_))
                            (let ((_e157710157733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157705157730_))))
                              (let ((_hd157709157737_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157710157733_)))
                                    (_tl157708157740_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157710157733_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157708157740_))
                                    ((lambda (_L157743_)
                                       (let ((__tmp159438
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp159433
                                              (let ((__tmp159434
                                                     (let ((__tmp159437
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp159435
                                                            (let ((__tmp159436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L157743_ '()))))
                      (declare (not safe))
                      (cons '() __tmp159436))))
               (declare (not safe))
               (cons __tmp159437 __tmp159435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159434 '()))))
                                         (declare (not safe))
                                         (cons __tmp159438 __tmp159433)))
                                     _hd157709157737_)
                                    (_g157702157716_ _g157703157720_))))
                            (_g157702157716_ _g157703157720_))))
                    (_g157702157716_ _g157703157720_)))))
        (_g157701157757_ _$stx157698_)))))
