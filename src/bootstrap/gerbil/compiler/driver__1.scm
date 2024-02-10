(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx278212_)
      (let* ((_g278216278230_
              (lambda (_g278217278226_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g278217278226_))))
             (_g278215278272_
              (lambda (_g278217278234_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g278217278234_))
                    (let ((_e278221278237_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g278217278234_))))
                      (let ((_hd278220278241_
                             (let ()
                               (declare (not safe))
                               (##car _e278221278237_)))
                            (_tl278219278244_
                             (let ()
                               (declare (not safe))
                               (##cdr _e278221278237_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278219278244_))
                            (let ((_e278224278247_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl278219278244_))))
                              (let ((_hd278223278251_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278224278247_)))
                                    (_tl278222278254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278224278247_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278222278254_))
                                    ((lambda (_L278257_)
                                       (let ((__tmp284203
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp284196
                                              (let ((__tmp284202
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp284197
                                                     (let ((__tmp284198
                                                            (let ((__tmp284201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp284199
                           (let ((__tmp284200
                                  (let ()
                                    (declare (not safe))
                                    (cons _L278257_ '()))))
                             (declare (not safe))
                             (cons '() __tmp284200))))
                      (declare (not safe))
                      (cons __tmp284201 __tmp284199))))
               (declare (not safe))
               (cons __tmp284198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284202
                                                      __tmp284197))))
                                         (declare (not safe))
                                         (cons __tmp284203 __tmp284196)))
                                     _hd278223278251_)
                                    (_g278216278230_ _g278217278234_))))
                            (_g278216278230_ _g278217278234_))))
                    (_g278216278230_ _g278217278234_)))))
        (_g278215278272_ _$stx278212_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx278276_)
      (let* ((_g278280278294_
              (lambda (_g278281278290_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g278281278290_))))
             (_g278279278335_
              (lambda (_g278281278298_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g278281278298_))
                    (let ((_e278285278301_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g278281278298_))))
                      (let ((_hd278284278305_
                             (let ()
                               (declare (not safe))
                               (##car _e278285278301_)))
                            (_tl278283278308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e278285278301_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278283278308_))
                            (let ((_e278288278311_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl278283278308_))))
                              (let ((_hd278287278315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278288278311_)))
                                    (_tl278286278318_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278288278311_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278286278318_))
                                    ((lambda (_L278321_)
                                       (let ((__tmp284209
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp284204
                                              (let ((__tmp284205
                                                     (let ((__tmp284208
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp284206
                                                            (let ((__tmp284207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L278321_ '()))))
                      (declare (not safe))
                      (cons '() __tmp284207))))
               (declare (not safe))
               (cons __tmp284208 __tmp284206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284205 '()))))
                                         (declare (not safe))
                                         (cons __tmp284209 __tmp284204)))
                                     _hd278287278315_)
                                    (_g278280278294_ _g278281278298_))))
                            (_g278280278294_ _g278281278298_))))
                    (_g278280278294_ _g278281278298_)))))
        (_g278279278335_ _$stx278276_)))))
