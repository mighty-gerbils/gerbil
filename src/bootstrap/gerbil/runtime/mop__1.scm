(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83364_)
    (let* ((_g8336883394_
            (lambda (_g8336983390_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8336983390_)))
           (_g8336783478_
            (lambda (_g8336983398_)
              (if (gx#stx-pair? _g8336983398_)
                  (let ((_e8337683401_ (gx#syntax-e _g8336983398_)))
                    (let ((_hd8337583405_
                           (let () (declare (not safe)) (##car _e8337683401_)))
                          (_tl8337483408_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8337683401_))))
                      (if (gx#stx-pair? _tl8337483408_)
                          (let ((_e8337983411_ (gx#syntax-e _tl8337483408_)))
                            (let ((_hd8337883415_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8337983411_)))
                                  (_tl8337783418_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8337983411_))))
                              (if (gx#stx-pair? _tl8337783418_)
                                  (let ((_e8338283421_
                                         (gx#syntax-e _tl8337783418_)))
                                    (let ((_hd8338183425_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8338283421_)))
                                          (_tl8338083428_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8338283421_))))
                                      (if (gx#stx-pair? _tl8338083428_)
                                          (let ((_e8338583431_
                                                 (gx#syntax-e _tl8338083428_)))
                                            (let ((_hd8338483435_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8338583431_)))
                                                  (_tl8338383438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8338583431_))))
                                              (if (gx#stx-pair? _tl8338383438_)
                                                  (let ((_e8338883441_
                                                         (gx#syntax-e
                                                          _tl8338383438_)))
                                                    (let ((_hd8338783445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8338883441_)))
                                                          (_tl8338683448_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8338883441_))))
                                                      (if (gx#stx-null?
                                                           _tl8338683448_)
                                                          ((lambda (_L83451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83453_
                            _L83454_
                            _L83455_)
                     (let ((__tmp89253 (gx#datum->syntax '#f 'if))
                           (__tmp89207
                            (let ((__tmp89250
                                   (let ((__tmp89252
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89251
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83455_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89252 __tmp89251)))
                                  (__tmp89208
                                   (let ((__tmp89213
                                          (let ((__tmp89249
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89214
                                                 (let ((__tmp89243
                                                        (let ((__tmp89248
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89244
                                                               (let ((__tmp89245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89247
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89246
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83455_ '()))))
                                (declare (not safe))
                                (cons __tmp89247 __tmp89246))))
                         (declare (not safe))
                         (cons __tmp89245 '()))))
                  (declare (not safe))
                  (cons __tmp89248 __tmp89244)))
               (__tmp89215
                (let ((__tmp89216
                       (let ((__tmp89242 (gx#datum->syntax '#f 'cond))
                             (__tmp89217
                              (let ((__tmp89225
                                     (let ((__tmp89229
                                            (let ((__tmp89241
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89230
                                                   (let ((__tmp89237
                                                          (let ((__tmp89240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89238
                         (let ((__tmp89239 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89239 '()))))
                    (declare (not safe))
                    (cons __tmp89240 __tmp89238)))
                 (__tmp89231
                  (let ((__tmp89232
                         (let ((__tmp89236
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89233
                                (let ((__tmp89235
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89234
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83454_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89235 __tmp89234))))
                           (declare (not safe))
                           (cons __tmp89236 __tmp89233))))
                    (declare (not safe))
                    (cons __tmp89232 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89237
                                                           __tmp89231))))
                                              (declare (not safe))
                                              (cons __tmp89241 __tmp89230)))
                                           (__tmp89226
                                            (let ((__tmp89228
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89227
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83453_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89228 __tmp89227))))
                                       (declare (not safe))
                                       (cons __tmp89229 __tmp89226)))
                                    (__tmp89218
                                     (let ((__tmp89219
                                            (let ((__tmp89224
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89220
                                                   (let ((__tmp89221
                                                          (let ((__tmp89222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89223
                                (let ()
                                  (declare (not safe))
                                  (cons _L83454_ '()))))
                           (declare (not safe))
                           (cons _L83455_ __tmp89223))))
                    (declare (not safe))
                    (cons _L83451_ __tmp89222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89221 '()))))
                                              (declare (not safe))
                                              (cons __tmp89224 __tmp89220))))
                                       (declare (not safe))
                                       (cons __tmp89219 '()))))
                                (declare (not safe))
                                (cons __tmp89225 __tmp89218))))
                         (declare (not safe))
                         (cons __tmp89242 __tmp89217))))
                  (declare (not safe))
                  (cons __tmp89216 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89243
                                                         __tmp89215))))
                                            (declare (not safe))
                                            (cons __tmp89249 __tmp89214)))
                                         (__tmp89209
                                          (let ((__tmp89210
                                                 (let ((__tmp89211
                                                        (let ((__tmp89212
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83454_ '()))))
                  (declare (not safe))
                  (cons _L83455_ __tmp89212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83451_
                                                         __tmp89211))))
                                            (declare (not safe))
                                            (cons __tmp89210 '()))))
                                     (declare (not safe))
                                     (cons __tmp89213 __tmp89209))))
                              (declare (not safe))
                              (cons __tmp89250 __tmp89208))))
                       (declare (not safe))
                       (cons __tmp89253 __tmp89207)))
                   _hd8338783445_
                   _hd8338483435_
                   _hd8338183425_
                   _hd8337883415_)
                  (_g8336883394_ _g8336983398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8336883394_
                                                   _g8336983398_))))
                                          (_g8336883394_ _g8336983398_))))
                                  (_g8336883394_ _g8336983398_))))
                          (_g8336883394_ _g8336983398_))))
                  (_g8336883394_ _g8336983398_)))))
      (_g8336783478_ _$stx83364_))))
