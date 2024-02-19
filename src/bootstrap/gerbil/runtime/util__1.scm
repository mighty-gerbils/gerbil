(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g62517_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g62518_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx54327_)
        (let* ((_g5433154349_
                (lambda (_g5433254345_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5433254345_)))
               (_g5433054405_
                (lambda (_g5433254353_)
                  (if (gx#stx-pair? _g5433254353_)
                      (let ((_e5433754356_ (gx#syntax-e _g5433254353_)))
                        (let ((_hd5433654360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5433754356_)))
                              (_tl5433554363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5433754356_))))
                          (if (gx#stx-pair? _tl5433554363_)
                              (let ((_e5434054366_
                                     (gx#syntax-e _tl5433554363_)))
                                (let ((_hd5433954370_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5434054366_)))
                                      (_tl5433854373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5434054366_))))
                                  (if (gx#stx-pair? _tl5433854373_)
                                      (let ((_e5434354376_
                                             (gx#syntax-e _tl5433854373_)))
                                        (let ((_hd5434254380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5434354376_)))
                                              (_tl5434154383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5434354376_))))
                                          (if (gx#stx-null? _tl5434154383_)
                                              ((lambda (_L54386_ _L54388_)
                                                 (let ((__tmp62278
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62230
                                                        (let ((__tmp62269
                                                               (let ((__tmp62270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62277 (gx#datum->syntax '#f 'key))
                                    (__tmp62271
                                     (let ((__tmp62276
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp62272
                                            (let ((__tmp62273
                                                   (let ((__tmp62275
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp62274
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp62275
                                                           __tmp62274))))
                                              (declare (not safe))
                                              (cons __tmp62273 '()))))
                                       (declare (not safe))
                                       (cons __tmp62276 __tmp62272))))
                                (declare (not safe))
                                (cons __tmp62277 __tmp62271))))
                         (declare (not safe))
                         (cons _L54388_ __tmp62270)))
                      (__tmp62231
                       (let ((__tmp62232
                              (let ((__tmp62268 (gx#datum->syntax '#f 'cond))
                                    (__tmp62233
                                     (let ((__tmp62250
                                            (let ((__tmp62255
                                                   (let ((__tmp62267
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp62256
                                                          (let ((__tmp62263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp62266 (gx#datum->syntax '#f 'pair?))
                               (__tmp62264
                                (let ((__tmp62265 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp62265 '()))))
                           (declare (not safe))
                           (cons __tmp62266 __tmp62264)))
                        (__tmp62257
                         (let ((__tmp62258
                                (let ((__tmp62259
                                       (let ((__tmp62262
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp62260
                                              (let ((__tmp62261
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp62261 '()))))
                                         (declare (not safe))
                                         (cons __tmp62262 __tmp62260))))
                                  (declare (not safe))
                                  (cons _L54386_ __tmp62259))))
                           (declare (not safe))
                           (cons __tmp62258 '()))))
                    (declare (not safe))
                    (cons __tmp62263 __tmp62257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62267
                                                           __tmp62256)))
                                                  (__tmp62251
                                                   (let ((__tmp62254
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp62252
                                                          (let ((__tmp62253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp62253 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62254
                                                           __tmp62252))))
                                              (declare (not safe))
                                              (cons __tmp62255 __tmp62251)))
                                           (__tmp62234
                                            (let ((__tmp62240
                                                   (let ((__tmp62246
                                                          (let ((__tmp62249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp62247
                         (let ((__tmp62248 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp62248 '()))))
                    (declare (not safe))
                    (cons __tmp62249 __tmp62247)))
                 (__tmp62241
                  (let ((__tmp62242
                         (let ((__tmp62245 (gx#datum->syntax '#f 'default))
                               (__tmp62243
                                (let ((__tmp62244 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp62244 '()))))
                           (declare (not safe))
                           (cons __tmp62245 __tmp62243))))
                    (declare (not safe))
                    (cons __tmp62242 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62246
                                                           __tmp62241)))
                                                  (__tmp62235
                                                   (let ((__tmp62236
                                                          (let ((__tmp62239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp62237
                         (let ((__tmp62238 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp62238 '()))))
                    (declare (not safe))
                    (cons __tmp62239 __tmp62237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62236 '()))))
                                              (declare (not safe))
                                              (cons __tmp62240 __tmp62235))))
                                       (declare (not safe))
                                       (cons __tmp62250 __tmp62234))))
                                (declare (not safe))
                                (cons __tmp62268 __tmp62233))))
                         (declare (not safe))
                         (cons __tmp62232 '()))))
                  (declare (not safe))
                  (cons __tmp62269 __tmp62231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62278
                                                         __tmp62230)))
                                               _hd5434254380_
                                               _hd5433954370_)
                                              (_g5433154349_ _g5433254353_))))
                                      (_g5433154349_ _g5433254353_))))
                              (_g5433154349_ _g5433254353_))))
                      (_g5433154349_ _g5433254353_)))))
          (_g5433054405_ _$stx54327_))))
    (define |[:0:]#defpget|
      (lambda (_$stx54409_)
        (let* ((_g5441354431_
                (lambda (_g5441454427_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5441454427_)))
               (_g5441254486_
                (lambda (_g5441454435_)
                  (if (gx#stx-pair? _g5441454435_)
                      (let ((_e5441954438_ (gx#syntax-e _g5441454435_)))
                        (let ((_hd5441854442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5441954438_)))
                              (_tl5441754445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5441954438_))))
                          (if (gx#stx-pair? _tl5441754445_)
                              (let ((_e5442254448_
                                     (gx#syntax-e _tl5441754445_)))
                                (let ((_hd5442154452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5442254448_)))
                                      (_tl5442054455_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5442254448_))))
                                  (if (gx#stx-pair? _tl5442054455_)
                                      (let ((_e5442554458_
                                             (gx#syntax-e _tl5442054455_)))
                                        (let ((_hd5442454462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5442554458_)))
                                              (_tl5442354465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5442554458_))))
                                          (if (gx#stx-null? _tl5442354465_)
                                              ((lambda (_L54468_ _L54470_)
                                                 (let ((__tmp62348
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62279
                                                        (let ((__tmp62339
                                                               (let ((__tmp62340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62347 (gx#datum->syntax '#f 'key))
                                    (__tmp62341
                                     (let ((__tmp62346
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp62342
                                            (let ((__tmp62343
                                                   (let ((__tmp62345
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp62344
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp62345
                                                           __tmp62344))))
                                              (declare (not safe))
                                              (cons __tmp62343 '()))))
                                       (declare (not safe))
                                       (cons __tmp62346 __tmp62342))))
                                (declare (not safe))
                                (cons __tmp62347 __tmp62341))))
                         (declare (not safe))
                         (cons _L54470_ __tmp62340)))
                      (__tmp62280
                       (let ((__tmp62281
                              (let ((__tmp62338 (gx#datum->syntax '#f 'let))
                                    (__tmp62282
                                     (let ((__tmp62337
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp62283
                                            (let ((__tmp62332
                                                   (let ((__tmp62333
                                                          (let ((__tmp62336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp62334
                         (let ((__tmp62335 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp62335 '()))))
                    (declare (not safe))
                    (cons __tmp62336 __tmp62334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62333 '())))
                                                  (__tmp62284
                                                   (let ((__tmp62285
                                                          (let ((__tmp62331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp62286
                         (let ((__tmp62330 (gx#datum->syntax '#f 'rest))
                               (__tmp62287
                                (let ((__tmp62306
                                       (let ((__tmp62323
                                              (let ((__tmp62329
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp62324
                                                     (let ((__tmp62328
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp62325
                                                            (let ((__tmp62327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp62326 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp62327 __tmp62326))))
               (declare (not safe))
               (cons __tmp62328 __tmp62325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62329 __tmp62324)))
                                             (__tmp62307
                                              (let ((__tmp62308
                                                     (let ((__tmp62322
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp62309
                                                            (let ((__tmp62317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp62318
                                  (let ((__tmp62321 (gx#datum->syntax '#f 'k))
                                        (__tmp62319
                                         (let ((__tmp62320
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp62320 '()))))
                                    (declare (not safe))
                                    (cons __tmp62321 __tmp62319))))
                             (declare (not safe))
                             (cons _L54468_ __tmp62318)))
                          (__tmp62310
                           (let ((__tmp62316 (gx#datum->syntax '#f 'v))
                                 (__tmp62311
                                  (let ((__tmp62312
                                         (let ((__tmp62315
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp62313
                                                (let ((__tmp62314
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp62314 '()))))
                                           (declare (not safe))
                                           (cons __tmp62315 __tmp62313))))
                                    (declare (not safe))
                                    (cons __tmp62312 '()))))
                             (declare (not safe))
                             (cons __tmp62316 __tmp62311))))
                      (declare (not safe))
                      (cons __tmp62317 __tmp62310))))
               (declare (not safe))
               (cons __tmp62322 __tmp62309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62308 '()))))
                                         (declare (not safe))
                                         (cons __tmp62323 __tmp62307)))
                                      (__tmp62288
                                       (let ((__tmp62289
                                              (let ((__tmp62305
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp62290
                                                     (let ((__tmp62291
                                                            (let ((__tmp62304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp62292
                           (let ((__tmp62300
                                  (let ((__tmp62303
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp62301
                                         (let ((__tmp62302
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp62302 '()))))
                                    (declare (not safe))
                                    (cons __tmp62303 __tmp62301)))
                                 (__tmp62293
                                  (let ((__tmp62296
                                         (let ((__tmp62299
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp62297
                                                (let ((__tmp62298
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp62298 '()))))
                                           (declare (not safe))
                                           (cons __tmp62299 __tmp62297)))
                                        (__tmp62294
                                         (let ((__tmp62295
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp62295 '()))))
                                    (declare (not safe))
                                    (cons __tmp62296 __tmp62294))))
                             (declare (not safe))
                             (cons __tmp62300 __tmp62293))))
                      (declare (not safe))
                      (cons __tmp62304 __tmp62292))))
               (declare (not safe))
               (cons __tmp62291 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62305 __tmp62290))))
                                         (declare (not safe))
                                         (cons __tmp62289 '()))))
                                  (declare (not safe))
                                  (cons __tmp62306 __tmp62288))))
                           (declare (not safe))
                           (cons __tmp62330 __tmp62287))))
                    (declare (not safe))
                    (cons __tmp62331 __tmp62286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62285 '()))))
                                              (declare (not safe))
                                              (cons __tmp62332 __tmp62284))))
                                       (declare (not safe))
                                       (cons __tmp62337 __tmp62283))))
                                (declare (not safe))
                                (cons __tmp62338 __tmp62282))))
                         (declare (not safe))
                         (cons __tmp62281 '()))))
                  (declare (not safe))
                  (cons __tmp62339 __tmp62280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62348
                                                         __tmp62279)))
                                               _hd5442454462_
                                               _hd5442154452_)
                                              (_g5441354431_ _g5441454435_))))
                                      (_g5441354431_ _g5441454435_))))
                              (_g5441354431_ _g5441454435_))))
                      (_g5441354431_ _g5441454435_)))))
          (_g5441254486_ _$stx54409_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx54490_)
        (let* ((_g5449454512_
                (lambda (_g5449554508_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5449554508_)))
               (_g5449354567_
                (lambda (_g5449554516_)
                  (if (gx#stx-pair? _g5449554516_)
                      (let ((_e5450054519_ (gx#syntax-e _g5449554516_)))
                        (let ((_hd5449954523_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5450054519_)))
                              (_tl5449854526_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5450054519_))))
                          (if (gx#stx-pair? _tl5449854526_)
                              (let ((_e5450354529_
                                     (gx#syntax-e _tl5449854526_)))
                                (let ((_hd5450254533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5450354529_)))
                                      (_tl5450154536_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5450354529_))))
                                  (if (gx#stx-pair? _tl5450154536_)
                                      (let ((_e5450654539_
                                             (gx#syntax-e _tl5450154536_)))
                                        (let ((_hd5450554543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5450654539_)))
                                              (_tl5450454546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5450654539_))))
                                          (if (gx#stx-null? _tl5450454546_)
                                              ((lambda (_L54549_ _L54551_)
                                                 (let ((__tmp62419
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62349
                                                        (let ((__tmp62414
                                                               (let ((__tmp62415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62418 (gx#datum->syntax '#f 'el))
                                    (__tmp62416
                                     (let ((__tmp62417
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp62417 '()))))
                                (declare (not safe))
                                (cons __tmp62418 __tmp62416))))
                         (declare (not safe))
                         (cons _L54551_ __tmp62415)))
                      (__tmp62350
                       (let ((__tmp62351
                              (let ((__tmp62413 (gx#datum->syntax '#f 'let))
                                    (__tmp62352
                                     (let ((__tmp62412
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp62353
                                            (let ((__tmp62401
                                                   (let ((__tmp62408
                                                          (let ((__tmp62411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp62409
                         (let ((__tmp62410 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp62410 '()))))
                    (declare (not safe))
                    (cons __tmp62411 __tmp62409)))
                 (__tmp62402
                  (let ((__tmp62403
                         (let ((__tmp62407 (gx#datum->syntax '#f 'r))
                               (__tmp62404
                                (let ((__tmp62405
                                       (let ((__tmp62406
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp62406 '()))))
                                  (declare (not safe))
                                  (cons __tmp62405 '()))))
                           (declare (not safe))
                           (cons __tmp62407 __tmp62404))))
                    (declare (not safe))
                    (cons __tmp62403 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62408
                                                           __tmp62402)))
                                                  (__tmp62354
                                                   (let ((__tmp62355
                                                          (let ((__tmp62400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp62356
                         (let ((__tmp62399 (gx#datum->syntax '#f 'rest))
                               (__tmp62357
                                (let ((__tmp62363
                                       (let ((__tmp62394
                                              (let ((__tmp62398
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp62395
                                                     (let ((__tmp62397
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp62396
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp62397
                                                             __tmp62396))))
                                                (declare (not safe))
                                                (cons __tmp62398 __tmp62395)))
                                             (__tmp62364
                                              (let ((__tmp62365
                                                     (let ((__tmp62393
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp62366
                                                            (let ((__tmp62388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp62389
                                  (let ((__tmp62392 (gx#datum->syntax '#f 'el))
                                        (__tmp62390
                                         (let ((__tmp62391
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp62391 '()))))
                                    (declare (not safe))
                                    (cons __tmp62392 __tmp62390))))
                             (declare (not safe))
                             (cons _L54549_ __tmp62389)))
                          (__tmp62367
                           (let ((__tmp62380
                                  (let ((__tmp62387
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp62381
                                         (let ((__tmp62386
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp62382
                                                (let ((__tmp62385
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp62383
                                                       (let ((__tmp62384
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp62384
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp62385
                                                        __tmp62383))))
                                           (declare (not safe))
                                           (cons __tmp62386 __tmp62382))))
                                    (declare (not safe))
                                    (cons __tmp62387 __tmp62381)))
                                 (__tmp62368
                                  (let ((__tmp62369
                                         (let ((__tmp62379
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp62370
                                                (let ((__tmp62378
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp62371
                                                       (let ((__tmp62372
                                                              (let ((__tmp62377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp62373
                             (let ((__tmp62376 (gx#datum->syntax '#f 'hd))
                                   (__tmp62374
                                    (let ((__tmp62375
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp62375 '()))))
                               (declare (not safe))
                               (cons __tmp62376 __tmp62374))))
                        (declare (not safe))
                        (cons __tmp62377 __tmp62373))))
                 (declare (not safe))
                 (cons __tmp62372 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp62378
                                                        __tmp62371))))
                                           (declare (not safe))
                                           (cons __tmp62379 __tmp62370))))
                                    (declare (not safe))
                                    (cons __tmp62369 '()))))
                             (declare (not safe))
                             (cons __tmp62380 __tmp62368))))
                      (declare (not safe))
                      (cons __tmp62388 __tmp62367))))
               (declare (not safe))
               (cons __tmp62393 __tmp62366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62365 '()))))
                                         (declare (not safe))
                                         (cons __tmp62394 __tmp62364)))
                                      (__tmp62358
                                       (let ((__tmp62359
                                              (let ((__tmp62362
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp62360
                                                     (let ((__tmp62361
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp62361 '()))))
                                                (declare (not safe))
                                                (cons __tmp62362 __tmp62360))))
                                         (declare (not safe))
                                         (cons __tmp62359 '()))))
                                  (declare (not safe))
                                  (cons __tmp62363 __tmp62358))))
                           (declare (not safe))
                           (cons __tmp62399 __tmp62357))))
                    (declare (not safe))
                    (cons __tmp62400 __tmp62356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62355 '()))))
                                              (declare (not safe))
                                              (cons __tmp62401 __tmp62354))))
                                       (declare (not safe))
                                       (cons __tmp62412 __tmp62353))))
                                (declare (not safe))
                                (cons __tmp62413 __tmp62352))))
                         (declare (not safe))
                         (cons __tmp62351 '()))))
                  (declare (not safe))
                  (cons __tmp62414 __tmp62350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62419
                                                         __tmp62349)))
                                               _hd5450554543_
                                               _hd5450254533_)
                                              (_g5449454512_ _g5449554516_))))
                                      (_g5449454512_ _g5449554516_))))
                              (_g5449454512_ _g5449554516_))))
                      (_g5449454512_ _g5449554516_)))))
          (_g5449354567_ _$stx54490_))))
    (define |[:0:]#DBG|
      (lambda (_$stx54571_)
        (let* ((_g5457554586_
                (lambda (_g5457654582_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5457654582_)))
               (_g5457454615_
                (lambda (_g5457654590_)
                  (if (gx#stx-pair? _g5457654590_)
                      (let ((_e5458054593_ (gx#syntax-e _g5457654590_)))
                        (let ((_hd5457954597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5458054593_)))
                              (_tl5457854600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5458054593_))))
                          ((lambda (_L54603_)
                             (let ((__tmp62421 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp62420
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L54603_))))
                               (declare (not safe))
                               (cons __tmp62421 __tmp62420)))
                           _tl5457854600_)))
                      (_g5457554586_ _g5457654590_)))))
          (_g5457454615_ _$stx54571_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx54619_)
        (let* ((___stx6176161762_ _$stx54619_)
               (_g5463054844_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6176161762_))))
          (let ((___kont6176461765_
                 (lambda (_L55697_ _L55699_ _L55700_ _L55701_ _L55702_)
                   (let ((__tmp62422
                          (let ((__tmp62423
                                 (let ((__tmp62424
                                        (let ((__tmp62428
                                               (let ((__tmp62429
                                                      (lambda (_g5573255735_
                                                               _g5573355738_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5573255735_
                                                                _g5573355738_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp62429
                                                         '()
                                                         _L55700_)))
                                              (__tmp62425
                                               (let ((__tmp62426
                                                      (let ((__tmp62427
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55697_ '()))))
                (declare (not safe))
                (cons _L55699_ __tmp62427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55701_ __tmp62426))))
                                          (declare (not safe))
                                          (cons __tmp62428 __tmp62425))))
                                   (declare (not safe))
                                   (cons '() __tmp62424))))
                            (declare (not safe))
                            (cons '2 __tmp62423))))
                     (declare (not safe))
                     (cons _L55702_ __tmp62422))))
                (___kont6176861769_
                 (lambda (_L55550_ _L55552_ _L55553_ _L55554_)
                   (let ((__tmp62430
                          (let ((__tmp62431
                                 (let ((__tmp62432
                                        (let ((__tmp62436
                                               (let ((__tmp62437
                                                      (lambda (_g5557755580_
                                                               _g5557855583_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5557755580_
                                                                _g5557855583_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp62437
                                                         '()
                                                         _L55552_)))
                                              (__tmp62433
                                               (let ((__tmp62434
                                                      (let ((__tmp62435
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55550_ '()))))
                (declare (not safe))
                (cons _L55550_ __tmp62435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55553_ __tmp62434))))
                                          (declare (not safe))
                                          (cons __tmp62436 __tmp62433))))
                                   (declare (not safe))
                                   (cons '() __tmp62432))))
                            (declare (not safe))
                            (cons '2 __tmp62431))))
                     (declare (not safe))
                     (cons _L55554_ __tmp62430))))
                (___kont6177261773_
                 (lambda (_L55453_)
                   (let ((__tmp62449 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp62438
                          (let ((__tmp62439
                                 (let ((__tmp62446
                                        (let ((__tmp62448
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp62447
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp62448 __tmp62447)))
                                       (__tmp62440
                                        (let ((__tmp62443
                                               (let ((__tmp62445
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp62444
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp62445 __tmp62444)))
                                              (__tmp62441
                                               (let ((__tmp62442
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp62442))))
                                          (declare (not safe))
                                          (cons __tmp62443 __tmp62441))))
                                   (declare (not safe))
                                   (cons __tmp62446 __tmp62440))))
                            (declare (not safe))
                            (cons _L55453_ __tmp62439))))
                     (declare (not safe))
                     (cons __tmp62449 __tmp62438))))
                (___kont6177461775_
                 (lambda (_L55376_
                          _L55378_
                          _L55379_
                          _L55380_
                          _L55381_
                          _L55382_)
                   (let ((__tmp62450
                          (let ((__tmp62451
                                 (let ((__tmp62453
                                        (let ((__tmp62454
                                               (let ((__tmp62455
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55379_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55380_ __tmp62455))))
                                          (declare (not safe))
                                          (cons __tmp62454 _L55381_)))
                                       (__tmp62452
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55378_ _L55376_))))
                                   (declare (not safe))
                                   (cons __tmp62453 __tmp62452))))
                            (declare (not safe))
                            (cons '2 __tmp62451))))
                     (declare (not safe))
                     (cons _L55382_ __tmp62450))))
                (___kont6177661777_
                 (lambda (_L55257_ _L55259_ _L55260_ _L55261_ _L55262_)
                   (let ((__tmp62456
                          (let ((__tmp62457
                                 (let ((__tmp62459
                                        (let ((__tmp62460
                                               (let ((__tmp62461
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55260_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55260_ __tmp62461))))
                                          (declare (not safe))
                                          (cons __tmp62460 _L55261_)))
                                       (__tmp62458
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55259_ _L55257_))))
                                   (declare (not safe))
                                   (cons __tmp62459 __tmp62458))))
                            (declare (not safe))
                            (cons '2 __tmp62457))))
                     (declare (not safe))
                     (cons _L55262_ __tmp62456))))
                (___kont6177861779_
                 (lambda (_L55174_ _L55176_ _L55177_)
                   (let ((__tmp62462
                          (let ((__tmp62463
                                 (let ((__tmp62464
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55176_ _L55174_))))
                                   (declare (not safe))
                                   (cons '() __tmp62464))))
                            (declare (not safe))
                            (cons '3 __tmp62463))))
                     (declare (not safe))
                     (cons _L55177_ __tmp62462))))
                (___kont6178061781_
                 (lambda (_L55095_ _L55097_ _L55098_ _L55099_ _L55100_)
                   (let ((__tmp62465
                          (let ((__tmp62466
                                 (let ((__tmp62468
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55098_ _L55099_)))
                                       (__tmp62467
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55097_ _L55095_))))
                                   (declare (not safe))
                                   (cons __tmp62468 __tmp62467))))
                            (declare (not safe))
                            (cons '3 __tmp62466))))
                     (declare (not safe))
                     (cons _L55100_ __tmp62465))))
                (___kont6178261783_
                 (lambda (_L54979_
                          _L54981_
                          _L54982_
                          _L54983_
                          _L54984_
                          _L54985_)
                   (let ((__tmp62516 (gx#datum->syntax '#f 'let))
                         (__tmp62469
                          (let ((__tmp62504
                                 (let ((__tmp62513
                                        (let ((__tmp62515
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp62514
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L54982_ '()))))
                                          (declare (not safe))
                                          (cons __tmp62515 __tmp62514)))
                                       (__tmp62505
                                        (let ((__tmp62506
                                               (let ((__tmp62512
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp62507
                                                      (let ((__tmp62508
                                                             (let ((__tmp62511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp62509
                            (let ((__tmp62510
                                   (let ()
                                     (declare (not safe))
                                     (cons _L54979_ '()))))
                              (declare (not safe))
                              (cons '() __tmp62510))))
                       (declare (not safe))
                       (cons __tmp62511 __tmp62509))))
                (declare (not safe))
                (cons __tmp62508 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp62512
                                                       __tmp62507))))
                                          (declare (not safe))
                                          (cons __tmp62506 '()))))
                                   (declare (not safe))
                                   (cons __tmp62513 __tmp62505)))
                                (__tmp62470
                                 (let ((__tmp62471
                                        (let ((__tmp62503
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp62472
                                               (let ((__tmp62502
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp62473
                                                      (let ((__tmp62477
                                                             (let ((__tmp62501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp62478
                            (let ((__tmp62500 (gx#datum->syntax '#f 'tagval))
                                  (__tmp62479
                                   (let ((__tmp62495
                                          (let ((__tmp62499
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp62496
                                                 (let ((__tmp62497
                                                        (let ((__tmp62498
                                                               (lambda (_g5501955022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5502055025_)
                         (let ()
                           (declare (not safe))
                           (cons _g5501955022_ _g5502055025_)))))
                  (declare (not safe))
                  (foldr1 __tmp62498 '() _L54984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62497 '()))))
                                            (declare (not safe))
                                            (cons __tmp62499 __tmp62496)))
                                         (__tmp62480
                                          (let ((__tmp62487
                                                 (let ((__tmp62494
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp62488
                                                        (let ((__tmp62489
                                                               (lambda (_g5501755028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5501855031_)
                         (let ((__tmp62490
                                (let ((__tmp62493
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp62491
                                       (let ((__tmp62492
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5501755028_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp62492))))
                                  (declare (not safe))
                                  (cons __tmp62493 __tmp62491))))
                           (declare (not safe))
                           (cons __tmp62490 _g5501855031_)))))
                  (declare (not safe))
                  (foldr1 __tmp62489 '() _L54983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62494
                                                         __tmp62488)))
                                                (__tmp62481
                                                 (let ((__tmp62484
                                                        (let ((__tmp62486
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp62485
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L54981_ '()))))
                  (declare (not safe))
                  (cons __tmp62486 __tmp62485)))
               (__tmp62482
                (let ((__tmp62483 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp62483 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62484
                                                         __tmp62482))))
                                            (declare (not safe))
                                            (cons __tmp62487 __tmp62481))))
                                     (declare (not safe))
                                     (cons __tmp62495 __tmp62480))))
                              (declare (not safe))
                              (cons __tmp62500 __tmp62479))))
                       (declare (not safe))
                       (cons __tmp62501 __tmp62478)))
                    (__tmp62474
                     (let ((__tmp62475
                            (let ((__tmp62476 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp62476 '()))))
                       (declare (not safe))
                       (cons __tmp62475 '()))))
                (declare (not safe))
                (cons __tmp62477 __tmp62474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp62502
                                                       __tmp62473))))
                                          (declare (not safe))
                                          (cons __tmp62503 __tmp62472))))
                                   (declare (not safe))
                                   (cons __tmp62471 '()))))
                            (declare (not safe))
                            (cons __tmp62504 __tmp62470))))
                     (declare (not safe))
                     (cons __tmp62516 __tmp62469)))))
            (let* ((___match6211262113_
                    (lambda (_e5480254851_
                             _hd5480154855_
                             _tl5480054858_
                             _e5480554861_
                             _hd5480454865_
                             _tl5480354868_
                             _e5480654871_
                             _e5480954875_
                             _hd5480854879_
                             _tl5480754882_
                             ___splice6178461785_
                             _target5481054885_
                             _tl5481254888_)
                      (letrec ((_loop5481354891_
                                (lambda (_hd5481154895_
                                         _exprs5481754898_
                                         _names5481854900_)
                                  (if (gx#stx-pair? _hd5481154895_)
                                      (let ((_e5481454903_
                                             (gx#syntax-e _hd5481154895_)))
                                        (let ((_lp-tl5481654910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5481454903_)))
                                              (_lp-hd5481554907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5481454903_))))
                                          (if (gx#stx-pair? _lp-hd5481554907_)
                                              (let ((_e5482354913_
                                                     (gx#syntax-e
                                                      _lp-hd5481554907_)))
                                                (let ((_tl5482154920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5482354913_)))
                                                      (_hd5482254917_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5482354913_))))
                                                  (if (gx#stx-pair?
                                                       _tl5482154920_)
                                                      (let ((_e5482654923_
                                                             (gx#syntax-e
                                                              _tl5482154920_)))
                                                        (let ((_tl5482454930_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5482654923_)))
                      (_hd5482554927_
                       (let () (declare (not safe)) (##car _e5482654923_))))
                  (if (gx#stx-null? _tl5482454930_)
                      (_loop5481354891_
                       _lp-tl5481654910_
                       (let ()
                         (declare (not safe))
                         (cons _hd5482554927_ _exprs5481754898_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5482254917_ _names5481854900_)))
                      (let () (declare (not safe)) (_g5463054844_)))))
              (let () (declare (not safe)) (_g5463054844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5463054844_)))))
                                      (let ((_names5482054936_
                                             (reverse _names5481854900_))
                                            (_exprs5481954933_
                                             (reverse _exprs5481754898_)))
                                        (if (gx#stx-pair? _tl5480754882_)
                                            (let ((_e5482954939_
                                                   (gx#syntax-e
                                                    _tl5480754882_)))
                                              (let ((_tl5482754946_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5482954939_)))
                                                    (_hd5482854943_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5482954939_))))
                                                (if (gx#stx-null?
                                                     _hd5482854943_)
                                                    (if (gx#stx-pair?
                                                         _tl5482754946_)
                                                        (let ((_e5483254949_
                                                               (gx#syntax-e
                                                                _tl5482754946_)))
                                                          (let ((_tl5483054956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5483254949_)))
                        (_hd5483154953_
                         (let () (declare (not safe)) (##car _e5483254949_))))
                    (if (gx#stx-pair? _tl5483054956_)
                        (let ((_e5483554959_ (gx#syntax-e _tl5483054956_)))
                          (let ((_tl5483354966_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5483554959_)))
                                (_hd5483454963_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5483554959_))))
                            (if (gx#stx-pair? _tl5483354966_)
                                (let ((_e5483854969_
                                       (gx#syntax-e _tl5483354966_)))
                                  (let ((_tl5483654976_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5483854969_)))
                                        (_hd5483754973_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5483854969_))))
                                    (if (gx#stx-null? _tl5483654976_)
                                        (___kont6178261783_
                                         _hd5483754973_
                                         _hd5483454963_
                                         _hd5483154953_
                                         _exprs5481954933_
                                         _names5482054936_
                                         _hd5480154855_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5463054844_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_)))))
                        (let () (declare (not safe)) (_g5463054844_)))))
                (let () (declare (not safe)) (_g5463054844_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5463054844_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5463054844_))))))))
                        (_loop5481354891_ _target5481054885_ '() '()))))
                   (___match6189061891_
                    (lambda (_e5467455476_
                             _hd5467355480_
                             _tl5467255483_
                             _e5467755486_
                             _hd5467655490_
                             _tl5467555493_
                             _e5467855496_
                             _e5468155500_
                             _hd5468055504_
                             _tl5467955507_
                             ___splice6177061771_
                             _target5468255510_
                             _tl5468455513_
                             _e5469355516_
                             _hd5469255520_
                             _tl5469155523_)
                      (letrec ((_loop5468555526_
                                (lambda (_hd5468355530_ _exprs5468955533_)
                                  (if (gx#stx-pair? _hd5468355530_)
                                      (let ((_e5468655536_
                                             (gx#syntax-e _hd5468355530_)))
                                        (let ((_lp-tl5468855543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5468655536_)))
                                              (_lp-hd5468755540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5468655536_))))
                                          (_loop5468555526_
                                           _lp-tl5468855543_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5468755540_
                                                   _exprs5468955533_)))))
                                      (let ((_exprs5469055546_
                                             (reverse _exprs5468955533_)))
                                        (___kont6176861769_
                                         _hd5469255520_
                                         _exprs5469055546_
                                         _hd5468055504_
                                         _hd5467355480_))))))
                        (_loop5468555526_ _target5468255510_ '()))))
                   (___match6185061851_
                    (lambda (_e5463955593_
                             _hd5463855597_
                             _tl5463755600_
                             _e5464255603_
                             _hd5464155607_
                             _tl5464055610_
                             _e5464355613_
                             _e5464655617_
                             _hd5464555621_
                             _tl5464455624_
                             ___splice6176661767_
                             _target5464755627_
                             _tl5464955630_
                             _e5465855633_
                             _hd5465755637_
                             _tl5465655640_
                             _e5466155643_
                             _hd5466055647_
                             _tl5465955650_
                             _e5466455653_
                             _hd5466355657_
                             _tl5466255660_
                             _e5466755663_
                             _hd5466655667_
                             _tl5466555670_)
                      (letrec ((_loop5465055673_
                                (lambda (_hd5464855677_ _exprs5465455680_)
                                  (if (gx#stx-pair? _hd5464855677_)
                                      (let ((_e5465155683_
                                             (gx#syntax-e _hd5464855677_)))
                                        (let ((_lp-tl5465355690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5465155683_)))
                                              (_lp-hd5465255687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5465155683_))))
                                          (_loop5465055673_
                                           _lp-tl5465355690_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5465255687_
                                                   _exprs5465455680_)))))
                                      (let ((_exprs5465555693_
                                             (reverse _exprs5465455680_)))
                                        (___kont6176461765_
                                         _hd5466655667_
                                         _hd5466355657_
                                         _exprs5465555693_
                                         _hd5464555621_
                                         _hd5463855597_))))))
                        (_loop5465055673_ _target5464755627_ '())))))
              (if (gx#stx-pair? ___stx6176161762_)
                  (let ((_e5463955593_ (gx#syntax-e ___stx6176161762_)))
                    (let ((_tl5463755600_
                           (let () (declare (not safe)) (##cdr _e5463955593_)))
                          (_hd5463855597_
                           (let ()
                             (declare (not safe))
                             (##car _e5463955593_))))
                      (if (gx#stx-pair? _tl5463755600_)
                          (let ((_e5464255603_ (gx#syntax-e _tl5463755600_)))
                            (let ((_tl5464055610_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5464255603_)))
                                  (_hd5464155607_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5464255603_))))
                              (if (gx#stx-datum? _hd5464155607_)
                                  (let ((_e5464355613_
                                         (gx#stx-e _hd5464155607_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5464355613_ '1))
                                        (if (gx#stx-pair? _tl5464055610_)
                                            (let ((_e5464655617_
                                                   (gx#syntax-e
                                                    _tl5464055610_)))
                                              (let ((_tl5464455624_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5464655617_)))
                                                    (_hd5464555621_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5464655617_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5464455624_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5464455624_)
                                                              '2)
                                                        (let ((___splice6176661767_
                                                               (gx#syntax-split-splice
                                                                _tl5464455624_
                                                                '2)))
                                                          (let ((_tl5464955630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6176661767_ '1)))
                        (_target5464755627_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6176661767_ '0))))
                    (if (gx#stx-pair? _tl5464955630_)
                        (let ((_e5465855633_ (gx#syntax-e _tl5464955630_)))
                          (let ((_tl5465655640_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5465855633_)))
                                (_hd5465755637_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5465855633_))))
                            (if (gx#stx-pair? _hd5465755637_)
                                (let ((_e5466155643_
                                       (gx#syntax-e _hd5465755637_)))
                                  (let ((_tl5465955650_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5466155643_)))
                                        (_hd5466055647_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5466155643_))))
                                    (if (gx#identifier? _hd5466055647_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g62518_|
                                             _hd5466055647_)
                                            (if (gx#stx-pair? _tl5465955650_)
                                                (let ((_e5466455653_
                                                       (gx#syntax-e
                                                        _tl5465955650_)))
                                                  (let ((_tl5466255660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5466455653_)))
                                                        (_hd5466355657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5466455653_))))
                                                    (if (gx#stx-null?
                                                         _tl5466255660_)
                                                        (if (gx#stx-pair?
                                                             _tl5465655640_)
                                                            (let ((_e5466755663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5465655640_)))
                      (let ((_tl5466555670_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5466755663_)))
                            (_hd5466655667_
                             (let ()
                               (declare (not safe))
                               (##car _e5466755663_))))
                        (if (gx#stx-null? _tl5466555670_)
                            (___match6185061851_
                             _e5463955593_
                             _hd5463855597_
                             _tl5463755600_
                             _e5464255603_
                             _hd5464155607_
                             _tl5464055610_
                             _e5464355613_
                             _e5464655617_
                             _hd5464555621_
                             _tl5464455624_
                             ___splice6176661767_
                             _target5464755627_
                             _tl5464955630_
                             _e5465855633_
                             _hd5465755637_
                             _tl5465655640_
                             _e5466155643_
                             _hd5466055647_
                             _tl5465955650_
                             _e5466455653_
                             _hd5466355657_
                             _tl5466255660_
                             _e5466755663_
                             _hd5466655667_
                             _tl5466555670_)
                            (if (fx>= (gx#stx-length _tl5464455624_) '1)
                                (let ((___splice6177061771_
                                       (gx#syntax-split-splice
                                        _tl5464455624_
                                        '1)))
                                  (let ((_tl5468455513_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6177061771_
                                            '1)))
                                        (_target5468255510_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6177061771_
                                            '0))))
                                    (if (gx#stx-pair? _tl5468455513_)
                                        (let ((_e5469355516_
                                               (gx#syntax-e _tl5468455513_)))
                                          (let ((_tl5469155523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5469355516_)))
                                                (_hd5469255520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5469355516_))))
                                            (if (gx#stx-null? _tl5469155523_)
                                                (___match6189061891_
                                                 _e5463955593_
                                                 _hd5463855597_
                                                 _tl5463755600_
                                                 _e5464255603_
                                                 _hd5464155607_
                                                 _tl5464055610_
                                                 _e5464355613_
                                                 _e5464655617_
                                                 _hd5464555621_
                                                 _tl5464455624_
                                                 ___splice6177061771_
                                                 _target5468255510_
                                                 _tl5468455513_
                                                 _e5469355516_
                                                 _hd5469255520_
                                                 _tl5469155523_)
                                                (if (gx#stx-null?
                                                     _tl5464455624_)
                                                    (___kont6177261773_
                                                     _hd5464555621_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5463054844_))))))
                                        (if (gx#stx-null? _tl5464455624_)
                                            (___kont6177261773_ _hd5464555621_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5463054844_))))))
                                (if (gx#stx-null? _tl5464455624_)
                                    (___kont6177261773_ _hd5464555621_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5463054844_)))))))
                    (if (fx>= (gx#stx-length _tl5464455624_) '1)
                        (let ((___splice6177061771_
                               (gx#syntax-split-splice _tl5464455624_ '1)))
                          (let ((_tl5468455513_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6177061771_ '1)))
                                (_target5468255510_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6177061771_ '0))))
                            (if (gx#stx-pair? _tl5468455513_)
                                (let ((_e5469355516_
                                       (gx#syntax-e _tl5468455513_)))
                                  (let ((_tl5469155523_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5469355516_)))
                                        (_hd5469255520_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5469355516_))))
                                    (if (gx#stx-null? _tl5469155523_)
                                        (___match6189061891_
                                         _e5463955593_
                                         _hd5463855597_
                                         _tl5463755600_
                                         _e5464255603_
                                         _hd5464155607_
                                         _tl5464055610_
                                         _e5464355613_
                                         _e5464655617_
                                         _hd5464555621_
                                         _tl5464455624_
                                         ___splice6177061771_
                                         _target5468255510_
                                         _tl5468455513_
                                         _e5469355516_
                                         _hd5469255520_
                                         _tl5469155523_)
                                        (if (gx#stx-null? _tl5464455624_)
                                            (___kont6177261773_ _hd5464555621_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5463054844_))))))
                                (if (gx#stx-null? _tl5464455624_)
                                    (___kont6177261773_ _hd5464555621_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5463054844_))))))
                        (if (gx#stx-null? _tl5464455624_)
                            (___kont6177261773_ _hd5464555621_)
                            (let () (declare (not safe)) (_g5463054844_)))))
                (if (fx>= (gx#stx-length _tl5464455624_) '1)
                    (let ((___splice6177061771_
                           (gx#syntax-split-splice _tl5464455624_ '1)))
                      (let ((_tl5468455513_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6177061771_ '1)))
                            (_target5468255510_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6177061771_ '0))))
                        (if (gx#stx-pair? _tl5468455513_)
                            (let ((_e5469355516_ (gx#syntax-e _tl5468455513_)))
                              (let ((_tl5469155523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5469355516_)))
                                    (_hd5469255520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5469355516_))))
                                (if (gx#stx-null? _tl5469155523_)
                                    (___match6189061891_
                                     _e5463955593_
                                     _hd5463855597_
                                     _tl5463755600_
                                     _e5464255603_
                                     _hd5464155607_
                                     _tl5464055610_
                                     _e5464355613_
                                     _e5464655617_
                                     _hd5464555621_
                                     _tl5464455624_
                                     ___splice6177061771_
                                     _target5468255510_
                                     _tl5468455513_
                                     _e5469355516_
                                     _hd5469255520_
                                     _tl5469155523_)
                                    (if (gx#stx-null? _tl5464455624_)
                                        (___kont6177261773_ _hd5464555621_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5463054844_))))))
                            (if (gx#stx-null? _tl5464455624_)
                                (___kont6177261773_ _hd5464555621_)
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_))))))
                    (if (gx#stx-null? _tl5464455624_)
                        (___kont6177261773_ _hd5464555621_)
                        (let () (declare (not safe)) (_g5463054844_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5464455624_)
                                                          '1)
                                                    (let ((___splice6177061771_
                                                           (gx#syntax-split-splice
                                                            _tl5464455624_
                                                            '1)))
                                                      (let ((_tl5468455513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6177061771_ '1)))
                    (_target5468255510_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6177061771_ '0))))
                (if (gx#stx-pair? _tl5468455513_)
                    (let ((_e5469355516_ (gx#syntax-e _tl5468455513_)))
                      (let ((_tl5469155523_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5469355516_)))
                            (_hd5469255520_
                             (let ()
                               (declare (not safe))
                               (##car _e5469355516_))))
                        (if (gx#stx-null? _tl5469155523_)
                            (___match6189061891_
                             _e5463955593_
                             _hd5463855597_
                             _tl5463755600_
                             _e5464255603_
                             _hd5464155607_
                             _tl5464055610_
                             _e5464355613_
                             _e5464655617_
                             _hd5464555621_
                             _tl5464455624_
                             ___splice6177061771_
                             _target5468255510_
                             _tl5468455513_
                             _e5469355516_
                             _hd5469255520_
                             _tl5469155523_)
                            (if (gx#stx-null? _tl5464455624_)
                                (___kont6177261773_ _hd5464555621_)
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_))))))
                    (if (gx#stx-null? _tl5464455624_)
                        (___kont6177261773_ _hd5464555621_)
                        (let () (declare (not safe)) (_g5463054844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5464455624_)
                                                        (___kont6177261773_
                                                         _hd5464555621_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5463054844_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5464455624_)
                                                      '1)
                                                (let ((___splice6177061771_
                                                       (gx#syntax-split-splice
                                                        _tl5464455624_
                                                        '1)))
                                                  (let ((_tl5468455513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6177061771_
                                                            '1)))
                                                        (_target5468255510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6177061771_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5468455513_)
                                                        (let ((_e5469355516_
                                                               (gx#syntax-e
                                                                _tl5468455513_)))
                                                          (let ((_tl5469155523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5469355516_)))
                        (_hd5469255520_
                         (let () (declare (not safe)) (##car _e5469355516_))))
                    (if (gx#stx-null? _tl5469155523_)
                        (___match6189061891_
                         _e5463955593_
                         _hd5463855597_
                         _tl5463755600_
                         _e5464255603_
                         _hd5464155607_
                         _tl5464055610_
                         _e5464355613_
                         _e5464655617_
                         _hd5464555621_
                         _tl5464455624_
                         ___splice6177061771_
                         _target5468255510_
                         _tl5468455513_
                         _e5469355516_
                         _hd5469255520_
                         _tl5469155523_)
                        (if (gx#stx-null? _tl5464455624_)
                            (___kont6177261773_ _hd5464555621_)
                            (let () (declare (not safe)) (_g5463054844_))))))
                (if (gx#stx-null? _tl5464455624_)
                    (___kont6177261773_ _hd5464555621_)
                    (let () (declare (not safe)) (_g5463054844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5464455624_)
                                                    (___kont6177261773_
                                                     _hd5464555621_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5463054844_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5464455624_)
                                                  '1)
                                            (let ((___splice6177061771_
                                                   (gx#syntax-split-splice
                                                    _tl5464455624_
                                                    '1)))
                                              (let ((_tl5468455513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6177061771_
                                                        '1)))
                                                    (_target5468255510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6177061771_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5468455513_)
                                                    (let ((_e5469355516_
                                                           (gx#syntax-e
                                                            _tl5468455513_)))
                                                      (let ((_tl5469155523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5469355516_)))
                    (_hd5469255520_
                     (let () (declare (not safe)) (##car _e5469355516_))))
                (if (gx#stx-null? _tl5469155523_)
                    (___match6189061891_
                     _e5463955593_
                     _hd5463855597_
                     _tl5463755600_
                     _e5464255603_
                     _hd5464155607_
                     _tl5464055610_
                     _e5464355613_
                     _e5464655617_
                     _hd5464555621_
                     _tl5464455624_
                     ___splice6177061771_
                     _target5468255510_
                     _tl5468455513_
                     _e5469355516_
                     _hd5469255520_
                     _tl5469155523_)
                    (if (gx#stx-null? _tl5464455624_)
                        (___kont6177261773_ _hd5464555621_)
                        (let () (declare (not safe)) (_g5463054844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5464455624_)
                                                        (___kont6177261773_
                                                         _hd5464555621_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5463054844_))))))
                                            (if (gx#stx-null? _tl5464455624_)
                                                (___kont6177261773_
                                                 _hd5464555621_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5463054844_)))))))
                                (if (fx>= (gx#stx-length _tl5464455624_) '1)
                                    (let ((___splice6177061771_
                                           (gx#syntax-split-splice
                                            _tl5464455624_
                                            '1)))
                                      (let ((_tl5468455513_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6177061771_
                                                '1)))
                                            (_target5468255510_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6177061771_
                                                '0))))
                                        (if (gx#stx-pair? _tl5468455513_)
                                            (let ((_e5469355516_
                                                   (gx#syntax-e
                                                    _tl5468455513_)))
                                              (let ((_tl5469155523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5469355516_)))
                                                    (_hd5469255520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5469355516_))))
                                                (if (gx#stx-null?
                                                     _tl5469155523_)
                                                    (___match6189061891_
                                                     _e5463955593_
                                                     _hd5463855597_
                                                     _tl5463755600_
                                                     _e5464255603_
                                                     _hd5464155607_
                                                     _tl5464055610_
                                                     _e5464355613_
                                                     _e5464655617_
                                                     _hd5464555621_
                                                     _tl5464455624_
                                                     ___splice6177061771_
                                                     _target5468255510_
                                                     _tl5468455513_
                                                     _e5469355516_
                                                     _hd5469255520_
                                                     _tl5469155523_)
                                                    (if (gx#stx-null?
                                                         _tl5464455624_)
                                                        (___kont6177261773_
                                                         _hd5464555621_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5463054844_))))))
                                            (if (gx#stx-null? _tl5464455624_)
                                                (___kont6177261773_
                                                 _hd5464555621_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5463054844_))))))
                                    (if (gx#stx-null? _tl5464455624_)
                                        (___kont6177261773_ _hd5464555621_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5463054844_)))))))
                        (if (fx>= (gx#stx-length _tl5464455624_) '1)
                            (let ((___splice6177061771_
                                   (gx#syntax-split-splice _tl5464455624_ '1)))
                              (let ((_tl5468455513_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6177061771_ '1)))
                                    (_target5468255510_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6177061771_
                                        '0))))
                                (if (gx#stx-pair? _tl5468455513_)
                                    (let ((_e5469355516_
                                           (gx#syntax-e _tl5468455513_)))
                                      (let ((_tl5469155523_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5469355516_)))
                                            (_hd5469255520_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5469355516_))))
                                        (if (gx#stx-null? _tl5469155523_)
                                            (___match6189061891_
                                             _e5463955593_
                                             _hd5463855597_
                                             _tl5463755600_
                                             _e5464255603_
                                             _hd5464155607_
                                             _tl5464055610_
                                             _e5464355613_
                                             _e5464655617_
                                             _hd5464555621_
                                             _tl5464455624_
                                             ___splice6177061771_
                                             _target5468255510_
                                             _tl5468455513_
                                             _e5469355516_
                                             _hd5469255520_
                                             _tl5469155523_)
                                            (if (gx#stx-null? _tl5464455624_)
                                                (___kont6177261773_
                                                 _hd5464555621_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5463054844_))))))
                                    (if (gx#stx-null? _tl5464455624_)
                                        (___kont6177261773_ _hd5464555621_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5463054844_))))))
                            (if (gx#stx-null? _tl5464455624_)
                                (___kont6177261773_ _hd5464555621_)
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_)))))))
                (if (fx>= (gx#stx-length _tl5464455624_) '1)
                    (let ((___splice6177061771_
                           (gx#syntax-split-splice _tl5464455624_ '1)))
                      (let ((_tl5468455513_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6177061771_ '1)))
                            (_target5468255510_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6177061771_ '0))))
                        (if (gx#stx-pair? _tl5468455513_)
                            (let ((_e5469355516_ (gx#syntax-e _tl5468455513_)))
                              (let ((_tl5469155523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5469355516_)))
                                    (_hd5469255520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5469355516_))))
                                (if (gx#stx-null? _tl5469155523_)
                                    (___match6189061891_
                                     _e5463955593_
                                     _hd5463855597_
                                     _tl5463755600_
                                     _e5464255603_
                                     _hd5464155607_
                                     _tl5464055610_
                                     _e5464355613_
                                     _e5464655617_
                                     _hd5464555621_
                                     _tl5464455624_
                                     ___splice6177061771_
                                     _target5468255510_
                                     _tl5468455513_
                                     _e5469355516_
                                     _hd5469255520_
                                     _tl5469155523_)
                                    (if (gx#stx-null? _tl5464455624_)
                                        (___kont6177261773_ _hd5464555621_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5463054844_))))))
                            (if (gx#stx-null? _tl5464455624_)
                                (___kont6177261773_ _hd5464555621_)
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_))))))
                    (if (gx#stx-null? _tl5464455624_)
                        (___kont6177261773_ _hd5464555621_)
                        (let () (declare (not safe)) (_g5463054844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5464455624_)
                                                        (___kont6177261773_
                                                         _hd5464555621_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5463054844_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5463054844_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5464355613_ '2))
                                            (if (gx#stx-pair? _tl5464055610_)
                                                (let ((_e5472055316_
                                                       (gx#syntax-e
                                                        _tl5464055610_)))
                                                  (let ((_tl5471855323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5472055316_)))
                                                        (_hd5471955320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5472055316_))))
                                                    (if (gx#stx-pair?
                                                         _tl5471855323_)
                                                        (let ((_e5472355326_
                                                               (gx#syntax-e
                                                                _tl5471855323_)))
                                                          (let ((_tl5472155333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5472355326_)))
                        (_hd5472255330_
                         (let () (declare (not safe)) (##car _e5472355326_))))
                    (if (gx#stx-pair? _hd5472255330_)
                        (let ((_e5472655336_ (gx#syntax-e _hd5472255330_)))
                          (let ((_tl5472455343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5472655336_)))
                                (_hd5472555340_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5472655336_))))
                            (if (gx#stx-pair? _hd5472555340_)
                                (let ((_e5472955346_
                                       (gx#syntax-e _hd5472555340_)))
                                  (let ((_tl5472755353_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5472955346_)))
                                        (_hd5472855350_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5472955346_))))
                                    (if (gx#identifier? _hd5472855350_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g62517_|
                                             _hd5472855350_)
                                            (if (gx#stx-pair? _tl5472755353_)
                                                (let ((_e5473255356_
                                                       (gx#syntax-e
                                                        _tl5472755353_)))
                                                  (let ((_tl5473055363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5473255356_)))
                                                        (_hd5473155360_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5473255356_))))
                                                    (if (gx#stx-null?
                                                         _tl5473055363_)
                                                        (if (gx#stx-pair?
                                                             _tl5472455343_)
                                                            (let ((_e5473555366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5472455343_)))
                      (let ((_tl5473355373_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5473555366_)))
                            (_hd5473455370_
                             (let ()
                               (declare (not safe))
                               (##car _e5473555366_))))
                        (___kont6177461775_
                         _tl5472155333_
                         _tl5473355373_
                         _hd5473455370_
                         _hd5473155360_
                         _hd5471955320_
                         _hd5463855597_)))
                    (___kont6177661777_
                     _tl5472155333_
                     _tl5472455343_
                     _hd5472555340_
                     _hd5471955320_
                     _hd5463855597_))
                (___kont6177661777_
                 _tl5472155333_
                 _tl5472455343_
                 _hd5472555340_
                 _hd5471955320_
                 _hd5463855597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6177661777_
                                                 _tl5472155333_
                                                 _tl5472455343_
                                                 _hd5472555340_
                                                 _hd5471955320_
                                                 _hd5463855597_))
                                            (___kont6177661777_
                                             _tl5472155333_
                                             _tl5472455343_
                                             _hd5472555340_
                                             _hd5471955320_
                                             _hd5463855597_))
                                        (___kont6177661777_
                                         _tl5472155333_
                                         _tl5472455343_
                                         _hd5472555340_
                                         _hd5471955320_
                                         _hd5463855597_))))
                                (___kont6177661777_
                                 _tl5472155333_
                                 _tl5472455343_
                                 _hd5472555340_
                                 _hd5471955320_
                                 _hd5463855597_))))
                        (if (gx#stx-null? _hd5472255330_)
                            (___kont6177861779_
                             _tl5472155333_
                             _hd5471955320_
                             _hd5463855597_)
                            (let () (declare (not safe)) (_g5463054844_))))))
                (let () (declare (not safe)) (_g5463054844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5463054844_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5464355613_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5464055610_)
                                                    (let ((_e5478755065_
                                                           (gx#syntax-e
                                                            _tl5464055610_)))
                                                      (let ((_tl5478555072_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5478755065_)))
                    (_hd5478655069_
                     (let () (declare (not safe)) (##car _e5478755065_))))
                (if (gx#stx-pair? _tl5478555072_)
                    (let ((_e5479055075_ (gx#syntax-e _tl5478555072_)))
                      (let ((_tl5478855082_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5479055075_)))
                            (_hd5478955079_
                             (let ()
                               (declare (not safe))
                               (##car _e5479055075_))))
                        (if (gx#stx-pair? _hd5478955079_)
                            (let ((_e5479355085_ (gx#syntax-e _hd5478955079_)))
                              (let ((_tl5479155092_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5479355085_)))
                                    (_hd5479255089_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5479355085_))))
                                (___kont6178061781_
                                 _tl5478855082_
                                 _tl5479155092_
                                 _hd5479255089_
                                 _hd5478655069_
                                 _hd5463855597_)))
                            (if (gx#stx-pair/null? _hd5478655069_)
                                (let ((___splice6178461785_
                                       (gx#syntax-split-splice
                                        _hd5478655069_
                                        '0)))
                                  (let ((_tl5481254888_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6178461785_
                                            '1)))
                                        (_target5481054885_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6178461785_
                                            '0))))
                                    (if (gx#stx-null? _tl5481254888_)
                                        (___match6211262113_
                                         _e5463955593_
                                         _hd5463855597_
                                         _tl5463755600_
                                         _e5464255603_
                                         _hd5464155607_
                                         _tl5464055610_
                                         _e5464355613_
                                         _e5478755065_
                                         _hd5478655069_
                                         _tl5478555072_
                                         ___splice6178461785_
                                         _target5481054885_
                                         _tl5481254888_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5463054844_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_))))))
                    (if (gx#stx-pair/null? _hd5478655069_)
                        (let ((___splice6178461785_
                               (gx#syntax-split-splice _hd5478655069_ '0)))
                          (let ((_tl5481254888_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6178461785_ '1)))
                                (_target5481054885_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6178461785_ '0))))
                            (if (gx#stx-null? _tl5481254888_)
                                (___match6211262113_
                                 _e5463955593_
                                 _hd5463855597_
                                 _tl5463755600_
                                 _e5464255603_
                                 _hd5464155607_
                                 _tl5464055610_
                                 _e5464355613_
                                 _e5478755065_
                                 _hd5478655069_
                                 _tl5478555072_
                                 ___splice6178461785_
                                 _target5481054885_
                                 _tl5481254888_)
                                (let ()
                                  (declare (not safe))
                                  (_g5463054844_)))))
                        (let () (declare (not safe)) (_g5463054844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5463054844_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5463054844_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5463054844_)))))
                          (let () (declare (not safe)) (_g5463054844_)))))
                  (let () (declare (not safe)) (_g5463054844_))))))))))
