(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83357_)
    (let* ((_g8336183387_
            (lambda (_g8336283383_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8336283383_)))
           (_g8336083471_
            (lambda (_g8336283391_)
              (if (gx#stx-pair? _g8336283391_)
                  (let ((_e8336983394_ (gx#syntax-e _g8336283391_)))
                    (let ((_hd8336883398_
                           (let () (declare (not safe)) (##car _e8336983394_)))
                          (_tl8336783401_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8336983394_))))
                      (if (gx#stx-pair? _tl8336783401_)
                          (let ((_e8337283404_ (gx#syntax-e _tl8336783401_)))
                            (let ((_hd8337183408_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8337283404_)))
                                  (_tl8337083411_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8337283404_))))
                              (if (gx#stx-pair? _tl8337083411_)
                                  (let ((_e8337583414_
                                         (gx#syntax-e _tl8337083411_)))
                                    (let ((_hd8337483418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8337583414_)))
                                          (_tl8337383421_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8337583414_))))
                                      (if (gx#stx-pair? _tl8337383421_)
                                          (let ((_e8337883424_
                                                 (gx#syntax-e _tl8337383421_)))
                                            (let ((_hd8337783428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8337883424_)))
                                                  (_tl8337683431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8337883424_))))
                                              (if (gx#stx-pair? _tl8337683431_)
                                                  (let ((_e8338183434_
                                                         (gx#syntax-e
                                                          _tl8337683431_)))
                                                    (let ((_hd8338083438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8338183434_)))
                                                          (_tl8337983441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8338183434_))))
                                                      (if (gx#stx-null?
                                                           _tl8337983441_)
                                                          ((lambda (_L83444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83446_
                            _L83447_
                            _L83448_)
                     (let ((__tmp89246 (gx#datum->syntax '#f 'if))
                           (__tmp89200
                            (let ((__tmp89243
                                   (let ((__tmp89245
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89244
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83448_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89245 __tmp89244)))
                                  (__tmp89201
                                   (let ((__tmp89206
                                          (let ((__tmp89242
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89207
                                                 (let ((__tmp89236
                                                        (let ((__tmp89241
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89237
                                                               (let ((__tmp89238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89240
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89239
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83448_ '()))))
                                (declare (not safe))
                                (cons __tmp89240 __tmp89239))))
                         (declare (not safe))
                         (cons __tmp89238 '()))))
                  (declare (not safe))
                  (cons __tmp89241 __tmp89237)))
               (__tmp89208
                (let ((__tmp89209
                       (let ((__tmp89235 (gx#datum->syntax '#f 'cond))
                             (__tmp89210
                              (let ((__tmp89218
                                     (let ((__tmp89222
                                            (let ((__tmp89234
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89223
                                                   (let ((__tmp89230
                                                          (let ((__tmp89233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89231
                         (let ((__tmp89232 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89232 '()))))
                    (declare (not safe))
                    (cons __tmp89233 __tmp89231)))
                 (__tmp89224
                  (let ((__tmp89225
                         (let ((__tmp89229
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89226
                                (let ((__tmp89228
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89227
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83447_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89228 __tmp89227))))
                           (declare (not safe))
                           (cons __tmp89229 __tmp89226))))
                    (declare (not safe))
                    (cons __tmp89225 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89230
                                                           __tmp89224))))
                                              (declare (not safe))
                                              (cons __tmp89234 __tmp89223)))
                                           (__tmp89219
                                            (let ((__tmp89221
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89220
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83446_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89221 __tmp89220))))
                                       (declare (not safe))
                                       (cons __tmp89222 __tmp89219)))
                                    (__tmp89211
                                     (let ((__tmp89212
                                            (let ((__tmp89217
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89213
                                                   (let ((__tmp89214
                                                          (let ((__tmp89215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89216
                                (let ()
                                  (declare (not safe))
                                  (cons _L83447_ '()))))
                           (declare (not safe))
                           (cons _L83448_ __tmp89216))))
                    (declare (not safe))
                    (cons _L83444_ __tmp89215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89214 '()))))
                                              (declare (not safe))
                                              (cons __tmp89217 __tmp89213))))
                                       (declare (not safe))
                                       (cons __tmp89212 '()))))
                                (declare (not safe))
                                (cons __tmp89218 __tmp89211))))
                         (declare (not safe))
                         (cons __tmp89235 __tmp89210))))
                  (declare (not safe))
                  (cons __tmp89209 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89236
                                                         __tmp89208))))
                                            (declare (not safe))
                                            (cons __tmp89242 __tmp89207)))
                                         (__tmp89202
                                          (let ((__tmp89203
                                                 (let ((__tmp89204
                                                        (let ((__tmp89205
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83447_ '()))))
                  (declare (not safe))
                  (cons _L83448_ __tmp89205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83444_
                                                         __tmp89204))))
                                            (declare (not safe))
                                            (cons __tmp89203 '()))))
                                     (declare (not safe))
                                     (cons __tmp89206 __tmp89202))))
                              (declare (not safe))
                              (cons __tmp89243 __tmp89201))))
                       (declare (not safe))
                       (cons __tmp89246 __tmp89200)))
                   _hd8338083438_
                   _hd8337783428_
                   _hd8337483418_
                   _hd8337183408_)
                  (_g8336183387_ _g8336283391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8336183387_
                                                   _g8336283391_))))
                                          (_g8336183387_ _g8336283391_))))
                                  (_g8336183387_ _g8336283391_))))
                          (_g8336183387_ _g8336283391_))))
                  (_g8336183387_ _g8336283391_)))))
      (_g8336083471_ _$stx83357_))))
