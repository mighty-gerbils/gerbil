(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx281302_)
      (let* ((_g281306281320_
              (lambda (_g281307281316_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281307281316_))))
             (_g281305281362_
              (lambda (_g281307281324_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281307281324_))
                    (let ((_e281309281327_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281307281324_))))
                      (let ((_hd281310281331_
                             (let ()
                               (declare (not safe))
                               (##car _e281309281327_)))
                            (_tl281311281334_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281309281327_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281311281334_))
                            (let ((_e281312281337_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281311281334_))))
                              (let ((_hd281313281341_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281312281337_)))
                                    (_tl281314281344_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281312281337_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281314281344_))
                                    ((lambda (_L281347_)
                                       (let ((__tmp287170
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp287163
                                              (let ((__tmp287169
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp287164
                                                     (let ((__tmp287165
                                                            (let ((__tmp287168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp287166
                           (let ((__tmp287167
                                  (let ()
                                    (declare (not safe))
                                    (cons _L281347_ '()))))
                             (declare (not safe))
                             (cons '() __tmp287167))))
                      (declare (not safe))
                      (cons __tmp287168 __tmp287166))))
               (declare (not safe))
               (cons __tmp287165 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287169
                                                      __tmp287164))))
                                         (declare (not safe))
                                         (cons __tmp287170 __tmp287163)))
                                     _hd281313281341_)
                                    (_g281306281320_ _g281307281324_))))
                            (_g281306281320_ _g281307281324_))))
                    (_g281306281320_ _g281307281324_)))))
        (_g281305281362_ _$stx281302_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx281366_)
      (let* ((_g281370281384_
              (lambda (_g281371281380_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g281371281380_))))
             (_g281369281425_
              (lambda (_g281371281388_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g281371281388_))
                    (let ((_e281373281391_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g281371281388_))))
                      (let ((_hd281374281395_
                             (let ()
                               (declare (not safe))
                               (##car _e281373281391_)))
                            (_tl281375281398_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281373281391_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281375281398_))
                            (let ((_e281376281401_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl281375281398_))))
                              (let ((_hd281377281405_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281376281401_)))
                                    (_tl281378281408_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281376281401_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl281378281408_))
                                    ((lambda (_L281411_)
                                       (let ((__tmp287176
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp287171
                                              (let ((__tmp287172
                                                     (let ((__tmp287175
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp287173
                                                            (let ((__tmp287174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L281411_ '()))))
                      (declare (not safe))
                      (cons '() __tmp287174))))
               (declare (not safe))
               (cons __tmp287175 __tmp287173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287172 '()))))
                                         (declare (not safe))
                                         (cons __tmp287176 __tmp287171)))
                                     _hd281377281405_)
                                    (_g281370281384_ _g281371281388_))))
                            (_g281370281384_ _g281371281388_))))
                    (_g281370281384_ _g281371281388_)))))
        (_g281369281425_ _$stx281366_)))))
