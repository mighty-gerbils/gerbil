(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83877_)
      (let* ((___stx8997389974_ _$stx83877_)
             (_g8388283911_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8997389974_))))
        (let ((___kont8997689977_
               (lambda (_L84004_ _L84006_)
                 (let ((__tmp90229 (gx#datum->syntax '#f '##fx=))
                       (__tmp90223
                        (let ((__tmp90225
                               (let ((__tmp90228
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp90226
                                      (let ((__tmp90227
                                             (let ()
                                               (declare (not safe))
                                               (cons _L84004_ '()))))
                                        (declare (not safe))
                                        (cons _L84006_ __tmp90227))))
                                 (declare (not safe))
                                 (cons __tmp90228 __tmp90226)))
                              (__tmp90224
                               (let ()
                                 (declare (not safe))
                                 (cons _L84004_ '()))))
                          (declare (not safe))
                          (cons __tmp90225 __tmp90224))))
                   (declare (not safe))
                   (cons __tmp90229 __tmp90223))))
              (___kont8997889979_
               (lambda (_L83948_ _L83950_)
                 (let ((__tmp90242 (gx#datum->syntax '#f 'let))
                       (__tmp90230
                        (let ((__tmp90240
                               (let ((__tmp90241
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83948_ '()))))
                                 (declare (not safe))
                                 (cons _L83948_ __tmp90241)))
                              (__tmp90231
                               (let ((__tmp90232
                                      (let ((__tmp90239
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp90233
                                             (let ((__tmp90235
                                                    (let ((__tmp90238
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp90236
                                                           (let ((__tmp90237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83948_ '()))))
                     (declare (not safe))
                     (cons _L83950_ __tmp90237))))
              (declare (not safe))
              (cons __tmp90238 __tmp90236)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp90234
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L83948_ '()))))
                                               (declare (not safe))
                                               (cons __tmp90235 __tmp90234))))
                                        (declare (not safe))
                                        (cons __tmp90239 __tmp90233))))
                                 (declare (not safe))
                                 (cons __tmp90232 '()))))
                          (declare (not safe))
                          (cons __tmp90240 __tmp90231))))
                   (declare (not safe))
                   (cons __tmp90242 __tmp90230)))))
          (let ((___match9000090001_
                 (lambda (_e8388683974_
                          _hd8388783978_
                          _tl8388883981_
                          _e8388983984_
                          _hd8389083988_
                          _tl8389183991_
                          _e8389283994_
                          _hd8389383998_
                          _tl8389484001_)
                   (let ((_L84004_ _hd8389383998_) (_L84006_ _hd8389083988_))
                     (if (or (gx#identifier? _L84004_)
                             (gx#stx-fixnum? _L84004_))
                         (___kont8997689977_ _L84004_ _L84006_)
                         (___kont8997889979_
                          _hd8389383998_
                          _hd8389083988_))))))
            (if (gx#stx-pair? ___stx8997389974_)
                (let ((_e8388683974_ (gx#syntax-e ___stx8997389974_)))
                  (let ((_tl8388883981_
                         (let () (declare (not safe)) (##cdr _e8388683974_)))
                        (_hd8388783978_
                         (let () (declare (not safe)) (##car _e8388683974_))))
                    (if (gx#stx-pair? _tl8388883981_)
                        (let ((_e8388983984_ (gx#syntax-e _tl8388883981_)))
                          (let ((_tl8389183991_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8388983984_)))
                                (_hd8389083988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8388983984_))))
                            (if (gx#stx-pair? _tl8389183991_)
                                (let ((_e8389283994_
                                       (gx#syntax-e _tl8389183991_)))
                                  (let ((_tl8389484001_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8389283994_)))
                                        (_hd8389383998_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8389283994_))))
                                    (if (gx#stx-null? _tl8389484001_)
                                        (___match9000090001_
                                         _e8388683974_
                                         _hd8388783978_
                                         _tl8388883981_
                                         _e8388983984_
                                         _hd8389083988_
                                         _tl8389183991_
                                         _e8389283994_
                                         _hd8389383998_
                                         _tl8389484001_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8388283911_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8388283911_)))))
                        (let () (declare (not safe)) (_g8388283911_)))))
                (let () (declare (not safe)) (_g8388283911_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx84029_)
      (let* ((___stx9002390024_ _$stx84029_)
             (_g8403484063_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9002390024_))))
        (let ((___kont9002690027_
               (lambda (_L84155_ _L84157_)
                 (let ((__tmp90249 (gx#datum->syntax '#f '##fx=))
                       (__tmp90243
                        (let ((__tmp90245
                               (let ((__tmp90248
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp90246
                                      (let ((__tmp90247
                                             (let ()
                                               (declare (not safe))
                                               (cons _L84155_ '()))))
                                        (declare (not safe))
                                        (cons _L84157_ __tmp90247))))
                                 (declare (not safe))
                                 (cons __tmp90248 __tmp90246)))
                              (__tmp90244
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp90245 __tmp90244))))
                   (declare (not safe))
                   (cons __tmp90249 __tmp90243))))
              (___kont9002890029_
               (lambda (_L84100_ _L84102_)
                 (let ((__tmp90262 (gx#datum->syntax '#f 'let))
                       (__tmp90250
                        (let ((__tmp90260
                               (let ((__tmp90261
                                      (let ()
                                        (declare (not safe))
                                        (cons _L84100_ '()))))
                                 (declare (not safe))
                                 (cons _L84100_ __tmp90261)))
                              (__tmp90251
                               (let ((__tmp90252
                                      (let ((__tmp90259
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp90253
                                             (let ((__tmp90255
                                                    (let ((__tmp90258
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp90256
                                                           (let ((__tmp90257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L84100_ '()))))
                     (declare (not safe))
                     (cons _L84102_ __tmp90257))))
              (declare (not safe))
              (cons __tmp90258 __tmp90256)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp90254
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp90255 __tmp90254))))
                                        (declare (not safe))
                                        (cons __tmp90259 __tmp90253))))
                                 (declare (not safe))
                                 (cons __tmp90252 '()))))
                          (declare (not safe))
                          (cons __tmp90260 __tmp90251))))
                   (declare (not safe))
                   (cons __tmp90262 __tmp90250)))))
          (let ((___match9005090051_
                 (lambda (_e8403884125_
                          _hd8403984129_
                          _tl8404084132_
                          _e8404184135_
                          _hd8404284139_
                          _tl8404384142_
                          _e8404484145_
                          _hd8404584149_
                          _tl8404684152_)
                   (let ((_L84155_ _hd8404584149_) (_L84157_ _hd8404284139_))
                     (if (or (gx#identifier? _L84155_)
                             (gx#stx-fixnum? _L84155_))
                         (___kont9002690027_ _L84155_ _L84157_)
                         (___kont9002890029_
                          _hd8404584149_
                          _hd8404284139_))))))
            (if (gx#stx-pair? ___stx9002390024_)
                (let ((_e8403884125_ (gx#syntax-e ___stx9002390024_)))
                  (let ((_tl8404084132_
                         (let () (declare (not safe)) (##cdr _e8403884125_)))
                        (_hd8403984129_
                         (let () (declare (not safe)) (##car _e8403884125_))))
                    (if (gx#stx-pair? _tl8404084132_)
                        (let ((_e8404184135_ (gx#syntax-e _tl8404084132_)))
                          (let ((_tl8404384142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8404184135_)))
                                (_hd8404284139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8404184135_))))
                            (if (gx#stx-pair? _tl8404384142_)
                                (let ((_e8404484145_
                                       (gx#syntax-e _tl8404384142_)))
                                  (let ((_tl8404684152_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8404484145_)))
                                        (_hd8404584149_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8404484145_))))
                                    (if (gx#stx-null? _tl8404684152_)
                                        (___match9005090051_
                                         _e8403884125_
                                         _hd8403984129_
                                         _tl8404084132_
                                         _e8404184135_
                                         _hd8404284139_
                                         _tl8404384142_
                                         _e8404484145_
                                         _hd8404584149_
                                         _tl8404684152_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8403484063_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8403484063_)))))
                        (let () (declare (not safe)) (_g8403484063_)))))
                (let () (declare (not safe)) (_g8403484063_))))))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx84180_)
      (let* ((_g8418484210_
              (lambda (_g8418584206_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8418584206_)))
             (_g8418384293_
              (lambda (_g8418584214_)
                (if (gx#stx-pair? _g8418584214_)
                    (let ((_e8419084217_ (gx#syntax-e _g8418584214_)))
                      (let ((_hd8419184221_
                             (let ()
                               (declare (not safe))
                               (##car _e8419084217_)))
                            (_tl8419284224_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8419084217_))))
                        (if (gx#stx-pair? _tl8419284224_)
                            (let ((_e8419384227_ (gx#syntax-e _tl8419284224_)))
                              (let ((_hd8419484231_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8419384227_)))
                                    (_tl8419584234_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8419384227_))))
                                (if (gx#stx-pair? _tl8419584234_)
                                    (let ((_e8419684237_
                                           (gx#syntax-e _tl8419584234_)))
                                      (let ((_hd8419784241_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8419684237_)))
                                            (_tl8419884244_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8419684237_))))
                                        (if (gx#stx-pair? _tl8419884244_)
                                            (let ((_e8419984247_
                                                   (gx#syntax-e
                                                    _tl8419884244_)))
                                              (let ((_hd8420084251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8419984247_)))
                                                    (_tl8420184254_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8419984247_))))
                                                (if (gx#stx-pair?
                                                     _tl8420184254_)
                                                    (let ((_e8420284257_
                                                           (gx#syntax-e
                                                            _tl8420184254_)))
                                                      (let ((_hd8420384261_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8420284257_)))
                    (_tl8420484264_
                     (let () (declare (not safe)) (##cdr _e8420284257_))))
                (if (gx#stx-null? _tl8420484264_)
                    ((lambda (_L84267_ _L84269_ _L84270_ _L84271_)
                       (let ((__tmp90309 (gx#datum->syntax '#f 'if))
                             (__tmp90263
                              (let ((__tmp90306
                                     (let ((__tmp90308
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp90307
                                            (let ()
                                              (declare (not safe))
                                              (cons _L84271_ '()))))
                                       (declare (not safe))
                                       (cons __tmp90308 __tmp90307)))
                                    (__tmp90264
                                     (let ((__tmp90269
                                            (let ((__tmp90305
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp90270
                                                   (let ((__tmp90299
                                                          (let ((__tmp90304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp90300
                         (let ((__tmp90301
                                (let ((__tmp90303
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp90302
                                       (let ()
                                         (declare (not safe))
                                         (cons _L84271_ '()))))
                                  (declare (not safe))
                                  (cons __tmp90303 __tmp90302))))
                           (declare (not safe))
                           (cons __tmp90301 '()))))
                    (declare (not safe))
                    (cons __tmp90304 __tmp90300)))
                 (__tmp90271
                  (let ((__tmp90272
                         (let ((__tmp90298 (gx#datum->syntax '#f 'cond))
                               (__tmp90273
                                (let ((__tmp90281
                                       (let ((__tmp90285
                                              (let ((__tmp90297
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp90286
                                                     (let ((__tmp90293
                                                            (let ((__tmp90296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp90294
                           (let ((__tmp90295 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp90295 '()))))
                      (declare (not safe))
                      (cons __tmp90296 __tmp90294)))
                   (__tmp90287
                    (let ((__tmp90288
                           (let ((__tmp90292
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp90289
                                  (let ((__tmp90291
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp90290
                                         (let ()
                                           (declare (not safe))
                                           (cons _L84270_ '()))))
                                    (declare (not safe))
                                    (cons __tmp90291 __tmp90290))))
                             (declare (not safe))
                             (cons __tmp90292 __tmp90289))))
                      (declare (not safe))
                      (cons __tmp90288 '()))))
               (declare (not safe))
               (cons __tmp90293 __tmp90287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90297 __tmp90286)))
                                             (__tmp90282
                                              (let ((__tmp90284
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp90283
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L84269_ '()))))
                                                (declare (not safe))
                                                (cons __tmp90284 __tmp90283))))
                                         (declare (not safe))
                                         (cons __tmp90285 __tmp90282)))
                                      (__tmp90274
                                       (let ((__tmp90275
                                              (let ((__tmp90280
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp90276
                                                     (let ((__tmp90277
                                                            (let ((__tmp90278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp90279
                                  (let ()
                                    (declare (not safe))
                                    (cons _L84270_ '()))))
                             (declare (not safe))
                             (cons _L84271_ __tmp90279))))
                      (declare (not safe))
                      (cons _L84267_ __tmp90278))))
               (declare (not safe))
               (cons __tmp90277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90280 __tmp90276))))
                                         (declare (not safe))
                                         (cons __tmp90275 '()))))
                                  (declare (not safe))
                                  (cons __tmp90281 __tmp90274))))
                           (declare (not safe))
                           (cons __tmp90298 __tmp90273))))
                    (declare (not safe))
                    (cons __tmp90272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90299
                                                           __tmp90271))))
                                              (declare (not safe))
                                              (cons __tmp90305 __tmp90270)))
                                           (__tmp90265
                                            (let ((__tmp90266
                                                   (let ((__tmp90267
                                                          (let ((__tmp90268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L84270_ '()))))
                    (declare (not safe))
                    (cons _L84271_ __tmp90268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84267_
                                                           __tmp90267))))
                                              (declare (not safe))
                                              (cons __tmp90266 '()))))
                                       (declare (not safe))
                                       (cons __tmp90269 __tmp90265))))
                                (declare (not safe))
                                (cons __tmp90306 __tmp90264))))
                         (declare (not safe))
                         (cons __tmp90309 __tmp90263)))
                     _hd8420384261_
                     _hd8420084251_
                     _hd8419784241_
                     _hd8419484231_)
                    (_g8418484210_ _g8418584214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8418484210_
                                                     _g8418584214_))))
                                            (_g8418484210_ _g8418584214_))))
                                    (_g8418484210_ _g8418584214_))))
                            (_g8418484210_ _g8418584214_))))
                    (_g8418484210_ _g8418584214_)))))
        (_g8418384293_ _$stx84180_)))))
