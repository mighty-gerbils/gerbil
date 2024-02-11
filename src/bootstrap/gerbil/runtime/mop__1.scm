(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83350_)
    (let* ((_g8335483380_
            (lambda (_g8335583376_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8335583376_)))
           (_g8335383464_
            (lambda (_g8335583384_)
              (if (gx#stx-pair? _g8335583384_)
                  (let ((_e8336283387_ (gx#syntax-e _g8335583384_)))
                    (let ((_hd8336183391_
                           (let () (declare (not safe)) (##car _e8336283387_)))
                          (_tl8336083394_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8336283387_))))
                      (if (gx#stx-pair? _tl8336083394_)
                          (let ((_e8336583397_ (gx#syntax-e _tl8336083394_)))
                            (let ((_hd8336483401_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8336583397_)))
                                  (_tl8336383404_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8336583397_))))
                              (if (gx#stx-pair? _tl8336383404_)
                                  (let ((_e8336883407_
                                         (gx#syntax-e _tl8336383404_)))
                                    (let ((_hd8336783411_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8336883407_)))
                                          (_tl8336683414_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8336883407_))))
                                      (if (gx#stx-pair? _tl8336683414_)
                                          (let ((_e8337183417_
                                                 (gx#syntax-e _tl8336683414_)))
                                            (let ((_hd8337083421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8337183417_)))
                                                  (_tl8336983424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8337183417_))))
                                              (if (gx#stx-pair? _tl8336983424_)
                                                  (let ((_e8337483427_
                                                         (gx#syntax-e
                                                          _tl8336983424_)))
                                                    (let ((_hd8337383431_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8337483427_)))
                                                          (_tl8337283434_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8337483427_))))
                                                      (if (gx#stx-null?
                                                           _tl8337283434_)
                                                          ((lambda (_L83437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83439_
                            _L83440_
                            _L83441_)
                     (let ((__tmp89239 (gx#datum->syntax '#f 'if))
                           (__tmp89193
                            (let ((__tmp89236
                                   (let ((__tmp89238
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89237
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83441_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89238 __tmp89237)))
                                  (__tmp89194
                                   (let ((__tmp89199
                                          (let ((__tmp89235
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89200
                                                 (let ((__tmp89229
                                                        (let ((__tmp89234
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89230
                                                               (let ((__tmp89231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89233
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89232
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83441_ '()))))
                                (declare (not safe))
                                (cons __tmp89233 __tmp89232))))
                         (declare (not safe))
                         (cons __tmp89231 '()))))
                  (declare (not safe))
                  (cons __tmp89234 __tmp89230)))
               (__tmp89201
                (let ((__tmp89202
                       (let ((__tmp89228 (gx#datum->syntax '#f 'cond))
                             (__tmp89203
                              (let ((__tmp89211
                                     (let ((__tmp89215
                                            (let ((__tmp89227
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89216
                                                   (let ((__tmp89223
                                                          (let ((__tmp89226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89224
                         (let ((__tmp89225 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89225 '()))))
                    (declare (not safe))
                    (cons __tmp89226 __tmp89224)))
                 (__tmp89217
                  (let ((__tmp89218
                         (let ((__tmp89222
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89219
                                (let ((__tmp89221
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89220
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83440_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89221 __tmp89220))))
                           (declare (not safe))
                           (cons __tmp89222 __tmp89219))))
                    (declare (not safe))
                    (cons __tmp89218 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89223
                                                           __tmp89217))))
                                              (declare (not safe))
                                              (cons __tmp89227 __tmp89216)))
                                           (__tmp89212
                                            (let ((__tmp89214
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89213
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83439_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89214 __tmp89213))))
                                       (declare (not safe))
                                       (cons __tmp89215 __tmp89212)))
                                    (__tmp89204
                                     (let ((__tmp89205
                                            (let ((__tmp89210
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89206
                                                   (let ((__tmp89207
                                                          (let ((__tmp89208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89209
                                (let ()
                                  (declare (not safe))
                                  (cons _L83440_ '()))))
                           (declare (not safe))
                           (cons _L83441_ __tmp89209))))
                    (declare (not safe))
                    (cons _L83437_ __tmp89208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89207 '()))))
                                              (declare (not safe))
                                              (cons __tmp89210 __tmp89206))))
                                       (declare (not safe))
                                       (cons __tmp89205 '()))))
                                (declare (not safe))
                                (cons __tmp89211 __tmp89204))))
                         (declare (not safe))
                         (cons __tmp89228 __tmp89203))))
                  (declare (not safe))
                  (cons __tmp89202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89229
                                                         __tmp89201))))
                                            (declare (not safe))
                                            (cons __tmp89235 __tmp89200)))
                                         (__tmp89195
                                          (let ((__tmp89196
                                                 (let ((__tmp89197
                                                        (let ((__tmp89198
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83440_ '()))))
                  (declare (not safe))
                  (cons _L83441_ __tmp89198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83437_
                                                         __tmp89197))))
                                            (declare (not safe))
                                            (cons __tmp89196 '()))))
                                     (declare (not safe))
                                     (cons __tmp89199 __tmp89195))))
                              (declare (not safe))
                              (cons __tmp89236 __tmp89194))))
                       (declare (not safe))
                       (cons __tmp89239 __tmp89193)))
                   _hd8337383431_
                   _hd8337083421_
                   _hd8336783411_
                   _hd8336483401_)
                  (_g8335483380_ _g8335583384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8335483380_
                                                   _g8335583384_))))
                                          (_g8335483380_ _g8335583384_))))
                                  (_g8335483380_ _g8335583384_))))
                          (_g8335483380_ _g8335583384_))))
                  (_g8335483380_ _g8335583384_)))))
      (_g8335383464_ _$stx83350_))))
