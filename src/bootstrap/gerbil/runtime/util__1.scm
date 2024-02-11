(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64532_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64533_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55554_)
        (let* ((_g5555855576_
                (lambda (_g5555955572_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5555955572_)))
               (_g5555755632_
                (lambda (_g5555955580_)
                  (if (gx#stx-pair? _g5555955580_)
                      (let ((_e5556455583_ (gx#syntax-e _g5555955580_)))
                        (let ((_hd5556355587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5556455583_)))
                              (_tl5556255590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5556455583_))))
                          (if (gx#stx-pair? _tl5556255590_)
                              (let ((_e5556755593_
                                     (gx#syntax-e _tl5556255590_)))
                                (let ((_hd5556655597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5556755593_)))
                                      (_tl5556555600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5556755593_))))
                                  (if (gx#stx-pair? _tl5556555600_)
                                      (let ((_e5557055603_
                                             (gx#syntax-e _tl5556555600_)))
                                        (let ((_hd5556955607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5557055603_)))
                                              (_tl5556855610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5557055603_))))
                                          (if (gx#stx-null? _tl5556855610_)
                                              ((lambda (_L55613_ _L55615_)
                                                 (let ((__tmp64293
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64245
                                                        (let ((__tmp64284
                                                               (let ((__tmp64285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64292 (gx#datum->syntax '#f 'key))
                                    (__tmp64286
                                     (let ((__tmp64291
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64287
                                            (let ((__tmp64288
                                                   (let ((__tmp64290
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64289
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64290
                                                           __tmp64289))))
                                              (declare (not safe))
                                              (cons __tmp64288 '()))))
                                       (declare (not safe))
                                       (cons __tmp64291 __tmp64287))))
                                (declare (not safe))
                                (cons __tmp64292 __tmp64286))))
                         (declare (not safe))
                         (cons _L55615_ __tmp64285)))
                      (__tmp64246
                       (let ((__tmp64247
                              (let ((__tmp64283 (gx#datum->syntax '#f 'cond))
                                    (__tmp64248
                                     (let ((__tmp64265
                                            (let ((__tmp64270
                                                   (let ((__tmp64282
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64271
                                                          (let ((__tmp64278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64281 (gx#datum->syntax '#f 'pair?))
                               (__tmp64279
                                (let ((__tmp64280 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64280 '()))))
                           (declare (not safe))
                           (cons __tmp64281 __tmp64279)))
                        (__tmp64272
                         (let ((__tmp64273
                                (let ((__tmp64274
                                       (let ((__tmp64277
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64275
                                              (let ((__tmp64276
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64276 '()))))
                                         (declare (not safe))
                                         (cons __tmp64277 __tmp64275))))
                                  (declare (not safe))
                                  (cons _L55613_ __tmp64274))))
                           (declare (not safe))
                           (cons __tmp64273 '()))))
                    (declare (not safe))
                    (cons __tmp64278 __tmp64272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64282
                                                           __tmp64271)))
                                                  (__tmp64266
                                                   (let ((__tmp64269
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64267
                                                          (let ((__tmp64268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64269
                                                           __tmp64267))))
                                              (declare (not safe))
                                              (cons __tmp64270 __tmp64266)))
                                           (__tmp64249
                                            (let ((__tmp64255
                                                   (let ((__tmp64261
                                                          (let ((__tmp64264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64262
                         (let ((__tmp64263 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64263 '()))))
                    (declare (not safe))
                    (cons __tmp64264 __tmp64262)))
                 (__tmp64256
                  (let ((__tmp64257
                         (let ((__tmp64260 (gx#datum->syntax '#f 'default))
                               (__tmp64258
                                (let ((__tmp64259 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64259 '()))))
                           (declare (not safe))
                           (cons __tmp64260 __tmp64258))))
                    (declare (not safe))
                    (cons __tmp64257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64261
                                                           __tmp64256)))
                                                  (__tmp64250
                                                   (let ((__tmp64251
                                                          (let ((__tmp64254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64252
                         (let ((__tmp64253 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64253 '()))))
                    (declare (not safe))
                    (cons __tmp64254 __tmp64252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64251 '()))))
                                              (declare (not safe))
                                              (cons __tmp64255 __tmp64250))))
                                       (declare (not safe))
                                       (cons __tmp64265 __tmp64249))))
                                (declare (not safe))
                                (cons __tmp64283 __tmp64248))))
                         (declare (not safe))
                         (cons __tmp64247 '()))))
                  (declare (not safe))
                  (cons __tmp64284 __tmp64246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64293
                                                         __tmp64245)))
                                               _hd5556955607_
                                               _hd5556655597_)
                                              (_g5555855576_ _g5555955580_))))
                                      (_g5555855576_ _g5555955580_))))
                              (_g5555855576_ _g5555955580_))))
                      (_g5555855576_ _g5555955580_)))))
          (_g5555755632_ _$stx55554_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55636_)
        (let* ((_g5564055658_
                (lambda (_g5564155654_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5564155654_)))
               (_g5563955713_
                (lambda (_g5564155662_)
                  (if (gx#stx-pair? _g5564155662_)
                      (let ((_e5564655665_ (gx#syntax-e _g5564155662_)))
                        (let ((_hd5564555669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5564655665_)))
                              (_tl5564455672_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5564655665_))))
                          (if (gx#stx-pair? _tl5564455672_)
                              (let ((_e5564955675_
                                     (gx#syntax-e _tl5564455672_)))
                                (let ((_hd5564855679_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5564955675_)))
                                      (_tl5564755682_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5564955675_))))
                                  (if (gx#stx-pair? _tl5564755682_)
                                      (let ((_e5565255685_
                                             (gx#syntax-e _tl5564755682_)))
                                        (let ((_hd5565155689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5565255685_)))
                                              (_tl5565055692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5565255685_))))
                                          (if (gx#stx-null? _tl5565055692_)
                                              ((lambda (_L55695_ _L55697_)
                                                 (let ((__tmp64363
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64294
                                                        (let ((__tmp64354
                                                               (let ((__tmp64355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64362 (gx#datum->syntax '#f 'key))
                                    (__tmp64356
                                     (let ((__tmp64361
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64357
                                            (let ((__tmp64358
                                                   (let ((__tmp64360
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64359
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64360
                                                           __tmp64359))))
                                              (declare (not safe))
                                              (cons __tmp64358 '()))))
                                       (declare (not safe))
                                       (cons __tmp64361 __tmp64357))))
                                (declare (not safe))
                                (cons __tmp64362 __tmp64356))))
                         (declare (not safe))
                         (cons _L55697_ __tmp64355)))
                      (__tmp64295
                       (let ((__tmp64296
                              (let ((__tmp64353 (gx#datum->syntax '#f 'let))
                                    (__tmp64297
                                     (let ((__tmp64352
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64298
                                            (let ((__tmp64347
                                                   (let ((__tmp64348
                                                          (let ((__tmp64351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64349
                         (let ((__tmp64350 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64350 '()))))
                    (declare (not safe))
                    (cons __tmp64351 __tmp64349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64348 '())))
                                                  (__tmp64299
                                                   (let ((__tmp64300
                                                          (let ((__tmp64346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64301
                         (let ((__tmp64345 (gx#datum->syntax '#f 'rest))
                               (__tmp64302
                                (let ((__tmp64321
                                       (let ((__tmp64338
                                              (let ((__tmp64344
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64339
                                                     (let ((__tmp64343
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64340
                                                            (let ((__tmp64342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64341 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64342 __tmp64341))))
               (declare (not safe))
               (cons __tmp64343 __tmp64340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64344 __tmp64339)))
                                             (__tmp64322
                                              (let ((__tmp64323
                                                     (let ((__tmp64337
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64324
                                                            (let ((__tmp64332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64333
                                  (let ((__tmp64336 (gx#datum->syntax '#f 'k))
                                        (__tmp64334
                                         (let ((__tmp64335
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64335 '()))))
                                    (declare (not safe))
                                    (cons __tmp64336 __tmp64334))))
                             (declare (not safe))
                             (cons _L55695_ __tmp64333)))
                          (__tmp64325
                           (let ((__tmp64331 (gx#datum->syntax '#f 'v))
                                 (__tmp64326
                                  (let ((__tmp64327
                                         (let ((__tmp64330
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64328
                                                (let ((__tmp64329
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64329 '()))))
                                           (declare (not safe))
                                           (cons __tmp64330 __tmp64328))))
                                    (declare (not safe))
                                    (cons __tmp64327 '()))))
                             (declare (not safe))
                             (cons __tmp64331 __tmp64326))))
                      (declare (not safe))
                      (cons __tmp64332 __tmp64325))))
               (declare (not safe))
               (cons __tmp64337 __tmp64324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64323 '()))))
                                         (declare (not safe))
                                         (cons __tmp64338 __tmp64322)))
                                      (__tmp64303
                                       (let ((__tmp64304
                                              (let ((__tmp64320
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64305
                                                     (let ((__tmp64306
                                                            (let ((__tmp64319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64307
                           (let ((__tmp64315
                                  (let ((__tmp64318
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64316
                                         (let ((__tmp64317
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64317 '()))))
                                    (declare (not safe))
                                    (cons __tmp64318 __tmp64316)))
                                 (__tmp64308
                                  (let ((__tmp64311
                                         (let ((__tmp64314
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64312
                                                (let ((__tmp64313
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64313 '()))))
                                           (declare (not safe))
                                           (cons __tmp64314 __tmp64312)))
                                        (__tmp64309
                                         (let ((__tmp64310
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64310 '()))))
                                    (declare (not safe))
                                    (cons __tmp64311 __tmp64309))))
                             (declare (not safe))
                             (cons __tmp64315 __tmp64308))))
                      (declare (not safe))
                      (cons __tmp64319 __tmp64307))))
               (declare (not safe))
               (cons __tmp64306 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64320 __tmp64305))))
                                         (declare (not safe))
                                         (cons __tmp64304 '()))))
                                  (declare (not safe))
                                  (cons __tmp64321 __tmp64303))))
                           (declare (not safe))
                           (cons __tmp64345 __tmp64302))))
                    (declare (not safe))
                    (cons __tmp64346 __tmp64301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64300 '()))))
                                              (declare (not safe))
                                              (cons __tmp64347 __tmp64299))))
                                       (declare (not safe))
                                       (cons __tmp64352 __tmp64298))))
                                (declare (not safe))
                                (cons __tmp64353 __tmp64297))))
                         (declare (not safe))
                         (cons __tmp64296 '()))))
                  (declare (not safe))
                  (cons __tmp64354 __tmp64295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64363
                                                         __tmp64294)))
                                               _hd5565155689_
                                               _hd5564855679_)
                                              (_g5564055658_ _g5564155662_))))
                                      (_g5564055658_ _g5564155662_))))
                              (_g5564055658_ _g5564155662_))))
                      (_g5564055658_ _g5564155662_)))))
          (_g5563955713_ _$stx55636_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55717_)
        (let* ((_g5572155739_
                (lambda (_g5572255735_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5572255735_)))
               (_g5572055794_
                (lambda (_g5572255743_)
                  (if (gx#stx-pair? _g5572255743_)
                      (let ((_e5572755746_ (gx#syntax-e _g5572255743_)))
                        (let ((_hd5572655750_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5572755746_)))
                              (_tl5572555753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5572755746_))))
                          (if (gx#stx-pair? _tl5572555753_)
                              (let ((_e5573055756_
                                     (gx#syntax-e _tl5572555753_)))
                                (let ((_hd5572955760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5573055756_)))
                                      (_tl5572855763_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5573055756_))))
                                  (if (gx#stx-pair? _tl5572855763_)
                                      (let ((_e5573355766_
                                             (gx#syntax-e _tl5572855763_)))
                                        (let ((_hd5573255770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5573355766_)))
                                              (_tl5573155773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5573355766_))))
                                          (if (gx#stx-null? _tl5573155773_)
                                              ((lambda (_L55776_ _L55778_)
                                                 (let ((__tmp64434
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64364
                                                        (let ((__tmp64429
                                                               (let ((__tmp64430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64433 (gx#datum->syntax '#f 'el))
                                    (__tmp64431
                                     (let ((__tmp64432
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64432 '()))))
                                (declare (not safe))
                                (cons __tmp64433 __tmp64431))))
                         (declare (not safe))
                         (cons _L55778_ __tmp64430)))
                      (__tmp64365
                       (let ((__tmp64366
                              (let ((__tmp64428 (gx#datum->syntax '#f 'let))
                                    (__tmp64367
                                     (let ((__tmp64427
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64368
                                            (let ((__tmp64416
                                                   (let ((__tmp64423
                                                          (let ((__tmp64426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64424
                         (let ((__tmp64425 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64425 '()))))
                    (declare (not safe))
                    (cons __tmp64426 __tmp64424)))
                 (__tmp64417
                  (let ((__tmp64418
                         (let ((__tmp64422 (gx#datum->syntax '#f 'r))
                               (__tmp64419
                                (let ((__tmp64420
                                       (let ((__tmp64421
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64421 '()))))
                                  (declare (not safe))
                                  (cons __tmp64420 '()))))
                           (declare (not safe))
                           (cons __tmp64422 __tmp64419))))
                    (declare (not safe))
                    (cons __tmp64418 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64423
                                                           __tmp64417)))
                                                  (__tmp64369
                                                   (let ((__tmp64370
                                                          (let ((__tmp64415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64371
                         (let ((__tmp64414 (gx#datum->syntax '#f 'rest))
                               (__tmp64372
                                (let ((__tmp64378
                                       (let ((__tmp64409
                                              (let ((__tmp64413
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64410
                                                     (let ((__tmp64412
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64411
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64412
                                                             __tmp64411))))
                                                (declare (not safe))
                                                (cons __tmp64413 __tmp64410)))
                                             (__tmp64379
                                              (let ((__tmp64380
                                                     (let ((__tmp64408
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64381
                                                            (let ((__tmp64403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64404
                                  (let ((__tmp64407 (gx#datum->syntax '#f 'el))
                                        (__tmp64405
                                         (let ((__tmp64406
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64406 '()))))
                                    (declare (not safe))
                                    (cons __tmp64407 __tmp64405))))
                             (declare (not safe))
                             (cons _L55776_ __tmp64404)))
                          (__tmp64382
                           (let ((__tmp64395
                                  (let ((__tmp64402
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64396
                                         (let ((__tmp64401
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64397
                                                (let ((__tmp64400
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64398
                                                       (let ((__tmp64399
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64399
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64400
                                                        __tmp64398))))
                                           (declare (not safe))
                                           (cons __tmp64401 __tmp64397))))
                                    (declare (not safe))
                                    (cons __tmp64402 __tmp64396)))
                                 (__tmp64383
                                  (let ((__tmp64384
                                         (let ((__tmp64394
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64385
                                                (let ((__tmp64393
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64386
                                                       (let ((__tmp64387
                                                              (let ((__tmp64392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64388
                             (let ((__tmp64391 (gx#datum->syntax '#f 'hd))
                                   (__tmp64389
                                    (let ((__tmp64390
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64390 '()))))
                               (declare (not safe))
                               (cons __tmp64391 __tmp64389))))
                        (declare (not safe))
                        (cons __tmp64392 __tmp64388))))
                 (declare (not safe))
                 (cons __tmp64387 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64393
                                                        __tmp64386))))
                                           (declare (not safe))
                                           (cons __tmp64394 __tmp64385))))
                                    (declare (not safe))
                                    (cons __tmp64384 '()))))
                             (declare (not safe))
                             (cons __tmp64395 __tmp64383))))
                      (declare (not safe))
                      (cons __tmp64403 __tmp64382))))
               (declare (not safe))
               (cons __tmp64408 __tmp64381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64380 '()))))
                                         (declare (not safe))
                                         (cons __tmp64409 __tmp64379)))
                                      (__tmp64373
                                       (let ((__tmp64374
                                              (let ((__tmp64377
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64375
                                                     (let ((__tmp64376
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64376 '()))))
                                                (declare (not safe))
                                                (cons __tmp64377 __tmp64375))))
                                         (declare (not safe))
                                         (cons __tmp64374 '()))))
                                  (declare (not safe))
                                  (cons __tmp64378 __tmp64373))))
                           (declare (not safe))
                           (cons __tmp64414 __tmp64372))))
                    (declare (not safe))
                    (cons __tmp64415 __tmp64371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64370 '()))))
                                              (declare (not safe))
                                              (cons __tmp64416 __tmp64369))))
                                       (declare (not safe))
                                       (cons __tmp64427 __tmp64368))))
                                (declare (not safe))
                                (cons __tmp64428 __tmp64367))))
                         (declare (not safe))
                         (cons __tmp64366 '()))))
                  (declare (not safe))
                  (cons __tmp64429 __tmp64365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64434
                                                         __tmp64364)))
                                               _hd5573255770_
                                               _hd5572955760_)
                                              (_g5572155739_ _g5572255743_))))
                                      (_g5572155739_ _g5572255743_))))
                              (_g5572155739_ _g5572255743_))))
                      (_g5572155739_ _g5572255743_)))))
          (_g5572055794_ _$stx55717_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55798_)
        (let* ((_g5580255813_
                (lambda (_g5580355809_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5580355809_)))
               (_g5580155842_
                (lambda (_g5580355817_)
                  (if (gx#stx-pair? _g5580355817_)
                      (let ((_e5580755820_ (gx#syntax-e _g5580355817_)))
                        (let ((_hd5580655824_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5580755820_)))
                              (_tl5580555827_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5580755820_))))
                          ((lambda (_L55830_)
                             (let ((__tmp64436 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64435
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55830_))))
                               (declare (not safe))
                               (cons __tmp64436 __tmp64435)))
                           _tl5580555827_)))
                      (_g5580255813_ _g5580355817_)))))
          (_g5580155842_ _$stx55798_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55846_)
        (let* ((___stx6375963760_ _$stx55846_)
               (_g5585756071_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6375963760_))))
          (let ((___kont6376263763_
                 (lambda (_L56924_ _L56926_ _L56927_ _L56928_ _L56929_)
                   (let ((__tmp64437
                          (let ((__tmp64438
                                 (let ((__tmp64439
                                        (let ((__tmp64443
                                               (let ((__tmp64444
                                                      (lambda (_g5695956962_
                                                               _g5696056965_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5695956962_
                                                                _g5696056965_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64444
                                                         '()
                                                         _L56927_)))
                                              (__tmp64440
                                               (let ((__tmp64441
                                                      (let ((__tmp64442
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56924_ '()))))
                (declare (not safe))
                (cons _L56926_ __tmp64442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56928_ __tmp64441))))
                                          (declare (not safe))
                                          (cons __tmp64443 __tmp64440))))
                                   (declare (not safe))
                                   (cons '() __tmp64439))))
                            (declare (not safe))
                            (cons '2 __tmp64438))))
                     (declare (not safe))
                     (cons _L56929_ __tmp64437))))
                (___kont6376663767_
                 (lambda (_L56777_ _L56779_ _L56780_ _L56781_)
                   (let ((__tmp64445
                          (let ((__tmp64446
                                 (let ((__tmp64447
                                        (let ((__tmp64451
                                               (let ((__tmp64452
                                                      (lambda (_g5680456807_
                                                               _g5680556810_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5680456807_
                                                                _g5680556810_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64452
                                                         '()
                                                         _L56779_)))
                                              (__tmp64448
                                               (let ((__tmp64449
                                                      (let ((__tmp64450
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56777_ '()))))
                (declare (not safe))
                (cons _L56777_ __tmp64450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56780_ __tmp64449))))
                                          (declare (not safe))
                                          (cons __tmp64451 __tmp64448))))
                                   (declare (not safe))
                                   (cons '() __tmp64447))))
                            (declare (not safe))
                            (cons '2 __tmp64446))))
                     (declare (not safe))
                     (cons _L56781_ __tmp64445))))
                (___kont6377063771_
                 (lambda (_L56680_)
                   (let ((__tmp64464 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64453
                          (let ((__tmp64454
                                 (let ((__tmp64461
                                        (let ((__tmp64463
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64462
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64463 __tmp64462)))
                                       (__tmp64455
                                        (let ((__tmp64458
                                               (let ((__tmp64460
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64459
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64460 __tmp64459)))
                                              (__tmp64456
                                               (let ((__tmp64457
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64457))))
                                          (declare (not safe))
                                          (cons __tmp64458 __tmp64456))))
                                   (declare (not safe))
                                   (cons __tmp64461 __tmp64455))))
                            (declare (not safe))
                            (cons _L56680_ __tmp64454))))
                     (declare (not safe))
                     (cons __tmp64464 __tmp64453))))
                (___kont6377263773_
                 (lambda (_L56603_
                          _L56605_
                          _L56606_
                          _L56607_
                          _L56608_
                          _L56609_)
                   (let ((__tmp64465
                          (let ((__tmp64466
                                 (let ((__tmp64468
                                        (let ((__tmp64469
                                               (let ((__tmp64470
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56606_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56607_ __tmp64470))))
                                          (declare (not safe))
                                          (cons __tmp64469 _L56608_)))
                                       (__tmp64467
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56605_ _L56603_))))
                                   (declare (not safe))
                                   (cons __tmp64468 __tmp64467))))
                            (declare (not safe))
                            (cons '2 __tmp64466))))
                     (declare (not safe))
                     (cons _L56609_ __tmp64465))))
                (___kont6377463775_
                 (lambda (_L56484_ _L56486_ _L56487_ _L56488_ _L56489_)
                   (let ((__tmp64471
                          (let ((__tmp64472
                                 (let ((__tmp64474
                                        (let ((__tmp64475
                                               (let ((__tmp64476
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56487_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56487_ __tmp64476))))
                                          (declare (not safe))
                                          (cons __tmp64475 _L56488_)))
                                       (__tmp64473
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56486_ _L56484_))))
                                   (declare (not safe))
                                   (cons __tmp64474 __tmp64473))))
                            (declare (not safe))
                            (cons '2 __tmp64472))))
                     (declare (not safe))
                     (cons _L56489_ __tmp64471))))
                (___kont6377663777_
                 (lambda (_L56401_ _L56403_ _L56404_)
                   (let ((__tmp64477
                          (let ((__tmp64478
                                 (let ((__tmp64479
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56403_ _L56401_))))
                                   (declare (not safe))
                                   (cons '() __tmp64479))))
                            (declare (not safe))
                            (cons '3 __tmp64478))))
                     (declare (not safe))
                     (cons _L56404_ __tmp64477))))
                (___kont6377863779_
                 (lambda (_L56322_ _L56324_ _L56325_ _L56326_ _L56327_)
                   (let ((__tmp64480
                          (let ((__tmp64481
                                 (let ((__tmp64483
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56325_ _L56326_)))
                                       (__tmp64482
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56324_ _L56322_))))
                                   (declare (not safe))
                                   (cons __tmp64483 __tmp64482))))
                            (declare (not safe))
                            (cons '3 __tmp64481))))
                     (declare (not safe))
                     (cons _L56327_ __tmp64480))))
                (___kont6378063781_
                 (lambda (_L56206_
                          _L56208_
                          _L56209_
                          _L56210_
                          _L56211_
                          _L56212_)
                   (let ((__tmp64531 (gx#datum->syntax '#f 'let))
                         (__tmp64484
                          (let ((__tmp64519
                                 (let ((__tmp64528
                                        (let ((__tmp64530
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64529
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56209_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64530 __tmp64529)))
                                       (__tmp64520
                                        (let ((__tmp64521
                                               (let ((__tmp64527
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64522
                                                      (let ((__tmp64523
                                                             (let ((__tmp64526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64524
                            (let ((__tmp64525
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56206_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64525))))
                       (declare (not safe))
                       (cons __tmp64526 __tmp64524))))
                (declare (not safe))
                (cons __tmp64523 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64527
                                                       __tmp64522))))
                                          (declare (not safe))
                                          (cons __tmp64521 '()))))
                                   (declare (not safe))
                                   (cons __tmp64528 __tmp64520)))
                                (__tmp64485
                                 (let ((__tmp64486
                                        (let ((__tmp64518
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64487
                                               (let ((__tmp64517
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64488
                                                      (let ((__tmp64492
                                                             (let ((__tmp64516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64493
                            (let ((__tmp64515 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64494
                                   (let ((__tmp64510
                                          (let ((__tmp64514
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64511
                                                 (let ((__tmp64512
                                                        (let ((__tmp64513
                                                               (lambda (_g5624656249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5624756252_)
                         (let ()
                           (declare (not safe))
                           (cons _g5624656249_ _g5624756252_)))))
                  (declare (not safe))
                  (foldr1 __tmp64513 '() _L56211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64512 '()))))
                                            (declare (not safe))
                                            (cons __tmp64514 __tmp64511)))
                                         (__tmp64495
                                          (let ((__tmp64502
                                                 (let ((__tmp64509
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64503
                                                        (let ((__tmp64504
                                                               (lambda (_g5624456255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5624556258_)
                         (let ((__tmp64505
                                (let ((__tmp64508
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64506
                                       (let ((__tmp64507
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5624456255_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64507))))
                                  (declare (not safe))
                                  (cons __tmp64508 __tmp64506))))
                           (declare (not safe))
                           (cons __tmp64505 _g5624556258_)))))
                  (declare (not safe))
                  (foldr1 __tmp64504 '() _L56210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64509
                                                         __tmp64503)))
                                                (__tmp64496
                                                 (let ((__tmp64499
                                                        (let ((__tmp64501
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64500
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56208_ '()))))
                  (declare (not safe))
                  (cons __tmp64501 __tmp64500)))
               (__tmp64497
                (let ((__tmp64498 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64498 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64499
                                                         __tmp64497))))
                                            (declare (not safe))
                                            (cons __tmp64502 __tmp64496))))
                                     (declare (not safe))
                                     (cons __tmp64510 __tmp64495))))
                              (declare (not safe))
                              (cons __tmp64515 __tmp64494))))
                       (declare (not safe))
                       (cons __tmp64516 __tmp64493)))
                    (__tmp64489
                     (let ((__tmp64490
                            (let ((__tmp64491 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64491 '()))))
                       (declare (not safe))
                       (cons __tmp64490 '()))))
                (declare (not safe))
                (cons __tmp64492 __tmp64489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64517
                                                       __tmp64488))))
                                          (declare (not safe))
                                          (cons __tmp64518 __tmp64487))))
                                   (declare (not safe))
                                   (cons __tmp64486 '()))))
                            (declare (not safe))
                            (cons __tmp64519 __tmp64485))))
                     (declare (not safe))
                     (cons __tmp64531 __tmp64484)))))
            (let* ((___match6411064111_
                    (lambda (_e5602956078_
                             _hd5602856082_
                             _tl5602756085_
                             _e5603256088_
                             _hd5603156092_
                             _tl5603056095_
                             _e5603356098_
                             _e5603656102_
                             _hd5603556106_
                             _tl5603456109_
                             ___splice6378263783_
                             _target5603756112_
                             _tl5603956115_)
                      (letrec ((_loop5604056118_
                                (lambda (_hd5603856122_
                                         _exprs5604456125_
                                         _names5604556127_)
                                  (if (gx#stx-pair? _hd5603856122_)
                                      (let ((_e5604156130_
                                             (gx#syntax-e _hd5603856122_)))
                                        (let ((_lp-tl5604356137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5604156130_)))
                                              (_lp-hd5604256134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5604156130_))))
                                          (if (gx#stx-pair? _lp-hd5604256134_)
                                              (let ((_e5605056140_
                                                     (gx#syntax-e
                                                      _lp-hd5604256134_)))
                                                (let ((_tl5604856147_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5605056140_)))
                                                      (_hd5604956144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5605056140_))))
                                                  (if (gx#stx-pair?
                                                       _tl5604856147_)
                                                      (let ((_e5605356150_
                                                             (gx#syntax-e
                                                              _tl5604856147_)))
                                                        (let ((_tl5605156157_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5605356150_)))
                      (_hd5605256154_
                       (let () (declare (not safe)) (##car _e5605356150_))))
                  (if (gx#stx-null? _tl5605156157_)
                      (_loop5604056118_
                       _lp-tl5604356137_
                       (let ()
                         (declare (not safe))
                         (cons _hd5605256154_ _exprs5604456125_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5604956144_ _names5604556127_)))
                      (let () (declare (not safe)) (_g5585756071_)))))
              (let () (declare (not safe)) (_g5585756071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5585756071_)))))
                                      (let ((_names5604756163_
                                             (reverse _names5604556127_))
                                            (_exprs5604656160_
                                             (reverse _exprs5604456125_)))
                                        (if (gx#stx-pair? _tl5603456109_)
                                            (let ((_e5605656166_
                                                   (gx#syntax-e
                                                    _tl5603456109_)))
                                              (let ((_tl5605456173_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5605656166_)))
                                                    (_hd5605556170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5605656166_))))
                                                (if (gx#stx-null?
                                                     _hd5605556170_)
                                                    (if (gx#stx-pair?
                                                         _tl5605456173_)
                                                        (let ((_e5605956176_
                                                               (gx#syntax-e
                                                                _tl5605456173_)))
                                                          (let ((_tl5605756183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5605956176_)))
                        (_hd5605856180_
                         (let () (declare (not safe)) (##car _e5605956176_))))
                    (if (gx#stx-pair? _tl5605756183_)
                        (let ((_e5606256186_ (gx#syntax-e _tl5605756183_)))
                          (let ((_tl5606056193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5606256186_)))
                                (_hd5606156190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5606256186_))))
                            (if (gx#stx-pair? _tl5606056193_)
                                (let ((_e5606556196_
                                       (gx#syntax-e _tl5606056193_)))
                                  (let ((_tl5606356203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5606556196_)))
                                        (_hd5606456200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5606556196_))))
                                    (if (gx#stx-null? _tl5606356203_)
                                        (___kont6378063781_
                                         _hd5606456200_
                                         _hd5606156190_
                                         _hd5605856180_
                                         _exprs5604656160_
                                         _names5604756163_
                                         _hd5602856082_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_)))))
                        (let () (declare (not safe)) (_g5585756071_)))))
                (let () (declare (not safe)) (_g5585756071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5585756071_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5585756071_))))))))
                        (_loop5604056118_ _target5603756112_ '() '()))))
                   (___match6388863889_
                    (lambda (_e5590156703_
                             _hd5590056707_
                             _tl5589956710_
                             _e5590456713_
                             _hd5590356717_
                             _tl5590256720_
                             _e5590556723_
                             _e5590856727_
                             _hd5590756731_
                             _tl5590656734_
                             ___splice6376863769_
                             _target5590956737_
                             _tl5591156740_
                             _e5592056743_
                             _hd5591956747_
                             _tl5591856750_)
                      (letrec ((_loop5591256753_
                                (lambda (_hd5591056757_ _exprs5591656760_)
                                  (if (gx#stx-pair? _hd5591056757_)
                                      (let ((_e5591356763_
                                             (gx#syntax-e _hd5591056757_)))
                                        (let ((_lp-tl5591556770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5591356763_)))
                                              (_lp-hd5591456767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5591356763_))))
                                          (_loop5591256753_
                                           _lp-tl5591556770_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5591456767_
                                                   _exprs5591656760_)))))
                                      (let ((_exprs5591756773_
                                             (reverse _exprs5591656760_)))
                                        (___kont6376663767_
                                         _hd5591956747_
                                         _exprs5591756773_
                                         _hd5590756731_
                                         _hd5590056707_))))))
                        (_loop5591256753_ _target5590956737_ '()))))
                   (___match6384863849_
                    (lambda (_e5586656820_
                             _hd5586556824_
                             _tl5586456827_
                             _e5586956830_
                             _hd5586856834_
                             _tl5586756837_
                             _e5587056840_
                             _e5587356844_
                             _hd5587256848_
                             _tl5587156851_
                             ___splice6376463765_
                             _target5587456854_
                             _tl5587656857_
                             _e5588556860_
                             _hd5588456864_
                             _tl5588356867_
                             _e5588856870_
                             _hd5588756874_
                             _tl5588656877_
                             _e5589156880_
                             _hd5589056884_
                             _tl5588956887_
                             _e5589456890_
                             _hd5589356894_
                             _tl5589256897_)
                      (letrec ((_loop5587756900_
                                (lambda (_hd5587556904_ _exprs5588156907_)
                                  (if (gx#stx-pair? _hd5587556904_)
                                      (let ((_e5587856910_
                                             (gx#syntax-e _hd5587556904_)))
                                        (let ((_lp-tl5588056917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5587856910_)))
                                              (_lp-hd5587956914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5587856910_))))
                                          (_loop5587756900_
                                           _lp-tl5588056917_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5587956914_
                                                   _exprs5588156907_)))))
                                      (let ((_exprs5588256920_
                                             (reverse _exprs5588156907_)))
                                        (___kont6376263763_
                                         _hd5589356894_
                                         _hd5589056884_
                                         _exprs5588256920_
                                         _hd5587256848_
                                         _hd5586556824_))))))
                        (_loop5587756900_ _target5587456854_ '())))))
              (if (gx#stx-pair? ___stx6375963760_)
                  (let ((_e5586656820_ (gx#syntax-e ___stx6375963760_)))
                    (let ((_tl5586456827_
                           (let () (declare (not safe)) (##cdr _e5586656820_)))
                          (_hd5586556824_
                           (let ()
                             (declare (not safe))
                             (##car _e5586656820_))))
                      (if (gx#stx-pair? _tl5586456827_)
                          (let ((_e5586956830_ (gx#syntax-e _tl5586456827_)))
                            (let ((_tl5586756837_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5586956830_)))
                                  (_hd5586856834_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5586956830_))))
                              (if (gx#stx-datum? _hd5586856834_)
                                  (let ((_e5587056840_
                                         (gx#stx-e _hd5586856834_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5587056840_ '1))
                                        (if (gx#stx-pair? _tl5586756837_)
                                            (let ((_e5587356844_
                                                   (gx#syntax-e
                                                    _tl5586756837_)))
                                              (let ((_tl5587156851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5587356844_)))
                                                    (_hd5587256848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5587356844_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5587156851_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5587156851_)
                                                              '2)
                                                        (let ((___splice6376463765_
                                                               (gx#syntax-split-splice
                                                                _tl5587156851_
                                                                '2)))
                                                          (let ((_tl5587656857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6376463765_ '1)))
                        (_target5587456854_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6376463765_ '0))))
                    (if (gx#stx-pair? _tl5587656857_)
                        (let ((_e5588556860_ (gx#syntax-e _tl5587656857_)))
                          (let ((_tl5588356867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5588556860_)))
                                (_hd5588456864_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5588556860_))))
                            (if (gx#stx-pair? _hd5588456864_)
                                (let ((_e5588856870_
                                       (gx#syntax-e _hd5588456864_)))
                                  (let ((_tl5588656877_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5588856870_)))
                                        (_hd5588756874_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5588856870_))))
                                    (if (gx#identifier? _hd5588756874_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64533_|
                                             _hd5588756874_)
                                            (if (gx#stx-pair? _tl5588656877_)
                                                (let ((_e5589156880_
                                                       (gx#syntax-e
                                                        _tl5588656877_)))
                                                  (let ((_tl5588956887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5589156880_)))
                                                        (_hd5589056884_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5589156880_))))
                                                    (if (gx#stx-null?
                                                         _tl5588956887_)
                                                        (if (gx#stx-pair?
                                                             _tl5588356867_)
                                                            (let ((_e5589456890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5588356867_)))
                      (let ((_tl5589256897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5589456890_)))
                            (_hd5589356894_
                             (let ()
                               (declare (not safe))
                               (##car _e5589456890_))))
                        (if (gx#stx-null? _tl5589256897_)
                            (___match6384863849_
                             _e5586656820_
                             _hd5586556824_
                             _tl5586456827_
                             _e5586956830_
                             _hd5586856834_
                             _tl5586756837_
                             _e5587056840_
                             _e5587356844_
                             _hd5587256848_
                             _tl5587156851_
                             ___splice6376463765_
                             _target5587456854_
                             _tl5587656857_
                             _e5588556860_
                             _hd5588456864_
                             _tl5588356867_
                             _e5588856870_
                             _hd5588756874_
                             _tl5588656877_
                             _e5589156880_
                             _hd5589056884_
                             _tl5588956887_
                             _e5589456890_
                             _hd5589356894_
                             _tl5589256897_)
                            (if (fx>= (gx#stx-length _tl5587156851_) '1)
                                (let ((___splice6376863769_
                                       (gx#syntax-split-splice
                                        _tl5587156851_
                                        '1)))
                                  (let ((_tl5591156740_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6376863769_
                                            '1)))
                                        (_target5590956737_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6376863769_
                                            '0))))
                                    (if (gx#stx-pair? _tl5591156740_)
                                        (let ((_e5592056743_
                                               (gx#syntax-e _tl5591156740_)))
                                          (let ((_tl5591856750_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5592056743_)))
                                                (_hd5591956747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5592056743_))))
                                            (if (gx#stx-null? _tl5591856750_)
                                                (___match6388863889_
                                                 _e5586656820_
                                                 _hd5586556824_
                                                 _tl5586456827_
                                                 _e5586956830_
                                                 _hd5586856834_
                                                 _tl5586756837_
                                                 _e5587056840_
                                                 _e5587356844_
                                                 _hd5587256848_
                                                 _tl5587156851_
                                                 ___splice6376863769_
                                                 _target5590956737_
                                                 _tl5591156740_
                                                 _e5592056743_
                                                 _hd5591956747_
                                                 _tl5591856750_)
                                                (if (gx#stx-null?
                                                     _tl5587156851_)
                                                    (___kont6377063771_
                                                     _hd5587256848_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5585756071_))))))
                                        (if (gx#stx-null? _tl5587156851_)
                                            (___kont6377063771_ _hd5587256848_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5585756071_))))))
                                (if (gx#stx-null? _tl5587156851_)
                                    (___kont6377063771_ _hd5587256848_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5585756071_)))))))
                    (if (fx>= (gx#stx-length _tl5587156851_) '1)
                        (let ((___splice6376863769_
                               (gx#syntax-split-splice _tl5587156851_ '1)))
                          (let ((_tl5591156740_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6376863769_ '1)))
                                (_target5590956737_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6376863769_ '0))))
                            (if (gx#stx-pair? _tl5591156740_)
                                (let ((_e5592056743_
                                       (gx#syntax-e _tl5591156740_)))
                                  (let ((_tl5591856750_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5592056743_)))
                                        (_hd5591956747_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5592056743_))))
                                    (if (gx#stx-null? _tl5591856750_)
                                        (___match6388863889_
                                         _e5586656820_
                                         _hd5586556824_
                                         _tl5586456827_
                                         _e5586956830_
                                         _hd5586856834_
                                         _tl5586756837_
                                         _e5587056840_
                                         _e5587356844_
                                         _hd5587256848_
                                         _tl5587156851_
                                         ___splice6376863769_
                                         _target5590956737_
                                         _tl5591156740_
                                         _e5592056743_
                                         _hd5591956747_
                                         _tl5591856750_)
                                        (if (gx#stx-null? _tl5587156851_)
                                            (___kont6377063771_ _hd5587256848_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5585756071_))))))
                                (if (gx#stx-null? _tl5587156851_)
                                    (___kont6377063771_ _hd5587256848_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5585756071_))))))
                        (if (gx#stx-null? _tl5587156851_)
                            (___kont6377063771_ _hd5587256848_)
                            (let () (declare (not safe)) (_g5585756071_)))))
                (if (fx>= (gx#stx-length _tl5587156851_) '1)
                    (let ((___splice6376863769_
                           (gx#syntax-split-splice _tl5587156851_ '1)))
                      (let ((_tl5591156740_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6376863769_ '1)))
                            (_target5590956737_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6376863769_ '0))))
                        (if (gx#stx-pair? _tl5591156740_)
                            (let ((_e5592056743_ (gx#syntax-e _tl5591156740_)))
                              (let ((_tl5591856750_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5592056743_)))
                                    (_hd5591956747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5592056743_))))
                                (if (gx#stx-null? _tl5591856750_)
                                    (___match6388863889_
                                     _e5586656820_
                                     _hd5586556824_
                                     _tl5586456827_
                                     _e5586956830_
                                     _hd5586856834_
                                     _tl5586756837_
                                     _e5587056840_
                                     _e5587356844_
                                     _hd5587256848_
                                     _tl5587156851_
                                     ___splice6376863769_
                                     _target5590956737_
                                     _tl5591156740_
                                     _e5592056743_
                                     _hd5591956747_
                                     _tl5591856750_)
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377063771_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_))))))
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377063771_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377063771_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5587156851_)
                                                          '1)
                                                    (let ((___splice6376863769_
                                                           (gx#syntax-split-splice
                                                            _tl5587156851_
                                                            '1)))
                                                      (let ((_tl5591156740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6376863769_ '1)))
                    (_target5590956737_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6376863769_ '0))))
                (if (gx#stx-pair? _tl5591156740_)
                    (let ((_e5592056743_ (gx#syntax-e _tl5591156740_)))
                      (let ((_tl5591856750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5592056743_)))
                            (_hd5591956747_
                             (let ()
                               (declare (not safe))
                               (##car _e5592056743_))))
                        (if (gx#stx-null? _tl5591856750_)
                            (___match6388863889_
                             _e5586656820_
                             _hd5586556824_
                             _tl5586456827_
                             _e5586956830_
                             _hd5586856834_
                             _tl5586756837_
                             _e5587056840_
                             _e5587356844_
                             _hd5587256848_
                             _tl5587156851_
                             ___splice6376863769_
                             _target5590956737_
                             _tl5591156740_
                             _e5592056743_
                             _hd5591956747_
                             _tl5591856750_)
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377063771_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377063771_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377063771_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5587156851_)
                                                      '1)
                                                (let ((___splice6376863769_
                                                       (gx#syntax-split-splice
                                                        _tl5587156851_
                                                        '1)))
                                                  (let ((_tl5591156740_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6376863769_
                                                            '1)))
                                                        (_target5590956737_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6376863769_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5591156740_)
                                                        (let ((_e5592056743_
                                                               (gx#syntax-e
                                                                _tl5591156740_)))
                                                          (let ((_tl5591856750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5592056743_)))
                        (_hd5591956747_
                         (let () (declare (not safe)) (##car _e5592056743_))))
                    (if (gx#stx-null? _tl5591856750_)
                        (___match6388863889_
                         _e5586656820_
                         _hd5586556824_
                         _tl5586456827_
                         _e5586956830_
                         _hd5586856834_
                         _tl5586756837_
                         _e5587056840_
                         _e5587356844_
                         _hd5587256848_
                         _tl5587156851_
                         ___splice6376863769_
                         _target5590956737_
                         _tl5591156740_
                         _e5592056743_
                         _hd5591956747_
                         _tl5591856750_)
                        (if (gx#stx-null? _tl5587156851_)
                            (___kont6377063771_ _hd5587256848_)
                            (let () (declare (not safe)) (_g5585756071_))))))
                (if (gx#stx-null? _tl5587156851_)
                    (___kont6377063771_ _hd5587256848_)
                    (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5587156851_)
                                                    (___kont6377063771_
                                                     _hd5587256848_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5585756071_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5587156851_)
                                                  '1)
                                            (let ((___splice6376863769_
                                                   (gx#syntax-split-splice
                                                    _tl5587156851_
                                                    '1)))
                                              (let ((_tl5591156740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6376863769_
                                                        '1)))
                                                    (_target5590956737_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6376863769_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5591156740_)
                                                    (let ((_e5592056743_
                                                           (gx#syntax-e
                                                            _tl5591156740_)))
                                                      (let ((_tl5591856750_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5592056743_)))
                    (_hd5591956747_
                     (let () (declare (not safe)) (##car _e5592056743_))))
                (if (gx#stx-null? _tl5591856750_)
                    (___match6388863889_
                     _e5586656820_
                     _hd5586556824_
                     _tl5586456827_
                     _e5586956830_
                     _hd5586856834_
                     _tl5586756837_
                     _e5587056840_
                     _e5587356844_
                     _hd5587256848_
                     _tl5587156851_
                     ___splice6376863769_
                     _target5590956737_
                     _tl5591156740_
                     _e5592056743_
                     _hd5591956747_
                     _tl5591856750_)
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377063771_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377063771_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_))))))
                                            (if (gx#stx-null? _tl5587156851_)
                                                (___kont6377063771_
                                                 _hd5587256848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_)))))))
                                (if (fx>= (gx#stx-length _tl5587156851_) '1)
                                    (let ((___splice6376863769_
                                           (gx#syntax-split-splice
                                            _tl5587156851_
                                            '1)))
                                      (let ((_tl5591156740_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6376863769_
                                                '1)))
                                            (_target5590956737_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6376863769_
                                                '0))))
                                        (if (gx#stx-pair? _tl5591156740_)
                                            (let ((_e5592056743_
                                                   (gx#syntax-e
                                                    _tl5591156740_)))
                                              (let ((_tl5591856750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5592056743_)))
                                                    (_hd5591956747_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5592056743_))))
                                                (if (gx#stx-null?
                                                     _tl5591856750_)
                                                    (___match6388863889_
                                                     _e5586656820_
                                                     _hd5586556824_
                                                     _tl5586456827_
                                                     _e5586956830_
                                                     _hd5586856834_
                                                     _tl5586756837_
                                                     _e5587056840_
                                                     _e5587356844_
                                                     _hd5587256848_
                                                     _tl5587156851_
                                                     ___splice6376863769_
                                                     _target5590956737_
                                                     _tl5591156740_
                                                     _e5592056743_
                                                     _hd5591956747_
                                                     _tl5591856750_)
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377063771_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_))))))
                                            (if (gx#stx-null? _tl5587156851_)
                                                (___kont6377063771_
                                                 _hd5587256848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_))))))
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377063771_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_)))))))
                        (if (fx>= (gx#stx-length _tl5587156851_) '1)
                            (let ((___splice6376863769_
                                   (gx#syntax-split-splice _tl5587156851_ '1)))
                              (let ((_tl5591156740_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6376863769_ '1)))
                                    (_target5590956737_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6376863769_
                                        '0))))
                                (if (gx#stx-pair? _tl5591156740_)
                                    (let ((_e5592056743_
                                           (gx#syntax-e _tl5591156740_)))
                                      (let ((_tl5591856750_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5592056743_)))
                                            (_hd5591956747_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5592056743_))))
                                        (if (gx#stx-null? _tl5591856750_)
                                            (___match6388863889_
                                             _e5586656820_
                                             _hd5586556824_
                                             _tl5586456827_
                                             _e5586956830_
                                             _hd5586856834_
                                             _tl5586756837_
                                             _e5587056840_
                                             _e5587356844_
                                             _hd5587256848_
                                             _tl5587156851_
                                             ___splice6376863769_
                                             _target5590956737_
                                             _tl5591156740_
                                             _e5592056743_
                                             _hd5591956747_
                                             _tl5591856750_)
                                            (if (gx#stx-null? _tl5587156851_)
                                                (___kont6377063771_
                                                 _hd5587256848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_))))))
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377063771_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_))))))
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377063771_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_)))))))
                (if (fx>= (gx#stx-length _tl5587156851_) '1)
                    (let ((___splice6376863769_
                           (gx#syntax-split-splice _tl5587156851_ '1)))
                      (let ((_tl5591156740_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6376863769_ '1)))
                            (_target5590956737_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6376863769_ '0))))
                        (if (gx#stx-pair? _tl5591156740_)
                            (let ((_e5592056743_ (gx#syntax-e _tl5591156740_)))
                              (let ((_tl5591856750_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5592056743_)))
                                    (_hd5591956747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5592056743_))))
                                (if (gx#stx-null? _tl5591856750_)
                                    (___match6388863889_
                                     _e5586656820_
                                     _hd5586556824_
                                     _tl5586456827_
                                     _e5586956830_
                                     _hd5586856834_
                                     _tl5586756837_
                                     _e5587056840_
                                     _e5587356844_
                                     _hd5587256848_
                                     _tl5587156851_
                                     ___splice6376863769_
                                     _target5590956737_
                                     _tl5591156740_
                                     _e5592056743_
                                     _hd5591956747_
                                     _tl5591856750_)
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377063771_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_))))))
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377063771_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377063771_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377063771_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5585756071_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5587056840_ '2))
                                            (if (gx#stx-pair? _tl5586756837_)
                                                (let ((_e5594756543_
                                                       (gx#syntax-e
                                                        _tl5586756837_)))
                                                  (let ((_tl5594556550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5594756543_)))
                                                        (_hd5594656547_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5594756543_))))
                                                    (if (gx#stx-pair?
                                                         _tl5594556550_)
                                                        (let ((_e5595056553_
                                                               (gx#syntax-e
                                                                _tl5594556550_)))
                                                          (let ((_tl5594856560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5595056553_)))
                        (_hd5594956557_
                         (let () (declare (not safe)) (##car _e5595056553_))))
                    (if (gx#stx-pair? _hd5594956557_)
                        (let ((_e5595356563_ (gx#syntax-e _hd5594956557_)))
                          (let ((_tl5595156570_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5595356563_)))
                                (_hd5595256567_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5595356563_))))
                            (if (gx#stx-pair? _hd5595256567_)
                                (let ((_e5595656573_
                                       (gx#syntax-e _hd5595256567_)))
                                  (let ((_tl5595456580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5595656573_)))
                                        (_hd5595556577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5595656573_))))
                                    (if (gx#identifier? _hd5595556577_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64532_|
                                             _hd5595556577_)
                                            (if (gx#stx-pair? _tl5595456580_)
                                                (let ((_e5595956583_
                                                       (gx#syntax-e
                                                        _tl5595456580_)))
                                                  (let ((_tl5595756590_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5595956583_)))
                                                        (_hd5595856587_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5595956583_))))
                                                    (if (gx#stx-null?
                                                         _tl5595756590_)
                                                        (if (gx#stx-pair?
                                                             _tl5595156570_)
                                                            (let ((_e5596256593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5595156570_)))
                      (let ((_tl5596056600_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5596256593_)))
                            (_hd5596156597_
                             (let ()
                               (declare (not safe))
                               (##car _e5596256593_))))
                        (___kont6377263773_
                         _tl5594856560_
                         _tl5596056600_
                         _hd5596156597_
                         _hd5595856587_
                         _hd5594656547_
                         _hd5586556824_)))
                    (___kont6377463775_
                     _tl5594856560_
                     _tl5595156570_
                     _hd5595256567_
                     _hd5594656547_
                     _hd5586556824_))
                (___kont6377463775_
                 _tl5594856560_
                 _tl5595156570_
                 _hd5595256567_
                 _hd5594656547_
                 _hd5586556824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6377463775_
                                                 _tl5594856560_
                                                 _tl5595156570_
                                                 _hd5595256567_
                                                 _hd5594656547_
                                                 _hd5586556824_))
                                            (___kont6377463775_
                                             _tl5594856560_
                                             _tl5595156570_
                                             _hd5595256567_
                                             _hd5594656547_
                                             _hd5586556824_))
                                        (___kont6377463775_
                                         _tl5594856560_
                                         _tl5595156570_
                                         _hd5595256567_
                                         _hd5594656547_
                                         _hd5586556824_))))
                                (___kont6377463775_
                                 _tl5594856560_
                                 _tl5595156570_
                                 _hd5595256567_
                                 _hd5594656547_
                                 _hd5586556824_))))
                        (if (gx#stx-null? _hd5594956557_)
                            (___kont6377663777_
                             _tl5594856560_
                             _hd5594656547_
                             _hd5586556824_)
                            (let () (declare (not safe)) (_g5585756071_))))))
                (let () (declare (not safe)) (_g5585756071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5587056840_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5586756837_)
                                                    (let ((_e5601456292_
                                                           (gx#syntax-e
                                                            _tl5586756837_)))
                                                      (let ((_tl5601256299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5601456292_)))
                    (_hd5601356296_
                     (let () (declare (not safe)) (##car _e5601456292_))))
                (if (gx#stx-pair? _tl5601256299_)
                    (let ((_e5601756302_ (gx#syntax-e _tl5601256299_)))
                      (let ((_tl5601556309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5601756302_)))
                            (_hd5601656306_
                             (let ()
                               (declare (not safe))
                               (##car _e5601756302_))))
                        (if (gx#stx-pair? _hd5601656306_)
                            (let ((_e5602056312_ (gx#syntax-e _hd5601656306_)))
                              (let ((_tl5601856319_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5602056312_)))
                                    (_hd5601956316_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5602056312_))))
                                (___kont6377863779_
                                 _tl5601556309_
                                 _tl5601856319_
                                 _hd5601956316_
                                 _hd5601356296_
                                 _hd5586556824_)))
                            (if (gx#stx-pair/null? _hd5601356296_)
                                (let ((___splice6378263783_
                                       (gx#syntax-split-splice
                                        _hd5601356296_
                                        '0)))
                                  (let ((_tl5603956115_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6378263783_
                                            '1)))
                                        (_target5603756112_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6378263783_
                                            '0))))
                                    (if (gx#stx-null? _tl5603956115_)
                                        (___match6411064111_
                                         _e5586656820_
                                         _hd5586556824_
                                         _tl5586456827_
                                         _e5586956830_
                                         _hd5586856834_
                                         _tl5586756837_
                                         _e5587056840_
                                         _e5601456292_
                                         _hd5601356296_
                                         _tl5601256299_
                                         ___splice6378263783_
                                         _target5603756112_
                                         _tl5603956115_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-pair/null? _hd5601356296_)
                        (let ((___splice6378263783_
                               (gx#syntax-split-splice _hd5601356296_ '0)))
                          (let ((_tl5603956115_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6378263783_ '1)))
                                (_target5603756112_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6378263783_ '0))))
                            (if (gx#stx-null? _tl5603956115_)
                                (___match6411064111_
                                 _e5586656820_
                                 _hd5586556824_
                                 _tl5586456827_
                                 _e5586956830_
                                 _hd5586856834_
                                 _tl5586756837_
                                 _e5587056840_
                                 _e5601456292_
                                 _hd5601356296_
                                 _tl5601256299_
                                 ___splice6378263783_
                                 _target5603756112_
                                 _tl5603956115_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_)))))
                        (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5585756071_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5585756071_)))))
                          (let () (declare (not safe)) (_g5585756071_)))))
                  (let () (declare (not safe)) (_g5585756071_))))))))))
