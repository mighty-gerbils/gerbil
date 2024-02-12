(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64537_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64538_|
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
                                                 (let ((__tmp64298
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64250
                                                        (let ((__tmp64289
                                                               (let ((__tmp64290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64297 (gx#datum->syntax '#f 'key))
                                    (__tmp64291
                                     (let ((__tmp64296
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64292
                                            (let ((__tmp64293
                                                   (let ((__tmp64295
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64294
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64295
                                                           __tmp64294))))
                                              (declare (not safe))
                                              (cons __tmp64293 '()))))
                                       (declare (not safe))
                                       (cons __tmp64296 __tmp64292))))
                                (declare (not safe))
                                (cons __tmp64297 __tmp64291))))
                         (declare (not safe))
                         (cons _L55615_ __tmp64290)))
                      (__tmp64251
                       (let ((__tmp64252
                              (let ((__tmp64288 (gx#datum->syntax '#f 'cond))
                                    (__tmp64253
                                     (let ((__tmp64270
                                            (let ((__tmp64275
                                                   (let ((__tmp64287
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64276
                                                          (let ((__tmp64283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64286 (gx#datum->syntax '#f 'pair?))
                               (__tmp64284
                                (let ((__tmp64285 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64285 '()))))
                           (declare (not safe))
                           (cons __tmp64286 __tmp64284)))
                        (__tmp64277
                         (let ((__tmp64278
                                (let ((__tmp64279
                                       (let ((__tmp64282
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64280
                                              (let ((__tmp64281
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64281 '()))))
                                         (declare (not safe))
                                         (cons __tmp64282 __tmp64280))))
                                  (declare (not safe))
                                  (cons _L55613_ __tmp64279))))
                           (declare (not safe))
                           (cons __tmp64278 '()))))
                    (declare (not safe))
                    (cons __tmp64283 __tmp64277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64287
                                                           __tmp64276)))
                                                  (__tmp64271
                                                   (let ((__tmp64274
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64272
                                                          (let ((__tmp64273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64273 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64274
                                                           __tmp64272))))
                                              (declare (not safe))
                                              (cons __tmp64275 __tmp64271)))
                                           (__tmp64254
                                            (let ((__tmp64260
                                                   (let ((__tmp64266
                                                          (let ((__tmp64269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64267
                         (let ((__tmp64268 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64268 '()))))
                    (declare (not safe))
                    (cons __tmp64269 __tmp64267)))
                 (__tmp64261
                  (let ((__tmp64262
                         (let ((__tmp64265 (gx#datum->syntax '#f 'default))
                               (__tmp64263
                                (let ((__tmp64264 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64264 '()))))
                           (declare (not safe))
                           (cons __tmp64265 __tmp64263))))
                    (declare (not safe))
                    (cons __tmp64262 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64266
                                                           __tmp64261)))
                                                  (__tmp64255
                                                   (let ((__tmp64256
                                                          (let ((__tmp64259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64257
                         (let ((__tmp64258 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64258 '()))))
                    (declare (not safe))
                    (cons __tmp64259 __tmp64257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64256 '()))))
                                              (declare (not safe))
                                              (cons __tmp64260 __tmp64255))))
                                       (declare (not safe))
                                       (cons __tmp64270 __tmp64254))))
                                (declare (not safe))
                                (cons __tmp64288 __tmp64253))))
                         (declare (not safe))
                         (cons __tmp64252 '()))))
                  (declare (not safe))
                  (cons __tmp64289 __tmp64251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64298
                                                         __tmp64250)))
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
                                                 (let ((__tmp64368
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64299
                                                        (let ((__tmp64359
                                                               (let ((__tmp64360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64367 (gx#datum->syntax '#f 'key))
                                    (__tmp64361
                                     (let ((__tmp64366
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64362
                                            (let ((__tmp64363
                                                   (let ((__tmp64365
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64364
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64365
                                                           __tmp64364))))
                                              (declare (not safe))
                                              (cons __tmp64363 '()))))
                                       (declare (not safe))
                                       (cons __tmp64366 __tmp64362))))
                                (declare (not safe))
                                (cons __tmp64367 __tmp64361))))
                         (declare (not safe))
                         (cons _L55697_ __tmp64360)))
                      (__tmp64300
                       (let ((__tmp64301
                              (let ((__tmp64358 (gx#datum->syntax '#f 'let))
                                    (__tmp64302
                                     (let ((__tmp64357
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64303
                                            (let ((__tmp64352
                                                   (let ((__tmp64353
                                                          (let ((__tmp64356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64354
                         (let ((__tmp64355 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64355 '()))))
                    (declare (not safe))
                    (cons __tmp64356 __tmp64354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64353 '())))
                                                  (__tmp64304
                                                   (let ((__tmp64305
                                                          (let ((__tmp64351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64306
                         (let ((__tmp64350 (gx#datum->syntax '#f 'rest))
                               (__tmp64307
                                (let ((__tmp64326
                                       (let ((__tmp64343
                                              (let ((__tmp64349
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64344
                                                     (let ((__tmp64348
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64345
                                                            (let ((__tmp64347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64346 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64347 __tmp64346))))
               (declare (not safe))
               (cons __tmp64348 __tmp64345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64349 __tmp64344)))
                                             (__tmp64327
                                              (let ((__tmp64328
                                                     (let ((__tmp64342
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64329
                                                            (let ((__tmp64337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64338
                                  (let ((__tmp64341 (gx#datum->syntax '#f 'k))
                                        (__tmp64339
                                         (let ((__tmp64340
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64340 '()))))
                                    (declare (not safe))
                                    (cons __tmp64341 __tmp64339))))
                             (declare (not safe))
                             (cons _L55695_ __tmp64338)))
                          (__tmp64330
                           (let ((__tmp64336 (gx#datum->syntax '#f 'v))
                                 (__tmp64331
                                  (let ((__tmp64332
                                         (let ((__tmp64335
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64333
                                                (let ((__tmp64334
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64334 '()))))
                                           (declare (not safe))
                                           (cons __tmp64335 __tmp64333))))
                                    (declare (not safe))
                                    (cons __tmp64332 '()))))
                             (declare (not safe))
                             (cons __tmp64336 __tmp64331))))
                      (declare (not safe))
                      (cons __tmp64337 __tmp64330))))
               (declare (not safe))
               (cons __tmp64342 __tmp64329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64328 '()))))
                                         (declare (not safe))
                                         (cons __tmp64343 __tmp64327)))
                                      (__tmp64308
                                       (let ((__tmp64309
                                              (let ((__tmp64325
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64310
                                                     (let ((__tmp64311
                                                            (let ((__tmp64324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64312
                           (let ((__tmp64320
                                  (let ((__tmp64323
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64321
                                         (let ((__tmp64322
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64322 '()))))
                                    (declare (not safe))
                                    (cons __tmp64323 __tmp64321)))
                                 (__tmp64313
                                  (let ((__tmp64316
                                         (let ((__tmp64319
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64317
                                                (let ((__tmp64318
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64318 '()))))
                                           (declare (not safe))
                                           (cons __tmp64319 __tmp64317)))
                                        (__tmp64314
                                         (let ((__tmp64315
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64315 '()))))
                                    (declare (not safe))
                                    (cons __tmp64316 __tmp64314))))
                             (declare (not safe))
                             (cons __tmp64320 __tmp64313))))
                      (declare (not safe))
                      (cons __tmp64324 __tmp64312))))
               (declare (not safe))
               (cons __tmp64311 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64325 __tmp64310))))
                                         (declare (not safe))
                                         (cons __tmp64309 '()))))
                                  (declare (not safe))
                                  (cons __tmp64326 __tmp64308))))
                           (declare (not safe))
                           (cons __tmp64350 __tmp64307))))
                    (declare (not safe))
                    (cons __tmp64351 __tmp64306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64305 '()))))
                                              (declare (not safe))
                                              (cons __tmp64352 __tmp64304))))
                                       (declare (not safe))
                                       (cons __tmp64357 __tmp64303))))
                                (declare (not safe))
                                (cons __tmp64358 __tmp64302))))
                         (declare (not safe))
                         (cons __tmp64301 '()))))
                  (declare (not safe))
                  (cons __tmp64359 __tmp64300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64368
                                                         __tmp64299)))
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
                                                 (let ((__tmp64439
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64369
                                                        (let ((__tmp64434
                                                               (let ((__tmp64435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64438 (gx#datum->syntax '#f 'el))
                                    (__tmp64436
                                     (let ((__tmp64437
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64437 '()))))
                                (declare (not safe))
                                (cons __tmp64438 __tmp64436))))
                         (declare (not safe))
                         (cons _L55778_ __tmp64435)))
                      (__tmp64370
                       (let ((__tmp64371
                              (let ((__tmp64433 (gx#datum->syntax '#f 'let))
                                    (__tmp64372
                                     (let ((__tmp64432
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64373
                                            (let ((__tmp64421
                                                   (let ((__tmp64428
                                                          (let ((__tmp64431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64429
                         (let ((__tmp64430 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64430 '()))))
                    (declare (not safe))
                    (cons __tmp64431 __tmp64429)))
                 (__tmp64422
                  (let ((__tmp64423
                         (let ((__tmp64427 (gx#datum->syntax '#f 'r))
                               (__tmp64424
                                (let ((__tmp64425
                                       (let ((__tmp64426
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64426 '()))))
                                  (declare (not safe))
                                  (cons __tmp64425 '()))))
                           (declare (not safe))
                           (cons __tmp64427 __tmp64424))))
                    (declare (not safe))
                    (cons __tmp64423 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64428
                                                           __tmp64422)))
                                                  (__tmp64374
                                                   (let ((__tmp64375
                                                          (let ((__tmp64420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64376
                         (let ((__tmp64419 (gx#datum->syntax '#f 'rest))
                               (__tmp64377
                                (let ((__tmp64383
                                       (let ((__tmp64414
                                              (let ((__tmp64418
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64415
                                                     (let ((__tmp64417
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64416
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64417
                                                             __tmp64416))))
                                                (declare (not safe))
                                                (cons __tmp64418 __tmp64415)))
                                             (__tmp64384
                                              (let ((__tmp64385
                                                     (let ((__tmp64413
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64386
                                                            (let ((__tmp64408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64409
                                  (let ((__tmp64412 (gx#datum->syntax '#f 'el))
                                        (__tmp64410
                                         (let ((__tmp64411
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64411 '()))))
                                    (declare (not safe))
                                    (cons __tmp64412 __tmp64410))))
                             (declare (not safe))
                             (cons _L55776_ __tmp64409)))
                          (__tmp64387
                           (let ((__tmp64400
                                  (let ((__tmp64407
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64401
                                         (let ((__tmp64406
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64402
                                                (let ((__tmp64405
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64403
                                                       (let ((__tmp64404
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64404
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64405
                                                        __tmp64403))))
                                           (declare (not safe))
                                           (cons __tmp64406 __tmp64402))))
                                    (declare (not safe))
                                    (cons __tmp64407 __tmp64401)))
                                 (__tmp64388
                                  (let ((__tmp64389
                                         (let ((__tmp64399
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64390
                                                (let ((__tmp64398
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64391
                                                       (let ((__tmp64392
                                                              (let ((__tmp64397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64393
                             (let ((__tmp64396 (gx#datum->syntax '#f 'hd))
                                   (__tmp64394
                                    (let ((__tmp64395
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64395 '()))))
                               (declare (not safe))
                               (cons __tmp64396 __tmp64394))))
                        (declare (not safe))
                        (cons __tmp64397 __tmp64393))))
                 (declare (not safe))
                 (cons __tmp64392 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64398
                                                        __tmp64391))))
                                           (declare (not safe))
                                           (cons __tmp64399 __tmp64390))))
                                    (declare (not safe))
                                    (cons __tmp64389 '()))))
                             (declare (not safe))
                             (cons __tmp64400 __tmp64388))))
                      (declare (not safe))
                      (cons __tmp64408 __tmp64387))))
               (declare (not safe))
               (cons __tmp64413 __tmp64386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64385 '()))))
                                         (declare (not safe))
                                         (cons __tmp64414 __tmp64384)))
                                      (__tmp64378
                                       (let ((__tmp64379
                                              (let ((__tmp64382
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64380
                                                     (let ((__tmp64381
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64381 '()))))
                                                (declare (not safe))
                                                (cons __tmp64382 __tmp64380))))
                                         (declare (not safe))
                                         (cons __tmp64379 '()))))
                                  (declare (not safe))
                                  (cons __tmp64383 __tmp64378))))
                           (declare (not safe))
                           (cons __tmp64419 __tmp64377))))
                    (declare (not safe))
                    (cons __tmp64420 __tmp64376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64375 '()))))
                                              (declare (not safe))
                                              (cons __tmp64421 __tmp64374))))
                                       (declare (not safe))
                                       (cons __tmp64432 __tmp64373))))
                                (declare (not safe))
                                (cons __tmp64433 __tmp64372))))
                         (declare (not safe))
                         (cons __tmp64371 '()))))
                  (declare (not safe))
                  (cons __tmp64434 __tmp64370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64439
                                                         __tmp64369)))
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
                             (let ((__tmp64441 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64440
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55830_))))
                               (declare (not safe))
                               (cons __tmp64441 __tmp64440)))
                           _tl5580555827_)))
                      (_g5580255813_ _g5580355817_)))))
          (_g5580155842_ _$stx55798_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55846_)
        (let* ((___stx6376263763_ _$stx55846_)
               (_g5585756071_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6376263763_))))
          (let ((___kont6376563766_
                 (lambda (_L56924_ _L56926_ _L56927_ _L56928_ _L56929_)
                   (let ((__tmp64442
                          (let ((__tmp64443
                                 (let ((__tmp64444
                                        (let ((__tmp64448
                                               (let ((__tmp64449
                                                      (lambda (_g5695956962_
                                                               _g5696056965_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5695956962_
                                                                _g5696056965_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64449
                                                         '()
                                                         _L56927_)))
                                              (__tmp64445
                                               (let ((__tmp64446
                                                      (let ((__tmp64447
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56924_ '()))))
                (declare (not safe))
                (cons _L56926_ __tmp64447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56928_ __tmp64446))))
                                          (declare (not safe))
                                          (cons __tmp64448 __tmp64445))))
                                   (declare (not safe))
                                   (cons '() __tmp64444))))
                            (declare (not safe))
                            (cons '2 __tmp64443))))
                     (declare (not safe))
                     (cons _L56929_ __tmp64442))))
                (___kont6376963770_
                 (lambda (_L56777_ _L56779_ _L56780_ _L56781_)
                   (let ((__tmp64450
                          (let ((__tmp64451
                                 (let ((__tmp64452
                                        (let ((__tmp64456
                                               (let ((__tmp64457
                                                      (lambda (_g5680456807_
                                                               _g5680556810_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5680456807_
                                                                _g5680556810_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64457
                                                         '()
                                                         _L56779_)))
                                              (__tmp64453
                                               (let ((__tmp64454
                                                      (let ((__tmp64455
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56777_ '()))))
                (declare (not safe))
                (cons _L56777_ __tmp64455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56780_ __tmp64454))))
                                          (declare (not safe))
                                          (cons __tmp64456 __tmp64453))))
                                   (declare (not safe))
                                   (cons '() __tmp64452))))
                            (declare (not safe))
                            (cons '2 __tmp64451))))
                     (declare (not safe))
                     (cons _L56781_ __tmp64450))))
                (___kont6377363774_
                 (lambda (_L56680_)
                   (let ((__tmp64469 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64458
                          (let ((__tmp64459
                                 (let ((__tmp64466
                                        (let ((__tmp64468
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64467
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64468 __tmp64467)))
                                       (__tmp64460
                                        (let ((__tmp64463
                                               (let ((__tmp64465
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64464
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64465 __tmp64464)))
                                              (__tmp64461
                                               (let ((__tmp64462
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64462))))
                                          (declare (not safe))
                                          (cons __tmp64463 __tmp64461))))
                                   (declare (not safe))
                                   (cons __tmp64466 __tmp64460))))
                            (declare (not safe))
                            (cons _L56680_ __tmp64459))))
                     (declare (not safe))
                     (cons __tmp64469 __tmp64458))))
                (___kont6377563776_
                 (lambda (_L56603_
                          _L56605_
                          _L56606_
                          _L56607_
                          _L56608_
                          _L56609_)
                   (let ((__tmp64470
                          (let ((__tmp64471
                                 (let ((__tmp64473
                                        (let ((__tmp64474
                                               (let ((__tmp64475
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56606_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56607_ __tmp64475))))
                                          (declare (not safe))
                                          (cons __tmp64474 _L56608_)))
                                       (__tmp64472
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56605_ _L56603_))))
                                   (declare (not safe))
                                   (cons __tmp64473 __tmp64472))))
                            (declare (not safe))
                            (cons '2 __tmp64471))))
                     (declare (not safe))
                     (cons _L56609_ __tmp64470))))
                (___kont6377763778_
                 (lambda (_L56484_ _L56486_ _L56487_ _L56488_ _L56489_)
                   (let ((__tmp64476
                          (let ((__tmp64477
                                 (let ((__tmp64479
                                        (let ((__tmp64480
                                               (let ((__tmp64481
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56487_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56487_ __tmp64481))))
                                          (declare (not safe))
                                          (cons __tmp64480 _L56488_)))
                                       (__tmp64478
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56486_ _L56484_))))
                                   (declare (not safe))
                                   (cons __tmp64479 __tmp64478))))
                            (declare (not safe))
                            (cons '2 __tmp64477))))
                     (declare (not safe))
                     (cons _L56489_ __tmp64476))))
                (___kont6377963780_
                 (lambda (_L56401_ _L56403_ _L56404_)
                   (let ((__tmp64482
                          (let ((__tmp64483
                                 (let ((__tmp64484
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56403_ _L56401_))))
                                   (declare (not safe))
                                   (cons '() __tmp64484))))
                            (declare (not safe))
                            (cons '3 __tmp64483))))
                     (declare (not safe))
                     (cons _L56404_ __tmp64482))))
                (___kont6378163782_
                 (lambda (_L56322_ _L56324_ _L56325_ _L56326_ _L56327_)
                   (let ((__tmp64485
                          (let ((__tmp64486
                                 (let ((__tmp64488
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56325_ _L56326_)))
                                       (__tmp64487
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56324_ _L56322_))))
                                   (declare (not safe))
                                   (cons __tmp64488 __tmp64487))))
                            (declare (not safe))
                            (cons '3 __tmp64486))))
                     (declare (not safe))
                     (cons _L56327_ __tmp64485))))
                (___kont6378363784_
                 (lambda (_L56206_
                          _L56208_
                          _L56209_
                          _L56210_
                          _L56211_
                          _L56212_)
                   (let ((__tmp64536 (gx#datum->syntax '#f 'let))
                         (__tmp64489
                          (let ((__tmp64524
                                 (let ((__tmp64533
                                        (let ((__tmp64535
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64534
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56209_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64535 __tmp64534)))
                                       (__tmp64525
                                        (let ((__tmp64526
                                               (let ((__tmp64532
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64527
                                                      (let ((__tmp64528
                                                             (let ((__tmp64531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64529
                            (let ((__tmp64530
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56206_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64530))))
                       (declare (not safe))
                       (cons __tmp64531 __tmp64529))))
                (declare (not safe))
                (cons __tmp64528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64532
                                                       __tmp64527))))
                                          (declare (not safe))
                                          (cons __tmp64526 '()))))
                                   (declare (not safe))
                                   (cons __tmp64533 __tmp64525)))
                                (__tmp64490
                                 (let ((__tmp64491
                                        (let ((__tmp64523
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64492
                                               (let ((__tmp64522
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64493
                                                      (let ((__tmp64497
                                                             (let ((__tmp64521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64498
                            (let ((__tmp64520 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64499
                                   (let ((__tmp64515
                                          (let ((__tmp64519
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64516
                                                 (let ((__tmp64517
                                                        (let ((__tmp64518
                                                               (lambda (_g5624656249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5624756252_)
                         (let ()
                           (declare (not safe))
                           (cons _g5624656249_ _g5624756252_)))))
                  (declare (not safe))
                  (foldr1 __tmp64518 '() _L56211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64517 '()))))
                                            (declare (not safe))
                                            (cons __tmp64519 __tmp64516)))
                                         (__tmp64500
                                          (let ((__tmp64507
                                                 (let ((__tmp64514
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64508
                                                        (let ((__tmp64509
                                                               (lambda (_g5624456255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5624556258_)
                         (let ((__tmp64510
                                (let ((__tmp64513
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64511
                                       (let ((__tmp64512
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5624456255_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64512))))
                                  (declare (not safe))
                                  (cons __tmp64513 __tmp64511))))
                           (declare (not safe))
                           (cons __tmp64510 _g5624556258_)))))
                  (declare (not safe))
                  (foldr1 __tmp64509 '() _L56210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64514
                                                         __tmp64508)))
                                                (__tmp64501
                                                 (let ((__tmp64504
                                                        (let ((__tmp64506
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64505
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56208_ '()))))
                  (declare (not safe))
                  (cons __tmp64506 __tmp64505)))
               (__tmp64502
                (let ((__tmp64503 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64503 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64504
                                                         __tmp64502))))
                                            (declare (not safe))
                                            (cons __tmp64507 __tmp64501))))
                                     (declare (not safe))
                                     (cons __tmp64515 __tmp64500))))
                              (declare (not safe))
                              (cons __tmp64520 __tmp64499))))
                       (declare (not safe))
                       (cons __tmp64521 __tmp64498)))
                    (__tmp64494
                     (let ((__tmp64495
                            (let ((__tmp64496 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64496 '()))))
                       (declare (not safe))
                       (cons __tmp64495 '()))))
                (declare (not safe))
                (cons __tmp64497 __tmp64494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64522
                                                       __tmp64493))))
                                          (declare (not safe))
                                          (cons __tmp64523 __tmp64492))))
                                   (declare (not safe))
                                   (cons __tmp64491 '()))))
                            (declare (not safe))
                            (cons __tmp64524 __tmp64490))))
                     (declare (not safe))
                     (cons __tmp64536 __tmp64489)))))
            (let* ((___match6411364114_
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
                             ___splice6378563786_
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
                                        (___kont6378363784_
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
                   (___match6389163892_
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
                             ___splice6377163772_
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
                                        (___kont6376963770_
                                         _hd5591956747_
                                         _exprs5591756773_
                                         _hd5590756731_
                                         _hd5590056707_))))))
                        (_loop5591256753_ _target5590956737_ '()))))
                   (___match6385163852_
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
                             ___splice6376763768_
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
                                        (___kont6376563766_
                                         _hd5589356894_
                                         _hd5589056884_
                                         _exprs5588256920_
                                         _hd5587256848_
                                         _hd5586556824_))))))
                        (_loop5587756900_ _target5587456854_ '())))))
              (if (gx#stx-pair? ___stx6376263763_)
                  (let ((_e5586656820_ (gx#syntax-e ___stx6376263763_)))
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
                                                        (let ((___splice6376763768_
                                                               (gx#syntax-split-splice
                                                                _tl5587156851_
                                                                '2)))
                                                          (let ((_tl5587656857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6376763768_ '1)))
                        (_target5587456854_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6376763768_ '0))))
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
                                             |[1]#_g64538_|
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
                            (___match6385163852_
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
                             ___splice6376763768_
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
                                (let ((___splice6377163772_
                                       (gx#syntax-split-splice
                                        _tl5587156851_
                                        '1)))
                                  (let ((_tl5591156740_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6377163772_
                                            '1)))
                                        (_target5590956737_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6377163772_
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
                                                (___match6389163892_
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
                                                 ___splice6377163772_
                                                 _target5590956737_
                                                 _tl5591156740_
                                                 _e5592056743_
                                                 _hd5591956747_
                                                 _tl5591856750_)
                                                (if (gx#stx-null?
                                                     _tl5587156851_)
                                                    (___kont6377363774_
                                                     _hd5587256848_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5585756071_))))))
                                        (if (gx#stx-null? _tl5587156851_)
                                            (___kont6377363774_ _hd5587256848_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5585756071_))))))
                                (if (gx#stx-null? _tl5587156851_)
                                    (___kont6377363774_ _hd5587256848_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5585756071_)))))))
                    (if (fx>= (gx#stx-length _tl5587156851_) '1)
                        (let ((___splice6377163772_
                               (gx#syntax-split-splice _tl5587156851_ '1)))
                          (let ((_tl5591156740_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6377163772_ '1)))
                                (_target5590956737_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6377163772_ '0))))
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
                                        (___match6389163892_
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
                                         ___splice6377163772_
                                         _target5590956737_
                                         _tl5591156740_
                                         _e5592056743_
                                         _hd5591956747_
                                         _tl5591856750_)
                                        (if (gx#stx-null? _tl5587156851_)
                                            (___kont6377363774_ _hd5587256848_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5585756071_))))))
                                (if (gx#stx-null? _tl5587156851_)
                                    (___kont6377363774_ _hd5587256848_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5585756071_))))))
                        (if (gx#stx-null? _tl5587156851_)
                            (___kont6377363774_ _hd5587256848_)
                            (let () (declare (not safe)) (_g5585756071_)))))
                (if (fx>= (gx#stx-length _tl5587156851_) '1)
                    (let ((___splice6377163772_
                           (gx#syntax-split-splice _tl5587156851_ '1)))
                      (let ((_tl5591156740_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6377163772_ '1)))
                            (_target5590956737_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6377163772_ '0))))
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
                                    (___match6389163892_
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
                                     ___splice6377163772_
                                     _target5590956737_
                                     _tl5591156740_
                                     _e5592056743_
                                     _hd5591956747_
                                     _tl5591856750_)
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377363774_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_))))))
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377363774_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377363774_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5587156851_)
                                                          '1)
                                                    (let ((___splice6377163772_
                                                           (gx#syntax-split-splice
                                                            _tl5587156851_
                                                            '1)))
                                                      (let ((_tl5591156740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6377163772_ '1)))
                    (_target5590956737_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6377163772_ '0))))
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
                            (___match6389163892_
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
                             ___splice6377163772_
                             _target5590956737_
                             _tl5591156740_
                             _e5592056743_
                             _hd5591956747_
                             _tl5591856750_)
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377363774_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377363774_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377363774_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5587156851_)
                                                      '1)
                                                (let ((___splice6377163772_
                                                       (gx#syntax-split-splice
                                                        _tl5587156851_
                                                        '1)))
                                                  (let ((_tl5591156740_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6377163772_
                                                            '1)))
                                                        (_target5590956737_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6377163772_
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
                        (___match6389163892_
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
                         ___splice6377163772_
                         _target5590956737_
                         _tl5591156740_
                         _e5592056743_
                         _hd5591956747_
                         _tl5591856750_)
                        (if (gx#stx-null? _tl5587156851_)
                            (___kont6377363774_ _hd5587256848_)
                            (let () (declare (not safe)) (_g5585756071_))))))
                (if (gx#stx-null? _tl5587156851_)
                    (___kont6377363774_ _hd5587256848_)
                    (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5587156851_)
                                                    (___kont6377363774_
                                                     _hd5587256848_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5585756071_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5587156851_)
                                                  '1)
                                            (let ((___splice6377163772_
                                                   (gx#syntax-split-splice
                                                    _tl5587156851_
                                                    '1)))
                                              (let ((_tl5591156740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6377163772_
                                                        '1)))
                                                    (_target5590956737_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6377163772_
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
                    (___match6389163892_
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
                     ___splice6377163772_
                     _target5590956737_
                     _tl5591156740_
                     _e5592056743_
                     _hd5591956747_
                     _tl5591856750_)
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377363774_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377363774_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_))))))
                                            (if (gx#stx-null? _tl5587156851_)
                                                (___kont6377363774_
                                                 _hd5587256848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_)))))))
                                (if (fx>= (gx#stx-length _tl5587156851_) '1)
                                    (let ((___splice6377163772_
                                           (gx#syntax-split-splice
                                            _tl5587156851_
                                            '1)))
                                      (let ((_tl5591156740_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6377163772_
                                                '1)))
                                            (_target5590956737_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6377163772_
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
                                                    (___match6389163892_
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
                                                     ___splice6377163772_
                                                     _target5590956737_
                                                     _tl5591156740_
                                                     _e5592056743_
                                                     _hd5591956747_
                                                     _tl5591856750_)
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377363774_
                                                         _hd5587256848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5585756071_))))))
                                            (if (gx#stx-null? _tl5587156851_)
                                                (___kont6377363774_
                                                 _hd5587256848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_))))))
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377363774_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_)))))))
                        (if (fx>= (gx#stx-length _tl5587156851_) '1)
                            (let ((___splice6377163772_
                                   (gx#syntax-split-splice _tl5587156851_ '1)))
                              (let ((_tl5591156740_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6377163772_ '1)))
                                    (_target5590956737_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6377163772_
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
                                            (___match6389163892_
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
                                             ___splice6377163772_
                                             _target5590956737_
                                             _tl5591156740_
                                             _e5592056743_
                                             _hd5591956747_
                                             _tl5591856750_)
                                            (if (gx#stx-null? _tl5587156851_)
                                                (___kont6377363774_
                                                 _hd5587256848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5585756071_))))))
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377363774_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_))))))
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377363774_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_)))))))
                (if (fx>= (gx#stx-length _tl5587156851_) '1)
                    (let ((___splice6377163772_
                           (gx#syntax-split-splice _tl5587156851_ '1)))
                      (let ((_tl5591156740_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6377163772_ '1)))
                            (_target5590956737_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6377163772_ '0))))
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
                                    (___match6389163892_
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
                                     ___splice6377163772_
                                     _target5590956737_
                                     _tl5591156740_
                                     _e5592056743_
                                     _hd5591956747_
                                     _tl5591856750_)
                                    (if (gx#stx-null? _tl5587156851_)
                                        (___kont6377363774_ _hd5587256848_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_))))))
                            (if (gx#stx-null? _tl5587156851_)
                                (___kont6377363774_ _hd5587256848_)
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-null? _tl5587156851_)
                        (___kont6377363774_ _hd5587256848_)
                        (let () (declare (not safe)) (_g5585756071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5587156851_)
                                                        (___kont6377363774_
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
                                             |[1]#_g64537_|
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
                        (___kont6377563776_
                         _tl5594856560_
                         _tl5596056600_
                         _hd5596156597_
                         _hd5595856587_
                         _hd5594656547_
                         _hd5586556824_)))
                    (___kont6377763778_
                     _tl5594856560_
                     _tl5595156570_
                     _hd5595256567_
                     _hd5594656547_
                     _hd5586556824_))
                (___kont6377763778_
                 _tl5594856560_
                 _tl5595156570_
                 _hd5595256567_
                 _hd5594656547_
                 _hd5586556824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6377763778_
                                                 _tl5594856560_
                                                 _tl5595156570_
                                                 _hd5595256567_
                                                 _hd5594656547_
                                                 _hd5586556824_))
                                            (___kont6377763778_
                                             _tl5594856560_
                                             _tl5595156570_
                                             _hd5595256567_
                                             _hd5594656547_
                                             _hd5586556824_))
                                        (___kont6377763778_
                                         _tl5594856560_
                                         _tl5595156570_
                                         _hd5595256567_
                                         _hd5594656547_
                                         _hd5586556824_))))
                                (___kont6377763778_
                                 _tl5594856560_
                                 _tl5595156570_
                                 _hd5595256567_
                                 _hd5594656547_
                                 _hd5586556824_))))
                        (if (gx#stx-null? _hd5594956557_)
                            (___kont6377963780_
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
                                (___kont6378163782_
                                 _tl5601556309_
                                 _tl5601856319_
                                 _hd5601956316_
                                 _hd5601356296_
                                 _hd5586556824_)))
                            (if (gx#stx-pair/null? _hd5601356296_)
                                (let ((___splice6378563786_
                                       (gx#syntax-split-splice
                                        _hd5601356296_
                                        '0)))
                                  (let ((_tl5603956115_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6378563786_
                                            '1)))
                                        (_target5603756112_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6378563786_
                                            '0))))
                                    (if (gx#stx-null? _tl5603956115_)
                                        (___match6411364114_
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
                                         ___splice6378563786_
                                         _target5603756112_
                                         _tl5603956115_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5585756071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5585756071_))))))
                    (if (gx#stx-pair/null? _hd5601356296_)
                        (let ((___splice6378563786_
                               (gx#syntax-split-splice _hd5601356296_ '0)))
                          (let ((_tl5603956115_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6378563786_ '1)))
                                (_target5603756112_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6378563786_ '0))))
                            (if (gx#stx-null? _tl5603956115_)
                                (___match6411364114_
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
                                 ___splice6378563786_
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
