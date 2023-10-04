(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g19668_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19679_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19681_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19683_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19685_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19691_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19693_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19695_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19697_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19699_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19701_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19703_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19714_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19716_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19718_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19720_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19726_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19728_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19730_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19732_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19734_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g19736_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#do-compile-e|
      (lambda (_$stx5480_)
        (let* ((_g54845506_
                (lambda (_g54855502_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g54855502_))))
               (_g54835576_
                (lambda (_g54855510_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g54855510_))
                      (let ((_e54915513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g54855510_))))
                        (let ((_hd54905517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e54915513_)))
                              (_tl54895520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e54915513_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl54895520_))
                              (let ((_e54945523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl54895520_))))
                                (let ((_hd54935527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e54945523_)))
                                      (_tl54925530_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e54945523_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl54925530_))
                                      (let ((_e54975533_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl54925530_))))
                                        (let ((_hd54965537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54975533_)))
                                              (_tl54955540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54975533_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl54955540_))
                                              (let ((_e55005543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl54955540_))))
                                                (let ((_hd54995547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e55005543_)))
                                                      (_tl54985550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e55005543_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl54985550_))
                                                      ((lambda (_L5553_
                                                                _L5555_
                                                                _L5556_)
                                                         (let ((__tmp19348
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'ast-case)))
                       (__tmp19294
                        (let ((__tmp19295
                               (let ((__tmp19296
                                      (let ((__tmp19310
                                             (let ((__tmp19345
                                                    (let ((__tmp19347
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'hd)))
                                                          (__tmp19346
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '_))))
                                                      (declare (not safe))
                                                      (cons __tmp19347
                                                            __tmp19346)))
                                                   (__tmp19311
                                                    (let ((__tmp19312
                                                           (let ((__tmp19344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'cond)))
                         (__tmp19313
                          (let ((__tmp19314
                                 (let ((__tmp19331
                                        (let ((__tmp19343
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'hash-get)))
                                              (__tmp19332
                                               (let ((__tmp19341
                                                      (let ((__tmp19342
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'current-compile-methods))))
                (declare (not safe))
                (cons __tmp19342 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp19333
                                                      (let ((__tmp19334
                                                             (let ((__tmp19340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'stx-e)))
                           (__tmp19335
                            (let ((__tmp19336
                                   (let ((__tmp19339
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'syntax)))
                                         (__tmp19337
                                          (let ((__tmp19338
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'hd))))
                                            (declare (not safe))
                                            (cons __tmp19338 '()))))
                                     (declare (not safe))
                                     (cons __tmp19339 __tmp19337))))
                              (declare (not safe))
                              (cons __tmp19336 '()))))
                       (declare (not safe))
                       (cons __tmp19340 __tmp19335))))
                (declare (not safe))
                (cons __tmp19334 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp19341
                                                       __tmp19333))))
                                          (declare (not safe))
                                          (cons __tmp19343 __tmp19332)))
                                       (__tmp19315
                                        (let ((__tmp19330
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '=>)))
                                              (__tmp19316
                                               (let ((__tmp19317
                                                      (let ((__tmp19329
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'lambda)))
                    (__tmp19318
                     (let ((__tmp19328
                            (let () (declare (not safe)) (cons _L5555_ '())))
                           (__tmp19319
                            (let ((__tmp19321
                                   (let ((__tmp19327
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'declare)))
                                         (__tmp19322
                                          (let ((__tmp19323
                                                 (let ((__tmp19326
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'not)))
                                                       (__tmp19324
                                                        (let ((__tmp19325
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'safe))))
                  (declare (not safe))
                  (cons __tmp19325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19326
                                                         __tmp19324))))
                                            (declare (not safe))
                                            (cons __tmp19323 '()))))
                                     (declare (not safe))
                                     (cons __tmp19327 __tmp19322)))
                                  (__tmp19320
                                   (let ()
                                     (declare (not safe))
                                     (cons _L5553_ '()))))
                              (declare (not safe))
                              (cons __tmp19321 __tmp19320))))
                       (declare (not safe))
                       (cons __tmp19328 __tmp19319))))
                (declare (not safe))
                (cons __tmp19329 __tmp19318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp19317 '()))))
                                          (declare (not safe))
                                          (cons __tmp19330 __tmp19316))))
                                   (declare (not safe))
                                   (cons __tmp19331 __tmp19315))))
                            (declare (not safe))
                            (cons __tmp19314 '()))))
                     (declare (not safe))
                     (cons __tmp19344 __tmp19313))))
              (declare (not safe))
              (cons __tmp19312 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp19345 __tmp19311)))
                                            (__tmp19297
                                             (let ((__tmp19298
                                                    (let ((__tmp19309
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'else)))
                                                          (__tmp19299
                                                           (let ((__tmp19300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp19308
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'raise-compile-error)))
                                (__tmp19301
                                 (let ((__tmp19302
                                        (let ((__tmp19303
                                               (let ((__tmp19304
                                                      (let ((__tmp19307
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'syntax)))
                    (__tmp19305
                     (let ((__tmp19306
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'hd))))
                       (declare (not safe))
                       (cons __tmp19306 '()))))
                (declare (not safe))
                (cons __tmp19307 __tmp19305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp19304 '()))))
                                          (declare (not safe))
                                          (cons _L5556_ __tmp19303))))
                                   (declare (not safe))
                                   (cons '"Cannot compile; missing method"
                                         __tmp19302))))
                            (declare (not safe))
                            (cons __tmp19308 __tmp19301))))
                     (declare (not safe))
                     (cons __tmp19300 '()))))
              (declare (not safe))
              (cons __tmp19309 __tmp19299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp19298 '()))))
                                        (declare (not safe))
                                        (cons __tmp19310 __tmp19297))))
                                 (declare (not safe))
                                 (cons '() __tmp19296))))
                          (declare (not safe))
                          (cons _L5556_ __tmp19295))))
                   (declare (not safe))
                   (cons __tmp19348 __tmp19294)))
               _hd54995547_
               _hd54965537_
               _hd54935527_)
              (_g54845506_ _g54855510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g54845506_ _g54855510_))))
                                      (_g54845506_ _g54855510_))))
                              (_g54845506_ _g54855510_))))
                      (_g54845506_ _g54855510_)))))
          (_g54835576_ _$stx5480_))))
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx5580_)
        (let* ((___stx1703617037_ _$stx5580_)
               (_g55865666_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1703617037_)))))
          (let ((___kont1703917040_
                 (lambda (_L5962_ _L5964_ _L5965_ _L5966_)
                   (let ((__tmp19349
                          (let ((__tmp19350
                                 (let ((__tmp19351
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5964_ '()))))
                                   (declare (not safe))
                                   (cons __tmp19351 _L5962_))))
                            (declare (not safe))
                            (cons _L5965_ __tmp19350))))
                     (declare (not safe))
                     (cons _L5966_ __tmp19349))))
                (___kont1704117042_
                 (lambda (_L5874_ _L5876_ _L5877_ _L5878_)
                   (let ((__tmp19388
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'def)))
                         (__tmp19352
                          (let ((__tmp19353
                                 (let ((__tmp19354
                                        (let ((__tmp19387
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'delay)))
                                              (__tmp19355
                                               (let ((__tmp19356
                                                      (let ((__tmp19386
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'let)))
                    (__tmp19357
                     (let ((__tmp19381
                            (let ((__tmp19385
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'tbl)))
                                  (__tmp19382
                                   (let ((__tmp19383
                                          (let ((__tmp19384
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-hash-table-eq))))
                                            (declare (not safe))
                                            (cons __tmp19384 '()))))
                                     (declare (not safe))
                                     (cons __tmp19383 '()))))
                              (declare (not safe))
                              (cons __tmp19385 __tmp19382)))
                           (__tmp19358
                            (let ((__tmp19372
                                   (lambda (_g59055911_ _g59065914_)
                                     (let ((__tmp19373
                                            (let ((__tmp19380
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-copy!)))
                                                  (__tmp19374
                                                   (let ((__tmp19379
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'tbl)))
                                                         (__tmp19375
                                                          (let ((__tmp19376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp19378
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'force)))
                               (__tmp19377
                                (let ()
                                  (declare (not safe))
                                  (cons _g59055911_ '()))))
                           (declare (not safe))
                           (cons __tmp19378 __tmp19377))))
                    (declare (not safe))
                    (cons __tmp19376 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19379
                                                           __tmp19375))))
                                              (declare (not safe))
                                              (cons __tmp19380 __tmp19374))))
                                       (declare (not safe))
                                       (cons __tmp19373 _g59065914_))))
                                  (__tmp19359
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _L5874_
                                        _L5876_))
                                     (let ((__tmp19362
                                            (lambda (_g59075917_
                                                     _g59085920_
                                                     _g59095922_)
                                              (let ((__tmp19363
                                                     (let ((__tmp19371
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'hash-put!)))
                                                           (__tmp19364
                                                            (let ((__tmp19370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'tbl)))
                          (__tmp19365
                           (let ((__tmp19367
                                  (let ((__tmp19369
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp19368
                                         (let ()
                                           (declare (not safe))
                                           (cons _g59085920_ '()))))
                                    (declare (not safe))
                                    (cons __tmp19369 __tmp19368)))
                                 (__tmp19366
                                  (let ()
                                    (declare (not safe))
                                    (cons _g59075917_ '()))))
                             (declare (not safe))
                             (cons __tmp19367 __tmp19366))))
                      (declare (not safe))
                      (cons __tmp19370 __tmp19365))))
               (declare (not safe))
               (cons __tmp19371 __tmp19364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp19363
                                                      _g59095922_))))
                                           (__tmp19360
                                            (let ((__tmp19361
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'tbl))))
                                              (declare (not safe))
                                              (cons __tmp19361 '()))))
                                       (declare (not safe))
                                       (foldr2 __tmp19362
                                               __tmp19360
                                               _L5874_
                                               _L5876_)))))
                              (declare (not safe))
                              (foldr1 __tmp19372 __tmp19359 _L5877_))))
                       (declare (not safe))
                       (cons __tmp19381 __tmp19358))))
                (declare (not safe))
                (cons __tmp19386 __tmp19357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp19356 '()))))
                                          (declare (not safe))
                                          (cons __tmp19387 __tmp19355))))
                                   (declare (not safe))
                                   (cons __tmp19354 '()))))
                            (declare (not safe))
                            (cons _L5878_ __tmp19353))))
                     (declare (not safe))
                     (cons __tmp19388 __tmp19352))))
                (___kont1704717048_
                 (lambda (_L5713_ _L5715_ _L5716_ _L5717_ _L5718_)
                   (let ((__tmp19428
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp19389
                          (let ((__tmp19424
                                 (let ((__tmp19425
                                        (let ((__tmp19426
                                               (let ((__tmp19427
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5716_
                                                              _L5715_))))
                                                 (declare (not safe))
                                                 (cons __tmp19427 _L5713_))))
                                          (declare (not safe))
                                          (cons '#f __tmp19426))))
                                   (declare (not safe))
                                   (cons _L5718_ __tmp19425)))
                                (__tmp19390
                                 (let ((__tmp19391
                                        (let ((__tmp19423
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'def)))
                                              (__tmp19392
                                               (let ((__tmp19419
                                                      (let ((__tmp19420
                                                             (let ((__tmp19422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'stx)))
                           (__tmp19421
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'args))))
                       (declare (not safe))
                       (cons __tmp19422 __tmp19421))))
                (declare (not safe))
                (cons _L5717_ __tmp19420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp19393
                                                      (let ((__tmp19394
                                                             (let ((__tmp19418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'parameterize)))
                           (__tmp19395
                            (let ((__tmp19411
                                   (let ((__tmp19412
                                          (let ((__tmp19417
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'current-compile-methods)))
                                                (__tmp19413
                                                 (let ((__tmp19414
                                                        (let ((__tmp19416
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'force)))
                      (__tmp19415
                       (let () (declare (not safe)) (cons _L5716_ '()))))
                  (declare (not safe))
                  (cons __tmp19416 __tmp19415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19414 '()))))
                                            (declare (not safe))
                                            (cons __tmp19417 __tmp19413))))
                                     (declare (not safe))
                                     (cons __tmp19412 '())))
                                  (__tmp19396
                                   (let ((__tmp19404
                                          (let ((__tmp19410
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare)))
                                                (__tmp19405
                                                 (let ((__tmp19406
                                                        (let ((__tmp19409
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'not)))
                      (__tmp19407
                       (let ((__tmp19408
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'safe))))
                         (declare (not safe))
                         (cons __tmp19408 '()))))
                  (declare (not safe))
                  (cons __tmp19409 __tmp19407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19406 '()))))
                                            (declare (not safe))
                                            (cons __tmp19410 __tmp19405)))
                                         (__tmp19397
                                          (let ((__tmp19398
                                                 (let ((__tmp19403
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'do-apply-compile-e)))
                                                       (__tmp19399
                                                        (let ((__tmp19402
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'stx)))
                      (__tmp19400
                       (let ((__tmp19401
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'args))))
                         (declare (not safe))
                         (cons __tmp19401 '()))))
                  (declare (not safe))
                  (cons __tmp19402 __tmp19400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19403
                                                         __tmp19399))))
                                            (declare (not safe))
                                            (cons __tmp19398 '()))))
                                     (declare (not safe))
                                     (cons __tmp19404 __tmp19397))))
                              (declare (not safe))
                              (cons __tmp19411 __tmp19396))))
                       (declare (not safe))
                       (cons __tmp19418 __tmp19395))))
                (declare (not safe))
                (cons __tmp19394 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp19419
                                                       __tmp19393))))
                                          (declare (not safe))
                                          (cons __tmp19423 __tmp19392))))
                                   (declare (not safe))
                                   (cons __tmp19391 '()))))
                            (declare (not safe))
                            (cons __tmp19424 __tmp19390))))
                     (declare (not safe))
                     (cons __tmp19428 __tmp19389)))))
            (let* ((___match1712917130_
                    (lambda (_e56515673_
                             _hd56505677_
                             _tl56495680_
                             _e56545683_
                             _hd56535687_
                             _tl56525690_
                             _e56575693_
                             _hd56565697_
                             _tl56555700_
                             _e56605703_
                             _hd56595707_
                             _tl56585710_)
                      (let ((_L5713_ _tl56555700_)
                            (_L5715_ _tl56585710_)
                            (_L5716_ _hd56595707_)
                            (_L5717_ _hd56535687_)
                            (_L5718_ _hd56505677_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5717_))
                            (___kont1704717048_
                             _L5713_
                             _L5715_
                             _L5716_
                             _L5717_
                             _L5718_)
                            (let () (declare (not safe)) (_g55865666_))))))
                   (___match1710517106_
                    (lambda (_e56075746_
                             _hd56065750_
                             _tl56055753_
                             _e56105756_
                             _hd56095760_
                             _tl56085763_
                             _e56115766_
                             _e56145770_
                             _hd56135774_
                             _tl56125777_
                             _e56175780_
                             _hd56165784_
                             _tl56155787_
                             ___splice1704317044_
                             _target56185790_
                             _tl56205793_)
                      (letrec ((_loop56215796_
                                (lambda (_hd56195800_ _super56255803_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd56195800_))
                                      (let ((_e56225806_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd56195800_))))
                                        (let ((_lp-tl56245813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e56225806_)))
                                              (_lp-hd56235810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e56225806_))))
                                          (_loop56215796_
                                           _lp-tl56245813_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd56235810_
                                                   _super56255803_)))))
                                      (let ((_super56265816_
                                             (reverse _super56255803_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null? _tl56125777_))
                                            (let ((___splice1704517046_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl56125777_
                                                      '0))))
                                              (let ((_tl56295823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1704517046_
                                                        '1)))
                                                    (_target56275820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1704517046_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl56295823_))
                                                    (letrec ((_loop56305826_
                                                              (lambda (_hd56285830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method56345833_
                               _symbol56355835_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd56285830_))
                            (let ((_e56315838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _hd56285830_))))
                              (let ((_lp-tl56335845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e56315838_)))
                                    (_lp-hd56325842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e56315838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _lp-hd56325842_))
                                    (let ((_e56405848_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _lp-hd56325842_))))
                                      (let ((_tl56385855_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e56405848_)))
                                            (_hd56395852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e56405848_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl56385855_))
                                            (let ((_e56435858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl56385855_))))
                                              (let ((_tl56415865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e56435858_)))
                                                    (_hd56425862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e56435858_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl56415865_))
                                                    (_loop56305826_
                                                     _lp-tl56335845_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd56425862_
                                                             _method56345833_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd56395852_
                                                             _symbol56355835_)))
                                                    (___match1712917130_
                                                     _e56075746_
                                                     _hd56065750_
                                                     _tl56055753_
                                                     _e56105756_
                                                     _hd56095760_
                                                     _tl56085763_
                                                     _e56145770_
                                                     _hd56135774_
                                                     _tl56125777_
                                                     _e56175780_
                                                     _hd56165784_
                                                     _tl56155787_))))
                                            (___match1712917130_
                                             _e56075746_
                                             _hd56065750_
                                             _tl56055753_
                                             _e56105756_
                                             _hd56095760_
                                             _tl56085763_
                                             _e56145770_
                                             _hd56135774_
                                             _tl56125777_
                                             _e56175780_
                                             _hd56165784_
                                             _tl56155787_))))
                                    (___match1712917130_
                                     _e56075746_
                                     _hd56065750_
                                     _tl56055753_
                                     _e56105756_
                                     _hd56095760_
                                     _tl56085763_
                                     _e56145770_
                                     _hd56135774_
                                     _tl56125777_
                                     _e56175780_
                                     _hd56165784_
                                     _tl56155787_))))
                            (let ((_symbol56375871_ (reverse _symbol56355835_))
                                  (_method56365868_
                                   (reverse _method56345833_)))
                              (___kont1704117042_
                               _method56365868_
                               _symbol56375871_
                               _super56265816_
                               _hd56165784_))))))
              (_loop56305826_ _target56275820_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1712917130_
                                                     _e56075746_
                                                     _hd56065750_
                                                     _tl56055753_
                                                     _e56105756_
                                                     _hd56095760_
                                                     _tl56085763_
                                                     _e56145770_
                                                     _hd56135774_
                                                     _tl56125777_
                                                     _e56175780_
                                                     _hd56165784_
                                                     _tl56155787_))))
                                            (___match1712917130_
                                             _e56075746_
                                             _hd56065750_
                                             _tl56055753_
                                             _e56105756_
                                             _hd56095760_
                                             _tl56085763_
                                             _e56145770_
                                             _hd56135774_
                                             _tl56125777_
                                             _e56175780_
                                             _hd56165784_
                                             _tl56155787_)))))))
                        (_loop56215796_ _target56185790_ '()))))
                   (___match1706717068_
                    (lambda (_e55945932_
                             _hd55935936_
                             _tl55925939_
                             _e55975942_
                             _hd55965946_
                             _tl55955949_
                             _e56005952_
                             _hd55995956_
                             _tl55985959_)
                      (let ((_L5962_ _tl55985959_)
                            (_L5964_ _hd55995956_)
                            (_L5965_ _hd55965946_)
                            (_L5966_ _hd55935936_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5964_))
                            (___kont1703917040_
                             _L5962_
                             _L5964_
                             _L5965_
                             _L5966_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd55965946_))
                                (let ((_e56115766_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd55965946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e56115766_ '#f))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd55995956_))
                                          (let ((_e56175780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd55995956_))))
                                            (let ((_tl56155787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e56175780_)))
                                                  (_hd56165784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e56175780_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl56155787_))
                                                  (let ((___splice1704317044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl56155787_
                                                            '0))))
                                                    (let ((_tl56205793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1704317044_
                                                              '1)))
                                                          (_target56185790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1704317044_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl56205793_))
                                                          (___match1710517106_
                                                           _e55945932_
                                                           _hd55935936_
                                                           _tl55925939_
                                                           _e55975942_
                                                           _hd55965946_
                                                           _tl55955949_
                                                           _e56115766_
                                                           _e56005952_
                                                           _hd55995956_
                                                           _tl55985959_
                                                           _e56175780_
                                                           _hd56165784_
                                                           _tl56155787_
                                                           ___splice1704317044_
                                                           _target56185790_
                                                           _tl56205793_)
                                                          (___match1712917130_
                                                           _e55945932_
                                                           _hd55935936_
                                                           _tl55925939_
                                                           _e55975942_
                                                           _hd55965946_
                                                           _tl55955949_
                                                           _e56005952_
                                                           _hd55995956_
                                                           _tl55985959_
                                                           _e56175780_
                                                           _hd56165784_
                                                           _tl56155787_))))
                                                  (___match1712917130_
                                                   _e55945932_
                                                   _hd55935936_
                                                   _tl55925939_
                                                   _e55975942_
                                                   _hd55965946_
                                                   _tl55955949_
                                                   _e56005952_
                                                   _hd55995956_
                                                   _tl55985959_
                                                   _e56175780_
                                                   _hd56165784_
                                                   _tl56155787_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g55865666_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd55995956_))
                                          (let ((_e56605703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd55995956_))))
                                            (let ((_tl56585710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e56605703_)))
                                                  (_hd56595707_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e56605703_))))
                                              (___match1712917130_
                                               _e55945932_
                                               _hd55935936_
                                               _tl55925939_
                                               _e55975942_
                                               _hd55965946_
                                               _tl55955949_
                                               _e56005952_
                                               _hd55995956_
                                               _tl55985959_
                                               _e56605703_
                                               _hd56595707_
                                               _tl56585710_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g55865666_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd55995956_))
                                    (let ((_e56605703_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd55995956_))))
                                      (let ((_tl56585710_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e56605703_)))
                                            (_hd56595707_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e56605703_))))
                                        (___match1712917130_
                                         _e55945932_
                                         _hd55935936_
                                         _tl55925939_
                                         _e55975942_
                                         _hd55965946_
                                         _tl55955949_
                                         _e56005952_
                                         _hd55995956_
                                         _tl55985959_
                                         _e56605703_
                                         _hd56595707_
                                         _tl56585710_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g55865666_)))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1703617037_))
                  (let ((_e55945932_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx1703617037_))))
                    (let ((_tl55925939_
                           (let () (declare (not safe)) (##cdr _e55945932_)))
                          (_hd55935936_
                           (let () (declare (not safe)) (##car _e55945932_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl55925939_))
                          (let ((_e55975942_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl55925939_))))
                            (let ((_tl55955949_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e55975942_)))
                                  (_hd55965946_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e55975942_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl55955949_))
                                  (let ((_e56005952_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _tl55955949_))))
                                    (let ((_tl55985959_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e56005952_)))
                                          (_hd55995956_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e56005952_))))
                                      (___match1706717068_
                                       _e55945932_
                                       _hd55935936_
                                       _tl55925939_
                                       _e55975942_
                                       _hd55965946_
                                       _tl55955949_
                                       _e56005952_
                                       _hd55995956_
                                       _tl55985959_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd55965946_))
                                      (let ((_e56115766_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd55965946_))))
                                        (declare (not safe))
                                        (_g55865666_))
                                      (let ()
                                        (declare (not safe))
                                        (_g55865666_))))))
                          (let () (declare (not safe)) (_g55865666_)))))
                  (let () (declare (not safe)) (_g55865666_))))))))
    (define |gxc[:0:]#do-apply-compile-e|
      (lambda (_$stx5989_)
        (let* ((_g59936011_
                (lambda (_g59946007_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g59946007_))))
               (_g59926066_
                (lambda (_g59946015_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g59946015_))
                      (let ((_e59996018_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g59946015_))))
                        (let ((_hd59986022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59996018_)))
                              (_tl59976025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59996018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl59976025_))
                              (let ((_e60026028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl59976025_))))
                                (let ((_hd60016032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60026028_)))
                                      (_tl60006035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60026028_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl60006035_))
                                      (let ((_e60056038_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl60006035_))))
                                        (let ((_hd60046042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60056038_)))
                                              (_tl60036045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60056038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl60036045_))
                                              ((lambda (_L6048_ _L6050_)
                                                 (let ((__tmp19517
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'if)))
                                                       (__tmp19429
                                                        (let ((__tmp19514
                                                               (let ((__tmp19516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'null?)))
                             (__tmp19515
                              (let ()
                                (declare (not safe))
                                (cons _L6048_ '()))))
                         (declare (not safe))
                         (cons __tmp19516 __tmp19515)))
                      (__tmp19430
                       (let ((__tmp19511
                              (let ((__tmp19513
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'compile-e)))
                                    (__tmp19512
                                     (let ()
                                       (declare (not safe))
                                       (cons _L6050_ '()))))
                                (declare (not safe))
                                (cons __tmp19513 __tmp19512)))
                             (__tmp19431
                              (let ((__tmp19432
                                     (let ((__tmp19510
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'let)))
                                           (__tmp19433
                                            (let ((__tmp19496
                                                   (let ((__tmp19504
                                                          (let ((__tmp19509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'arg1)))
                        (__tmp19505
                         (let ((__tmp19506
                                (let ((__tmp19508
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'car)))
                                      (__tmp19507
                                       (let ()
                                         (declare (not safe))
                                         (cons _L6048_ '()))))
                                  (declare (not safe))
                                  (cons __tmp19508 __tmp19507))))
                           (declare (not safe))
                           (cons __tmp19506 '()))))
                    (declare (not safe))
                    (cons __tmp19509 __tmp19505)))
                 (__tmp19497
                  (let ((__tmp19498
                         (let ((__tmp19503
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'rest)))
                               (__tmp19499
                                (let ((__tmp19500
                                       (let ((__tmp19502
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'cdr)))
                                             (__tmp19501
                                              (let ()
                                                (declare (not safe))
                                                (cons _L6048_ '()))))
                                         (declare (not safe))
                                         (cons __tmp19502 __tmp19501))))
                                  (declare (not safe))
                                  (cons __tmp19500 '()))))
                           (declare (not safe))
                           (cons __tmp19503 __tmp19499))))
                    (declare (not safe))
                    (cons __tmp19498 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19504
                                                           __tmp19497)))
                                                  (__tmp19434
                                                   (let ((__tmp19435
                                                          (let ((__tmp19495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'if)))
                        (__tmp19436
                         (let ((__tmp19491
                                (let ((__tmp19494
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'null?)))
                                      (__tmp19492
                                       (let ((__tmp19493
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'rest))))
                                         (declare (not safe))
                                         (cons __tmp19493 '()))))
                                  (declare (not safe))
                                  (cons __tmp19494 __tmp19492)))
                               (__tmp19437
                                (let ((__tmp19486
                                       (let ((__tmp19490
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'compile-e)))
                                             (__tmp19487
                                              (let ((__tmp19488
                                                     (let ((__tmp19489
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'arg1))))
                                                       (declare (not safe))
                                                       (cons __tmp19489 '()))))
                                                (declare (not safe))
                                                (cons _L6050_ __tmp19488))))
                                         (declare (not safe))
                                         (cons __tmp19490 __tmp19487)))
                                      (__tmp19438
                                       (let ((__tmp19439
                                              (let ((__tmp19485
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'let)))
                                                    (__tmp19440
                                                     (let ((__tmp19469
                                                            (let ((__tmp19478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp19484
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'arg2)))
                                 (__tmp19479
                                  (let ((__tmp19480
                                         (let ((__tmp19483
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'car)))
                                               (__tmp19481
                                                (let ((__tmp19482
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'rest))))
                                                  (declare (not safe))
                                                  (cons __tmp19482 '()))))
                                           (declare (not safe))
                                           (cons __tmp19483 __tmp19481))))
                                    (declare (not safe))
                                    (cons __tmp19480 '()))))
                             (declare (not safe))
                             (cons __tmp19484 __tmp19479)))
                          (__tmp19470
                           (let ((__tmp19471
                                  (let ((__tmp19477
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'rest)))
                                        (__tmp19472
                                         (let ((__tmp19473
                                                (let ((__tmp19476
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'cdr)))
                                                      (__tmp19474
                                                       (let ((__tmp19475
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'rest))))
                 (declare (not safe))
                 (cons __tmp19475 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp19476
                                                        __tmp19474))))
                                           (declare (not safe))
                                           (cons __tmp19473 '()))))
                                    (declare (not safe))
                                    (cons __tmp19477 __tmp19472))))
                             (declare (not safe))
                             (cons __tmp19471 '()))))
                      (declare (not safe))
                      (cons __tmp19478 __tmp19470)))
                   (__tmp19441
                    (let ((__tmp19442
                           (let ((__tmp19468
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'if)))
                                 (__tmp19443
                                  (let ((__tmp19464
                                         (let ((__tmp19467
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'null?)))
                                               (__tmp19465
                                                (let ((__tmp19466
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'rest))))
                                                  (declare (not safe))
                                                  (cons __tmp19466 '()))))
                                           (declare (not safe))
                                           (cons __tmp19467 __tmp19465)))
                                        (__tmp19444
                                         (let ((__tmp19457
                                                (let ((__tmp19463
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'compile-e)))
                                                      (__tmp19458
                                                       (let ((__tmp19459
                                                              (let ((__tmp19462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'arg1)))
                            (__tmp19460
                             (let ((__tmp19461
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'arg2))))
                               (declare (not safe))
                               (cons __tmp19461 '()))))
                        (declare (not safe))
                        (cons __tmp19462 __tmp19460))))
                 (declare (not safe))
                 (cons _L6050_ __tmp19459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp19463
                                                        __tmp19458)))
                                               (__tmp19445
                                                (let ((__tmp19446
                                                       (let ((__tmp19456
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'apply)))
                     (__tmp19447
                      (let ((__tmp19455
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'compile-e)))
                            (__tmp19448
                             (let ((__tmp19449
                                    (let ((__tmp19454
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'arg1)))
                                          (__tmp19450
                                           (let ((__tmp19453
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'arg2)))
                                                 (__tmp19451
                                                  (let ((__tmp19452
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'rest))))
                                                    (declare (not safe))
                                                    (cons __tmp19452 '()))))
                                             (declare (not safe))
                                             (cons __tmp19453 __tmp19451))))
                                      (declare (not safe))
                                      (cons __tmp19454 __tmp19450))))
                               (declare (not safe))
                               (cons _L6050_ __tmp19449))))
                        (declare (not safe))
                        (cons __tmp19455 __tmp19448))))
                 (declare (not safe))
                 (cons __tmp19456 __tmp19447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp19446 '()))))
                                           (declare (not safe))
                                           (cons __tmp19457 __tmp19445))))
                                    (declare (not safe))
                                    (cons __tmp19464 __tmp19444))))
                             (declare (not safe))
                             (cons __tmp19468 __tmp19443))))
                      (declare (not safe))
                      (cons __tmp19442 '()))))
               (declare (not safe))
               (cons __tmp19469 __tmp19441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp19485 __tmp19440))))
                                         (declare (not safe))
                                         (cons __tmp19439 '()))))
                                  (declare (not safe))
                                  (cons __tmp19486 __tmp19438))))
                           (declare (not safe))
                           (cons __tmp19491 __tmp19437))))
                    (declare (not safe))
                    (cons __tmp19495 __tmp19436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19435 '()))))
                                              (declare (not safe))
                                              (cons __tmp19496 __tmp19434))))
                                       (declare (not safe))
                                       (cons __tmp19510 __tmp19433))))
                                (declare (not safe))
                                (cons __tmp19432 '()))))
                         (declare (not safe))
                         (cons __tmp19511 __tmp19431))))
                  (declare (not safe))
                  (cons __tmp19514 __tmp19430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19517
                                                         __tmp19429)))
                                               _hd60046042_
                                               _hd60016032_)
                                              (_g59936011_ _g59946015_))))
                                      (_g59936011_ _g59946015_))))
                              (_g59936011_ _g59946015_))))
                      (_g59936011_ _g59946015_)))))
          (_g59926066_ _$stx5989_))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx6070_)
        (let* ((_g60746109_
                (lambda (_g60756105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g60756105_))))
               (_g60736234_
                (lambda (_g60756113_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g60756113_))
                      (let ((_e60826116_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g60756113_))))
                        (let ((_hd60816120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60826116_)))
                              (_tl60806123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60826116_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl60806123_))
                              (let ((_e60856126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl60806123_))))
                                (let ((_hd60846130_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60856126_)))
                                      (_tl60836133_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60856126_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd60846130_))
                                      (let ((_e60886136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd60846130_))))
                                        (let ((_hd60876140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60886136_)))
                                              (_tl60866143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60886136_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl60866143_))
                                              (let ((_e60916146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl60866143_))))
                                                (let ((_hd60906150_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60916146_)))
                                                      (_tl60896153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60916146_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl60896153_))
                                                      (let ((_e60946156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl60896153_))))
                (let ((_hd60936160_
                       (let () (declare (not safe)) (##car _e60946156_)))
                      (_tl60926163_
                       (let () (declare (not safe)) (##cdr _e60946156_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl60926163_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl60836133_))
                          (let ((_g19518_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice _tl60836133_ '0))))
                            (begin
                              (let ((_g19519_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g19518_)
                                           (##vector-length _g19518_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g19519_ 2)))
                                    (error "Context expects 2 values"
                                           _g19519_)))
                              (let ((_target60956166_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g19518_ 0)))
                                    (_tl60976169_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g19518_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl60976169_))
                                    (letrec ((_loop60986172_
                                              (lambda (_hd60966176_
                                                       _body61026179_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd60966176_))
                                                    (let ((_e60996182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd60966176_))))
                                                      (let ((_lp-hd61006186_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e60996182_)))
                    (_lp-tl61016189_
                     (let () (declare (not safe)) (##cdr _e60996182_))))
                (_loop60986172_
                 _lp-tl61016189_
                 (let ()
                   (declare (not safe))
                   (cons _lp-hd61006186_ _body61026179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body61036192_
                                                           (reverse _body61026179_)))
                                                      ((lambda (_L6196_
                                                                _L6198_
                                                                _L6199_
                                                                _L6200_)
                                                         (let ((__tmp19651
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let)))
                       (__tmp19520
                        (let ((__tmp19650
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'lp)))
                              (__tmp19521
                               (let ((__tmp19636
                                      (let ((__tmp19647
                                             (let ((__tmp19649
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest)))
                                                   (__tmp19648
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L6198_ '()))))
                                               (declare (not safe))
                                               (cons __tmp19649 __tmp19648)))
                                            (__tmp19637
                                             (let ((__tmp19643
                                                    (let ((__tmp19644
                                                           (let ((__tmp19645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp19646
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))))
                            (declare (not safe))
                            (cons __tmp19646 '()))))
                     (declare (not safe))
                     (cons __tmp19645 '()))))
              (declare (not safe))
              (cons _L6200_ __tmp19644)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp19638
                                                    (let ((__tmp19639
                                                           (let ((__tmp19640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp19641
                                 (let ((__tmp19642
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list))))
                                   (declare (not safe))
                                   (cons __tmp19642 '()))))
                            (declare (not safe))
                            (cons __tmp19641 '()))))
                     (declare (not safe))
                     (cons _L6199_ __tmp19640))))
              (declare (not safe))
              (cons __tmp19639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp19643 __tmp19638))))
                                        (declare (not safe))
                                        (cons __tmp19647 __tmp19637)))
                                     (__tmp19522
                                      (let ((__tmp19523
                                             (let ((__tmp19635
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'match)))
                                                   (__tmp19524
                                                    (let ((__tmp19634
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'rest)))
                                                          (__tmp19525
                                                           (let ((__tmp19531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp19629
                                 (let ((__tmp19633
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list)))
                                       (__tmp19630
                                        (let ((__tmp19632
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'e)))
                                              (__tmp19631
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))))
                                          (declare (not safe))
                                          (cons __tmp19632 __tmp19631))))
                                   (declare (not safe))
                                   (cons __tmp19633 __tmp19630)))
                                (__tmp19532
                                 (let ((__tmp19533
                                        (let ((__tmp19628
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'ast-case)))
                                              (__tmp19534
                                               (let ((__tmp19627
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'e)))
                                                     (__tmp19535
                                                      (let ((__tmp19623
                                                             (let ((__tmp19626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#quote)))
                           (__tmp19624
                            (let ((__tmp19625
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))))
                              (declare (not safe))
                              (cons __tmp19625 '()))))
                       (declare (not safe))
                       (cons __tmp19626 __tmp19624)))
                    (__tmp19536
                     (let ((__tmp19603
                            (let ((__tmp19619
                                   (let ((__tmp19622
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp19620
                                          (let ((__tmp19621
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_))))
                                            (declare (not safe))
                                            (cons __tmp19621 '()))))
                                     (declare (not safe))
                                     (cons __tmp19622 __tmp19620)))
                                  (__tmp19604
                                   (let ((__tmp19605
                                          (let ((__tmp19618
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'lp)))
                                                (__tmp19606
                                                 (let ((__tmp19617
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'rest)))
                                                       (__tmp19607
                                                        (let ((__tmp19608
                                                               (let ((__tmp19609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp19616
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'cons)))
                                    (__tmp19610
                                     (let ((__tmp19612
                                            (let ((__tmp19615
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'compile-e)))
                                                  (__tmp19613
                                                   (let ((__tmp19614
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'e))))
                                                     (declare (not safe))
                                                     (cons __tmp19614 '()))))
                                              (declare (not safe))
                                              (cons __tmp19615 __tmp19613)))
                                           (__tmp19611
                                            (let ()
                                              (declare (not safe))
                                              (cons _L6199_ '()))))
                                       (declare (not safe))
                                       (cons __tmp19612 __tmp19611))))
                                (declare (not safe))
                                (cons __tmp19616 __tmp19610))))
                         (declare (not safe))
                         (cons __tmp19609 '()))))
                  (declare (not safe))
                  (cons _L6200_ __tmp19608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19617
                                                         __tmp19607))))
                                            (declare (not safe))
                                            (cons __tmp19618 __tmp19606))))
                                     (declare (not safe))
                                     (cons __tmp19605 '()))))
                              (declare (not safe))
                              (cons __tmp19619 __tmp19604)))
                           (__tmp19537
                            (let ((__tmp19583
                                   (let ((__tmp19599
                                          (let ((__tmp19602
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#quote)))
                                                (__tmp19600
                                                 (let ((__tmp19601
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '_))))
                                                   (declare (not safe))
                                                   (cons __tmp19601 '()))))
                                            (declare (not safe))
                                            (cons __tmp19602 __tmp19600)))
                                         (__tmp19584
                                          (let ((__tmp19585
                                                 (let ((__tmp19598
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lp)))
                                                       (__tmp19586
                                                        (let ((__tmp19597
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'rest)))
                      (__tmp19587
                       (let ((__tmp19588
                              (let ((__tmp19589
                                     (let ((__tmp19596
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'cons)))
                                           (__tmp19590
                                            (let ((__tmp19592
                                                   (let ((__tmp19595
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'compile-e)))
                                                         (__tmp19593
                                                          (let ((__tmp19594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'e))))
                    (declare (not safe))
                    (cons __tmp19594 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19595
                                                           __tmp19593)))
                                                  (__tmp19591
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L6199_ '()))))
                                              (declare (not safe))
                                              (cons __tmp19592 __tmp19591))))
                                       (declare (not safe))
                                       (cons __tmp19596 __tmp19590))))
                                (declare (not safe))
                                (cons __tmp19589 '()))))
                         (declare (not safe))
                         (cons _L6200_ __tmp19588))))
                  (declare (not safe))
                  (cons __tmp19597 __tmp19587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19598
                                                         __tmp19586))))
                                            (declare (not safe))
                                            (cons __tmp19585 '()))))
                                     (declare (not safe))
                                     (cons __tmp19599 __tmp19584)))
                                  (__tmp19538
                                   (let ((__tmp19539
                                          (let ((__tmp19582
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_)))
                                                (__tmp19540
                                                 (let ((__tmp19541
                                                        (let ((__tmp19581
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let)))
                      (__tmp19542
                       (let ((__tmp19568
                              (let ((__tmp19580
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'tmp)))
                                    (__tmp19569
                                     (let ((__tmp19570
                                            (let ((__tmp19579
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-symbol)))
                                                  (__tmp19571
                                                   (let ((__tmp19572
                                                          (let ((__tmp19578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'gensym)))
                        (__tmp19573
                         (let ((__tmp19574
                                (let ((__tmp19577
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp19575
                                       (let ((__tmp19576
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '__tmp))))
                                         (declare (not safe))
                                         (cons __tmp19576 '()))))
                                  (declare (not safe))
                                  (cons __tmp19577 __tmp19575))))
                           (declare (not safe))
                           (cons __tmp19574 '()))))
                    (declare (not safe))
                    (cons __tmp19578 __tmp19573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19572 '()))))
                                              (declare (not safe))
                                              (cons __tmp19579 __tmp19571))))
                                       (declare (not safe))
                                       (cons __tmp19570 '()))))
                                (declare (not safe))
                                (cons __tmp19580 __tmp19569)))
                             (__tmp19543
                              (let ((__tmp19544
                                     (let ((__tmp19567
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'lp)))
                                           (__tmp19545
                                            (let ((__tmp19566
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'rest)))
                                                  (__tmp19546
                                                   (let ((__tmp19553
                                                          (let ((__tmp19565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'cons)))
                        (__tmp19554
                         (let ((__tmp19556
                                (let ((__tmp19564
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list)))
                                      (__tmp19557
                                       (let ((__tmp19563
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'tmp)))
                                             (__tmp19558
                                              (let ((__tmp19559
                                                     (let ((__tmp19562
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'compile-e)))
                                                           (__tmp19560
                                                            (let ((__tmp19561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'e))))
                      (declare (not safe))
                      (cons __tmp19561 '()))))
               (declare (not safe))
               (cons __tmp19562 __tmp19560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp19559 '()))))
                                         (declare (not safe))
                                         (cons __tmp19563 __tmp19558))))
                                  (declare (not safe))
                                  (cons __tmp19564 __tmp19557)))
                               (__tmp19555
                                (let ()
                                  (declare (not safe))
                                  (cons _L6200_ '()))))
                           (declare (not safe))
                           (cons __tmp19556 __tmp19555))))
                    (declare (not safe))
                    (cons __tmp19565 __tmp19554)))
                 (__tmp19547
                  (let ((__tmp19548
                         (let ((__tmp19552
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'cons)))
                               (__tmp19549
                                (let ((__tmp19551
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'tmp)))
                                      (__tmp19550
                                       (let ()
                                         (declare (not safe))
                                         (cons _L6199_ '()))))
                                  (declare (not safe))
                                  (cons __tmp19551 __tmp19550))))
                           (declare (not safe))
                           (cons __tmp19552 __tmp19549))))
                    (declare (not safe))
                    (cons __tmp19548 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19553
                                                           __tmp19547))))
                                              (declare (not safe))
                                              (cons __tmp19566 __tmp19546))))
                                       (declare (not safe))
                                       (cons __tmp19567 __tmp19545))))
                                (declare (not safe))
                                (cons __tmp19544 '()))))
                         (declare (not safe))
                         (cons __tmp19568 __tmp19543))))
                  (declare (not safe))
                  (cons __tmp19581 __tmp19542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19541 '()))))
                                            (declare (not safe))
                                            (cons __tmp19582 __tmp19540))))
                                     (declare (not safe))
                                     (cons __tmp19539 '()))))
                              (declare (not safe))
                              (cons __tmp19583 __tmp19538))))
                       (declare (not safe))
                       (cons __tmp19603 __tmp19537))))
                (declare (not safe))
                (cons __tmp19623 __tmp19536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp19627
                                                       __tmp19535))))
                                          (declare (not safe))
                                          (cons __tmp19628 __tmp19534))))
                                   (declare (not safe))
                                   (cons __tmp19533 '()))))
                            (declare (not safe))
                            (cons __tmp19629 __tmp19532)))
                         (__tmp19526
                          (let ((__tmp19527
                                 (let ((__tmp19530
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'else)))
                                       (__tmp19528
                                        (let ((__tmp19529
                                               (lambda (_g62256228_
                                                        _g62266231_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g62256228_
                                                         _g62266231_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp19529 '() _L6196_))))
                                   (declare (not safe))
                                   (cons __tmp19530 __tmp19528))))
                            (declare (not safe))
                            (cons __tmp19527 '()))))
                     (declare (not safe))
                     (cons __tmp19531 __tmp19526))))
              (declare (not safe))
              (cons __tmp19634 __tmp19525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp19635 __tmp19524))))
                                        (declare (not safe))
                                        (cons __tmp19523 '()))))
                                 (declare (not safe))
                                 (cons __tmp19636 __tmp19522))))
                          (declare (not safe))
                          (cons __tmp19650 __tmp19521))))
                   (declare (not safe))
                   (cons __tmp19651 __tmp19520)))
               _body61036192_
               _hd60936160_
               _hd60906150_
               _hd60876140_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop60986172_ _target60956166_ '()))
                                    (_g60746109_ _g60756113_)))))
                          (_g60746109_ _g60756113_))
                      (_g60746109_ _g60756113_))))
              (_g60746109_ _g60756113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g60746109_ _g60756113_))))
                                      (_g60746109_ _g60756113_))))
                              (_g60746109_ _g60756113_))))
                      (_g60746109_ _g60756113_)))))
          (_g60736234_ _$stx6070_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx6239_)
        (let* ((_g62436261_
                (lambda (_g62446257_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g62446257_))))
               (_g62426316_
                (lambda (_g62446265_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g62446265_))
                      (let ((_e62496268_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g62446265_))))
                        (let ((_hd62486272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e62496268_)))
                              (_tl62476275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e62496268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl62476275_))
                              (let ((_e62526278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl62476275_))))
                                (let ((_hd62516282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e62526278_)))
                                      (_tl62506285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e62526278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl62506285_))
                                      (let ((_e62556288_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl62506285_))))
                                        (let ((_hd62546292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62556288_)))
                                              (_tl62536295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62556288_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl62536295_))
                                              ((lambda (_L6298_ _L6300_)
                                                 (let ((__tmp19667
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'cond-expand)))
                                                       (__tmp19652
                                                        (let ((__tmp19664
                                                               (let ((__tmp19666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0
                                 '#f
                                 'gambit-inline-unsafe-primitives)))
                             (__tmp19665
                              (let ()
                                (declare (not safe))
                                (cons _L6300_ '()))))
                         (declare (not safe))
                         (cons __tmp19666 __tmp19665)))
                      (__tmp19653
                       (let ((__tmp19654
                              (let ((__tmp19663
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'else)))
                                    (__tmp19655
                                     (let ((__tmp19656
                                            (let ((__tmp19662
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'if)))
                                                  (__tmp19657
                                                   (let ((__tmp19660
                                                          (let ((__tmp19661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'current-compile-decls-unsafe?))))
                    (declare (not safe))
                    (cons __tmp19661 '())))
                 (__tmp19658
                  (let ((__tmp19659
                         (let () (declare (not safe)) (cons _L6298_ '()))))
                    (declare (not safe))
                    (cons _L6300_ __tmp19659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp19660
                                                           __tmp19658))))
                                              (declare (not safe))
                                              (cons __tmp19662 __tmp19657))))
                                       (declare (not safe))
                                       (cons __tmp19656 '()))))
                                (declare (not safe))
                                (cons __tmp19663 __tmp19655))))
                         (declare (not safe))
                         (cons __tmp19654 '()))))
                  (declare (not safe))
                  (cons __tmp19664 __tmp19653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19667
                                                         __tmp19652)))
                                               _hd62546292_
                                               _hd62516282_)
                                              (_g62436261_ _g62446265_))))
                                      (_g62436261_ _g62446265_))))
                              (_g62436261_ _g62446265_))))
                      (_g62436261_ _g62446265_)))))
          (_g62426316_ _$stx6239_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g19668_|
       'expander-identifiers:
       (let ((__tmp19669
              (let ((__tmp19702 |gxc[1]#_g19668_|)
                    (__tmp19670
                     (let ((__tmp19700 |gxc[1]#_g19701_|)
                           (__tmp19671
                            (let ((__tmp19698 |gxc[1]#_g19699_|)
                                  (__tmp19672
                                   (let ((__tmp19686
                                          (let ((__tmp19696 |gxc[1]#_g19697_|)
                                                (__tmp19687
                                                 (let ((__tmp19694
                                                        |gxc[1]#_g19695_|)
                                                       (__tmp19688
                                                        (let ((__tmp19692
                                                               |gxc[1]#_g19693_|)
                                                              (__tmp19689
                                                               (let ((__tmp19690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g19691_|))
                         (declare (not safe))
                         (cons __tmp19690 '()))))
                  (declare (not safe))
                  (cons __tmp19692 __tmp19689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19694
                                                         __tmp19688))))
                                            (declare (not safe))
                                            (cons __tmp19696 __tmp19687)))
                                         (__tmp19673
                                          (let ((__tmp19674
                                                 (let ((__tmp19684
                                                        |gxc[1]#_g19685_|)
                                                       (__tmp19675
                                                        (let ((__tmp19682
                                                               |gxc[1]#_g19683_|)
                                                              (__tmp19676
                                                               (let ((__tmp19680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g19681_|)
                             (__tmp19677
                              (let ((__tmp19678 |gxc[1]#_g19679_|))
                                (declare (not safe))
                                (cons __tmp19678 '()))))
                         (declare (not safe))
                         (cons __tmp19680 __tmp19677))))
                  (declare (not safe))
                  (cons __tmp19682 __tmp19676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19684
                                                         __tmp19675))))
                                            (declare (not safe))
                                            (cons __tmp19674 '()))))
                                     (declare (not safe))
                                     (cons __tmp19686 __tmp19673))))
                              (declare (not safe))
                              (cons __tmp19698 __tmp19672))))
                       (declare (not safe))
                       (cons __tmp19700 __tmp19671))))
                (declare (not safe))
                (cons __tmp19702 __tmp19670))))
         (declare (not safe))
         (cons '#f __tmp19669))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g19703_|
       'expander-identifiers:
       (let ((__tmp19704
              (let ((__tmp19737 |gxc[1]#_g19703_|)
                    (__tmp19705
                     (let ((__tmp19735 |gxc[1]#_g19736_|)
                           (__tmp19706
                            (let ((__tmp19733 |gxc[1]#_g19734_|)
                                  (__tmp19707
                                   (let ((__tmp19721
                                          (let ((__tmp19731 |gxc[1]#_g19732_|)
                                                (__tmp19722
                                                 (let ((__tmp19729
                                                        |gxc[1]#_g19730_|)
                                                       (__tmp19723
                                                        (let ((__tmp19727
                                                               |gxc[1]#_g19728_|)
                                                              (__tmp19724
                                                               (let ((__tmp19725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g19726_|))
                         (declare (not safe))
                         (cons __tmp19725 '()))))
                  (declare (not safe))
                  (cons __tmp19727 __tmp19724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19729
                                                         __tmp19723))))
                                            (declare (not safe))
                                            (cons __tmp19731 __tmp19722)))
                                         (__tmp19708
                                          (let ((__tmp19709
                                                 (let ((__tmp19719
                                                        |gxc[1]#_g19720_|)
                                                       (__tmp19710
                                                        (let ((__tmp19717
                                                               |gxc[1]#_g19718_|)
                                                              (__tmp19711
                                                               (let ((__tmp19715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g19716_|)
                             (__tmp19712
                              (let ((__tmp19713 |gxc[1]#_g19714_|))
                                (declare (not safe))
                                (cons __tmp19713 '()))))
                         (declare (not safe))
                         (cons __tmp19715 __tmp19712))))
                  (declare (not safe))
                  (cons __tmp19717 __tmp19711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp19719
                                                         __tmp19710))))
                                            (declare (not safe))
                                            (cons __tmp19709 '()))))
                                     (declare (not safe))
                                     (cons __tmp19721 __tmp19708))))
                              (declare (not safe))
                              (cons __tmp19733 __tmp19707))))
                       (declare (not safe))
                       (cons __tmp19735 __tmp19706))))
                (declare (not safe))
                (cons __tmp19737 __tmp19705))))
         (declare (not safe))
         (cons '#f __tmp19704))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
