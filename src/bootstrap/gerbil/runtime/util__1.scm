(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g8461_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g8462_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx4251_)
        (let* ((_g42554273_
                (lambda (_g42564269_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g42564269_)))
               (_g42544329_
                (lambda (_g42564277_)
                  (if (gx#stx-pair? _g42564277_)
                      (let ((_e42614280_ (gx#syntax-e _g42564277_)))
                        (let ((_hd42604284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42614280_)))
                              (_tl42594287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42614280_))))
                          (if (gx#stx-pair? _tl42594287_)
                              (let ((_e42644290_ (gx#syntax-e _tl42594287_)))
                                (let ((_hd42634294_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42644290_)))
                                      (_tl42624297_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42644290_))))
                                  (if (gx#stx-pair? _tl42624297_)
                                      (let ((_e42674300_
                                             (gx#syntax-e _tl42624297_)))
                                        (let ((_hd42664304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e42674300_)))
                                              (_tl42654307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e42674300_))))
                                          (if (gx#stx-null? _tl42654307_)
                                              ((lambda (_L4310_ _L4312_)
                                                 (let ((__tmp8222
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp8174
                                                        (let ((__tmp8213
                                                               (let ((__tmp8214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8221 (gx#datum->syntax '#f 'key))
                                    (__tmp8215
                                     (let ((__tmp8220
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp8216
                                            (let ((__tmp8217
                                                   (let ((__tmp8219
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp8218
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp8219
                                                           __tmp8218))))
                                              (declare (not safe))
                                              (cons __tmp8217 '()))))
                                       (declare (not safe))
                                       (cons __tmp8220 __tmp8216))))
                                (declare (not safe))
                                (cons __tmp8221 __tmp8215))))
                         (declare (not safe))
                         (cons _L4312_ __tmp8214)))
                      (__tmp8175
                       (let ((__tmp8176
                              (let ((__tmp8212 (gx#datum->syntax '#f 'cond))
                                    (__tmp8177
                                     (let ((__tmp8194
                                            (let ((__tmp8199
                                                   (let ((__tmp8211
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp8200
                                                          (let ((__tmp8207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8210 (gx#datum->syntax '#f 'pair?))
                               (__tmp8208
                                (let ((__tmp8209 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp8209 '()))))
                           (declare (not safe))
                           (cons __tmp8210 __tmp8208)))
                        (__tmp8201
                         (let ((__tmp8202
                                (let ((__tmp8203
                                       (let ((__tmp8206
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp8204
                                              (let ((__tmp8205
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp8205 '()))))
                                         (declare (not safe))
                                         (cons __tmp8206 __tmp8204))))
                                  (declare (not safe))
                                  (cons _L4310_ __tmp8203))))
                           (declare (not safe))
                           (cons __tmp8202 '()))))
                    (declare (not safe))
                    (cons __tmp8207 __tmp8201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8211
                                                           __tmp8200)))
                                                  (__tmp8195
                                                   (let ((__tmp8198
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp8196
                                                          (let ((__tmp8197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp8197 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8198
                                                           __tmp8196))))
                                              (declare (not safe))
                                              (cons __tmp8199 __tmp8195)))
                                           (__tmp8178
                                            (let ((__tmp8184
                                                   (let ((__tmp8190
                                                          (let ((__tmp8193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp8191
                         (let ((__tmp8192 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp8192 '()))))
                    (declare (not safe))
                    (cons __tmp8193 __tmp8191)))
                 (__tmp8185
                  (let ((__tmp8186
                         (let ((__tmp8189 (gx#datum->syntax '#f 'default))
                               (__tmp8187
                                (let ((__tmp8188 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp8188 '()))))
                           (declare (not safe))
                           (cons __tmp8189 __tmp8187))))
                    (declare (not safe))
                    (cons __tmp8186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8190
                                                           __tmp8185)))
                                                  (__tmp8179
                                                   (let ((__tmp8180
                                                          (let ((__tmp8183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp8181
                         (let ((__tmp8182 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp8182 '()))))
                    (declare (not safe))
                    (cons __tmp8183 __tmp8181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8180 '()))))
                                              (declare (not safe))
                                              (cons __tmp8184 __tmp8179))))
                                       (declare (not safe))
                                       (cons __tmp8194 __tmp8178))))
                                (declare (not safe))
                                (cons __tmp8212 __tmp8177))))
                         (declare (not safe))
                         (cons __tmp8176 '()))))
                  (declare (not safe))
                  (cons __tmp8213 __tmp8175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8222 __tmp8174)))
                                               _hd42664304_
                                               _hd42634294_)
                                              (_g42554273_ _g42564277_))))
                                      (_g42554273_ _g42564277_))))
                              (_g42554273_ _g42564277_))))
                      (_g42554273_ _g42564277_)))))
          (_g42544329_ _$stx4251_))))
    (define |[:0:]#defpget|
      (lambda (_$stx4333_)
        (let* ((_g43374355_
                (lambda (_g43384351_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g43384351_)))
               (_g43364410_
                (lambda (_g43384359_)
                  (if (gx#stx-pair? _g43384359_)
                      (let ((_e43434362_ (gx#syntax-e _g43384359_)))
                        (let ((_hd43424366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43434362_)))
                              (_tl43414369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43434362_))))
                          (if (gx#stx-pair? _tl43414369_)
                              (let ((_e43464372_ (gx#syntax-e _tl43414369_)))
                                (let ((_hd43454376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43464372_)))
                                      (_tl43444379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43464372_))))
                                  (if (gx#stx-pair? _tl43444379_)
                                      (let ((_e43494382_
                                             (gx#syntax-e _tl43444379_)))
                                        (let ((_hd43484386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e43494382_)))
                                              (_tl43474389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e43494382_))))
                                          (if (gx#stx-null? _tl43474389_)
                                              ((lambda (_L4392_ _L4394_)
                                                 (let ((__tmp8292
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp8223
                                                        (let ((__tmp8283
                                                               (let ((__tmp8284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8291 (gx#datum->syntax '#f 'key))
                                    (__tmp8285
                                     (let ((__tmp8290
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp8286
                                            (let ((__tmp8287
                                                   (let ((__tmp8289
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp8288
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp8289
                                                           __tmp8288))))
                                              (declare (not safe))
                                              (cons __tmp8287 '()))))
                                       (declare (not safe))
                                       (cons __tmp8290 __tmp8286))))
                                (declare (not safe))
                                (cons __tmp8291 __tmp8285))))
                         (declare (not safe))
                         (cons _L4394_ __tmp8284)))
                      (__tmp8224
                       (let ((__tmp8225
                              (let ((__tmp8282 (gx#datum->syntax '#f 'let))
                                    (__tmp8226
                                     (let ((__tmp8281
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp8227
                                            (let ((__tmp8276
                                                   (let ((__tmp8277
                                                          (let ((__tmp8280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp8278
                         (let ((__tmp8279 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp8279 '()))))
                    (declare (not safe))
                    (cons __tmp8280 __tmp8278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8277 '())))
                                                  (__tmp8228
                                                   (let ((__tmp8229
                                                          (let ((__tmp8275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp8230
                         (let ((__tmp8274 (gx#datum->syntax '#f 'rest))
                               (__tmp8231
                                (let ((__tmp8250
                                       (let ((__tmp8267
                                              (let ((__tmp8273
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp8268
                                                     (let ((__tmp8272
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp8269
                                                            (let ((__tmp8271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp8270 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp8271 __tmp8270))))
               (declare (not safe))
               (cons __tmp8272 __tmp8269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8273 __tmp8268)))
                                             (__tmp8251
                                              (let ((__tmp8252
                                                     (let ((__tmp8266
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp8253
                                                            (let ((__tmp8261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp8262
                                  (let ((__tmp8265 (gx#datum->syntax '#f 'k))
                                        (__tmp8263
                                         (let ((__tmp8264
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp8264 '()))))
                                    (declare (not safe))
                                    (cons __tmp8265 __tmp8263))))
                             (declare (not safe))
                             (cons _L4392_ __tmp8262)))
                          (__tmp8254
                           (let ((__tmp8260 (gx#datum->syntax '#f 'v))
                                 (__tmp8255
                                  (let ((__tmp8256
                                         (let ((__tmp8259
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp8257
                                                (let ((__tmp8258
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp8258 '()))))
                                           (declare (not safe))
                                           (cons __tmp8259 __tmp8257))))
                                    (declare (not safe))
                                    (cons __tmp8256 '()))))
                             (declare (not safe))
                             (cons __tmp8260 __tmp8255))))
                      (declare (not safe))
                      (cons __tmp8261 __tmp8254))))
               (declare (not safe))
               (cons __tmp8266 __tmp8253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8252 '()))))
                                         (declare (not safe))
                                         (cons __tmp8267 __tmp8251)))
                                      (__tmp8232
                                       (let ((__tmp8233
                                              (let ((__tmp8249
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp8234
                                                     (let ((__tmp8235
                                                            (let ((__tmp8248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp8236
                           (let ((__tmp8244
                                  (let ((__tmp8247
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp8245
                                         (let ((__tmp8246
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp8246 '()))))
                                    (declare (not safe))
                                    (cons __tmp8247 __tmp8245)))
                                 (__tmp8237
                                  (let ((__tmp8240
                                         (let ((__tmp8243
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp8241
                                                (let ((__tmp8242
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp8242 '()))))
                                           (declare (not safe))
                                           (cons __tmp8243 __tmp8241)))
                                        (__tmp8238
                                         (let ((__tmp8239
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp8239 '()))))
                                    (declare (not safe))
                                    (cons __tmp8240 __tmp8238))))
                             (declare (not safe))
                             (cons __tmp8244 __tmp8237))))
                      (declare (not safe))
                      (cons __tmp8248 __tmp8236))))
               (declare (not safe))
               (cons __tmp8235 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8249 __tmp8234))))
                                         (declare (not safe))
                                         (cons __tmp8233 '()))))
                                  (declare (not safe))
                                  (cons __tmp8250 __tmp8232))))
                           (declare (not safe))
                           (cons __tmp8274 __tmp8231))))
                    (declare (not safe))
                    (cons __tmp8275 __tmp8230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8229 '()))))
                                              (declare (not safe))
                                              (cons __tmp8276 __tmp8228))))
                                       (declare (not safe))
                                       (cons __tmp8281 __tmp8227))))
                                (declare (not safe))
                                (cons __tmp8282 __tmp8226))))
                         (declare (not safe))
                         (cons __tmp8225 '()))))
                  (declare (not safe))
                  (cons __tmp8283 __tmp8224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8292 __tmp8223)))
                                               _hd43484386_
                                               _hd43454376_)
                                              (_g43374355_ _g43384359_))))
                                      (_g43374355_ _g43384359_))))
                              (_g43374355_ _g43384359_))))
                      (_g43374355_ _g43384359_)))))
          (_g43364410_ _$stx4333_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx4414_)
        (let* ((_g44184436_
                (lambda (_g44194432_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g44194432_)))
               (_g44174491_
                (lambda (_g44194440_)
                  (if (gx#stx-pair? _g44194440_)
                      (let ((_e44244443_ (gx#syntax-e _g44194440_)))
                        (let ((_hd44234447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44244443_)))
                              (_tl44224450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44244443_))))
                          (if (gx#stx-pair? _tl44224450_)
                              (let ((_e44274453_ (gx#syntax-e _tl44224450_)))
                                (let ((_hd44264457_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44274453_)))
                                      (_tl44254460_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44274453_))))
                                  (if (gx#stx-pair? _tl44254460_)
                                      (let ((_e44304463_
                                             (gx#syntax-e _tl44254460_)))
                                        (let ((_hd44294467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44304463_)))
                                              (_tl44284470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44304463_))))
                                          (if (gx#stx-null? _tl44284470_)
                                              ((lambda (_L4473_ _L4475_)
                                                 (let ((__tmp8363
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp8293
                                                        (let ((__tmp8358
                                                               (let ((__tmp8359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8362 (gx#datum->syntax '#f 'el))
                                    (__tmp8360
                                     (let ((__tmp8361
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp8361 '()))))
                                (declare (not safe))
                                (cons __tmp8362 __tmp8360))))
                         (declare (not safe))
                         (cons _L4475_ __tmp8359)))
                      (__tmp8294
                       (let ((__tmp8295
                              (let ((__tmp8357 (gx#datum->syntax '#f 'let))
                                    (__tmp8296
                                     (let ((__tmp8356
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp8297
                                            (let ((__tmp8345
                                                   (let ((__tmp8352
                                                          (let ((__tmp8355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp8353
                         (let ((__tmp8354 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp8354 '()))))
                    (declare (not safe))
                    (cons __tmp8355 __tmp8353)))
                 (__tmp8346
                  (let ((__tmp8347
                         (let ((__tmp8351 (gx#datum->syntax '#f 'r))
                               (__tmp8348
                                (let ((__tmp8349
                                       (let ((__tmp8350
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp8350 '()))))
                                  (declare (not safe))
                                  (cons __tmp8349 '()))))
                           (declare (not safe))
                           (cons __tmp8351 __tmp8348))))
                    (declare (not safe))
                    (cons __tmp8347 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8352
                                                           __tmp8346)))
                                                  (__tmp8298
                                                   (let ((__tmp8299
                                                          (let ((__tmp8344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp8300
                         (let ((__tmp8343 (gx#datum->syntax '#f 'rest))
                               (__tmp8301
                                (let ((__tmp8307
                                       (let ((__tmp8338
                                              (let ((__tmp8342
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp8339
                                                     (let ((__tmp8341
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp8340
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp8341
                                                             __tmp8340))))
                                                (declare (not safe))
                                                (cons __tmp8342 __tmp8339)))
                                             (__tmp8308
                                              (let ((__tmp8309
                                                     (let ((__tmp8337
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp8310
                                                            (let ((__tmp8332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp8333
                                  (let ((__tmp8336 (gx#datum->syntax '#f 'el))
                                        (__tmp8334
                                         (let ((__tmp8335
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp8335 '()))))
                                    (declare (not safe))
                                    (cons __tmp8336 __tmp8334))))
                             (declare (not safe))
                             (cons _L4473_ __tmp8333)))
                          (__tmp8311
                           (let ((__tmp8324
                                  (let ((__tmp8331
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp8325
                                         (let ((__tmp8330
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp8326
                                                (let ((__tmp8329
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp8327
                                                       (let ((__tmp8328
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp8328
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp8329 __tmp8327))))
                                           (declare (not safe))
                                           (cons __tmp8330 __tmp8326))))
                                    (declare (not safe))
                                    (cons __tmp8331 __tmp8325)))
                                 (__tmp8312
                                  (let ((__tmp8313
                                         (let ((__tmp8323
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp8314
                                                (let ((__tmp8322
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp8315
                                                       (let ((__tmp8316
                                                              (let ((__tmp8321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp8317
                             (let ((__tmp8320 (gx#datum->syntax '#f 'hd))
                                   (__tmp8318
                                    (let ((__tmp8319
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp8319 '()))))
                               (declare (not safe))
                               (cons __tmp8320 __tmp8318))))
                        (declare (not safe))
                        (cons __tmp8321 __tmp8317))))
                 (declare (not safe))
                 (cons __tmp8316 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp8322 __tmp8315))))
                                           (declare (not safe))
                                           (cons __tmp8323 __tmp8314))))
                                    (declare (not safe))
                                    (cons __tmp8313 '()))))
                             (declare (not safe))
                             (cons __tmp8324 __tmp8312))))
                      (declare (not safe))
                      (cons __tmp8332 __tmp8311))))
               (declare (not safe))
               (cons __tmp8337 __tmp8310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8309 '()))))
                                         (declare (not safe))
                                         (cons __tmp8338 __tmp8308)))
                                      (__tmp8302
                                       (let ((__tmp8303
                                              (let ((__tmp8306
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp8304
                                                     (let ((__tmp8305
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp8305 '()))))
                                                (declare (not safe))
                                                (cons __tmp8306 __tmp8304))))
                                         (declare (not safe))
                                         (cons __tmp8303 '()))))
                                  (declare (not safe))
                                  (cons __tmp8307 __tmp8302))))
                           (declare (not safe))
                           (cons __tmp8343 __tmp8301))))
                    (declare (not safe))
                    (cons __tmp8344 __tmp8300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8299 '()))))
                                              (declare (not safe))
                                              (cons __tmp8345 __tmp8298))))
                                       (declare (not safe))
                                       (cons __tmp8356 __tmp8297))))
                                (declare (not safe))
                                (cons __tmp8357 __tmp8296))))
                         (declare (not safe))
                         (cons __tmp8295 '()))))
                  (declare (not safe))
                  (cons __tmp8358 __tmp8294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8363 __tmp8293)))
                                               _hd44294467_
                                               _hd44264457_)
                                              (_g44184436_ _g44194440_))))
                                      (_g44184436_ _g44194440_))))
                              (_g44184436_ _g44194440_))))
                      (_g44184436_ _g44194440_)))))
          (_g44174491_ _$stx4414_))))
    (define |[:0:]#DBG|
      (lambda (_$stx4495_)
        (let* ((_g44994510_
                (lambda (_g45004506_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g45004506_)))
               (_g44984539_
                (lambda (_g45004514_)
                  (if (gx#stx-pair? _g45004514_)
                      (let ((_e45044517_ (gx#syntax-e _g45004514_)))
                        (let ((_hd45034521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e45044517_)))
                              (_tl45024524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e45044517_))))
                          ((lambda (_L4527_)
                             (let ((__tmp8365 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp8364
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L4527_))))
                               (declare (not safe))
                               (cons __tmp8365 __tmp8364)))
                           _tl45024524_)))
                      (_g44994510_ _g45004514_)))))
          (_g44984539_ _$stx4495_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx4543_)
        (let* ((___stx76897690_ _$stx4543_)
               (_g45544768_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx76897690_))))
          (let ((___kont76927693_
                 (lambda (_L5621_ _L5623_ _L5624_ _L5625_ _L5626_)
                   (let ((__tmp8366
                          (let ((__tmp8367
                                 (let ((__tmp8368
                                        (let ((__tmp8372
                                               (let ((__tmp8373
                                                      (lambda (_g56565659_
                                                               _g56575662_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g56565659_
                                                                _g56575662_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp8373
                                                         '()
                                                         _L5624_)))
                                              (__tmp8369
                                               (let ((__tmp8370
                                                      (let ((__tmp8371
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L5621_ '()))))
                (declare (not safe))
                (cons _L5623_ __tmp8371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5625_ __tmp8370))))
                                          (declare (not safe))
                                          (cons __tmp8372 __tmp8369))))
                                   (declare (not safe))
                                   (cons '() __tmp8368))))
                            (declare (not safe))
                            (cons '2 __tmp8367))))
                     (declare (not safe))
                     (cons _L5626_ __tmp8366))))
                (___kont76967697_
                 (lambda (_L5474_ _L5476_ _L5477_ _L5478_)
                   (let ((__tmp8374
                          (let ((__tmp8375
                                 (let ((__tmp8376
                                        (let ((__tmp8380
                                               (let ((__tmp8381
                                                      (lambda (_g55015504_
                                                               _g55025507_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g55015504_
                                                                _g55025507_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp8381
                                                         '()
                                                         _L5476_)))
                                              (__tmp8377
                                               (let ((__tmp8378
                                                      (let ((__tmp8379
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L5474_ '()))))
                (declare (not safe))
                (cons _L5474_ __tmp8379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5477_ __tmp8378))))
                                          (declare (not safe))
                                          (cons __tmp8380 __tmp8377))))
                                   (declare (not safe))
                                   (cons '() __tmp8376))))
                            (declare (not safe))
                            (cons '2 __tmp8375))))
                     (declare (not safe))
                     (cons _L5478_ __tmp8374))))
                (___kont77007701_
                 (lambda (_L5377_)
                   (let ((__tmp8393 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp8382
                          (let ((__tmp8383
                                 (let ((__tmp8390
                                        (let ((__tmp8392
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp8391
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp8392 __tmp8391)))
                                       (__tmp8384
                                        (let ((__tmp8387
                                               (let ((__tmp8389
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp8388
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp8389 __tmp8388)))
                                              (__tmp8385
                                               (let ((__tmp8386
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp8386))))
                                          (declare (not safe))
                                          (cons __tmp8387 __tmp8385))))
                                   (declare (not safe))
                                   (cons __tmp8390 __tmp8384))))
                            (declare (not safe))
                            (cons _L5377_ __tmp8383))))
                     (declare (not safe))
                     (cons __tmp8393 __tmp8382))))
                (___kont77027703_
                 (lambda (_L5300_ _L5302_ _L5303_ _L5304_ _L5305_ _L5306_)
                   (let ((__tmp8394
                          (let ((__tmp8395
                                 (let ((__tmp8397
                                        (let ((__tmp8398
                                               (let ((__tmp8399
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5303_ '()))))
                                                 (declare (not safe))
                                                 (cons _L5304_ __tmp8399))))
                                          (declare (not safe))
                                          (cons __tmp8398 _L5305_)))
                                       (__tmp8396
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5302_ _L5300_))))
                                   (declare (not safe))
                                   (cons __tmp8397 __tmp8396))))
                            (declare (not safe))
                            (cons '2 __tmp8395))))
                     (declare (not safe))
                     (cons _L5306_ __tmp8394))))
                (___kont77047705_
                 (lambda (_L5181_ _L5183_ _L5184_ _L5185_ _L5186_)
                   (let ((__tmp8400
                          (let ((__tmp8401
                                 (let ((__tmp8403
                                        (let ((__tmp8404
                                               (let ((__tmp8405
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5184_ '()))))
                                                 (declare (not safe))
                                                 (cons _L5184_ __tmp8405))))
                                          (declare (not safe))
                                          (cons __tmp8404 _L5185_)))
                                       (__tmp8402
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5183_ _L5181_))))
                                   (declare (not safe))
                                   (cons __tmp8403 __tmp8402))))
                            (declare (not safe))
                            (cons '2 __tmp8401))))
                     (declare (not safe))
                     (cons _L5186_ __tmp8400))))
                (___kont77067707_
                 (lambda (_L5098_ _L5100_ _L5101_)
                   (let ((__tmp8406
                          (let ((__tmp8407
                                 (let ((__tmp8408
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5100_ _L5098_))))
                                   (declare (not safe))
                                   (cons '() __tmp8408))))
                            (declare (not safe))
                            (cons '3 __tmp8407))))
                     (declare (not safe))
                     (cons _L5101_ __tmp8406))))
                (___kont77087709_
                 (lambda (_L5019_ _L5021_ _L5022_ _L5023_ _L5024_)
                   (let ((__tmp8409
                          (let ((__tmp8410
                                 (let ((__tmp8412
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5022_ _L5023_)))
                                       (__tmp8411
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5021_ _L5019_))))
                                   (declare (not safe))
                                   (cons __tmp8412 __tmp8411))))
                            (declare (not safe))
                            (cons '3 __tmp8410))))
                     (declare (not safe))
                     (cons _L5024_ __tmp8409))))
                (___kont77107711_
                 (lambda (_L4903_ _L4905_ _L4906_ _L4907_ _L4908_ _L4909_)
                   (let ((__tmp8460 (gx#datum->syntax '#f 'let))
                         (__tmp8413
                          (let ((__tmp8448
                                 (let ((__tmp8457
                                        (let ((__tmp8459
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp8458
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L4906_ '()))))
                                          (declare (not safe))
                                          (cons __tmp8459 __tmp8458)))
                                       (__tmp8449
                                        (let ((__tmp8450
                                               (let ((__tmp8456
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp8451
                                                      (let ((__tmp8452
                                                             (let ((__tmp8455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp8453
                            (let ((__tmp8454
                                   (let ()
                                     (declare (not safe))
                                     (cons _L4903_ '()))))
                              (declare (not safe))
                              (cons '() __tmp8454))))
                       (declare (not safe))
                       (cons __tmp8455 __tmp8453))))
                (declare (not safe))
                (cons __tmp8452 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8456 __tmp8451))))
                                          (declare (not safe))
                                          (cons __tmp8450 '()))))
                                   (declare (not safe))
                                   (cons __tmp8457 __tmp8449)))
                                (__tmp8414
                                 (let ((__tmp8415
                                        (let ((__tmp8447
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp8416
                                               (let ((__tmp8446
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp8417
                                                      (let ((__tmp8421
                                                             (let ((__tmp8445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp8422
                            (let ((__tmp8444 (gx#datum->syntax '#f 'tagval))
                                  (__tmp8423
                                   (let ((__tmp8439
                                          (let ((__tmp8443
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp8440
                                                 (let ((__tmp8441
                                                        (let ((__tmp8442
                                                               (lambda (_g49434946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g49444949_)
                         (let ()
                           (declare (not safe))
                           (cons _g49434946_ _g49444949_)))))
                  (declare (not safe))
                  (foldr1 __tmp8442 '() _L4908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8441 '()))))
                                            (declare (not safe))
                                            (cons __tmp8443 __tmp8440)))
                                         (__tmp8424
                                          (let ((__tmp8431
                                                 (let ((__tmp8438
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp8432
                                                        (let ((__tmp8433
                                                               (lambda (_g49414952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g49424955_)
                         (let ((__tmp8434
                                (let ((__tmp8437
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp8435
                                       (let ((__tmp8436
                                              (let ()
                                                (declare (not safe))
                                                (cons _g49414952_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp8436))))
                                  (declare (not safe))
                                  (cons __tmp8437 __tmp8435))))
                           (declare (not safe))
                           (cons __tmp8434 _g49424955_)))))
                  (declare (not safe))
                  (foldr1 __tmp8433 '() _L4907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8438 __tmp8432)))
                                                (__tmp8425
                                                 (let ((__tmp8428
                                                        (let ((__tmp8430
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp8429
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L4905_ '()))))
                  (declare (not safe))
                  (cons __tmp8430 __tmp8429)))
               (__tmp8426
                (let ((__tmp8427 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp8427 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8428
                                                         __tmp8426))))
                                            (declare (not safe))
                                            (cons __tmp8431 __tmp8425))))
                                     (declare (not safe))
                                     (cons __tmp8439 __tmp8424))))
                              (declare (not safe))
                              (cons __tmp8444 __tmp8423))))
                       (declare (not safe))
                       (cons __tmp8445 __tmp8422)))
                    (__tmp8418
                     (let ((__tmp8419
                            (let ((__tmp8420 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp8420 '()))))
                       (declare (not safe))
                       (cons __tmp8419 '()))))
                (declare (not safe))
                (cons __tmp8421 __tmp8418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8446 __tmp8417))))
                                          (declare (not safe))
                                          (cons __tmp8447 __tmp8416))))
                                   (declare (not safe))
                                   (cons __tmp8415 '()))))
                            (declare (not safe))
                            (cons __tmp8448 __tmp8414))))
                     (declare (not safe))
                     (cons __tmp8460 __tmp8413)))))
            (let* ((___match80408041_
                    (lambda (_e47264775_
                             _hd47254779_
                             _tl47244782_
                             _e47294785_
                             _hd47284789_
                             _tl47274792_
                             _e47304795_
                             _e47334799_
                             _hd47324803_
                             _tl47314806_
                             ___splice77127713_
                             _target47344809_
                             _tl47364812_)
                      (letrec ((_loop47374815_
                                (lambda (_hd47354819_
                                         _exprs47414822_
                                         _names47424824_)
                                  (if (gx#stx-pair? _hd47354819_)
                                      (let ((_e47384827_
                                             (gx#syntax-e _hd47354819_)))
                                        (let ((_lp-tl47404834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e47384827_)))
                                              (_lp-hd47394831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e47384827_))))
                                          (if (gx#stx-pair? _lp-hd47394831_)
                                              (let ((_e47474837_
                                                     (gx#syntax-e
                                                      _lp-hd47394831_)))
                                                (let ((_tl47454844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e47474837_)))
                                                      (_hd47464841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e47474837_))))
                                                  (if (gx#stx-pair?
                                                       _tl47454844_)
                                                      (let ((_e47504847_
                                                             (gx#syntax-e
                                                              _tl47454844_)))
                                                        (let ((_tl47484854_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e47504847_)))
                      (_hd47494851_
                       (let () (declare (not safe)) (##car _e47504847_))))
                  (if (gx#stx-null? _tl47484854_)
                      (_loop47374815_
                       _lp-tl47404834_
                       (let ()
                         (declare (not safe))
                         (cons _hd47494851_ _exprs47414822_))
                       (let ()
                         (declare (not safe))
                         (cons _hd47464841_ _names47424824_)))
                      (let () (declare (not safe)) (_g45544768_)))))
              (let () (declare (not safe)) (_g45544768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g45544768_)))))
                                      (let ((_names47444860_
                                             (reverse _names47424824_))
                                            (_exprs47434857_
                                             (reverse _exprs47414822_)))
                                        (if (gx#stx-pair? _tl47314806_)
                                            (let ((_e47534863_
                                                   (gx#syntax-e _tl47314806_)))
                                              (let ((_tl47514870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e47534863_)))
                                                    (_hd47524867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e47534863_))))
                                                (if (gx#stx-null? _hd47524867_)
                                                    (if (gx#stx-pair?
                                                         _tl47514870_)
                                                        (let ((_e47564873_
                                                               (gx#syntax-e
                                                                _tl47514870_)))
                                                          (let ((_tl47544880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e47564873_)))
                        (_hd47554877_
                         (let () (declare (not safe)) (##car _e47564873_))))
                    (if (gx#stx-pair? _tl47544880_)
                        (let ((_e47594883_ (gx#syntax-e _tl47544880_)))
                          (let ((_tl47574890_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e47594883_)))
                                (_hd47584887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e47594883_))))
                            (if (gx#stx-pair? _tl47574890_)
                                (let ((_e47624893_ (gx#syntax-e _tl47574890_)))
                                  (let ((_tl47604900_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e47624893_)))
                                        (_hd47614897_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e47624893_))))
                                    (if (gx#stx-null? _tl47604900_)
                                        (___kont77107711_
                                         _hd47614897_
                                         _hd47584887_
                                         _hd47554877_
                                         _exprs47434857_
                                         _names47444860_
                                         _hd47254779_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_)))))
                                (let () (declare (not safe)) (_g45544768_)))))
                        (let () (declare (not safe)) (_g45544768_)))))
                (let () (declare (not safe)) (_g45544768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_))))))))
                        (_loop47374815_ _target47344809_ '() '()))))
                   (___match78187819_
                    (lambda (_e45985400_
                             _hd45975404_
                             _tl45965407_
                             _e46015410_
                             _hd46005414_
                             _tl45995417_
                             _e46025420_
                             _e46055424_
                             _hd46045428_
                             _tl46035431_
                             ___splice76987699_
                             _target46065434_
                             _tl46085437_
                             _e46175440_
                             _hd46165444_
                             _tl46155447_)
                      (letrec ((_loop46095450_
                                (lambda (_hd46075454_ _exprs46135457_)
                                  (if (gx#stx-pair? _hd46075454_)
                                      (let ((_e46105460_
                                             (gx#syntax-e _hd46075454_)))
                                        (let ((_lp-tl46125467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e46105460_)))
                                              (_lp-hd46115464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e46105460_))))
                                          (_loop46095450_
                                           _lp-tl46125467_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd46115464_
                                                   _exprs46135457_)))))
                                      (let ((_exprs46145470_
                                             (reverse _exprs46135457_)))
                                        (___kont76967697_
                                         _hd46165444_
                                         _exprs46145470_
                                         _hd46045428_
                                         _hd45975404_))))))
                        (_loop46095450_ _target46065434_ '()))))
                   (___match77787779_
                    (lambda (_e45635517_
                             _hd45625521_
                             _tl45615524_
                             _e45665527_
                             _hd45655531_
                             _tl45645534_
                             _e45675537_
                             _e45705541_
                             _hd45695545_
                             _tl45685548_
                             ___splice76947695_
                             _target45715551_
                             _tl45735554_
                             _e45825557_
                             _hd45815561_
                             _tl45805564_
                             _e45855567_
                             _hd45845571_
                             _tl45835574_
                             _e45885577_
                             _hd45875581_
                             _tl45865584_
                             _e45915587_
                             _hd45905591_
                             _tl45895594_)
                      (letrec ((_loop45745597_
                                (lambda (_hd45725601_ _exprs45785604_)
                                  (if (gx#stx-pair? _hd45725601_)
                                      (let ((_e45755607_
                                             (gx#syntax-e _hd45725601_)))
                                        (let ((_lp-tl45775614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45755607_)))
                                              (_lp-hd45765611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45755607_))))
                                          (_loop45745597_
                                           _lp-tl45775614_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd45765611_
                                                   _exprs45785604_)))))
                                      (let ((_exprs45795617_
                                             (reverse _exprs45785604_)))
                                        (___kont76927693_
                                         _hd45905591_
                                         _hd45875581_
                                         _exprs45795617_
                                         _hd45695545_
                                         _hd45625521_))))))
                        (_loop45745597_ _target45715551_ '())))))
              (if (gx#stx-pair? ___stx76897690_)
                  (let ((_e45635517_ (gx#syntax-e ___stx76897690_)))
                    (let ((_tl45615524_
                           (let () (declare (not safe)) (##cdr _e45635517_)))
                          (_hd45625521_
                           (let () (declare (not safe)) (##car _e45635517_))))
                      (if (gx#stx-pair? _tl45615524_)
                          (let ((_e45665527_ (gx#syntax-e _tl45615524_)))
                            (let ((_tl45645534_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e45665527_)))
                                  (_hd45655531_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e45665527_))))
                              (if (gx#stx-datum? _hd45655531_)
                                  (let ((_e45675537_ (gx#stx-e _hd45655531_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e45675537_ '1))
                                        (if (gx#stx-pair? _tl45645534_)
                                            (let ((_e45705541_
                                                   (gx#syntax-e _tl45645534_)))
                                              (let ((_tl45685548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e45705541_)))
                                                    (_hd45695545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e45705541_))))
                                                (if (gx#stx-pair/null?
                                                     _tl45685548_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl45685548_)
                                                              '2)
                                                        (let ((___splice76947695_
                                                               (gx#syntax-split-splice
                                                                _tl45685548_
                                                                '2)))
                                                          (let ((_tl45735554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice76947695_ '1)))
                        (_target45715551_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice76947695_ '0))))
                    (if (gx#stx-pair? _tl45735554_)
                        (let ((_e45825557_ (gx#syntax-e _tl45735554_)))
                          (let ((_tl45805564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e45825557_)))
                                (_hd45815561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e45825557_))))
                            (if (gx#stx-pair? _hd45815561_)
                                (let ((_e45855567_ (gx#syntax-e _hd45815561_)))
                                  (let ((_tl45835574_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e45855567_)))
                                        (_hd45845571_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e45855567_))))
                                    (if (gx#identifier? _hd45845571_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g8462_|
                                             _hd45845571_)
                                            (if (gx#stx-pair? _tl45835574_)
                                                (let ((_e45885577_
                                                       (gx#syntax-e
                                                        _tl45835574_)))
                                                  (let ((_tl45865584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e45885577_)))
                                                        (_hd45875581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e45885577_))))
                                                    (if (gx#stx-null?
                                                         _tl45865584_)
                                                        (if (gx#stx-pair?
                                                             _tl45805564_)
                                                            (let ((_e45915587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl45805564_)))
                      (let ((_tl45895594_
                             (let () (declare (not safe)) (##cdr _e45915587_)))
                            (_hd45905591_
                             (let ()
                               (declare (not safe))
                               (##car _e45915587_))))
                        (if (gx#stx-null? _tl45895594_)
                            (___match77787779_
                             _e45635517_
                             _hd45625521_
                             _tl45615524_
                             _e45665527_
                             _hd45655531_
                             _tl45645534_
                             _e45675537_
                             _e45705541_
                             _hd45695545_
                             _tl45685548_
                             ___splice76947695_
                             _target45715551_
                             _tl45735554_
                             _e45825557_
                             _hd45815561_
                             _tl45805564_
                             _e45855567_
                             _hd45845571_
                             _tl45835574_
                             _e45885577_
                             _hd45875581_
                             _tl45865584_
                             _e45915587_
                             _hd45905591_
                             _tl45895594_)
                            (if (fx>= (gx#stx-length _tl45685548_) '1)
                                (let ((___splice76987699_
                                       (gx#syntax-split-splice
                                        _tl45685548_
                                        '1)))
                                  (let ((_tl46085437_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice76987699_
                                            '1)))
                                        (_target46065434_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice76987699_
                                            '0))))
                                    (if (gx#stx-pair? _tl46085437_)
                                        (let ((_e46175440_
                                               (gx#syntax-e _tl46085437_)))
                                          (let ((_tl46155447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e46175440_)))
                                                (_hd46165444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e46175440_))))
                                            (if (gx#stx-null? _tl46155447_)
                                                (___match78187819_
                                                 _e45635517_
                                                 _hd45625521_
                                                 _tl45615524_
                                                 _e45665527_
                                                 _hd45655531_
                                                 _tl45645534_
                                                 _e45675537_
                                                 _e45705541_
                                                 _hd45695545_
                                                 _tl45685548_
                                                 ___splice76987699_
                                                 _target46065434_
                                                 _tl46085437_
                                                 _e46175440_
                                                 _hd46165444_
                                                 _tl46155447_)
                                                (if (gx#stx-null? _tl45685548_)
                                                    (___kont77007701_
                                                     _hd45695545_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_))))))
                                        (if (gx#stx-null? _tl45685548_)
                                            (___kont77007701_ _hd45695545_)
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_))))))
                                (if (gx#stx-null? _tl45685548_)
                                    (___kont77007701_ _hd45695545_)
                                    (let ()
                                      (declare (not safe))
                                      (_g45544768_)))))))
                    (if (fx>= (gx#stx-length _tl45685548_) '1)
                        (let ((___splice76987699_
                               (gx#syntax-split-splice _tl45685548_ '1)))
                          (let ((_tl46085437_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice76987699_ '1)))
                                (_target46065434_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice76987699_ '0))))
                            (if (gx#stx-pair? _tl46085437_)
                                (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                                  (let ((_tl46155447_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e46175440_)))
                                        (_hd46165444_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e46175440_))))
                                    (if (gx#stx-null? _tl46155447_)
                                        (___match78187819_
                                         _e45635517_
                                         _hd45625521_
                                         _tl45615524_
                                         _e45665527_
                                         _hd45655531_
                                         _tl45645534_
                                         _e45675537_
                                         _e45705541_
                                         _hd45695545_
                                         _tl45685548_
                                         ___splice76987699_
                                         _target46065434_
                                         _tl46085437_
                                         _e46175440_
                                         _hd46165444_
                                         _tl46155447_)
                                        (if (gx#stx-null? _tl45685548_)
                                            (___kont77007701_ _hd45695545_)
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_))))))
                                (if (gx#stx-null? _tl45685548_)
                                    (___kont77007701_ _hd45695545_)
                                    (let ()
                                      (declare (not safe))
                                      (_g45544768_))))))
                        (if (gx#stx-null? _tl45685548_)
                            (___kont77007701_ _hd45695545_)
                            (let () (declare (not safe)) (_g45544768_)))))
                (if (fx>= (gx#stx-length _tl45685548_) '1)
                    (let ((___splice76987699_
                           (gx#syntax-split-splice _tl45685548_ '1)))
                      (let ((_tl46085437_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice76987699_ '1)))
                            (_target46065434_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice76987699_ '0))))
                        (if (gx#stx-pair? _tl46085437_)
                            (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                              (let ((_tl46155447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46175440_)))
                                    (_hd46165444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46175440_))))
                                (if (gx#stx-null? _tl46155447_)
                                    (___match78187819_
                                     _e45635517_
                                     _hd45625521_
                                     _tl45615524_
                                     _e45665527_
                                     _hd45655531_
                                     _tl45645534_
                                     _e45675537_
                                     _e45705541_
                                     _hd45695545_
                                     _tl45685548_
                                     ___splice76987699_
                                     _target46065434_
                                     _tl46085437_
                                     _e46175440_
                                     _hd46165444_
                                     _tl46155447_)
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont77007701_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_))))))
                            (if (gx#stx-null? _tl45685548_)
                                (___kont77007701_ _hd45695545_)
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-null? _tl45685548_)
                        (___kont77007701_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl45685548_)
                                                          '1)
                                                    (let ((___splice76987699_
                                                           (gx#syntax-split-splice
                                                            _tl45685548_
                                                            '1)))
                                                      (let ((_tl46085437_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice76987699_ '1)))
                    (_target46065434_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice76987699_ '0))))
                (if (gx#stx-pair? _tl46085437_)
                    (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                      (let ((_tl46155447_
                             (let () (declare (not safe)) (##cdr _e46175440_)))
                            (_hd46165444_
                             (let ()
                               (declare (not safe))
                               (##car _e46175440_))))
                        (if (gx#stx-null? _tl46155447_)
                            (___match78187819_
                             _e45635517_
                             _hd45625521_
                             _tl45615524_
                             _e45665527_
                             _hd45655531_
                             _tl45645534_
                             _e45675537_
                             _e45705541_
                             _hd45695545_
                             _tl45685548_
                             ___splice76987699_
                             _target46065434_
                             _tl46085437_
                             _e46175440_
                             _hd46165444_
                             _tl46155447_)
                            (if (gx#stx-null? _tl45685548_)
                                (___kont77007701_ _hd45695545_)
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-null? _tl45685548_)
                        (___kont77007701_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont77007701_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl45685548_)
                                                      '1)
                                                (let ((___splice76987699_
                                                       (gx#syntax-split-splice
                                                        _tl45685548_
                                                        '1)))
                                                  (let ((_tl46085437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice76987699_
                                                            '1)))
                                                        (_target46065434_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice76987699_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl46085437_)
                                                        (let ((_e46175440_
                                                               (gx#syntax-e
                                                                _tl46085437_)))
                                                          (let ((_tl46155447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e46175440_)))
                        (_hd46165444_
                         (let () (declare (not safe)) (##car _e46175440_))))
                    (if (gx#stx-null? _tl46155447_)
                        (___match78187819_
                         _e45635517_
                         _hd45625521_
                         _tl45615524_
                         _e45665527_
                         _hd45655531_
                         _tl45645534_
                         _e45675537_
                         _e45705541_
                         _hd45695545_
                         _tl45685548_
                         ___splice76987699_
                         _target46065434_
                         _tl46085437_
                         _e46175440_
                         _hd46165444_
                         _tl46155447_)
                        (if (gx#stx-null? _tl45685548_)
                            (___kont77007701_ _hd45695545_)
                            (let () (declare (not safe)) (_g45544768_))))))
                (if (gx#stx-null? _tl45685548_)
                    (___kont77007701_ _hd45695545_)
                    (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null? _tl45685548_)
                                                    (___kont77007701_
                                                     _hd45695545_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_)))))
                                        (if (fx>= (gx#stx-length _tl45685548_)
                                                  '1)
                                            (let ((___splice76987699_
                                                   (gx#syntax-split-splice
                                                    _tl45685548_
                                                    '1)))
                                              (let ((_tl46085437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice76987699_
                                                        '1)))
                                                    (_target46065434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice76987699_
                                                        '0))))
                                                (if (gx#stx-pair? _tl46085437_)
                                                    (let ((_e46175440_
                                                           (gx#syntax-e
                                                            _tl46085437_)))
                                                      (let ((_tl46155447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e46175440_)))
                    (_hd46165444_
                     (let () (declare (not safe)) (##car _e46175440_))))
                (if (gx#stx-null? _tl46155447_)
                    (___match78187819_
                     _e45635517_
                     _hd45625521_
                     _tl45615524_
                     _e45665527_
                     _hd45655531_
                     _tl45645534_
                     _e45675537_
                     _e45705541_
                     _hd45695545_
                     _tl45685548_
                     ___splice76987699_
                     _target46065434_
                     _tl46085437_
                     _e46175440_
                     _hd46165444_
                     _tl46155447_)
                    (if (gx#stx-null? _tl45685548_)
                        (___kont77007701_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont77007701_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_))))))
                                            (if (gx#stx-null? _tl45685548_)
                                                (___kont77007701_ _hd45695545_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_)))))))
                                (if (fx>= (gx#stx-length _tl45685548_) '1)
                                    (let ((___splice76987699_
                                           (gx#syntax-split-splice
                                            _tl45685548_
                                            '1)))
                                      (let ((_tl46085437_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice76987699_
                                                '1)))
                                            (_target46065434_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice76987699_
                                                '0))))
                                        (if (gx#stx-pair? _tl46085437_)
                                            (let ((_e46175440_
                                                   (gx#syntax-e _tl46085437_)))
                                              (let ((_tl46155447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e46175440_)))
                                                    (_hd46165444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e46175440_))))
                                                (if (gx#stx-null? _tl46155447_)
                                                    (___match78187819_
                                                     _e45635517_
                                                     _hd45625521_
                                                     _tl45615524_
                                                     _e45665527_
                                                     _hd45655531_
                                                     _tl45645534_
                                                     _e45675537_
                                                     _e45705541_
                                                     _hd45695545_
                                                     _tl45685548_
                                                     ___splice76987699_
                                                     _target46065434_
                                                     _tl46085437_
                                                     _e46175440_
                                                     _hd46165444_
                                                     _tl46155447_)
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont77007701_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_))))))
                                            (if (gx#stx-null? _tl45685548_)
                                                (___kont77007701_ _hd45695545_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_))))))
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont77007701_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_)))))))
                        (if (fx>= (gx#stx-length _tl45685548_) '1)
                            (let ((___splice76987699_
                                   (gx#syntax-split-splice _tl45685548_ '1)))
                              (let ((_tl46085437_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice76987699_ '1)))
                                    (_target46065434_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice76987699_ '0))))
                                (if (gx#stx-pair? _tl46085437_)
                                    (let ((_e46175440_
                                           (gx#syntax-e _tl46085437_)))
                                      (let ((_tl46155447_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e46175440_)))
                                            (_hd46165444_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e46175440_))))
                                        (if (gx#stx-null? _tl46155447_)
                                            (___match78187819_
                                             _e45635517_
                                             _hd45625521_
                                             _tl45615524_
                                             _e45665527_
                                             _hd45655531_
                                             _tl45645534_
                                             _e45675537_
                                             _e45705541_
                                             _hd45695545_
                                             _tl45685548_
                                             ___splice76987699_
                                             _target46065434_
                                             _tl46085437_
                                             _e46175440_
                                             _hd46165444_
                                             _tl46155447_)
                                            (if (gx#stx-null? _tl45685548_)
                                                (___kont77007701_ _hd45695545_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_))))))
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont77007701_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_))))))
                            (if (gx#stx-null? _tl45685548_)
                                (___kont77007701_ _hd45695545_)
                                (let ()
                                  (declare (not safe))
                                  (_g45544768_)))))))
                (if (fx>= (gx#stx-length _tl45685548_) '1)
                    (let ((___splice76987699_
                           (gx#syntax-split-splice _tl45685548_ '1)))
                      (let ((_tl46085437_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice76987699_ '1)))
                            (_target46065434_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice76987699_ '0))))
                        (if (gx#stx-pair? _tl46085437_)
                            (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                              (let ((_tl46155447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46175440_)))
                                    (_hd46165444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46175440_))))
                                (if (gx#stx-null? _tl46155447_)
                                    (___match78187819_
                                     _e45635517_
                                     _hd45625521_
                                     _tl45615524_
                                     _e45665527_
                                     _hd45655531_
                                     _tl45645534_
                                     _e45675537_
                                     _e45705541_
                                     _hd45695545_
                                     _tl45685548_
                                     ___splice76987699_
                                     _target46065434_
                                     _tl46085437_
                                     _e46175440_
                                     _hd46165444_
                                     _tl46155447_)
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont77007701_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_))))))
                            (if (gx#stx-null? _tl45685548_)
                                (___kont77007701_ _hd45695545_)
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-null? _tl45685548_)
                        (___kont77007701_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont77007701_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e45675537_ '2))
                                            (if (gx#stx-pair? _tl45645534_)
                                                (let ((_e46445240_
                                                       (gx#syntax-e
                                                        _tl45645534_)))
                                                  (let ((_tl46425247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e46445240_)))
                                                        (_hd46435244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e46445240_))))
                                                    (if (gx#stx-pair?
                                                         _tl46425247_)
                                                        (let ((_e46475250_
                                                               (gx#syntax-e
                                                                _tl46425247_)))
                                                          (let ((_tl46455257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e46475250_)))
                        (_hd46465254_
                         (let () (declare (not safe)) (##car _e46475250_))))
                    (if (gx#stx-pair? _hd46465254_)
                        (let ((_e46505260_ (gx#syntax-e _hd46465254_)))
                          (let ((_tl46485267_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e46505260_)))
                                (_hd46495264_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e46505260_))))
                            (if (gx#stx-pair? _hd46495264_)
                                (let ((_e46535270_ (gx#syntax-e _hd46495264_)))
                                  (let ((_tl46515277_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e46535270_)))
                                        (_hd46525274_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e46535270_))))
                                    (if (gx#identifier? _hd46525274_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g8461_|
                                             _hd46525274_)
                                            (if (gx#stx-pair? _tl46515277_)
                                                (let ((_e46565280_
                                                       (gx#syntax-e
                                                        _tl46515277_)))
                                                  (let ((_tl46545287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e46565280_)))
                                                        (_hd46555284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e46565280_))))
                                                    (if (gx#stx-null?
                                                         _tl46545287_)
                                                        (if (gx#stx-pair?
                                                             _tl46485267_)
                                                            (let ((_e46595290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl46485267_)))
                      (let ((_tl46575297_
                             (let () (declare (not safe)) (##cdr _e46595290_)))
                            (_hd46585294_
                             (let ()
                               (declare (not safe))
                               (##car _e46595290_))))
                        (___kont77027703_
                         _tl46455257_
                         _tl46575297_
                         _hd46585294_
                         _hd46555284_
                         _hd46435244_
                         _hd45625521_)))
                    (___kont77047705_
                     _tl46455257_
                     _tl46485267_
                     _hd46495264_
                     _hd46435244_
                     _hd45625521_))
                (___kont77047705_
                 _tl46455257_
                 _tl46485267_
                 _hd46495264_
                 _hd46435244_
                 _hd45625521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont77047705_
                                                 _tl46455257_
                                                 _tl46485267_
                                                 _hd46495264_
                                                 _hd46435244_
                                                 _hd45625521_))
                                            (___kont77047705_
                                             _tl46455257_
                                             _tl46485267_
                                             _hd46495264_
                                             _hd46435244_
                                             _hd45625521_))
                                        (___kont77047705_
                                         _tl46455257_
                                         _tl46485267_
                                         _hd46495264_
                                         _hd46435244_
                                         _hd45625521_))))
                                (___kont77047705_
                                 _tl46455257_
                                 _tl46485267_
                                 _hd46495264_
                                 _hd46435244_
                                 _hd45625521_))))
                        (if (gx#stx-null? _hd46465254_)
                            (___kont77067707_
                             _tl46455257_
                             _hd46435244_
                             _hd45625521_)
                            (let () (declare (not safe)) (_g45544768_))))))
                (let () (declare (not safe)) (_g45544768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e45675537_ '3))
                                                (if (gx#stx-pair? _tl45645534_)
                                                    (let ((_e47114989_
                                                           (gx#syntax-e
                                                            _tl45645534_)))
                                                      (let ((_tl47094996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e47114989_)))
                    (_hd47104993_
                     (let () (declare (not safe)) (##car _e47114989_))))
                (if (gx#stx-pair? _tl47094996_)
                    (let ((_e47144999_ (gx#syntax-e _tl47094996_)))
                      (let ((_tl47125006_
                             (let () (declare (not safe)) (##cdr _e47144999_)))
                            (_hd47135003_
                             (let ()
                               (declare (not safe))
                               (##car _e47144999_))))
                        (if (gx#stx-pair? _hd47135003_)
                            (let ((_e47175009_ (gx#syntax-e _hd47135003_)))
                              (let ((_tl47155016_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e47175009_)))
                                    (_hd47165013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e47175009_))))
                                (___kont77087709_
                                 _tl47125006_
                                 _tl47155016_
                                 _hd47165013_
                                 _hd47104993_
                                 _hd45625521_)))
                            (if (gx#stx-pair/null? _hd47104993_)
                                (let ((___splice77127713_
                                       (gx#syntax-split-splice
                                        _hd47104993_
                                        '0)))
                                  (let ((_tl47364812_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice77127713_
                                            '1)))
                                        (_target47344809_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice77127713_
                                            '0))))
                                    (if (gx#stx-null? _tl47364812_)
                                        (___match80408041_
                                         _e45635517_
                                         _hd45625521_
                                         _tl45615524_
                                         _e45665527_
                                         _hd45655531_
                                         _tl45645534_
                                         _e45675537_
                                         _e47114989_
                                         _hd47104993_
                                         _tl47094996_
                                         ___splice77127713_
                                         _target47344809_
                                         _tl47364812_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_)))))
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-pair/null? _hd47104993_)
                        (let ((___splice77127713_
                               (gx#syntax-split-splice _hd47104993_ '0)))
                          (let ((_tl47364812_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice77127713_ '1)))
                                (_target47344809_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice77127713_ '0))))
                            (if (gx#stx-null? _tl47364812_)
                                (___match80408041_
                                 _e45635517_
                                 _hd45625521_
                                 _tl45615524_
                                 _e45665527_
                                 _hd45655531_
                                 _tl45645534_
                                 _e45675537_
                                 _e47114989_
                                 _hd47104993_
                                 _tl47094996_
                                 ___splice77127713_
                                 _target47344809_
                                 _tl47364812_)
                                (let () (declare (not safe)) (_g45544768_)))))
                        (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g45544768_)))))
                          (let () (declare (not safe)) (_g45544768_)))))
                  (let () (declare (not safe)) (_g45544768_))))))))))
