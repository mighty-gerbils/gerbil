(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158519_)
      (let* ((_g158523158537_
              (lambda (_g158524158533_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158524158533_))))
             (_g158522158579_
              (lambda (_g158524158541_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158524158541_))
                    (let ((_e158528158544_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158524158541_))))
                      (let ((_hd158527158548_
                             (let ()
                               (declare (not safe))
                               (##car _e158528158544_)))
                            (_tl158526158551_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158528158544_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158526158551_))
                            (let ((_e158531158554_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158526158551_))))
                              (let ((_hd158530158558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158531158554_)))
                                    (_tl158529158561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158531158554_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158529158561_))
                                    ((lambda (_L158564_)
                                       (let ((__tmp160317
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160310
                                              (let ((__tmp160316
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160311
                                                     (let ((__tmp160312
                                                            (let ((__tmp160315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160313
                           (let ((__tmp160314
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158564_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160314))))
                      (declare (not safe))
                      (cons __tmp160315 __tmp160313))))
               (declare (not safe))
               (cons __tmp160312 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160316
                                                      __tmp160311))))
                                         (declare (not safe))
                                         (cons __tmp160317 __tmp160310)))
                                     _hd158530158558_)
                                    (_g158523158537_ _g158524158541_))))
                            (_g158523158537_ _g158524158541_))))
                    (_g158523158537_ _g158524158541_)))))
        (_g158522158579_ _$stx158519_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158583_)
      (let* ((_g158587158601_
              (lambda (_g158588158597_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158588158597_))))
             (_g158586158642_
              (lambda (_g158588158605_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158588158605_))
                    (let ((_e158592158608_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158588158605_))))
                      (let ((_hd158591158612_
                             (let ()
                               (declare (not safe))
                               (##car _e158592158608_)))
                            (_tl158590158615_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158592158608_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158590158615_))
                            (let ((_e158595158618_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158590158615_))))
                              (let ((_hd158594158622_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158595158618_)))
                                    (_tl158593158625_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158595158618_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158593158625_))
                                    ((lambda (_L158628_)
                                       (let ((__tmp160323
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160318
                                              (let ((__tmp160319
                                                     (let ((__tmp160322
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160320
                                                            (let ((__tmp160321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158628_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160321))))
               (declare (not safe))
               (cons __tmp160322 __tmp160320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160319 '()))))
                                         (declare (not safe))
                                         (cons __tmp160323 __tmp160318)))
                                     _hd158594158622_)
                                    (_g158587158601_ _g158588158605_))))
                            (_g158587158601_ _g158588158605_))))
                    (_g158587158601_ _g158588158605_)))))
        (_g158586158642_ _$stx158583_)))))
