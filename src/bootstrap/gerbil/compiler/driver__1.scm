(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx291846_)
      (let* ((_g291850291864_
              (lambda (_g291851291860_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291851291860_))))
             (_g291849291906_
              (lambda (_g291851291868_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291851291868_))
                    (let ((_e291855291871_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291851291868_))))
                      (let ((_hd291854291875_
                             (let ()
                               (declare (not safe))
                               (##car _e291855291871_)))
                            (_tl291853291878_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291855291871_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291853291878_))
                            (let ((_e291858291881_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291853291878_))))
                              (let ((_hd291857291885_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291858291881_)))
                                    (_tl291856291888_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291858291881_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291856291888_))
                                    ((lambda (_L291891_)
                                       (let ((__tmp298211
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp298204
                                              (let ((__tmp298210
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp298205
                                                     (let ((__tmp298206
                                                            (let ((__tmp298209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp298207
                           (let ((__tmp298208
                                  (let ()
                                    (declare (not safe))
                                    (cons _L291891_ '()))))
                             (declare (not safe))
                             (cons '() __tmp298208))))
                      (declare (not safe))
                      (cons __tmp298209 __tmp298207))))
               (declare (not safe))
               (cons __tmp298206 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298210
                                                      __tmp298205))))
                                         (declare (not safe))
                                         (cons __tmp298211 __tmp298204)))
                                     _hd291857291885_)
                                    (_g291850291864_ _g291851291868_))))
                            (_g291850291864_ _g291851291868_))))
                    (_g291850291864_ _g291851291868_)))))
        (_g291849291906_ _$stx291846_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx291910_)
      (let* ((_g291914291928_
              (lambda (_g291915291924_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291915291924_))))
             (_g291913291969_
              (lambda (_g291915291932_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291915291932_))
                    (let ((_e291919291935_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291915291932_))))
                      (let ((_hd291918291939_
                             (let ()
                               (declare (not safe))
                               (##car _e291919291935_)))
                            (_tl291917291942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291919291935_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291917291942_))
                            (let ((_e291922291945_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291917291942_))))
                              (let ((_hd291921291949_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291922291945_)))
                                    (_tl291920291952_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291922291945_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291920291952_))
                                    ((lambda (_L291955_)
                                       (let ((__tmp298217
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp298212
                                              (let ((__tmp298213
                                                     (let ((__tmp298216
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp298214
                                                            (let ((__tmp298215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L291955_ '()))))
                      (declare (not safe))
                      (cons '() __tmp298215))))
               (declare (not safe))
               (cons __tmp298216 __tmp298214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298213 '()))))
                                         (declare (not safe))
                                         (cons __tmp298217 __tmp298212)))
                                     _hd291921291949_)
                                    (_g291914291928_ _g291915291932_))))
                            (_g291914291928_ _g291915291932_))))
                    (_g291914291928_ _g291915291932_)))))
        (_g291913291969_ _$stx291910_)))))
