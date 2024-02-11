(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83354_)
    (let* ((_g8335883384_
            (lambda (_g8335983380_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8335983380_)))
           (_g8335783468_
            (lambda (_g8335983388_)
              (if (gx#stx-pair? _g8335983388_)
                  (let ((_e8336683391_ (gx#syntax-e _g8335983388_)))
                    (let ((_hd8336583395_
                           (let () (declare (not safe)) (##car _e8336683391_)))
                          (_tl8336483398_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8336683391_))))
                      (if (gx#stx-pair? _tl8336483398_)
                          (let ((_e8336983401_ (gx#syntax-e _tl8336483398_)))
                            (let ((_hd8336883405_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8336983401_)))
                                  (_tl8336783408_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8336983401_))))
                              (if (gx#stx-pair? _tl8336783408_)
                                  (let ((_e8337283411_
                                         (gx#syntax-e _tl8336783408_)))
                                    (let ((_hd8337183415_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8337283411_)))
                                          (_tl8337083418_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8337283411_))))
                                      (if (gx#stx-pair? _tl8337083418_)
                                          (let ((_e8337583421_
                                                 (gx#syntax-e _tl8337083418_)))
                                            (let ((_hd8337483425_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8337583421_)))
                                                  (_tl8337383428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8337583421_))))
                                              (if (gx#stx-pair? _tl8337383428_)
                                                  (let ((_e8337883431_
                                                         (gx#syntax-e
                                                          _tl8337383428_)))
                                                    (let ((_hd8337783435_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8337883431_)))
                                                          (_tl8337683438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8337883431_))))
                                                      (if (gx#stx-null?
                                                           _tl8337683438_)
                                                          ((lambda (_L83441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83443_
                            _L83444_
                            _L83445_)
                     (let ((__tmp89243 (gx#datum->syntax '#f 'if))
                           (__tmp89197
                            (let ((__tmp89240
                                   (let ((__tmp89242
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89241
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83445_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89242 __tmp89241)))
                                  (__tmp89198
                                   (let ((__tmp89203
                                          (let ((__tmp89239
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89204
                                                 (let ((__tmp89233
                                                        (let ((__tmp89238
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89234
                                                               (let ((__tmp89235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89237
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89236
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83445_ '()))))
                                (declare (not safe))
                                (cons __tmp89237 __tmp89236))))
                         (declare (not safe))
                         (cons __tmp89235 '()))))
                  (declare (not safe))
                  (cons __tmp89238 __tmp89234)))
               (__tmp89205
                (let ((__tmp89206
                       (let ((__tmp89232 (gx#datum->syntax '#f 'cond))
                             (__tmp89207
                              (let ((__tmp89215
                                     (let ((__tmp89219
                                            (let ((__tmp89231
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89220
                                                   (let ((__tmp89227
                                                          (let ((__tmp89230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89228
                         (let ((__tmp89229 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89229 '()))))
                    (declare (not safe))
                    (cons __tmp89230 __tmp89228)))
                 (__tmp89221
                  (let ((__tmp89222
                         (let ((__tmp89226
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89223
                                (let ((__tmp89225
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89224
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83444_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89225 __tmp89224))))
                           (declare (not safe))
                           (cons __tmp89226 __tmp89223))))
                    (declare (not safe))
                    (cons __tmp89222 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89227
                                                           __tmp89221))))
                                              (declare (not safe))
                                              (cons __tmp89231 __tmp89220)))
                                           (__tmp89216
                                            (let ((__tmp89218
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89217
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83443_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89218 __tmp89217))))
                                       (declare (not safe))
                                       (cons __tmp89219 __tmp89216)))
                                    (__tmp89208
                                     (let ((__tmp89209
                                            (let ((__tmp89214
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89210
                                                   (let ((__tmp89211
                                                          (let ((__tmp89212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89213
                                (let ()
                                  (declare (not safe))
                                  (cons _L83444_ '()))))
                           (declare (not safe))
                           (cons _L83445_ __tmp89213))))
                    (declare (not safe))
                    (cons _L83441_ __tmp89212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89211 '()))))
                                              (declare (not safe))
                                              (cons __tmp89214 __tmp89210))))
                                       (declare (not safe))
                                       (cons __tmp89209 '()))))
                                (declare (not safe))
                                (cons __tmp89215 __tmp89208))))
                         (declare (not safe))
                         (cons __tmp89232 __tmp89207))))
                  (declare (not safe))
                  (cons __tmp89206 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89233
                                                         __tmp89205))))
                                            (declare (not safe))
                                            (cons __tmp89239 __tmp89204)))
                                         (__tmp89199
                                          (let ((__tmp89200
                                                 (let ((__tmp89201
                                                        (let ((__tmp89202
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83444_ '()))))
                  (declare (not safe))
                  (cons _L83445_ __tmp89202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83441_
                                                         __tmp89201))))
                                            (declare (not safe))
                                            (cons __tmp89200 '()))))
                                     (declare (not safe))
                                     (cons __tmp89203 __tmp89199))))
                              (declare (not safe))
                              (cons __tmp89240 __tmp89198))))
                       (declare (not safe))
                       (cons __tmp89243 __tmp89197)))
                   _hd8337783435_
                   _hd8337483425_
                   _hd8337183415_
                   _hd8336883405_)
                  (_g8335883384_ _g8335983388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8335883384_
                                                   _g8335983388_))))
                                          (_g8335883384_ _g8335983388_))))
                                  (_g8335883384_ _g8335983388_))))
                          (_g8335883384_ _g8335983388_))))
                  (_g8335883384_ _g8335983388_)))))
      (_g8335783468_ _$stx83354_))))
