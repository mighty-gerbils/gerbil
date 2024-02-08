(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx278262_)
      (let* ((_g278266278280_
              (lambda (_g278267278276_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g278267278276_))))
             (_g278265278322_
              (lambda (_g278267278284_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g278267278284_))
                    (let ((_e278271278287_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g278267278284_))))
                      (let ((_hd278270278291_
                             (let ()
                               (declare (not safe))
                               (##car _e278271278287_)))
                            (_tl278269278294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e278271278287_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278269278294_))
                            (let ((_e278274278297_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl278269278294_))))
                              (let ((_hd278273278301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278274278297_)))
                                    (_tl278272278304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278274278297_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278272278304_))
                                    ((lambda (_L278307_)
                                       (let ((__tmp284249
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp284242
                                              (let ((__tmp284248
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp284243
                                                     (let ((__tmp284244
                                                            (let ((__tmp284247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp284245
                           (let ((__tmp284246
                                  (let ()
                                    (declare (not safe))
                                    (cons _L278307_ '()))))
                             (declare (not safe))
                             (cons '() __tmp284246))))
                      (declare (not safe))
                      (cons __tmp284247 __tmp284245))))
               (declare (not safe))
               (cons __tmp284244 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284248
                                                      __tmp284243))))
                                         (declare (not safe))
                                         (cons __tmp284249 __tmp284242)))
                                     _hd278273278301_)
                                    (_g278266278280_ _g278267278284_))))
                            (_g278266278280_ _g278267278284_))))
                    (_g278266278280_ _g278267278284_)))))
        (_g278265278322_ _$stx278262_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx278326_)
      (let* ((_g278330278344_
              (lambda (_g278331278340_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g278331278340_))))
             (_g278329278385_
              (lambda (_g278331278348_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g278331278348_))
                    (let ((_e278335278351_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g278331278348_))))
                      (let ((_hd278334278355_
                             (let ()
                               (declare (not safe))
                               (##car _e278335278351_)))
                            (_tl278333278358_
                             (let ()
                               (declare (not safe))
                               (##cdr _e278335278351_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278333278358_))
                            (let ((_e278338278361_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl278333278358_))))
                              (let ((_hd278337278365_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278338278361_)))
                                    (_tl278336278368_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278338278361_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278336278368_))
                                    ((lambda (_L278371_)
                                       (let ((__tmp284255
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp284250
                                              (let ((__tmp284251
                                                     (let ((__tmp284254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp284252
                                                            (let ((__tmp284253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L278371_ '()))))
                      (declare (not safe))
                      (cons '() __tmp284253))))
               (declare (not safe))
               (cons __tmp284254 __tmp284252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284251 '()))))
                                         (declare (not safe))
                                         (cons __tmp284255 __tmp284250)))
                                     _hd278337278365_)
                                    (_g278330278344_ _g278331278348_))))
                            (_g278330278344_ _g278331278348_))))
                    (_g278330278344_ _g278331278348_)))))
        (_g278329278385_ _$stx278326_)))))
